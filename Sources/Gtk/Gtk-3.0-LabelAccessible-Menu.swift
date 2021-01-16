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

// MARK: - LabelAccessible Class

/// The `LabelAccessibleProtocol` protocol exposes the methods and properties of an underlying `GtkLabelAccessible` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `LabelAccessible`.
/// Alternatively, use `LabelAccessibleRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol LabelAccessibleProtocol: WidgetAccessibleProtocol, Atk.HypertextProtocol, Atk.TextProtocol {
        /// Untyped pointer to the underlying `GtkLabelAccessible` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkLabelAccessible` instance.
    var label_accessible_ptr: UnsafeMutablePointer<GtkLabelAccessible>! { get }

}

/// The `LabelAccessibleRef` type acts as a lightweight Swift reference to an underlying `GtkLabelAccessible` instance.
/// It exposes methods that can operate on this data type through `LabelAccessibleProtocol` conformance.
/// Use `LabelAccessibleRef` only as an `unowned` reference to an existing `GtkLabelAccessible` instance.
///

public struct LabelAccessibleRef: LabelAccessibleProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkLabelAccessible` instance.
    /// For type-safe access, use the generated, typed pointer `label_accessible_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension LabelAccessibleRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkLabelAccessible>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkLabelAccessible>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkLabelAccessible>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkLabelAccessible>?) {
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

    /// Reference intialiser for a related type that implements `LabelAccessibleProtocol`
    @inlinable init<T: LabelAccessibleProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: LabelAccessibleProtocol>(_ other: T) -> LabelAccessibleRef { LabelAccessibleRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelAccessibleProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelAccessibleProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelAccessibleProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelAccessibleProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelAccessibleProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `LabelAccessible` type acts as a reference-counted owner of an underlying `GtkLabelAccessible` instance.
/// It provides the methods that can operate on this data type through `LabelAccessibleProtocol` conformance.
/// Use `LabelAccessible` as a strong reference or owner of a `GtkLabelAccessible` instance.
///

open class LabelAccessible: WidgetAccessible, LabelAccessibleProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LabelAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkLabelAccessible>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LabelAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkLabelAccessible>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LabelAccessible` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LabelAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LabelAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkLabelAccessible>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LabelAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkLabelAccessible>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkLabelAccessible`.
    /// i.e., ownership is transferred to the `LabelAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkLabelAccessible>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `LabelAccessibleProtocol`
    /// Will retain `GtkLabelAccessible`.
    /// - Parameter other: an instance of a related type that implements `LabelAccessibleProtocol`
    @inlinable public init<T: LabelAccessibleProtocol>(labelAccessible other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelAccessibleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelAccessibleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelAccessibleProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelAccessibleProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelAccessibleProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelAccessibleProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelAccessibleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelAccessibleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum LabelAccessiblePropertyName: String, PropertyNameProtocol {
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

public extension LabelAccessibleProtocol {
    /// Bind a `LabelAccessiblePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: LabelAccessiblePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a LabelAccessible property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: LabelAccessiblePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a LabelAccessible property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: LabelAccessiblePropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: LabelAccessible has no signals// MARK: LabelAccessible Class: LabelAccessibleProtocol extension (methods and fields)
public extension LabelAccessibleProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkLabelAccessible` instance.
    @inlinable var label_accessible_ptr: UnsafeMutablePointer<GtkLabelAccessible>! { return ptr?.assumingMemoryBound(to: GtkLabelAccessible.self) }


    @inlinable var parent: GtkWidgetAccessible {
        get {
            let rv = label_accessible_ptr.pointee.parent
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - Layout Class

/// The `LayoutProtocol` protocol exposes the methods and properties of an underlying `GtkLayout` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Layout`.
/// Alternatively, use `LayoutRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkLayout` is similar to `GtkDrawingArea` in that it’s a “blank slate” and
/// doesn’t do anything except paint a blank background by default. It’s
/// different in that it supports scrolling natively due to implementing
/// `GtkScrollable`, and can contain child widgets since it’s a `GtkContainer`.
/// 
/// If you just want to draw, a `GtkDrawingArea` is a better choice since it has
/// lower overhead. If you just need to position child widgets at specific
/// points, then `GtkFixed` provides that functionality on its own.
/// 
/// When handling expose events on a `GtkLayout`, you must draw to the `GdkWindow`
/// returned by `gtk_layout_get_bin_window()`, rather than to the one returned by
/// `gtk_widget_get_window()` as you would for a `GtkDrawingArea`.
public protocol LayoutProtocol: ContainerProtocol, ScrollableProtocol {
        /// Untyped pointer to the underlying `GtkLayout` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkLayout` instance.
    var layout_ptr: UnsafeMutablePointer<GtkLayout>! { get }

}

/// The `LayoutRef` type acts as a lightweight Swift reference to an underlying `GtkLayout` instance.
/// It exposes methods that can operate on this data type through `LayoutProtocol` conformance.
/// Use `LayoutRef` only as an `unowned` reference to an existing `GtkLayout` instance.
///
/// `GtkLayout` is similar to `GtkDrawingArea` in that it’s a “blank slate” and
/// doesn’t do anything except paint a blank background by default. It’s
/// different in that it supports scrolling natively due to implementing
/// `GtkScrollable`, and can contain child widgets since it’s a `GtkContainer`.
/// 
/// If you just want to draw, a `GtkDrawingArea` is a better choice since it has
/// lower overhead. If you just need to position child widgets at specific
/// points, then `GtkFixed` provides that functionality on its own.
/// 
/// When handling expose events on a `GtkLayout`, you must draw to the `GdkWindow`
/// returned by `gtk_layout_get_bin_window()`, rather than to the one returned by
/// `gtk_widget_get_window()` as you would for a `GtkDrawingArea`.
public struct LayoutRef: LayoutProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkLayout` instance.
    /// For type-safe access, use the generated, typed pointer `layout_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension LayoutRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkLayout>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkLayout>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkLayout>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkLayout>?) {
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

    /// Reference intialiser for a related type that implements `LayoutProtocol`
    @inlinable init<T: LayoutProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: LayoutProtocol>(_ other: T) -> LayoutRef { LayoutRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkLayout`. Unless you have a specific adjustment
    /// you’d like the layout to use for scrolling, pass `nil` for
    /// `hadjustment` and `vadjustment`.
    @inlinable init<AdjustmentT: AdjustmentProtocol>( hadjustment: AdjustmentT?, vadjustment: AdjustmentT?) {
        let rv = gtk_layout_new(hadjustment?.adjustment_ptr, vadjustment?.adjustment_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `Layout` type acts as a reference-counted owner of an underlying `GtkLayout` instance.
/// It provides the methods that can operate on this data type through `LayoutProtocol` conformance.
/// Use `Layout` as a strong reference or owner of a `GtkLayout` instance.
///
/// `GtkLayout` is similar to `GtkDrawingArea` in that it’s a “blank slate” and
/// doesn’t do anything except paint a blank background by default. It’s
/// different in that it supports scrolling natively due to implementing
/// `GtkScrollable`, and can contain child widgets since it’s a `GtkContainer`.
/// 
/// If you just want to draw, a `GtkDrawingArea` is a better choice since it has
/// lower overhead. If you just need to position child widgets at specific
/// points, then `GtkFixed` provides that functionality on its own.
/// 
/// When handling expose events on a `GtkLayout`, you must draw to the `GdkWindow`
/// returned by `gtk_layout_get_bin_window()`, rather than to the one returned by
/// `gtk_widget_get_window()` as you would for a `GtkDrawingArea`.
open class Layout: Container, LayoutProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Layout` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkLayout>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Layout` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkLayout>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Layout` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Layout` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Layout` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkLayout>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Layout` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkLayout>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkLayout`.
    /// i.e., ownership is transferred to the `Layout` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkLayout>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `LayoutProtocol`
    /// Will retain `GtkLayout`.
    /// - Parameter other: an instance of a related type that implements `LayoutProtocol`
    @inlinable public init<T: LayoutProtocol>(layout other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkLayout`. Unless you have a specific adjustment
    /// you’d like the layout to use for scrolling, pass `nil` for
    /// `hadjustment` and `vadjustment`.
    @inlinable public init<AdjustmentT: AdjustmentProtocol>( hadjustment: AdjustmentT?, vadjustment: AdjustmentT?) {
        let rv = gtk_layout_new(hadjustment?.adjustment_ptr, vadjustment?.adjustment_ptr)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum LayoutPropertyName: String, PropertyNameProtocol {
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
    case height = "height"
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
    case width = "width"
    case widthRequest = "width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case window = "window"
}

public extension LayoutProtocol {
    /// Bind a `LayoutPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: LayoutPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a Layout property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: LayoutPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Layout property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: LayoutPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: Layout has no signals// MARK: Layout Class: LayoutProtocol extension (methods and fields)
public extension LayoutProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkLayout` instance.
    @inlinable var layout_ptr: UnsafeMutablePointer<GtkLayout>! { return ptr?.assumingMemoryBound(to: GtkLayout.self) }

    /// Retrieve the bin window of the layout used for drawing operations.
    @inlinable func getBinWindow() -> Gdk.WindowRef! {
        let rv = Gdk.WindowRef(gtk_layout_get_bin_window(layout_ptr))
        return rv
    }

    /// This function should only be called after the layout has been
    /// placed in a `GtkScrolledWindow` or otherwise configured for
    /// scrolling. It returns the `GtkAdjustment` used for communication
    /// between the horizontal scrollbar and `layout`.
    /// 
    /// See `GtkScrolledWindow`, `GtkScrollbar`, `GtkAdjustment` for details.
    ///
    /// **get_hadjustment is deprecated:**
    /// Use gtk_scrollable_get_hadjustment()
    @available(*, deprecated)
    @inlinable func getHadjustment() -> AdjustmentRef! {
        let rv = AdjustmentRef(gconstpointer: gconstpointer(gtk_layout_get_hadjustment(layout_ptr)))
        return rv
    }

    /// Gets the size that has been set on the layout, and that determines
    /// the total extents of the layout’s scrollbar area. See
    /// gtk_layout_set_size ().
    @inlinable func getSize(width: UnsafeMutablePointer<guint>! = nil, height: UnsafeMutablePointer<guint>! = nil) {
        gtk_layout_get_size(layout_ptr, width, height)
    
    }

    /// This function should only be called after the layout has been
    /// placed in a `GtkScrolledWindow` or otherwise configured for
    /// scrolling. It returns the `GtkAdjustment` used for communication
    /// between the vertical scrollbar and `layout`.
    /// 
    /// See `GtkScrolledWindow`, `GtkScrollbar`, `GtkAdjustment` for details.
    ///
    /// **get_vadjustment is deprecated:**
    /// Use gtk_scrollable_get_vadjustment()
    @available(*, deprecated)
    @inlinable func getVadjustment() -> AdjustmentRef! {
        let rv = AdjustmentRef(gconstpointer: gconstpointer(gtk_layout_get_vadjustment(layout_ptr)))
        return rv
    }

    /// Moves a current child of `layout` to a new position.
    @inlinable func move<WidgetT: WidgetProtocol>(childWidget: WidgetT, x: Int, y: Int) {
        gtk_layout_move(layout_ptr, childWidget.widget_ptr, gint(x), gint(y))
    
    }

    /// Adds `child_widget` to `layout`, at position (`x`,`y`).
    /// `layout` becomes the new parent container of `child_widget`.
    @inlinable func put<WidgetT: WidgetProtocol>(childWidget: WidgetT, x: Int, y: Int) {
        gtk_layout_put(layout_ptr, childWidget.widget_ptr, gint(x), gint(y))
    
    }

    /// Sets the horizontal scroll adjustment for the layout.
    /// 
    /// See `GtkScrolledWindow`, `GtkScrollbar`, `GtkAdjustment` for details.
    ///
    /// **set_hadjustment is deprecated:**
    /// Use gtk_scrollable_set_hadjustment()
    @available(*, deprecated)
    @inlinable func setHadjustment(adjustment: AdjustmentRef? = nil) {
        gtk_layout_set_hadjustment(layout_ptr, adjustment?.adjustment_ptr)
    
    }
    /// Sets the horizontal scroll adjustment for the layout.
    /// 
    /// See `GtkScrolledWindow`, `GtkScrollbar`, `GtkAdjustment` for details.
    ///
    /// **set_hadjustment is deprecated:**
    /// Use gtk_scrollable_set_hadjustment()
    @available(*, deprecated)
    @inlinable func setHadjustment<AdjustmentT: AdjustmentProtocol>(adjustment: AdjustmentT?) {
        gtk_layout_set_hadjustment(layout_ptr, adjustment?.adjustment_ptr)
    
    }

    /// Sets the size of the scrollable area of the layout.
    @inlinable func setSize(width: Int, height: Int) {
        gtk_layout_set_size(layout_ptr, guint(width), guint(height))
    
    }

    /// Sets the vertical scroll adjustment for the layout.
    /// 
    /// See `GtkScrolledWindow`, `GtkScrollbar`, `GtkAdjustment` for details.
    ///
    /// **set_vadjustment is deprecated:**
    /// Use gtk_scrollable_set_vadjustment()
    @available(*, deprecated)
    @inlinable func setVadjustment(adjustment: AdjustmentRef? = nil) {
        gtk_layout_set_vadjustment(layout_ptr, adjustment?.adjustment_ptr)
    
    }
    /// Sets the vertical scroll adjustment for the layout.
    /// 
    /// See `GtkScrolledWindow`, `GtkScrollbar`, `GtkAdjustment` for details.
    ///
    /// **set_vadjustment is deprecated:**
    /// Use gtk_scrollable_set_vadjustment()
    @available(*, deprecated)
    @inlinable func setVadjustment<AdjustmentT: AdjustmentProtocol>(adjustment: AdjustmentT?) {
        gtk_layout_set_vadjustment(layout_ptr, adjustment?.adjustment_ptr)
    
    }
    /// Retrieve the bin window of the layout used for drawing operations.
    @inlinable var binWindow: Gdk.WindowRef! {
        /// Retrieve the bin window of the layout used for drawing operations.
        get {
            let rv = Gdk.WindowRef(gtk_layout_get_bin_window(layout_ptr))
            return rv
        }
    }

    /// This function should only be called after the layout has been
    /// placed in a `GtkScrolledWindow` or otherwise configured for
    /// scrolling. It returns the `GtkAdjustment` used for communication
    /// between the horizontal scrollbar and `layout`.
    /// 
    /// See `GtkScrolledWindow`, `GtkScrollbar`, `GtkAdjustment` for details.
    ///
    /// **get_hadjustment is deprecated:**
    /// Use gtk_scrollable_get_hadjustment()
    @inlinable var hadjustment: AdjustmentRef! {
        /// This function should only be called after the layout has been
        /// placed in a `GtkScrolledWindow` or otherwise configured for
        /// scrolling. It returns the `GtkAdjustment` used for communication
        /// between the horizontal scrollbar and `layout`.
        /// 
        /// See `GtkScrolledWindow`, `GtkScrollbar`, `GtkAdjustment` for details.
        ///
        /// **get_hadjustment is deprecated:**
        /// Use gtk_scrollable_get_hadjustment()
        @available(*, deprecated)
    get {
            let rv = AdjustmentRef(gconstpointer: gconstpointer(gtk_layout_get_hadjustment(layout_ptr)))
            return rv
        }
        /// Sets the horizontal scroll adjustment for the layout.
        /// 
        /// See `GtkScrolledWindow`, `GtkScrollbar`, `GtkAdjustment` for details.
        ///
        /// **set_hadjustment is deprecated:**
        /// Use gtk_scrollable_set_hadjustment()
        @available(*, deprecated)
    nonmutating set {
            gtk_layout_set_hadjustment(layout_ptr, UnsafeMutablePointer<GtkAdjustment>(newValue?.adjustment_ptr))
        }
    }

    /// This function should only be called after the layout has been
    /// placed in a `GtkScrolledWindow` or otherwise configured for
    /// scrolling. It returns the `GtkAdjustment` used for communication
    /// between the vertical scrollbar and `layout`.
    /// 
    /// See `GtkScrolledWindow`, `GtkScrollbar`, `GtkAdjustment` for details.
    ///
    /// **get_vadjustment is deprecated:**
    /// Use gtk_scrollable_get_vadjustment()
    @inlinable var vadjustment: AdjustmentRef! {
        /// This function should only be called after the layout has been
        /// placed in a `GtkScrolledWindow` or otherwise configured for
        /// scrolling. It returns the `GtkAdjustment` used for communication
        /// between the vertical scrollbar and `layout`.
        /// 
        /// See `GtkScrolledWindow`, `GtkScrollbar`, `GtkAdjustment` for details.
        ///
        /// **get_vadjustment is deprecated:**
        /// Use gtk_scrollable_get_vadjustment()
        @available(*, deprecated)
    get {
            let rv = AdjustmentRef(gconstpointer: gconstpointer(gtk_layout_get_vadjustment(layout_ptr)))
            return rv
        }
        /// Sets the vertical scroll adjustment for the layout.
        /// 
        /// See `GtkScrolledWindow`, `GtkScrollbar`, `GtkAdjustment` for details.
        ///
        /// **set_vadjustment is deprecated:**
        /// Use gtk_scrollable_set_vadjustment()
        @available(*, deprecated)
    nonmutating set {
            gtk_layout_set_vadjustment(layout_ptr, UnsafeMutablePointer<GtkAdjustment>(newValue?.adjustment_ptr))
        }
    }

    @inlinable var container: GtkContainer {
        get {
            let rv = layout_ptr.pointee.container
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - LevelBar Class

/// The `LevelBarProtocol` protocol exposes the methods and properties of an underlying `GtkLevelBar` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `LevelBar`.
/// Alternatively, use `LevelBarRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GtkLevelBar` is a bar widget that can be used
/// as a level indicator. Typical use cases are displaying the strength
/// of a password, or showing the charge level of a battery.
/// 
/// Use `gtk_level_bar_set_value()` to set the current value, and
/// `gtk_level_bar_add_offset_value()` to set the value offsets at which
/// the bar will be considered in a different state. GTK will add a few
/// offsets by default on the level bar: `GTK_LEVEL_BAR_OFFSET_LOW`,
/// `GTK_LEVEL_BAR_OFFSET_HIGH` and `GTK_LEVEL_BAR_OFFSET_FULL`, with
/// values 0.25, 0.75 and 1.0 respectively.
/// 
/// Note that it is your responsibility to update preexisting offsets
/// when changing the minimum or maximum value. GTK+ will simply clamp
/// them to the new range.
/// 
/// ## Adding a custom offset on the bar
/// 
/// (C Language Example):
/// ```C
/// 
/// static GtkWidget *
/// create_level_bar (void)
/// {
///   GtkWidget *widget;
///   GtkLevelBar *bar;
/// 
///   widget = gtk_level_bar_new ();
///   bar = GTK_LEVEL_BAR (widget);
/// 
///   // This changes the value of the default low offset
/// 
///   gtk_level_bar_add_offset_value (bar,
///                                   GTK_LEVEL_BAR_OFFSET_LOW,
///                                   0.10);
/// 
///   // This adds a new offset to the bar; the application will
///   // be able to change its color CSS like this:
///   //
///   // levelbar block.my-offset {
///   //   background-color: magenta;
///   //   border-style: solid;
///   //   border-color: black;
///   //   border-style: 1px;
///   // }
/// 
///   gtk_level_bar_add_offset_value (bar, "my-offset", 0.60);
/// 
///   return widget;
/// }
/// ```
/// 
/// The default interval of values is between zero and one, but it’s possible to
/// modify the interval using `gtk_level_bar_set_min_value()` and
/// `gtk_level_bar_set_max_value()`. The value will be always drawn in proportion to
/// the admissible interval, i.e. a value of 15 with a specified interval between
/// 10 and 20 is equivalent to a value of 0.5 with an interval between 0 and 1.
/// When `GTK_LEVEL_BAR_MODE_DISCRETE` is used, the bar level is rendered
/// as a finite number of separated blocks instead of a single one. The number
/// of blocks that will be rendered is equal to the number of units specified by
/// the admissible interval.
/// 
/// For instance, to build a bar rendered with five blocks, it’s sufficient to
/// set the minimum value to 0 and the maximum value to 5 after changing the indicator
/// mode to discrete.
/// 
/// GtkLevelBar was introduced in GTK+ 3.6.
/// 
/// # GtkLevelBar as GtkBuildable
/// 
/// The GtkLevelBar implementation of the GtkBuildable interface supports a
/// custom <offsets> element, which can contain any number of <offset> elements,
/// each of which must have name and value attributes.
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
/// levelbar[.discrete]
/// ╰── trough
///     ├── block.filled.level-name
///     ┊
///     ├── block.empty
///     ┊
/// ```
/// 
/// GtkLevelBar has a main CSS node with name levelbar and one of the style
/// classes .discrete or .continuous and a subnode with name trough. Below the
/// trough node are a number of nodes with name block and style class .filled
/// or .empty. In continuous mode, there is exactly one node of each, in discrete
/// mode, the number of filled and unfilled nodes corresponds to blocks that are
/// drawn. The block.filled nodes also get a style class .level-name corresponding
/// to the level for the current value.
/// 
/// In horizontal orientation, the nodes are always arranged from left to right,
/// regardless of text direction.
public protocol LevelBarProtocol: WidgetProtocol, OrientableProtocol {
        /// Untyped pointer to the underlying `GtkLevelBar` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkLevelBar` instance.
    var level_bar_ptr: UnsafeMutablePointer<GtkLevelBar>! { get }

}

/// The `LevelBarRef` type acts as a lightweight Swift reference to an underlying `GtkLevelBar` instance.
/// It exposes methods that can operate on this data type through `LevelBarProtocol` conformance.
/// Use `LevelBarRef` only as an `unowned` reference to an existing `GtkLevelBar` instance.
///
/// The `GtkLevelBar` is a bar widget that can be used
/// as a level indicator. Typical use cases are displaying the strength
/// of a password, or showing the charge level of a battery.
/// 
/// Use `gtk_level_bar_set_value()` to set the current value, and
/// `gtk_level_bar_add_offset_value()` to set the value offsets at which
/// the bar will be considered in a different state. GTK will add a few
/// offsets by default on the level bar: `GTK_LEVEL_BAR_OFFSET_LOW`,
/// `GTK_LEVEL_BAR_OFFSET_HIGH` and `GTK_LEVEL_BAR_OFFSET_FULL`, with
/// values 0.25, 0.75 and 1.0 respectively.
/// 
/// Note that it is your responsibility to update preexisting offsets
/// when changing the minimum or maximum value. GTK+ will simply clamp
/// them to the new range.
/// 
/// ## Adding a custom offset on the bar
/// 
/// (C Language Example):
/// ```C
/// 
/// static GtkWidget *
/// create_level_bar (void)
/// {
///   GtkWidget *widget;
///   GtkLevelBar *bar;
/// 
///   widget = gtk_level_bar_new ();
///   bar = GTK_LEVEL_BAR (widget);
/// 
///   // This changes the value of the default low offset
/// 
///   gtk_level_bar_add_offset_value (bar,
///                                   GTK_LEVEL_BAR_OFFSET_LOW,
///                                   0.10);
/// 
///   // This adds a new offset to the bar; the application will
///   // be able to change its color CSS like this:
///   //
///   // levelbar block.my-offset {
///   //   background-color: magenta;
///   //   border-style: solid;
///   //   border-color: black;
///   //   border-style: 1px;
///   // }
/// 
///   gtk_level_bar_add_offset_value (bar, "my-offset", 0.60);
/// 
///   return widget;
/// }
/// ```
/// 
/// The default interval of values is between zero and one, but it’s possible to
/// modify the interval using `gtk_level_bar_set_min_value()` and
/// `gtk_level_bar_set_max_value()`. The value will be always drawn in proportion to
/// the admissible interval, i.e. a value of 15 with a specified interval between
/// 10 and 20 is equivalent to a value of 0.5 with an interval between 0 and 1.
/// When `GTK_LEVEL_BAR_MODE_DISCRETE` is used, the bar level is rendered
/// as a finite number of separated blocks instead of a single one. The number
/// of blocks that will be rendered is equal to the number of units specified by
/// the admissible interval.
/// 
/// For instance, to build a bar rendered with five blocks, it’s sufficient to
/// set the minimum value to 0 and the maximum value to 5 after changing the indicator
/// mode to discrete.
/// 
/// GtkLevelBar was introduced in GTK+ 3.6.
/// 
/// # GtkLevelBar as GtkBuildable
/// 
/// The GtkLevelBar implementation of the GtkBuildable interface supports a
/// custom <offsets> element, which can contain any number of <offset> elements,
/// each of which must have name and value attributes.
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
/// levelbar[.discrete]
/// ╰── trough
///     ├── block.filled.level-name
///     ┊
///     ├── block.empty
///     ┊
/// ```
/// 
/// GtkLevelBar has a main CSS node with name levelbar and one of the style
/// classes .discrete or .continuous and a subnode with name trough. Below the
/// trough node are a number of nodes with name block and style class .filled
/// or .empty. In continuous mode, there is exactly one node of each, in discrete
/// mode, the number of filled and unfilled nodes corresponds to blocks that are
/// drawn. The block.filled nodes also get a style class .level-name corresponding
/// to the level for the current value.
/// 
/// In horizontal orientation, the nodes are always arranged from left to right,
/// regardless of text direction.
public struct LevelBarRef: LevelBarProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkLevelBar` instance.
    /// For type-safe access, use the generated, typed pointer `level_bar_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension LevelBarRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkLevelBar>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkLevelBar>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkLevelBar>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkLevelBar>?) {
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

    /// Reference intialiser for a related type that implements `LevelBarProtocol`
    @inlinable init<T: LevelBarProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: LevelBarProtocol>(_ other: T) -> LevelBarRef { LevelBarRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkLevelBar`.
    @inlinable init() {
        let rv = gtk_level_bar_new()
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Utility constructor that creates a new `GtkLevelBar` for the specified
    /// interval.
    @inlinable init(interval minValue: Double, maxValue: Double) {
        let rv = gtk_level_bar_new_for_interval(gdouble(minValue), gdouble(maxValue))
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Utility constructor that creates a new `GtkLevelBar` for the specified
    /// interval.
    @inlinable static func newFor(interval minValue: Double, maxValue: Double) -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_level_bar_new_for_interval(gdouble(minValue), gdouble(maxValue)))) else { return nil }
        return rv
    }
}

/// The `LevelBar` type acts as a reference-counted owner of an underlying `GtkLevelBar` instance.
/// It provides the methods that can operate on this data type through `LevelBarProtocol` conformance.
/// Use `LevelBar` as a strong reference or owner of a `GtkLevelBar` instance.
///
/// The `GtkLevelBar` is a bar widget that can be used
/// as a level indicator. Typical use cases are displaying the strength
/// of a password, or showing the charge level of a battery.
/// 
/// Use `gtk_level_bar_set_value()` to set the current value, and
/// `gtk_level_bar_add_offset_value()` to set the value offsets at which
/// the bar will be considered in a different state. GTK will add a few
/// offsets by default on the level bar: `GTK_LEVEL_BAR_OFFSET_LOW`,
/// `GTK_LEVEL_BAR_OFFSET_HIGH` and `GTK_LEVEL_BAR_OFFSET_FULL`, with
/// values 0.25, 0.75 and 1.0 respectively.
/// 
/// Note that it is your responsibility to update preexisting offsets
/// when changing the minimum or maximum value. GTK+ will simply clamp
/// them to the new range.
/// 
/// ## Adding a custom offset on the bar
/// 
/// (C Language Example):
/// ```C
/// 
/// static GtkWidget *
/// create_level_bar (void)
/// {
///   GtkWidget *widget;
///   GtkLevelBar *bar;
/// 
///   widget = gtk_level_bar_new ();
///   bar = GTK_LEVEL_BAR (widget);
/// 
///   // This changes the value of the default low offset
/// 
///   gtk_level_bar_add_offset_value (bar,
///                                   GTK_LEVEL_BAR_OFFSET_LOW,
///                                   0.10);
/// 
///   // This adds a new offset to the bar; the application will
///   // be able to change its color CSS like this:
///   //
///   // levelbar block.my-offset {
///   //   background-color: magenta;
///   //   border-style: solid;
///   //   border-color: black;
///   //   border-style: 1px;
///   // }
/// 
///   gtk_level_bar_add_offset_value (bar, "my-offset", 0.60);
/// 
///   return widget;
/// }
/// ```
/// 
/// The default interval of values is between zero and one, but it’s possible to
/// modify the interval using `gtk_level_bar_set_min_value()` and
/// `gtk_level_bar_set_max_value()`. The value will be always drawn in proportion to
/// the admissible interval, i.e. a value of 15 with a specified interval between
/// 10 and 20 is equivalent to a value of 0.5 with an interval between 0 and 1.
/// When `GTK_LEVEL_BAR_MODE_DISCRETE` is used, the bar level is rendered
/// as a finite number of separated blocks instead of a single one. The number
/// of blocks that will be rendered is equal to the number of units specified by
/// the admissible interval.
/// 
/// For instance, to build a bar rendered with five blocks, it’s sufficient to
/// set the minimum value to 0 and the maximum value to 5 after changing the indicator
/// mode to discrete.
/// 
/// GtkLevelBar was introduced in GTK+ 3.6.
/// 
/// # GtkLevelBar as GtkBuildable
/// 
/// The GtkLevelBar implementation of the GtkBuildable interface supports a
/// custom <offsets> element, which can contain any number of <offset> elements,
/// each of which must have name and value attributes.
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
/// levelbar[.discrete]
/// ╰── trough
///     ├── block.filled.level-name
///     ┊
///     ├── block.empty
///     ┊
/// ```
/// 
/// GtkLevelBar has a main CSS node with name levelbar and one of the style
/// classes .discrete or .continuous and a subnode with name trough. Below the
/// trough node are a number of nodes with name block and style class .filled
/// or .empty. In continuous mode, there is exactly one node of each, in discrete
/// mode, the number of filled and unfilled nodes corresponds to blocks that are
/// drawn. The block.filled nodes also get a style class .level-name corresponding
/// to the level for the current value.
/// 
/// In horizontal orientation, the nodes are always arranged from left to right,
/// regardless of text direction.
open class LevelBar: Widget, LevelBarProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LevelBar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkLevelBar>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LevelBar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkLevelBar>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LevelBar` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LevelBar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LevelBar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkLevelBar>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LevelBar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkLevelBar>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkLevelBar`.
    /// i.e., ownership is transferred to the `LevelBar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkLevelBar>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `LevelBarProtocol`
    /// Will retain `GtkLevelBar`.
    /// - Parameter other: an instance of a related type that implements `LevelBarProtocol`
    @inlinable public init<T: LevelBarProtocol>(levelBar other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkLevelBar`.
    @inlinable public init() {
        let rv = gtk_level_bar_new()
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Utility constructor that creates a new `GtkLevelBar` for the specified
    /// interval.
    @inlinable public init(interval minValue: Double, maxValue: Double) {
        let rv = gtk_level_bar_new_for_interval(gdouble(minValue), gdouble(maxValue))
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Utility constructor that creates a new `GtkLevelBar` for the specified
    /// interval.
    @inlinable public static func newFor(interval minValue: Double, maxValue: Double) -> Widget! {
        guard let rv = Widget(gconstpointer: gconstpointer(gtk_level_bar_new_for_interval(gdouble(minValue), gdouble(maxValue)))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

}

public enum LevelBarPropertyName: String, PropertyNameProtocol {
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
    /// Level bars normally grow from top to bottom or left to right.
    /// Inverted level bars grow in the opposite direction.
    case inverted = "inverted"
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
    /// The `GtkLevelBar:max`-value property determaxes the maximum value of
    /// the interval that can be displayed by the bar.
    case maxValue = "max-value"
    /// The `GtkLevelBar:min`-value property determines the minimum value of
    /// the interval that can be displayed by the bar.
    case minValue = "min-value"
    /// The `GtkLevelBar:mode` property determines the way `GtkLevelBar`
    /// interprets the value properties to draw the level fill area.
    /// Specifically, when the value is `GTK_LEVEL_BAR_MODE_CONTINUOUS`,
    /// `GtkLevelBar` will draw a single block representing the current value in
    /// that area; when the value is `GTK_LEVEL_BAR_MODE_DISCRETE`,
    /// the widget will draw a succession of separate blocks filling the
    /// draw area, with the number of blocks being equal to the units separating
    /// the integral roundings of `GtkLevelBar:min`-value and `GtkLevelBar:max`-value.
    case mode = "mode"
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
    /// The `GtkLevelBar:value` property determines the currently
    /// filled value of the level bar.
    case value = "value"
    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    case vexpand = "vexpand"
    /// Whether to use the `GtkWidget:vexpand` property. See `gtk_widget_get_vexpand_set()`.
    case vexpandSet = "vexpand-set"
    case visible = "visible"
    case widthRequest = "width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case window = "window"
}

public extension LevelBarProtocol {
    /// Bind a `LevelBarPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: LevelBarPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a LevelBar property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: LevelBarPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a LevelBar property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: LevelBarPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: Signals of LevelBar
public extension LevelBarProtocol {
    /// Emitted when an offset specified on the bar changes value as an
    /// effect to `gtk_level_bar_add_offset_value()` being called.
    /// 
    /// The signal supports detailed connections; you can connect to the
    /// detailed signal "changed`x`" in order to only receive callbacks when
    /// the value of offset "x" changes.
    /// - Note: Representation of signal named `offset-changed`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter name: the name of the offset that changed value
    @discardableResult
    func onOffsetChanged(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: LevelBarRef, _ name: String) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<LevelBarRef, String, Void>
        let cCallback: @convention(c) (gpointer, UnsafeMutablePointer<gchar>?, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(LevelBarRef(raw: unownedSelf), arg1.map({ String(cString: $0) })!)
            return output
        }
        return signalConnectData(
            detailedSignal: "offset-changed", 
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
    func onNotifyInverted(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: LevelBarRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<LevelBarRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(LevelBarRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
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
    /// - Note: Representation of signal named `notify::max-value`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyMaxValue(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: LevelBarRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<LevelBarRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(LevelBarRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::max-value", 
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
    /// - Note: Representation of signal named `notify::min-value`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyMinValue(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: LevelBarRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<LevelBarRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(LevelBarRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::min-value", 
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
    /// - Note: Representation of signal named `notify::mode`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyMode(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: LevelBarRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<LevelBarRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(LevelBarRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::mode", 
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
    /// - Note: Representation of signal named `notify::value`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyValue(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: LevelBarRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<LevelBarRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(LevelBarRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::value", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
}

// MARK: LevelBar Class: LevelBarProtocol extension (methods and fields)
public extension LevelBarProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkLevelBar` instance.
    @inlinable var level_bar_ptr: UnsafeMutablePointer<GtkLevelBar>! { return ptr?.assumingMemoryBound(to: GtkLevelBar.self) }

    /// Adds a new offset marker on `self` at the position specified by `value`.
    /// When the bar value is in the interval topped by `value` (or between `value`
    /// and `GtkLevelBar:max`-value in case the offset is the last one on the bar)
    /// a style class named `level-``name` will be applied
    /// when rendering the level bar fill.
    /// If another offset marker named `name` exists, its value will be
    /// replaced by `value`.
    @inlinable func addOffsetValue(name: UnsafePointer<gchar>!, value: Double) {
        gtk_level_bar_add_offset_value(level_bar_ptr, name, gdouble(value))
    
    }

    /// Return the value of the `GtkLevelBar:inverted` property.
    @inlinable func getInverted() -> Bool {
        let rv = ((gtk_level_bar_get_inverted(level_bar_ptr)) != 0)
        return rv
    }

    /// Returns the value of the `GtkLevelBar:max`-value property.
    @inlinable func getMaxValue() -> Double {
        let rv = Double(gtk_level_bar_get_max_value(level_bar_ptr))
        return rv
    }

    /// Returns the value of the `GtkLevelBar:min`-value property.
    @inlinable func getMinValue() -> Double {
        let rv = Double(gtk_level_bar_get_min_value(level_bar_ptr))
        return rv
    }

    /// Returns the value of the `GtkLevelBar:mode` property.
    @inlinable func getMode() -> GtkLevelBarMode {
        let rv = gtk_level_bar_get_mode(level_bar_ptr)
        return rv
    }

    /// Fetches the value specified for the offset marker `name` in `self`,
    /// returning `true` in case an offset named `name` was found.
    @inlinable func getOffsetValue(name: UnsafePointer<gchar>? = nil, value: UnsafeMutablePointer<gdouble>!) -> Bool {
        let rv = ((gtk_level_bar_get_offset_value(level_bar_ptr, name, value)) != 0)
        return rv
    }

    /// Returns the value of the `GtkLevelBar:value` property.
    @inlinable func getValue() -> Double {
        let rv = Double(gtk_level_bar_get_value(level_bar_ptr))
        return rv
    }

    /// Removes an offset marker previously added with
    /// `gtk_level_bar_add_offset_value()`.
    @inlinable func removeOffsetValue(name: UnsafePointer<gchar>? = nil) {
        gtk_level_bar_remove_offset_value(level_bar_ptr, name)
    
    }

    /// Sets the value of the `GtkLevelBar:inverted` property.
    @inlinable func set(inverted: Bool) {
        gtk_level_bar_set_inverted(level_bar_ptr, gboolean((inverted) ? 1 : 0))
    
    }

    /// Sets the value of the `GtkLevelBar:max`-value property.
    /// 
    /// You probably want to update preexisting level offsets after calling
    /// this function.
    @inlinable func setMax(value: Double) {
        gtk_level_bar_set_max_value(level_bar_ptr, gdouble(value))
    
    }

    /// Sets the value of the `GtkLevelBar:min`-value property.
    /// 
    /// You probably want to update preexisting level offsets after calling
    /// this function.
    @inlinable func setMin(value: Double) {
        gtk_level_bar_set_min_value(level_bar_ptr, gdouble(value))
    
    }

    /// Sets the value of the `GtkLevelBar:mode` property.
    @inlinable func set(mode: GtkLevelBarMode) {
        gtk_level_bar_set_mode(level_bar_ptr, mode)
    
    }

    /// Sets the value of the `GtkLevelBar:value` property.
    @inlinable func set(value: Double) {
        gtk_level_bar_set_value(level_bar_ptr, gdouble(value))
    
    }
    /// Level bars normally grow from top to bottom or left to right.
    /// Inverted level bars grow in the opposite direction.
    @inlinable var inverted: Bool {
        /// Return the value of the `GtkLevelBar:inverted` property.
        get {
            let rv = ((gtk_level_bar_get_inverted(level_bar_ptr)) != 0)
            return rv
        }
        /// Sets the value of the `GtkLevelBar:inverted` property.
        nonmutating set {
            gtk_level_bar_set_inverted(level_bar_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Returns the value of the `GtkLevelBar:max`-value property.
    @inlinable var maxValue: Double {
        /// Returns the value of the `GtkLevelBar:max`-value property.
        get {
            let rv = Double(gtk_level_bar_get_max_value(level_bar_ptr))
            return rv
        }
        /// Sets the value of the `GtkLevelBar:max`-value property.
        /// 
        /// You probably want to update preexisting level offsets after calling
        /// this function.
        nonmutating set {
            gtk_level_bar_set_max_value(level_bar_ptr, gdouble(newValue))
        }
    }

    /// Returns the value of the `GtkLevelBar:min`-value property.
    @inlinable var minValue: Double {
        /// Returns the value of the `GtkLevelBar:min`-value property.
        get {
            let rv = Double(gtk_level_bar_get_min_value(level_bar_ptr))
            return rv
        }
        /// Sets the value of the `GtkLevelBar:min`-value property.
        /// 
        /// You probably want to update preexisting level offsets after calling
        /// this function.
        nonmutating set {
            gtk_level_bar_set_min_value(level_bar_ptr, gdouble(newValue))
        }
    }

    /// The `GtkLevelBar:mode` property determines the way `GtkLevelBar`
    /// interprets the value properties to draw the level fill area.
    /// Specifically, when the value is `GTK_LEVEL_BAR_MODE_CONTINUOUS`,
    /// `GtkLevelBar` will draw a single block representing the current value in
    /// that area; when the value is `GTK_LEVEL_BAR_MODE_DISCRETE`,
    /// the widget will draw a succession of separate blocks filling the
    /// draw area, with the number of blocks being equal to the units separating
    /// the integral roundings of `GtkLevelBar:min`-value and `GtkLevelBar:max`-value.
    @inlinable var mode: GtkLevelBarMode {
        /// Returns the value of the `GtkLevelBar:mode` property.
        get {
            let rv = gtk_level_bar_get_mode(level_bar_ptr)
            return rv
        }
        /// Sets the value of the `GtkLevelBar:mode` property.
        nonmutating set {
            gtk_level_bar_set_mode(level_bar_ptr, newValue)
        }
    }

    /// The `GtkLevelBar:value` property determines the currently
    /// filled value of the level bar.
    @inlinable var value: Double {
        /// Returns the value of the `GtkLevelBar:value` property.
        get {
            let rv = Double(gtk_level_bar_get_value(level_bar_ptr))
            return rv
        }
        /// Sets the value of the `GtkLevelBar:value` property.
        nonmutating set {
            gtk_level_bar_set_value(level_bar_ptr, gdouble(newValue))
        }
    }

    // var parent is unavailable because parent is private

    // var priv is unavailable because priv is private

}



// MARK: - LevelBarAccessible Class

/// The `LevelBarAccessibleProtocol` protocol exposes the methods and properties of an underlying `GtkLevelBarAccessible` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `LevelBarAccessible`.
/// Alternatively, use `LevelBarAccessibleRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol LevelBarAccessibleProtocol: WidgetAccessibleProtocol, Atk.ValueProtocol {
        /// Untyped pointer to the underlying `GtkLevelBarAccessible` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkLevelBarAccessible` instance.
    var level_bar_accessible_ptr: UnsafeMutablePointer<GtkLevelBarAccessible>! { get }

}

/// The `LevelBarAccessibleRef` type acts as a lightweight Swift reference to an underlying `GtkLevelBarAccessible` instance.
/// It exposes methods that can operate on this data type through `LevelBarAccessibleProtocol` conformance.
/// Use `LevelBarAccessibleRef` only as an `unowned` reference to an existing `GtkLevelBarAccessible` instance.
///

public struct LevelBarAccessibleRef: LevelBarAccessibleProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkLevelBarAccessible` instance.
    /// For type-safe access, use the generated, typed pointer `level_bar_accessible_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension LevelBarAccessibleRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkLevelBarAccessible>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkLevelBarAccessible>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkLevelBarAccessible>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkLevelBarAccessible>?) {
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

    /// Reference intialiser for a related type that implements `LevelBarAccessibleProtocol`
    @inlinable init<T: LevelBarAccessibleProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: LevelBarAccessibleProtocol>(_ other: T) -> LevelBarAccessibleRef { LevelBarAccessibleRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarAccessibleProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarAccessibleProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarAccessibleProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarAccessibleProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarAccessibleProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `LevelBarAccessible` type acts as a reference-counted owner of an underlying `GtkLevelBarAccessible` instance.
/// It provides the methods that can operate on this data type through `LevelBarAccessibleProtocol` conformance.
/// Use `LevelBarAccessible` as a strong reference or owner of a `GtkLevelBarAccessible` instance.
///

open class LevelBarAccessible: WidgetAccessible, LevelBarAccessibleProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LevelBarAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkLevelBarAccessible>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LevelBarAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkLevelBarAccessible>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LevelBarAccessible` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LevelBarAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LevelBarAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkLevelBarAccessible>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LevelBarAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkLevelBarAccessible>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkLevelBarAccessible`.
    /// i.e., ownership is transferred to the `LevelBarAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkLevelBarAccessible>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `LevelBarAccessibleProtocol`
    /// Will retain `GtkLevelBarAccessible`.
    /// - Parameter other: an instance of a related type that implements `LevelBarAccessibleProtocol`
    @inlinable public init<T: LevelBarAccessibleProtocol>(levelBarAccessible other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarAccessibleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarAccessibleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarAccessibleProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarAccessibleProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarAccessibleProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarAccessibleProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarAccessibleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarAccessibleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum LevelBarAccessiblePropertyName: String, PropertyNameProtocol {
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

public extension LevelBarAccessibleProtocol {
    /// Bind a `LevelBarAccessiblePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: LevelBarAccessiblePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a LevelBarAccessible property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: LevelBarAccessiblePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a LevelBarAccessible property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: LevelBarAccessiblePropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: LevelBarAccessible has no signals// MARK: LevelBarAccessible Class: LevelBarAccessibleProtocol extension (methods and fields)
public extension LevelBarAccessibleProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkLevelBarAccessible` instance.
    @inlinable var level_bar_accessible_ptr: UnsafeMutablePointer<GtkLevelBarAccessible>! { return ptr?.assumingMemoryBound(to: GtkLevelBarAccessible.self) }


    @inlinable var parent: GtkWidgetAccessible {
        get {
            let rv = level_bar_accessible_ptr.pointee.parent
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - LinkButton Class

/// The `LinkButtonProtocol` protocol exposes the methods and properties of an underlying `GtkLinkButton` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `LinkButton`.
/// Alternatively, use `LinkButtonRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A GtkLinkButton is a `GtkButton` with a hyperlink, similar to the one
/// used by web browsers, which triggers an action when clicked. It is useful
/// to show quick links to resources.
/// 
/// A link button is created by calling either `gtk_link_button_new()` or
/// `gtk_link_button_new_with_label()`. If using the former, the URI you pass
/// to the constructor is used as a label for the widget.
/// 
/// The URI bound to a GtkLinkButton can be set specifically using
/// `gtk_link_button_set_uri()`, and retrieved using `gtk_link_button_get_uri()`.
/// 
/// By default, GtkLinkButton calls `gtk_show_uri_on_window()` when the button is
/// clicked. This behaviour can be overridden by connecting to the
/// `GtkLinkButton::activate`-link signal and returning `true` from the
/// signal handler.
/// 
/// # CSS nodes
/// 
/// GtkLinkButton has a single CSS node with name button. To differentiate
/// it from a plain `GtkButton`, it gets the .link style class.
public protocol LinkButtonProtocol: ButtonProtocol {
        /// Untyped pointer to the underlying `GtkLinkButton` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkLinkButton` instance.
    var link_button_ptr: UnsafeMutablePointer<GtkLinkButton>! { get }

}

/// The `LinkButtonRef` type acts as a lightweight Swift reference to an underlying `GtkLinkButton` instance.
/// It exposes methods that can operate on this data type through `LinkButtonProtocol` conformance.
/// Use `LinkButtonRef` only as an `unowned` reference to an existing `GtkLinkButton` instance.
///
/// A GtkLinkButton is a `GtkButton` with a hyperlink, similar to the one
/// used by web browsers, which triggers an action when clicked. It is useful
/// to show quick links to resources.
/// 
/// A link button is created by calling either `gtk_link_button_new()` or
/// `gtk_link_button_new_with_label()`. If using the former, the URI you pass
/// to the constructor is used as a label for the widget.
/// 
/// The URI bound to a GtkLinkButton can be set specifically using
/// `gtk_link_button_set_uri()`, and retrieved using `gtk_link_button_get_uri()`.
/// 
/// By default, GtkLinkButton calls `gtk_show_uri_on_window()` when the button is
/// clicked. This behaviour can be overridden by connecting to the
/// `GtkLinkButton::activate`-link signal and returning `true` from the
/// signal handler.
/// 
/// # CSS nodes
/// 
/// GtkLinkButton has a single CSS node with name button. To differentiate
/// it from a plain `GtkButton`, it gets the .link style class.
public struct LinkButtonRef: LinkButtonProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkLinkButton` instance.
    /// For type-safe access, use the generated, typed pointer `link_button_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension LinkButtonRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkLinkButton>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkLinkButton>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkLinkButton>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkLinkButton>?) {
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

    /// Reference intialiser for a related type that implements `LinkButtonProtocol`
    @inlinable init<T: LinkButtonProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: LinkButtonProtocol>(_ other: T) -> LinkButtonRef { LinkButtonRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkLinkButton` with the URI as its text.
    @inlinable init( uri: UnsafePointer<gchar>!) {
        let rv = gtk_link_button_new(uri)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GtkLinkButton` containing a label.
    @inlinable init(label uri: UnsafePointer<gchar>!, label: UnsafePointer<gchar>? = nil) {
        let rv = gtk_link_button_new_with_label(uri, label)
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a new `GtkLinkButton` containing a label.
    @inlinable static func linkButtonNewWith(label uri: UnsafePointer<gchar>!, label: UnsafePointer<gchar>? = nil) -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_link_button_new_with_label(uri, label))) else { return nil }
        return rv
    }
}

/// The `LinkButton` type acts as a reference-counted owner of an underlying `GtkLinkButton` instance.
/// It provides the methods that can operate on this data type through `LinkButtonProtocol` conformance.
/// Use `LinkButton` as a strong reference or owner of a `GtkLinkButton` instance.
///
/// A GtkLinkButton is a `GtkButton` with a hyperlink, similar to the one
/// used by web browsers, which triggers an action when clicked. It is useful
/// to show quick links to resources.
/// 
/// A link button is created by calling either `gtk_link_button_new()` or
/// `gtk_link_button_new_with_label()`. If using the former, the URI you pass
/// to the constructor is used as a label for the widget.
/// 
/// The URI bound to a GtkLinkButton can be set specifically using
/// `gtk_link_button_set_uri()`, and retrieved using `gtk_link_button_get_uri()`.
/// 
/// By default, GtkLinkButton calls `gtk_show_uri_on_window()` when the button is
/// clicked. This behaviour can be overridden by connecting to the
/// `GtkLinkButton::activate`-link signal and returning `true` from the
/// signal handler.
/// 
/// # CSS nodes
/// 
/// GtkLinkButton has a single CSS node with name button. To differentiate
/// it from a plain `GtkButton`, it gets the .link style class.
open class LinkButton: Button, LinkButtonProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LinkButton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkLinkButton>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LinkButton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkLinkButton>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LinkButton` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LinkButton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LinkButton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkLinkButton>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LinkButton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkLinkButton>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkLinkButton`.
    /// i.e., ownership is transferred to the `LinkButton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkLinkButton>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `LinkButtonProtocol`
    /// Will retain `GtkLinkButton`.
    /// - Parameter other: an instance of a related type that implements `LinkButtonProtocol`
    @inlinable public init<T: LinkButtonProtocol>(linkButton other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkLinkButton` with the URI as its text.
    @inlinable public init( uri: UnsafePointer<gchar>!) {
        let rv = gtk_link_button_new(uri)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new `GtkLinkButton` containing a label.
    @inlinable public init(label uri: UnsafePointer<gchar>!, label: UnsafePointer<gchar>? = nil) {
        let rv = gtk_link_button_new_with_label(uri, label)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new `GtkLinkButton` containing a label.
    @inlinable public static func linkButtonNewWith(label uri: UnsafePointer<gchar>!, label: UnsafePointer<gchar>? = nil) -> Widget! {
        guard let rv = Widget(gconstpointer: gconstpointer(gtk_link_button_new_with_label(uri, label))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

}

public enum LinkButtonPropertyName: String, PropertyNameProtocol {
    /// If `true`, the button will ignore the `GtkSettings:gtk`-button-images
    /// setting and always show the image, if available.
    /// 
    /// Use this property if the button would be useless or hard to use
    /// without the image.
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
    /// The child widget to appear next to the button text.
    case image = "image"
    /// The position of the image relative to the text inside the button.
    case imagePosition = "image-position"
    case isFocus = "is-focus"
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
    case relief = "relief"
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
    /// The URI bound to this button.
    case uri = "uri"

    ///
    /// **use-stock is deprecated:**
    /// This method is deprecated.
    case useStock = "use-stock"
    case useUnderline = "use-underline"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case valign = "valign"
    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    case vexpand = "vexpand"
    /// Whether to use the `GtkWidget:vexpand` property. See `gtk_widget_get_vexpand_set()`.
    case vexpandSet = "vexpand-set"
    case visible = "visible"
    /// The 'visited' state of this button. A visited link is drawn in a
    /// different color.
    case visited = "visited"
    case widthRequest = "width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case window = "window"
    /// If the child of the button is a `GtkMisc` or `GtkAlignment`, this property
    /// can be used to control its horizontal alignment. 0.0 is left aligned,
    /// 1.0 is right aligned.
    ///
    /// **xalign is deprecated:**
    /// Access the child widget directly if you need to control
    /// its alignment.
    case xalign = "xalign"
    /// If the child of the button is a `GtkMisc` or `GtkAlignment`, this property
    /// can be used to control its vertical alignment. 0.0 is top aligned,
    /// 1.0 is bottom aligned.
    ///
    /// **yalign is deprecated:**
    /// Access the child widget directly if you need to control
    /// its alignment.
    case yalign = "yalign"
}

public extension LinkButtonProtocol {
    /// Bind a `LinkButtonPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: LinkButtonPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a LinkButton property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: LinkButtonPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a LinkButton property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: LinkButtonPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: Signals of LinkButton
public extension LinkButtonProtocol {
    /// The `activate`-link signal is emitted each time the `GtkLinkButton`
    /// has been clicked.
    /// 
    /// The default handler will call `gtk_show_uri_on_window()` with the URI stored inside
    /// the `GtkLinkButton:uri` property.
    /// 
    /// To override the default behavior, you can connect to the `activate`-link
    /// signal and stop the propagation of the signal by returning `true` from
    /// your handler.
    /// - Note: Representation of signal named `activate-link`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onActivateLink(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: LinkButtonRef) -> Bool ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<LinkButtonRef, Bool>
        let cCallback: @convention(c) (gpointer, gpointer) -> gboolean = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output = holder.call(LinkButtonRef(raw: unownedSelf))
            return gboolean((output) ? 1 : 0)
        }
        return signalConnectData(
            detailedSignal: "activate-link", 
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
    /// - Note: Representation of signal named `notify::uri`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyURI(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: LinkButtonRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<LinkButtonRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(LinkButtonRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::uri", 
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
    /// - Note: Representation of signal named `notify::visited`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyVisited(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: LinkButtonRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<LinkButtonRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(LinkButtonRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::visited", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
}

// MARK: LinkButton Class: LinkButtonProtocol extension (methods and fields)
public extension LinkButtonProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkLinkButton` instance.
    @inlinable var link_button_ptr: UnsafeMutablePointer<GtkLinkButton>! { return ptr?.assumingMemoryBound(to: GtkLinkButton.self) }

    /// Retrieves the URI set using `gtk_link_button_set_uri()`.
    @inlinable func getURI() -> String! {
        let rv = gtk_link_button_get_uri(link_button_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Retrieves the “visited” state of the URI where the `GtkLinkButton`
    /// points. The button becomes visited when it is clicked. If the URI
    /// is changed on the button, the “visited” state is unset again.
    /// 
    /// The state may also be changed using `gtk_link_button_set_visited()`.
    @inlinable func getVisited() -> Bool {
        let rv = ((gtk_link_button_get_visited(link_button_ptr)) != 0)
        return rv
    }

    /// Sets `uri` as the URI where the `GtkLinkButton` points. As a side-effect
    /// this unsets the “visited” state of the button.
    @inlinable func set(uri: UnsafePointer<gchar>!) {
        gtk_link_button_set_uri(link_button_ptr, uri)
    
    }

    /// Sets the “visited” state of the URI where the `GtkLinkButton`
    /// points.  See `gtk_link_button_get_visited()` for more details.
    @inlinable func set(visited: Bool) {
        gtk_link_button_set_visited(link_button_ptr, gboolean((visited) ? 1 : 0))
    
    }
    /// The URI bound to this button.
    @inlinable var uri: String! {
        /// Retrieves the URI set using `gtk_link_button_set_uri()`.
        get {
            let rv = gtk_link_button_get_uri(link_button_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets `uri` as the URI where the `GtkLinkButton` points. As a side-effect
        /// this unsets the “visited” state of the button.
        nonmutating set {
            gtk_link_button_set_uri(link_button_ptr, newValue)
        }
    }

    /// The 'visited' state of this button. A visited link is drawn in a
    /// different color.
    @inlinable var visited: Bool {
        /// Retrieves the “visited” state of the URI where the `GtkLinkButton`
        /// points. The button becomes visited when it is clicked. If the URI
        /// is changed on the button, the “visited” state is unset again.
        /// 
        /// The state may also be changed using `gtk_link_button_set_visited()`.
        get {
            let rv = ((gtk_link_button_get_visited(link_button_ptr)) != 0)
            return rv
        }
        /// Sets the “visited” state of the URI where the `GtkLinkButton`
        /// points.  See `gtk_link_button_get_visited()` for more details.
        nonmutating set {
            gtk_link_button_set_visited(link_button_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    // var parentInstance is unavailable because parent_instance is private

    // var priv is unavailable because priv is private

}



// MARK: - LinkButtonAccessible Class

/// The `LinkButtonAccessibleProtocol` protocol exposes the methods and properties of an underlying `GtkLinkButtonAccessible` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `LinkButtonAccessible`.
/// Alternatively, use `LinkButtonAccessibleRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol LinkButtonAccessibleProtocol: ButtonAccessibleProtocol, Atk.HyperlinkImplProtocol {
        /// Untyped pointer to the underlying `GtkLinkButtonAccessible` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkLinkButtonAccessible` instance.
    var link_button_accessible_ptr: UnsafeMutablePointer<GtkLinkButtonAccessible>! { get }

}

/// The `LinkButtonAccessibleRef` type acts as a lightweight Swift reference to an underlying `GtkLinkButtonAccessible` instance.
/// It exposes methods that can operate on this data type through `LinkButtonAccessibleProtocol` conformance.
/// Use `LinkButtonAccessibleRef` only as an `unowned` reference to an existing `GtkLinkButtonAccessible` instance.
///

public struct LinkButtonAccessibleRef: LinkButtonAccessibleProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkLinkButtonAccessible` instance.
    /// For type-safe access, use the generated, typed pointer `link_button_accessible_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension LinkButtonAccessibleRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkLinkButtonAccessible>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkLinkButtonAccessible>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkLinkButtonAccessible>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkLinkButtonAccessible>?) {
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

    /// Reference intialiser for a related type that implements `LinkButtonAccessibleProtocol`
    @inlinable init<T: LinkButtonAccessibleProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: LinkButtonAccessibleProtocol>(_ other: T) -> LinkButtonAccessibleRef { LinkButtonAccessibleRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonAccessibleProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonAccessibleProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonAccessibleProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonAccessibleProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonAccessibleProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `LinkButtonAccessible` type acts as a reference-counted owner of an underlying `GtkLinkButtonAccessible` instance.
/// It provides the methods that can operate on this data type through `LinkButtonAccessibleProtocol` conformance.
/// Use `LinkButtonAccessible` as a strong reference or owner of a `GtkLinkButtonAccessible` instance.
///

open class LinkButtonAccessible: ButtonAccessible, LinkButtonAccessibleProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LinkButtonAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkLinkButtonAccessible>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LinkButtonAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkLinkButtonAccessible>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LinkButtonAccessible` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LinkButtonAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LinkButtonAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkLinkButtonAccessible>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LinkButtonAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkLinkButtonAccessible>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkLinkButtonAccessible`.
    /// i.e., ownership is transferred to the `LinkButtonAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkLinkButtonAccessible>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `LinkButtonAccessibleProtocol`
    /// Will retain `GtkLinkButtonAccessible`.
    /// - Parameter other: an instance of a related type that implements `LinkButtonAccessibleProtocol`
    @inlinable public init<T: LinkButtonAccessibleProtocol>(linkButtonAccessible other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonAccessibleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonAccessibleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonAccessibleProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonAccessibleProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonAccessibleProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonAccessibleProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonAccessibleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonAccessibleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum LinkButtonAccessiblePropertyName: String, PropertyNameProtocol {
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

public extension LinkButtonAccessibleProtocol {
    /// Bind a `LinkButtonAccessiblePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: LinkButtonAccessiblePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a LinkButtonAccessible property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: LinkButtonAccessiblePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a LinkButtonAccessible property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: LinkButtonAccessiblePropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: LinkButtonAccessible has no signals// MARK: LinkButtonAccessible Class: LinkButtonAccessibleProtocol extension (methods and fields)
public extension LinkButtonAccessibleProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkLinkButtonAccessible` instance.
    @inlinable var link_button_accessible_ptr: UnsafeMutablePointer<GtkLinkButtonAccessible>! { return ptr?.assumingMemoryBound(to: GtkLinkButtonAccessible.self) }


    @inlinable var parent: GtkButtonAccessible {
        get {
            let rv = link_button_accessible_ptr.pointee.parent
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - ListBox Class

/// The `ListBoxProtocol` protocol exposes the methods and properties of an underlying `GtkListBox` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ListBox`.
/// Alternatively, use `ListBoxRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A GtkListBox is a vertical container that contains GtkListBoxRow
/// children. These rows can by dynamically sorted and filtered, and
/// headers can be added dynamically depending on the row content.
/// It also allows keyboard and mouse navigation and selection like
/// a typical list.
/// 
/// Using GtkListBox is often an alternative to `GtkTreeView`, especially
/// when the list contents has a more complicated layout than what is allowed
/// by a `GtkCellRenderer`, or when the contents is interactive (i.e. has a
/// button in it).
/// 
/// Although a `GtkListBox` must have only `GtkListBoxRow` children you can
/// add any kind of widget to it via `gtk_container_add()`, and a `GtkListBoxRow`
/// widget will automatically be inserted between the list and the widget.
/// 
/// `GtkListBoxRows` can be marked as activatable or selectable. If a row
/// is activatable, `GtkListBox::row`-activated will be emitted for it when
/// the user tries to activate it. If it is selectable, the row will be marked
/// as selected when the user tries to select it.
/// 
/// The GtkListBox widget was added in GTK+ 3.10.
/// 
/// # GtkListBox as GtkBuildable
/// 
/// The GtkListBox implementation of the `GtkBuildable` interface supports
/// setting a child as the placeholder by specifying “placeholder” as the “type”
/// attribute of a <child> element. See `gtk_list_box_set_placeholder()` for info.
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
/// list
/// ╰── row[.activatable]
/// ```
/// 
/// GtkListBox uses a single CSS node named list. Each GtkListBoxRow uses
/// a single CSS node named row. The row nodes get the .activatable
/// style class added when appropriate.
public protocol ListBoxProtocol: ContainerProtocol {
        /// Untyped pointer to the underlying `GtkListBox` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkListBox` instance.
    var list_box_ptr: UnsafeMutablePointer<GtkListBox>! { get }

}

/// The `ListBoxRef` type acts as a lightweight Swift reference to an underlying `GtkListBox` instance.
/// It exposes methods that can operate on this data type through `ListBoxProtocol` conformance.
/// Use `ListBoxRef` only as an `unowned` reference to an existing `GtkListBox` instance.
///
/// A GtkListBox is a vertical container that contains GtkListBoxRow
/// children. These rows can by dynamically sorted and filtered, and
/// headers can be added dynamically depending on the row content.
/// It also allows keyboard and mouse navigation and selection like
/// a typical list.
/// 
/// Using GtkListBox is often an alternative to `GtkTreeView`, especially
/// when the list contents has a more complicated layout than what is allowed
/// by a `GtkCellRenderer`, or when the contents is interactive (i.e. has a
/// button in it).
/// 
/// Although a `GtkListBox` must have only `GtkListBoxRow` children you can
/// add any kind of widget to it via `gtk_container_add()`, and a `GtkListBoxRow`
/// widget will automatically be inserted between the list and the widget.
/// 
/// `GtkListBoxRows` can be marked as activatable or selectable. If a row
/// is activatable, `GtkListBox::row`-activated will be emitted for it when
/// the user tries to activate it. If it is selectable, the row will be marked
/// as selected when the user tries to select it.
/// 
/// The GtkListBox widget was added in GTK+ 3.10.
/// 
/// # GtkListBox as GtkBuildable
/// 
/// The GtkListBox implementation of the `GtkBuildable` interface supports
/// setting a child as the placeholder by specifying “placeholder” as the “type”
/// attribute of a <child> element. See `gtk_list_box_set_placeholder()` for info.
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
/// list
/// ╰── row[.activatable]
/// ```
/// 
/// GtkListBox uses a single CSS node named list. Each GtkListBoxRow uses
/// a single CSS node named row. The row nodes get the .activatable
/// style class added when appropriate.
public struct ListBoxRef: ListBoxProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkListBox` instance.
    /// For type-safe access, use the generated, typed pointer `list_box_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ListBoxRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkListBox>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkListBox>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkListBox>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkListBox>?) {
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

    /// Reference intialiser for a related type that implements `ListBoxProtocol`
    @inlinable init<T: ListBoxProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: ListBoxProtocol>(_ other: T) -> ListBoxRef { ListBoxRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkListBox` container.
    @inlinable init() {
        let rv = gtk_list_box_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `ListBox` type acts as a reference-counted owner of an underlying `GtkListBox` instance.
/// It provides the methods that can operate on this data type through `ListBoxProtocol` conformance.
/// Use `ListBox` as a strong reference or owner of a `GtkListBox` instance.
///
/// A GtkListBox is a vertical container that contains GtkListBoxRow
/// children. These rows can by dynamically sorted and filtered, and
/// headers can be added dynamically depending on the row content.
/// It also allows keyboard and mouse navigation and selection like
/// a typical list.
/// 
/// Using GtkListBox is often an alternative to `GtkTreeView`, especially
/// when the list contents has a more complicated layout than what is allowed
/// by a `GtkCellRenderer`, or when the contents is interactive (i.e. has a
/// button in it).
/// 
/// Although a `GtkListBox` must have only `GtkListBoxRow` children you can
/// add any kind of widget to it via `gtk_container_add()`, and a `GtkListBoxRow`
/// widget will automatically be inserted between the list and the widget.
/// 
/// `GtkListBoxRows` can be marked as activatable or selectable. If a row
/// is activatable, `GtkListBox::row`-activated will be emitted for it when
/// the user tries to activate it. If it is selectable, the row will be marked
/// as selected when the user tries to select it.
/// 
/// The GtkListBox widget was added in GTK+ 3.10.
/// 
/// # GtkListBox as GtkBuildable
/// 
/// The GtkListBox implementation of the `GtkBuildable` interface supports
/// setting a child as the placeholder by specifying “placeholder” as the “type”
/// attribute of a <child> element. See `gtk_list_box_set_placeholder()` for info.
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
/// list
/// ╰── row[.activatable]
/// ```
/// 
/// GtkListBox uses a single CSS node named list. Each GtkListBoxRow uses
/// a single CSS node named row. The row nodes get the .activatable
/// style class added when appropriate.
open class ListBox: Container, ListBoxProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListBox` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkListBox>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListBox` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkListBox>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListBox` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListBox` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListBox` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkListBox>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListBox` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkListBox>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkListBox`.
    /// i.e., ownership is transferred to the `ListBox` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkListBox>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ListBoxProtocol`
    /// Will retain `GtkListBox`.
    /// - Parameter other: an instance of a related type that implements `ListBoxProtocol`
    @inlinable public init<T: ListBoxProtocol>(listBox other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkListBox` container.
    @inlinable public init() {
        let rv = gtk_list_box_new()
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum ListBoxPropertyName: String, PropertyNameProtocol {
    case activateOnSingleClick = "activate-on-single-click"
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
    case selectionMode = "selection-mode"
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
    case widthRequest = "width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case window = "window"
}

public extension ListBoxProtocol {
    /// Bind a `ListBoxPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: ListBoxPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a ListBox property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: ListBoxPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a ListBox property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: ListBoxPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: Signals of ListBox
public extension ListBoxProtocol {
    /// - Note: Representation of signal named `activate-cursor-row`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onActivateCursorRow(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ListBoxRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<ListBoxRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ListBoxRef(raw: unownedSelf))
            return output
        }
        return signalConnectData(
            detailedSignal: "activate-cursor-row", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// - Note: Representation of signal named `move-cursor`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter object: none
    /// - Parameter p0: none
    @discardableResult
    func onMoveCursor(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ListBoxRef, _ object: MovementStep, _ p0: Int) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder3<ListBoxRef, MovementStep, Int, Void>
        let cCallback: @convention(c) (gpointer, UInt32, gint, gpointer) -> Void = { unownedSelf, arg1, arg2, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ListBoxRef(raw: unownedSelf), MovementStep(arg1), Int(arg2))
            return output
        }
        return signalConnectData(
            detailedSignal: "move-cursor", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The `row`-activated signal is emitted when a row has been activated by the user.
    /// - Note: Representation of signal named `row-activated`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter row: the activated row
    @discardableResult
    func onRowActivated(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ListBoxRef, _ row: ListBoxRowRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ListBoxRef, ListBoxRowRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ListBoxRef(raw: unownedSelf), ListBoxRowRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "row-activated", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The `row`-selected signal is emitted when a new row is selected, or
    /// (with a `nil` `row`) when the selection is cleared.
    /// 
    /// When the `box` is using `GTK_SELECTION_MULTIPLE`, this signal will not
    /// give you the full picture of selection changes, and you should use
    /// the `GtkListBox::selected`-rows-changed signal instead.
    /// - Note: Representation of signal named `row-selected`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter row: the selected row
    @discardableResult
    func onRowSelected(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ListBoxRef, _ row: ListBoxRowRef?) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ListBoxRef, ListBoxRowRef?, Void>
        let cCallback: @convention(c) (gpointer, gpointer?, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ListBoxRef(raw: unownedSelf), arg1.flatMap(ListBoxRowRef.init(raw:)))
            return output
        }
        return signalConnectData(
            detailedSignal: "row-selected", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The `select`-all signal is a [keybinding signal](#GtkBindingSignal)
    /// which gets emitted to select all children of the box, if the selection
    /// mode permits it.
    /// 
    /// The default bindings for this signal is Ctrl-a.
    /// - Note: Representation of signal named `select-all`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onSelectAll(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ListBoxRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<ListBoxRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ListBoxRef(raw: unownedSelf))
            return output
        }
        return signalConnectData(
            detailedSignal: "select-all", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The `selected`-rows-changed signal is emitted when the
    /// set of selected rows changes.
    /// - Note: Representation of signal named `selected-rows-changed`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onSelectedRowsChanged(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ListBoxRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<ListBoxRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ListBoxRef(raw: unownedSelf))
            return output
        }
        return signalConnectData(
            detailedSignal: "selected-rows-changed", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// - Note: Representation of signal named `toggle-cursor-row`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onToggleCursorRow(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ListBoxRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<ListBoxRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ListBoxRef(raw: unownedSelf))
            return output
        }
        return signalConnectData(
            detailedSignal: "toggle-cursor-row", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The `unselect`-all signal is a [keybinding signal](#GtkBindingSignal)
    /// which gets emitted to unselect all children of the box, if the selection
    /// mode permits it.
    /// 
    /// The default bindings for this signal is Ctrl-Shift-a.
    /// - Note: Representation of signal named `unselect-all`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onUnselectAll(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ListBoxRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<ListBoxRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ListBoxRef(raw: unownedSelf))
            return output
        }
        return signalConnectData(
            detailedSignal: "unselect-all", 
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
    /// - Note: Representation of signal named `notify::activate-on-single-click`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyActivateOnSingleClick(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ListBoxRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ListBoxRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ListBoxRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::activate-on-single-click", 
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
    /// - Note: Representation of signal named `notify::selection-mode`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifySelectionMode(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ListBoxRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ListBoxRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ListBoxRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::selection-mode", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
}

// MARK: ListBox Class: ListBoxProtocol extension (methods and fields)
public extension ListBoxProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkListBox` instance.
    @inlinable var list_box_ptr: UnsafeMutablePointer<GtkListBox>! { return ptr?.assumingMemoryBound(to: GtkListBox.self) }

    /// Binds `model` to `box`.
    /// 
    /// If `box` was already bound to a model, that previous binding is
    /// destroyed.
    /// 
    /// The contents of `box` are cleared and then filled with widgets that
    /// represent items from `model`. `box` is updated whenever `model` changes.
    /// If `model` is `nil`, `box` is left empty.
    /// 
    /// It is undefined to add or remove widgets directly (for example, with
    /// `gtk_list_box_insert()` or `gtk_container_add()`) while `box` is bound to a
    /// model.
    /// 
    /// Note that using a model is incompatible with the filtering and sorting
    /// functionality in GtkListBox. When using a model, filtering and sorting
    /// should be implemented by the model.
    @inlinable func bind(model: GIO.ListModelRef? = nil, createWidgetFunc: GtkListBoxCreateWidgetFunc? = nil, userData: gpointer! = nil, userDataFreeFunc: GDestroyNotify?) {
        gtk_list_box_bind_model(list_box_ptr, model?.list_model_ptr, createWidgetFunc, userData, userDataFreeFunc)
    
    }
    /// Binds `model` to `box`.
    /// 
    /// If `box` was already bound to a model, that previous binding is
    /// destroyed.
    /// 
    /// The contents of `box` are cleared and then filled with widgets that
    /// represent items from `model`. `box` is updated whenever `model` changes.
    /// If `model` is `nil`, `box` is left empty.
    /// 
    /// It is undefined to add or remove widgets directly (for example, with
    /// `gtk_list_box_insert()` or `gtk_container_add()`) while `box` is bound to a
    /// model.
    /// 
    /// Note that using a model is incompatible with the filtering and sorting
    /// functionality in GtkListBox. When using a model, filtering and sorting
    /// should be implemented by the model.
    @inlinable func bind<ListModelT: GIO.ListModelProtocol>(model: ListModelT?, createWidgetFunc: GtkListBoxCreateWidgetFunc? = nil, userData: gpointer! = nil, userDataFreeFunc: GDestroyNotify?) {
        gtk_list_box_bind_model(list_box_ptr, model?.list_model_ptr, createWidgetFunc, userData, userDataFreeFunc)
    
    }

    /// This is a helper function for implementing DnD onto a `GtkListBox`.
    /// The passed in `row` will be highlighted via `gtk_drag_highlight()`,
    /// and any previously highlighted row will be unhighlighted.
    /// 
    /// The row will also be unhighlighted when the widget gets
    /// a drag leave event.
    @inlinable func dragHighlight<ListBoxRowT: ListBoxRowProtocol>(row: ListBoxRowT) {
        gtk_list_box_drag_highlight_row(list_box_ptr, row.list_box_row_ptr)
    
    }

    /// If a row has previously been highlighted via `gtk_list_box_drag_highlight_row()`
    /// it will have the highlight removed.
    @inlinable func dragUnhighlightRow() {
        gtk_list_box_drag_unhighlight_row(list_box_ptr)
    
    }

    /// Returns whether rows activate on single clicks.
    @inlinable func getActivateOnSingleClick() -> Bool {
        let rv = ((gtk_list_box_get_activate_on_single_click(list_box_ptr)) != 0)
        return rv
    }

    /// Gets the adjustment (if any) that the widget uses to
    /// for vertical scrolling.
    @inlinable func getAdjustment() -> AdjustmentRef! {
        let rv = AdjustmentRef(gconstpointer: gconstpointer(gtk_list_box_get_adjustment(list_box_ptr)))
        return rv
    }

    /// Gets the n-th child in the list (not counting headers).
    /// If `_index` is negative or larger than the number of items in the
    /// list, `nil` is returned.
    @inlinable func getRowAtIndex(index_: Int) -> ListBoxRowRef! {
        let rv = ListBoxRowRef(gconstpointer: gconstpointer(gtk_list_box_get_row_at_index(list_box_ptr, gint(index_))))
        return rv
    }

    /// Gets the row at the `y` position.
    @inlinable func getRowAt(y: Int) -> ListBoxRowRef! {
        let rv = ListBoxRowRef(gconstpointer: gconstpointer(gtk_list_box_get_row_at_y(list_box_ptr, gint(y))))
        return rv
    }

    /// Gets the selected row.
    /// 
    /// Note that the box may allow multiple selection, in which
    /// case you should use `gtk_list_box_selected_foreach()` to
    /// find all selected rows.
    @inlinable func getSelectedRow() -> ListBoxRowRef! {
        let rv = ListBoxRowRef(gconstpointer: gconstpointer(gtk_list_box_get_selected_row(list_box_ptr)))
        return rv
    }

    /// Creates a list of all selected children.
    @inlinable func getSelectedRows() -> GLib.ListRef! {
        let rv = GLib.ListRef(gtk_list_box_get_selected_rows(list_box_ptr))
        return rv
    }

    /// Gets the selection mode of the listbox.
    @inlinable func getSelectionMode() -> GtkSelectionMode {
        let rv = gtk_list_box_get_selection_mode(list_box_ptr)
        return rv
    }

    /// Insert the `child` into the `box` at `position`. If a sort function is
    /// set, the widget will actually be inserted at the calculated position and
    /// this function has the same effect of `gtk_container_add()`.
    /// 
    /// If `position` is -1, or larger than the total number of items in the
    /// `box`, then the `child` will be appended to the end.
    @inlinable func insert<WidgetT: WidgetProtocol>(child: WidgetT, position: Int) {
        gtk_list_box_insert(list_box_ptr, child.widget_ptr, gint(position))
    
    }

    /// Update the filtering for all rows. Call this when result
    /// of the filter function on the `box` is changed due
    /// to an external factor. For instance, this would be used
    /// if the filter function just looked for a specific search
    /// string and the entry with the search string has changed.
    @inlinable func invalidateFilter() {
        gtk_list_box_invalidate_filter(list_box_ptr)
    
    }

    /// Update the separators for all rows. Call this when result
    /// of the header function on the `box` is changed due
    /// to an external factor.
    @inlinable func invalidateHeaders() {
        gtk_list_box_invalidate_headers(list_box_ptr)
    
    }

    /// Update the sorting for all rows. Call this when result
    /// of the sort function on the `box` is changed due
    /// to an external factor.
    @inlinable func invalidateSort() {
        gtk_list_box_invalidate_sort(list_box_ptr)
    
    }

    /// Prepend a widget to the list. If a sort function is set, the widget will
    /// actually be inserted at the calculated position and this function has the
    /// same effect of `gtk_container_add()`.
    @inlinable func prepend<WidgetT: WidgetProtocol>(child: WidgetT) {
        gtk_list_box_prepend(list_box_ptr, child.widget_ptr)
    
    }

    /// Select all children of `box`, if the selection mode allows it.
    @inlinable func selectAll() {
        gtk_list_box_select_all(list_box_ptr)
    
    }

    /// Make `row` the currently selected row.
    @inlinable func select(row: ListBoxRowRef? = nil) {
        gtk_list_box_select_row(list_box_ptr, row?.list_box_row_ptr)
    
    }
    /// Make `row` the currently selected row.
    @inlinable func select<ListBoxRowT: ListBoxRowProtocol>(row: ListBoxRowT?) {
        gtk_list_box_select_row(list_box_ptr, row?.list_box_row_ptr)
    
    }

    /// Calls a function for each selected child.
    /// 
    /// Note that the selection cannot be modified from within this function.
    @inlinable func selectedForeach(`func`: GtkListBoxForeachFunc?, data: gpointer! = nil) {
        gtk_list_box_selected_foreach(list_box_ptr, `func`, data)
    
    }

    /// If `single` is `true`, rows will be activated when you click on them,
    /// otherwise you need to double-click.
    @inlinable func setActivateOnSingleClick(single: Bool) {
        gtk_list_box_set_activate_on_single_click(list_box_ptr, gboolean((single) ? 1 : 0))
    
    }

    /// Sets the adjustment (if any) that the widget uses to
    /// for vertical scrolling. For instance, this is used
    /// to get the page size for PageUp/Down key handling.
    /// 
    /// In the normal case when the `box` is packed inside
    /// a `GtkScrolledWindow` the adjustment from that will
    /// be picked up automatically, so there is no need
    /// to manually do that.
    @inlinable func set(adjustment: AdjustmentRef? = nil) {
        gtk_list_box_set_adjustment(list_box_ptr, adjustment?.adjustment_ptr)
    
    }
    /// Sets the adjustment (if any) that the widget uses to
    /// for vertical scrolling. For instance, this is used
    /// to get the page size for PageUp/Down key handling.
    /// 
    /// In the normal case when the `box` is packed inside
    /// a `GtkScrolledWindow` the adjustment from that will
    /// be picked up automatically, so there is no need
    /// to manually do that.
    @inlinable func set<AdjustmentT: AdjustmentProtocol>(adjustment: AdjustmentT?) {
        gtk_list_box_set_adjustment(list_box_ptr, adjustment?.adjustment_ptr)
    
    }

    /// By setting a filter function on the `box` one can decide dynamically which
    /// of the rows to show. For instance, to implement a search function on a list that
    /// filters the original list to only show the matching rows.
    /// 
    /// The `filter_func` will be called for each row after the call, and it will
    /// continue to be called each time a row changes (via `gtk_list_box_row_changed()`) or
    /// when `gtk_list_box_invalidate_filter()` is called.
    /// 
    /// Note that using a filter function is incompatible with using a model
    /// (see `gtk_list_box_bind_model()`).
    @inlinable func set(filterFunc: GtkListBoxFilterFunc? = nil, userData: gpointer! = nil, destroy: GDestroyNotify?) {
        gtk_list_box_set_filter_func(list_box_ptr, filterFunc, userData, destroy)
    
    }

    /// By setting a header function on the `box` one can dynamically add headers
    /// in front of rows, depending on the contents of the row and its position in the list.
    /// For instance, one could use it to add headers in front of the first item of a
    /// new kind, in a list sorted by the kind.
    /// 
    /// The `update_header` can look at the current header widget using `gtk_list_box_row_get_header()`
    /// and either update the state of the widget as needed, or set a new one using
    /// `gtk_list_box_row_set_header()`. If no header is needed, set the header to `nil`.
    /// 
    /// Note that you may get many calls `update_header` to this for a particular row when e.g.
    /// changing things that don’t affect the header. In this case it is important for performance
    /// to not blindly replace an existing header with an identical one.
    /// 
    /// The `update_header` function will be called for each row after the call, and it will
    /// continue to be called each time a row changes (via `gtk_list_box_row_changed()`) and when
    /// the row before changes (either by `gtk_list_box_row_changed()` on the previous row, or when
    /// the previous row becomes a different row). It is also called for all rows when
    /// `gtk_list_box_invalidate_headers()` is called.
    @inlinable func setHeaderFunc(updateHeader: GtkListBoxUpdateHeaderFunc? = nil, userData: gpointer! = nil, destroy: GDestroyNotify?) {
        gtk_list_box_set_header_func(list_box_ptr, updateHeader, userData, destroy)
    
    }

    /// Sets the placeholder widget that is shown in the list when
    /// it doesn't display any visible children.
    @inlinable func set(placeholder: WidgetRef? = nil) {
        gtk_list_box_set_placeholder(list_box_ptr, placeholder?.widget_ptr)
    
    }
    /// Sets the placeholder widget that is shown in the list when
    /// it doesn't display any visible children.
    @inlinable func set<WidgetT: WidgetProtocol>(placeholder: WidgetT?) {
        gtk_list_box_set_placeholder(list_box_ptr, placeholder?.widget_ptr)
    
    }

    /// Sets how selection works in the listbox.
    /// See `GtkSelectionMode` for details.
    @inlinable func setSelection(mode: GtkSelectionMode) {
        gtk_list_box_set_selection_mode(list_box_ptr, mode)
    
    }

    /// By setting a sort function on the `box` one can dynamically reorder the rows
    /// of the list, based on the contents of the rows.
    /// 
    /// The `sort_func` will be called for each row after the call, and will continue to
    /// be called each time a row changes (via `gtk_list_box_row_changed()`) and when
    /// `gtk_list_box_invalidate_sort()` is called.
    /// 
    /// Note that using a sort function is incompatible with using a model
    /// (see `gtk_list_box_bind_model()`).
    @inlinable func set(sortFunc: GtkListBoxSortFunc? = nil, userData: gpointer! = nil, destroy: GDestroyNotify?) {
        gtk_list_box_set_sort_func(list_box_ptr, sortFunc, userData, destroy)
    
    }

    /// Unselect all children of `box`, if the selection mode allows it.
    @inlinable func unselectAll() {
        gtk_list_box_unselect_all(list_box_ptr)
    
    }

    /// Unselects a single row of `box`, if the selection mode allows it.
    @inlinable func unselect<ListBoxRowT: ListBoxRowProtocol>(row: ListBoxRowT) {
        gtk_list_box_unselect_row(list_box_ptr, row.list_box_row_ptr)
    
    }
    /// Returns whether rows activate on single clicks.
    @inlinable var activateOnSingleClick: Bool {
        /// Returns whether rows activate on single clicks.
        get {
            let rv = ((gtk_list_box_get_activate_on_single_click(list_box_ptr)) != 0)
            return rv
        }
        /// If `single` is `true`, rows will be activated when you click on them,
        /// otherwise you need to double-click.
        nonmutating set {
            gtk_list_box_set_activate_on_single_click(list_box_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Gets the adjustment (if any) that the widget uses to
    /// for vertical scrolling.
    @inlinable var adjustment: AdjustmentRef! {
        /// Gets the adjustment (if any) that the widget uses to
        /// for vertical scrolling.
        get {
            let rv = AdjustmentRef(gconstpointer: gconstpointer(gtk_list_box_get_adjustment(list_box_ptr)))
            return rv
        }
        /// Sets the adjustment (if any) that the widget uses to
        /// for vertical scrolling. For instance, this is used
        /// to get the page size for PageUp/Down key handling.
        /// 
        /// In the normal case when the `box` is packed inside
        /// a `GtkScrolledWindow` the adjustment from that will
        /// be picked up automatically, so there is no need
        /// to manually do that.
        nonmutating set {
            gtk_list_box_set_adjustment(list_box_ptr, UnsafeMutablePointer<GtkAdjustment>(newValue?.adjustment_ptr))
        }
    }

    /// Gets the selected row.
    /// 
    /// Note that the box may allow multiple selection, in which
    /// case you should use `gtk_list_box_selected_foreach()` to
    /// find all selected rows.
    @inlinable var selectedRow: ListBoxRowRef! {
        /// Gets the selected row.
        /// 
        /// Note that the box may allow multiple selection, in which
        /// case you should use `gtk_list_box_selected_foreach()` to
        /// find all selected rows.
        get {
            let rv = ListBoxRowRef(gconstpointer: gconstpointer(gtk_list_box_get_selected_row(list_box_ptr)))
            return rv
        }
    }

    /// Creates a list of all selected children.
    @inlinable var selectedRows: GLib.ListRef! {
        /// Creates a list of all selected children.
        get {
            let rv = GLib.ListRef(gtk_list_box_get_selected_rows(list_box_ptr))
            return rv
        }
    }

    /// Gets the selection mode of the listbox.
    @inlinable var selectionMode: GtkSelectionMode {
        /// Gets the selection mode of the listbox.
        get {
            let rv = gtk_list_box_get_selection_mode(list_box_ptr)
            return rv
        }
        /// Sets how selection works in the listbox.
        /// See `GtkSelectionMode` for details.
        nonmutating set {
            gtk_list_box_set_selection_mode(list_box_ptr, newValue)
        }
    }

    @inlinable var parentInstance: GtkContainer {
        get {
            let rv = list_box_ptr.pointee.parent_instance
            return rv
        }
    }

}



// MARK: - ListBoxAccessible Class

/// The `ListBoxAccessibleProtocol` protocol exposes the methods and properties of an underlying `GtkListBoxAccessible` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ListBoxAccessible`.
/// Alternatively, use `ListBoxAccessibleRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ListBoxAccessibleProtocol: ContainerAccessibleProtocol, Atk.SelectionProtocol {
        /// Untyped pointer to the underlying `GtkListBoxAccessible` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkListBoxAccessible` instance.
    var list_box_accessible_ptr: UnsafeMutablePointer<GtkListBoxAccessible>! { get }

}

/// The `ListBoxAccessibleRef` type acts as a lightweight Swift reference to an underlying `GtkListBoxAccessible` instance.
/// It exposes methods that can operate on this data type through `ListBoxAccessibleProtocol` conformance.
/// Use `ListBoxAccessibleRef` only as an `unowned` reference to an existing `GtkListBoxAccessible` instance.
///

public struct ListBoxAccessibleRef: ListBoxAccessibleProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkListBoxAccessible` instance.
    /// For type-safe access, use the generated, typed pointer `list_box_accessible_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ListBoxAccessibleRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkListBoxAccessible>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkListBoxAccessible>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkListBoxAccessible>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkListBoxAccessible>?) {
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

    /// Reference intialiser for a related type that implements `ListBoxAccessibleProtocol`
    @inlinable init<T: ListBoxAccessibleProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: ListBoxAccessibleProtocol>(_ other: T) -> ListBoxAccessibleRef { ListBoxAccessibleRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxAccessibleProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxAccessibleProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxAccessibleProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxAccessibleProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxAccessibleProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ListBoxAccessible` type acts as a reference-counted owner of an underlying `GtkListBoxAccessible` instance.
/// It provides the methods that can operate on this data type through `ListBoxAccessibleProtocol` conformance.
/// Use `ListBoxAccessible` as a strong reference or owner of a `GtkListBoxAccessible` instance.
///

open class ListBoxAccessible: ContainerAccessible, ListBoxAccessibleProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListBoxAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkListBoxAccessible>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListBoxAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkListBoxAccessible>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListBoxAccessible` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListBoxAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListBoxAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkListBoxAccessible>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListBoxAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkListBoxAccessible>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkListBoxAccessible`.
    /// i.e., ownership is transferred to the `ListBoxAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkListBoxAccessible>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ListBoxAccessibleProtocol`
    /// Will retain `GtkListBoxAccessible`.
    /// - Parameter other: an instance of a related type that implements `ListBoxAccessibleProtocol`
    @inlinable public init<T: ListBoxAccessibleProtocol>(listBoxAccessible other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxAccessibleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxAccessibleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxAccessibleProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxAccessibleProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxAccessibleProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxAccessibleProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxAccessibleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxAccessibleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum ListBoxAccessiblePropertyName: String, PropertyNameProtocol {
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

public extension ListBoxAccessibleProtocol {
    /// Bind a `ListBoxAccessiblePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: ListBoxAccessiblePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a ListBoxAccessible property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: ListBoxAccessiblePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a ListBoxAccessible property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: ListBoxAccessiblePropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: ListBoxAccessible has no signals// MARK: ListBoxAccessible Class: ListBoxAccessibleProtocol extension (methods and fields)
public extension ListBoxAccessibleProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkListBoxAccessible` instance.
    @inlinable var list_box_accessible_ptr: UnsafeMutablePointer<GtkListBoxAccessible>! { return ptr?.assumingMemoryBound(to: GtkListBoxAccessible.self) }


    @inlinable var parent: GtkContainerAccessible {
        get {
            let rv = list_box_accessible_ptr.pointee.parent
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - ListBoxRow Class

/// The `ListBoxRowProtocol` protocol exposes the methods and properties of an underlying `GtkListBoxRow` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ListBoxRow`.
/// Alternatively, use `ListBoxRowRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ListBoxRowProtocol: BinProtocol, ActionableProtocol {
        /// Untyped pointer to the underlying `GtkListBoxRow` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkListBoxRow` instance.
    var list_box_row_ptr: UnsafeMutablePointer<GtkListBoxRow>! { get }

}

/// The `ListBoxRowRef` type acts as a lightweight Swift reference to an underlying `GtkListBoxRow` instance.
/// It exposes methods that can operate on this data type through `ListBoxRowProtocol` conformance.
/// Use `ListBoxRowRef` only as an `unowned` reference to an existing `GtkListBoxRow` instance.
///

public struct ListBoxRowRef: ListBoxRowProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkListBoxRow` instance.
    /// For type-safe access, use the generated, typed pointer `list_box_row_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ListBoxRowRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkListBoxRow>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkListBoxRow>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkListBoxRow>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkListBoxRow>?) {
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

    /// Reference intialiser for a related type that implements `ListBoxRowProtocol`
    @inlinable init<T: ListBoxRowProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: ListBoxRowProtocol>(_ other: T) -> ListBoxRowRef { ListBoxRowRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkListBoxRow`, to be used as a child of a `GtkListBox`.
    @inlinable init() {
        let rv = gtk_list_box_row_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `ListBoxRow` type acts as a reference-counted owner of an underlying `GtkListBoxRow` instance.
/// It provides the methods that can operate on this data type through `ListBoxRowProtocol` conformance.
/// Use `ListBoxRow` as a strong reference or owner of a `GtkListBoxRow` instance.
///

open class ListBoxRow: Bin, ListBoxRowProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListBoxRow` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkListBoxRow>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListBoxRow` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkListBoxRow>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListBoxRow` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListBoxRow` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListBoxRow` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkListBoxRow>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListBoxRow` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkListBoxRow>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkListBoxRow`.
    /// i.e., ownership is transferred to the `ListBoxRow` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkListBoxRow>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ListBoxRowProtocol`
    /// Will retain `GtkListBoxRow`.
    /// - Parameter other: an instance of a related type that implements `ListBoxRowProtocol`
    @inlinable public init<T: ListBoxRowProtocol>(listBoxRow other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkListBoxRow`, to be used as a child of a `GtkListBox`.
    @inlinable public init() {
        let rv = gtk_list_box_row_new()
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum ListBoxRowPropertyName: String, PropertyNameProtocol {
    /// The property determines whether the `GtkListBox::row`-activated
    /// signal will be emitted for this row.
    case activatable = "activatable"
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
    /// The property determines whether this row can be selected.
    case selectable = "selectable"
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
    case widthRequest = "width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case window = "window"
}

public extension ListBoxRowProtocol {
    /// Bind a `ListBoxRowPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: ListBoxRowPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a ListBoxRow property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: ListBoxRowPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a ListBoxRow property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: ListBoxRowPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: Signals of ListBoxRow
public extension ListBoxRowProtocol {
    /// This is a keybinding signal, which will cause this row to be activated.
    /// 
    /// If you want to be notified when the user activates a row (by key or not),
    /// use the `GtkListBox::row`-activated signal on the row’s parent `GtkListBox`.
    /// - Note: Representation of signal named `activate`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onActivate(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ListBoxRowRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<ListBoxRowRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ListBoxRowRef(raw: unownedSelf))
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
    /// - Note: Representation of signal named `notify::activatable`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyActivatable(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ListBoxRowRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ListBoxRowRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ListBoxRowRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::activatable", 
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
    /// - Note: Representation of signal named `notify::selectable`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifySelectable(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ListBoxRowRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<ListBoxRowRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(ListBoxRowRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::selectable", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
}

// MARK: ListBoxRow Class: ListBoxRowProtocol extension (methods and fields)
public extension ListBoxRowProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkListBoxRow` instance.
    @inlinable var list_box_row_ptr: UnsafeMutablePointer<GtkListBoxRow>! { return ptr?.assumingMemoryBound(to: GtkListBoxRow.self) }

    /// Marks `row` as changed, causing any state that depends on this
    /// to be updated. This affects sorting, filtering and headers.
    /// 
    /// Note that calls to this method must be in sync with the data
    /// used for the row functions. For instance, if the list is
    /// mirroring some external data set, and *two* rows changed in the
    /// external data set then when you call `gtk_list_box_row_changed()`
    /// on the first row the sort function must only read the new data
    /// for the first of the two changed rows, otherwise the resorting
    /// of the rows will be wrong.
    /// 
    /// This generally means that if you don’t fully control the data
    /// model you have to duplicate the data that affects the listbox
    /// row functions into the row widgets themselves. Another alternative
    /// is to call `gtk_list_box_invalidate_sort()` on any model change,
    /// but that is more expensive.
    @inlinable func changed() {
        gtk_list_box_row_changed(list_box_row_ptr)
    
    }

    /// Gets the value of the `GtkListBoxRow:activatable` property
    /// for this row.
    @inlinable func getActivatable() -> Bool {
        let rv = ((gtk_list_box_row_get_activatable(list_box_row_ptr)) != 0)
        return rv
    }

    /// Returns the current header of the `row`. This can be used
    /// in a `GtkListBoxUpdateHeaderFunc` to see if there is a header
    /// set already, and if so to update the state of it.
    @inlinable func getHeader() -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_list_box_row_get_header(list_box_row_ptr))) else { return nil }
        return rv
    }

    /// Gets the current index of the `row` in its `GtkListBox` container.
    @inlinable func getIndex() -> Int {
        let rv = Int(gtk_list_box_row_get_index(list_box_row_ptr))
        return rv
    }

    /// Gets the value of the `GtkListBoxRow:selectable` property
    /// for this row.
    @inlinable func getSelectable() -> Bool {
        let rv = ((gtk_list_box_row_get_selectable(list_box_row_ptr)) != 0)
        return rv
    }

    /// Set the `GtkListBoxRow:activatable` property for this row.
    @inlinable func set(activatable: Bool) {
        gtk_list_box_row_set_activatable(list_box_row_ptr, gboolean((activatable) ? 1 : 0))
    
    }

    /// Sets the current header of the `row`. This is only allowed to be called
    /// from a `GtkListBoxUpdateHeaderFunc`. It will replace any existing
    /// header in the row, and be shown in front of the row in the listbox.
    @inlinable func set(header: WidgetRef? = nil) {
        gtk_list_box_row_set_header(list_box_row_ptr, header?.widget_ptr)
    
    }
    /// Sets the current header of the `row`. This is only allowed to be called
    /// from a `GtkListBoxUpdateHeaderFunc`. It will replace any existing
    /// header in the row, and be shown in front of the row in the listbox.
    @inlinable func set<WidgetT: WidgetProtocol>(header: WidgetT?) {
        gtk_list_box_row_set_header(list_box_row_ptr, header?.widget_ptr)
    
    }

    /// Set the `GtkListBoxRow:selectable` property for this row.
    @inlinable func set(selectable: Bool) {
        gtk_list_box_row_set_selectable(list_box_row_ptr, gboolean((selectable) ? 1 : 0))
    
    }
    /// The property determines whether the `GtkListBox::row`-activated
    /// signal will be emitted for this row.
    @inlinable var activatable: Bool {
        /// Gets the value of the `GtkListBoxRow:activatable` property
        /// for this row.
        get {
            let rv = ((gtk_list_box_row_get_activatable(list_box_row_ptr)) != 0)
            return rv
        }
        /// Set the `GtkListBoxRow:activatable` property for this row.
        nonmutating set {
            gtk_list_box_row_set_activatable(list_box_row_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Returns the current header of the `row`. This can be used
    /// in a `GtkListBoxUpdateHeaderFunc` to see if there is a header
    /// set already, and if so to update the state of it.
    @inlinable var header: WidgetRef! {
        /// Returns the current header of the `row`. This can be used
        /// in a `GtkListBoxUpdateHeaderFunc` to see if there is a header
        /// set already, and if so to update the state of it.
        get {
            guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_list_box_row_get_header(list_box_row_ptr))) else { return nil }
            return rv
        }
        /// Sets the current header of the `row`. This is only allowed to be called
        /// from a `GtkListBoxUpdateHeaderFunc`. It will replace any existing
        /// header in the row, and be shown in front of the row in the listbox.
        nonmutating set {
            gtk_list_box_row_set_header(list_box_row_ptr, UnsafeMutablePointer<GtkWidget>(newValue?.widget_ptr))
        }
    }

    /// Gets the current index of the `row` in its `GtkListBox` container.
    @inlinable var index: Int {
        /// Gets the current index of the `row` in its `GtkListBox` container.
        get {
            let rv = Int(gtk_list_box_row_get_index(list_box_row_ptr))
            return rv
        }
    }

    /// Returns whether the child is currently selected in its
    /// `GtkListBox` container.
    @inlinable var isSelected: Bool {
        /// Returns whether the child is currently selected in its
        /// `GtkListBox` container.
        get {
            let rv = ((gtk_list_box_row_is_selected(list_box_row_ptr)) != 0)
            return rv
        }
    }

    /// The property determines whether this row can be selected.
    @inlinable var selectable: Bool {
        /// Gets the value of the `GtkListBoxRow:selectable` property
        /// for this row.
        get {
            let rv = ((gtk_list_box_row_get_selectable(list_box_row_ptr)) != 0)
            return rv
        }
        /// Set the `GtkListBoxRow:selectable` property for this row.
        nonmutating set {
            gtk_list_box_row_set_selectable(list_box_row_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    @inlinable var parentInstance: GtkBin {
        get {
            let rv = list_box_row_ptr.pointee.parent_instance
            return rv
        }
    }

}



// MARK: - ListBoxRowAccessible Class

/// The `ListBoxRowAccessibleProtocol` protocol exposes the methods and properties of an underlying `GtkListBoxRowAccessible` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ListBoxRowAccessible`.
/// Alternatively, use `ListBoxRowAccessibleRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ListBoxRowAccessibleProtocol: ContainerAccessibleProtocol {
        /// Untyped pointer to the underlying `GtkListBoxRowAccessible` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkListBoxRowAccessible` instance.
    var list_box_row_accessible_ptr: UnsafeMutablePointer<GtkListBoxRowAccessible>! { get }

}

/// The `ListBoxRowAccessibleRef` type acts as a lightweight Swift reference to an underlying `GtkListBoxRowAccessible` instance.
/// It exposes methods that can operate on this data type through `ListBoxRowAccessibleProtocol` conformance.
/// Use `ListBoxRowAccessibleRef` only as an `unowned` reference to an existing `GtkListBoxRowAccessible` instance.
///

public struct ListBoxRowAccessibleRef: ListBoxRowAccessibleProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkListBoxRowAccessible` instance.
    /// For type-safe access, use the generated, typed pointer `list_box_row_accessible_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ListBoxRowAccessibleRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkListBoxRowAccessible>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkListBoxRowAccessible>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkListBoxRowAccessible>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkListBoxRowAccessible>?) {
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

    /// Reference intialiser for a related type that implements `ListBoxRowAccessibleProtocol`
    @inlinable init<T: ListBoxRowAccessibleProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: ListBoxRowAccessibleProtocol>(_ other: T) -> ListBoxRowAccessibleRef { ListBoxRowAccessibleRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowAccessibleProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowAccessibleProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowAccessibleProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowAccessibleProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowAccessibleProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ListBoxRowAccessible` type acts as a reference-counted owner of an underlying `GtkListBoxRowAccessible` instance.
/// It provides the methods that can operate on this data type through `ListBoxRowAccessibleProtocol` conformance.
/// Use `ListBoxRowAccessible` as a strong reference or owner of a `GtkListBoxRowAccessible` instance.
///

open class ListBoxRowAccessible: ContainerAccessible, ListBoxRowAccessibleProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListBoxRowAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkListBoxRowAccessible>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListBoxRowAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkListBoxRowAccessible>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListBoxRowAccessible` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListBoxRowAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListBoxRowAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkListBoxRowAccessible>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListBoxRowAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkListBoxRowAccessible>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkListBoxRowAccessible`.
    /// i.e., ownership is transferred to the `ListBoxRowAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkListBoxRowAccessible>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ListBoxRowAccessibleProtocol`
    /// Will retain `GtkListBoxRowAccessible`.
    /// - Parameter other: an instance of a related type that implements `ListBoxRowAccessibleProtocol`
    @inlinable public init<T: ListBoxRowAccessibleProtocol>(listBoxRowAccessible other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowAccessibleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowAccessibleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowAccessibleProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowAccessibleProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowAccessibleProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowAccessibleProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowAccessibleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowAccessibleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum ListBoxRowAccessiblePropertyName: String, PropertyNameProtocol {
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

public extension ListBoxRowAccessibleProtocol {
    /// Bind a `ListBoxRowAccessiblePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: ListBoxRowAccessiblePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a ListBoxRowAccessible property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: ListBoxRowAccessiblePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a ListBoxRowAccessible property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: ListBoxRowAccessiblePropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: ListBoxRowAccessible has no signals// MARK: ListBoxRowAccessible Class: ListBoxRowAccessibleProtocol extension (methods and fields)
public extension ListBoxRowAccessibleProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkListBoxRowAccessible` instance.
    @inlinable var list_box_row_accessible_ptr: UnsafeMutablePointer<GtkListBoxRowAccessible>! { return ptr?.assumingMemoryBound(to: GtkListBoxRowAccessible.self) }


    @inlinable var parent: GtkContainerAccessible {
        get {
            let rv = list_box_row_accessible_ptr.pointee.parent
            return rv
        }
    }

}



// MARK: - ListStore Class

/// The `ListStoreProtocol` protocol exposes the methods and properties of an underlying `GtkListStore` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ListStore`.
/// Alternatively, use `ListStoreRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GtkListStore` object is a list model for use with a `GtkTreeView`
/// widget.  It implements the `GtkTreeModel` interface, and consequentialy,
/// can use all of the methods available there.  It also implements the
/// `GtkTreeSortable` interface so it can be sorted by the view.
/// Finally, it also implements the tree
/// [drag and drop](#gtk3-GtkTreeView-drag-and-drop)
/// interfaces.
/// 
/// The `GtkListStore` can accept most GObject types as a column type, though
/// it can’t accept all custom types.  Internally, it will keep a copy of
/// data passed in (such as a string or a boxed pointer).  Columns that
/// accept `GObjects` are handled a little differently.  The
/// `GtkListStore` will keep a reference to the object instead of copying the
/// value.  As a result, if the object is modified, it is up to the
/// application writer to call `gtk_tree_model_row_changed()` to emit the
/// `GtkTreeModel::row_changed` signal.  This most commonly affects lists with
/// `GdkPixbufs` stored.
/// 
/// An example for creating a simple list store:
/// (C Language Example):
/// ```C
/// enum {
///   COLUMN_STRING,
///   COLUMN_INT,
///   COLUMN_BOOLEAN,
///   N_COLUMNS
/// };
/// 
/// {
///   GtkListStore *list_store;
///   GtkTreePath *path;
///   GtkTreeIter iter;
///   gint i;
/// 
///   list_store = gtk_list_store_new (N_COLUMNS,
///                                    G_TYPE_STRING,
///                                    G_TYPE_INT,
///                                    G_TYPE_BOOLEAN);
/// 
///   for (i = 0; i < 10; i++)
///     {
///       gchar *some_data;
/// 
///       some_data = get_some_data (i);
/// 
///       // Add a new row to the model
///       gtk_list_store_append (list_store, &iter);
///       gtk_list_store_set (list_store, &iter,
///                           COLUMN_STRING, some_data,
///                           COLUMN_INT, i,
///                           COLUMN_BOOLEAN,  FALSE,
///                           -1);
/// 
///       // As the store will keep a copy of the string internally,
///       // we free some_data.
///       g_free (some_data);
///     }
/// 
///   // Modify a particular row
///   path = gtk_tree_path_new_from_string ("4");
///   gtk_tree_model_get_iter (GTK_TREE_MODEL (list_store),
///                            &iter,
///                            path);
///   gtk_tree_path_free (path);
///   gtk_list_store_set (list_store, &iter,
///                       COLUMN_BOOLEAN, TRUE,
///                       -1);
/// }
/// ```
/// 
/// # Performance Considerations
/// 
/// Internally, the `GtkListStore` was implemented with a linked list with
/// a tail pointer prior to GTK+ 2.6.  As a result, it was fast at data
/// insertion and deletion, and not fast at random data access.  The
/// `GtkListStore` sets the `GTK_TREE_MODEL_ITERS_PERSIST` flag, which means
/// that `GtkTreeIters` can be cached while the row exists.  Thus, if
/// access to a particular row is needed often and your code is expected to
/// run on older versions of GTK+, it is worth keeping the iter around.
/// 
/// # Atomic Operations
/// 
/// It is important to note that only the methods
/// `gtk_list_store_insert_with_values()` and `gtk_list_store_insert_with_valuesv()`
/// are atomic, in the sense that the row is being appended to the store and the
/// values filled in in a single operation with regard to `GtkTreeModel` signaling.
/// In contrast, using e.g. `gtk_list_store_append()` and then `gtk_list_store_set()`
/// will first create a row, which triggers the `GtkTreeModel::row`-inserted signal
/// on `GtkListStore`. The row, however, is still empty, and any signal handler
/// connecting to `GtkTreeModel::row`-inserted on this particular store should be prepared
/// for the situation that the row might be empty. This is especially important
/// if you are wrapping the `GtkListStore` inside a `GtkTreeModelFilter` and are
/// using a `GtkTreeModelFilterVisibleFunc`. Using any of the non-atomic operations
/// to append rows to the `GtkListStore` will cause the
/// `GtkTreeModelFilterVisibleFunc` to be visited with an empty row first; the
/// function must be prepared for that.
/// 
/// # GtkListStore as GtkBuildable
/// 
/// The GtkListStore implementation of the GtkBuildable interface allows
/// to specify the model columns with a <columns> element that may contain
/// multiple <column> elements, each specifying one model column. The “type”
/// attribute specifies the data type for the column.
/// 
/// Additionally, it is possible to specify content for the list store
/// in the UI definition, with the <data> element. It can contain multiple
/// <row> elements, each specifying to content for one row of the list model.
/// Inside a <row>, the <col> elements specify the content for individual cells.
/// 
/// Note that it is probably more common to define your models in the code,
/// and one might consider it a layering violation to specify the content of
/// a list store in a UI definition, data, not presentation, and common wisdom
/// is to separate the two, as far as possible.
/// 
/// An example of a UI Definition fragment for a list store:
/// (C Language Example):
/// ```C
/// <object class="GtkListStore">
///   <columns>
///     <column type="gchararray"/>
///     <column type="gchararray"/>
///     <column type="gint"/>
///   </columns>
///   <data>
///     <row>
///       <col id="0">John</col>
///       <col id="1">Doe</col>
///       <col id="2">25</col>
///     </row>
///     <row>
///       <col id="0">Johan</col>
///       <col id="1">Dahlin</col>
///       <col id="2">50</col>
///     </row>
///   </data>
/// </object>
/// ```
/// 
public protocol ListStoreProtocol: GLibObject.ObjectProtocol, BuildableProtocol, TreeDragDestProtocol, TreeDragSourceProtocol, TreeModelProtocol, TreeSortableProtocol {
        /// Untyped pointer to the underlying `GtkListStore` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkListStore` instance.
    var list_store_ptr: UnsafeMutablePointer<GtkListStore>! { get }

}

/// The `ListStoreRef` type acts as a lightweight Swift reference to an underlying `GtkListStore` instance.
/// It exposes methods that can operate on this data type through `ListStoreProtocol` conformance.
/// Use `ListStoreRef` only as an `unowned` reference to an existing `GtkListStore` instance.
///
/// The `GtkListStore` object is a list model for use with a `GtkTreeView`
/// widget.  It implements the `GtkTreeModel` interface, and consequentialy,
/// can use all of the methods available there.  It also implements the
/// `GtkTreeSortable` interface so it can be sorted by the view.
/// Finally, it also implements the tree
/// [drag and drop](#gtk3-GtkTreeView-drag-and-drop)
/// interfaces.
/// 
/// The `GtkListStore` can accept most GObject types as a column type, though
/// it can’t accept all custom types.  Internally, it will keep a copy of
/// data passed in (such as a string or a boxed pointer).  Columns that
/// accept `GObjects` are handled a little differently.  The
/// `GtkListStore` will keep a reference to the object instead of copying the
/// value.  As a result, if the object is modified, it is up to the
/// application writer to call `gtk_tree_model_row_changed()` to emit the
/// `GtkTreeModel::row_changed` signal.  This most commonly affects lists with
/// `GdkPixbufs` stored.
/// 
/// An example for creating a simple list store:
/// (C Language Example):
/// ```C
/// enum {
///   COLUMN_STRING,
///   COLUMN_INT,
///   COLUMN_BOOLEAN,
///   N_COLUMNS
/// };
/// 
/// {
///   GtkListStore *list_store;
///   GtkTreePath *path;
///   GtkTreeIter iter;
///   gint i;
/// 
///   list_store = gtk_list_store_new (N_COLUMNS,
///                                    G_TYPE_STRING,
///                                    G_TYPE_INT,
///                                    G_TYPE_BOOLEAN);
/// 
///   for (i = 0; i < 10; i++)
///     {
///       gchar *some_data;
/// 
///       some_data = get_some_data (i);
/// 
///       // Add a new row to the model
///       gtk_list_store_append (list_store, &iter);
///       gtk_list_store_set (list_store, &iter,
///                           COLUMN_STRING, some_data,
///                           COLUMN_INT, i,
///                           COLUMN_BOOLEAN,  FALSE,
///                           -1);
/// 
///       // As the store will keep a copy of the string internally,
///       // we free some_data.
///       g_free (some_data);
///     }
/// 
///   // Modify a particular row
///   path = gtk_tree_path_new_from_string ("4");
///   gtk_tree_model_get_iter (GTK_TREE_MODEL (list_store),
///                            &iter,
///                            path);
///   gtk_tree_path_free (path);
///   gtk_list_store_set (list_store, &iter,
///                       COLUMN_BOOLEAN, TRUE,
///                       -1);
/// }
/// ```
/// 
/// # Performance Considerations
/// 
/// Internally, the `GtkListStore` was implemented with a linked list with
/// a tail pointer prior to GTK+ 2.6.  As a result, it was fast at data
/// insertion and deletion, and not fast at random data access.  The
/// `GtkListStore` sets the `GTK_TREE_MODEL_ITERS_PERSIST` flag, which means
/// that `GtkTreeIters` can be cached while the row exists.  Thus, if
/// access to a particular row is needed often and your code is expected to
/// run on older versions of GTK+, it is worth keeping the iter around.
/// 
/// # Atomic Operations
/// 
/// It is important to note that only the methods
/// `gtk_list_store_insert_with_values()` and `gtk_list_store_insert_with_valuesv()`
/// are atomic, in the sense that the row is being appended to the store and the
/// values filled in in a single operation with regard to `GtkTreeModel` signaling.
/// In contrast, using e.g. `gtk_list_store_append()` and then `gtk_list_store_set()`
/// will first create a row, which triggers the `GtkTreeModel::row`-inserted signal
/// on `GtkListStore`. The row, however, is still empty, and any signal handler
/// connecting to `GtkTreeModel::row`-inserted on this particular store should be prepared
/// for the situation that the row might be empty. This is especially important
/// if you are wrapping the `GtkListStore` inside a `GtkTreeModelFilter` and are
/// using a `GtkTreeModelFilterVisibleFunc`. Using any of the non-atomic operations
/// to append rows to the `GtkListStore` will cause the
/// `GtkTreeModelFilterVisibleFunc` to be visited with an empty row first; the
/// function must be prepared for that.
/// 
/// # GtkListStore as GtkBuildable
/// 
/// The GtkListStore implementation of the GtkBuildable interface allows
/// to specify the model columns with a <columns> element that may contain
/// multiple <column> elements, each specifying one model column. The “type”
/// attribute specifies the data type for the column.
/// 
/// Additionally, it is possible to specify content for the list store
/// in the UI definition, with the <data> element. It can contain multiple
/// <row> elements, each specifying to content for one row of the list model.
/// Inside a <row>, the <col> elements specify the content for individual cells.
/// 
/// Note that it is probably more common to define your models in the code,
/// and one might consider it a layering violation to specify the content of
/// a list store in a UI definition, data, not presentation, and common wisdom
/// is to separate the two, as far as possible.
/// 
/// An example of a UI Definition fragment for a list store:
/// (C Language Example):
/// ```C
/// <object class="GtkListStore">
///   <columns>
///     <column type="gchararray"/>
///     <column type="gchararray"/>
///     <column type="gint"/>
///   </columns>
///   <data>
///     <row>
///       <col id="0">John</col>
///       <col id="1">Doe</col>
///       <col id="2">25</col>
///     </row>
///     <row>
///       <col id="0">Johan</col>
///       <col id="1">Dahlin</col>
///       <col id="2">50</col>
///     </row>
///   </data>
/// </object>
/// ```
/// 
public struct ListStoreRef: ListStoreProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkListStore` instance.
    /// For type-safe access, use the generated, typed pointer `list_store_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ListStoreRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkListStore>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkListStore>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkListStore>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkListStore>?) {
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

    /// Reference intialiser for a related type that implements `ListStoreProtocol`
    @inlinable init<T: ListStoreProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: ListStoreProtocol>(_ other: T) -> ListStoreRef { ListStoreRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    
    // *** new() is not available because it has a varargs (...) parameter!


    /// Non-vararg creation function.  Used primarily by language bindings.
    @inlinable init(nColumns: Int, types: UnsafeMutablePointer<GType>!) {
        let rv = gtk_list_store_newv(gint(nColumns), types)
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Non-vararg creation function.  Used primarily by language bindings.
    @inlinable static func listStoreNewv(nColumns: Int, types: UnsafeMutablePointer<GType>!) -> ListStoreRef! {
        guard let rv = ListStoreRef(gconstpointer: gconstpointer(gtk_list_store_newv(gint(nColumns), types))) else { return nil }
        return rv
    }
}

/// The `ListStore` type acts as a reference-counted owner of an underlying `GtkListStore` instance.
/// It provides the methods that can operate on this data type through `ListStoreProtocol` conformance.
/// Use `ListStore` as a strong reference or owner of a `GtkListStore` instance.
///
/// The `GtkListStore` object is a list model for use with a `GtkTreeView`
/// widget.  It implements the `GtkTreeModel` interface, and consequentialy,
/// can use all of the methods available there.  It also implements the
/// `GtkTreeSortable` interface so it can be sorted by the view.
/// Finally, it also implements the tree
/// [drag and drop](#gtk3-GtkTreeView-drag-and-drop)
/// interfaces.
/// 
/// The `GtkListStore` can accept most GObject types as a column type, though
/// it can’t accept all custom types.  Internally, it will keep a copy of
/// data passed in (such as a string or a boxed pointer).  Columns that
/// accept `GObjects` are handled a little differently.  The
/// `GtkListStore` will keep a reference to the object instead of copying the
/// value.  As a result, if the object is modified, it is up to the
/// application writer to call `gtk_tree_model_row_changed()` to emit the
/// `GtkTreeModel::row_changed` signal.  This most commonly affects lists with
/// `GdkPixbufs` stored.
/// 
/// An example for creating a simple list store:
/// (C Language Example):
/// ```C
/// enum {
///   COLUMN_STRING,
///   COLUMN_INT,
///   COLUMN_BOOLEAN,
///   N_COLUMNS
/// };
/// 
/// {
///   GtkListStore *list_store;
///   GtkTreePath *path;
///   GtkTreeIter iter;
///   gint i;
/// 
///   list_store = gtk_list_store_new (N_COLUMNS,
///                                    G_TYPE_STRING,
///                                    G_TYPE_INT,
///                                    G_TYPE_BOOLEAN);
/// 
///   for (i = 0; i < 10; i++)
///     {
///       gchar *some_data;
/// 
///       some_data = get_some_data (i);
/// 
///       // Add a new row to the model
///       gtk_list_store_append (list_store, &iter);
///       gtk_list_store_set (list_store, &iter,
///                           COLUMN_STRING, some_data,
///                           COLUMN_INT, i,
///                           COLUMN_BOOLEAN,  FALSE,
///                           -1);
/// 
///       // As the store will keep a copy of the string internally,
///       // we free some_data.
///       g_free (some_data);
///     }
/// 
///   // Modify a particular row
///   path = gtk_tree_path_new_from_string ("4");
///   gtk_tree_model_get_iter (GTK_TREE_MODEL (list_store),
///                            &iter,
///                            path);
///   gtk_tree_path_free (path);
///   gtk_list_store_set (list_store, &iter,
///                       COLUMN_BOOLEAN, TRUE,
///                       -1);
/// }
/// ```
/// 
/// # Performance Considerations
/// 
/// Internally, the `GtkListStore` was implemented with a linked list with
/// a tail pointer prior to GTK+ 2.6.  As a result, it was fast at data
/// insertion and deletion, and not fast at random data access.  The
/// `GtkListStore` sets the `GTK_TREE_MODEL_ITERS_PERSIST` flag, which means
/// that `GtkTreeIters` can be cached while the row exists.  Thus, if
/// access to a particular row is needed often and your code is expected to
/// run on older versions of GTK+, it is worth keeping the iter around.
/// 
/// # Atomic Operations
/// 
/// It is important to note that only the methods
/// `gtk_list_store_insert_with_values()` and `gtk_list_store_insert_with_valuesv()`
/// are atomic, in the sense that the row is being appended to the store and the
/// values filled in in a single operation with regard to `GtkTreeModel` signaling.
/// In contrast, using e.g. `gtk_list_store_append()` and then `gtk_list_store_set()`
/// will first create a row, which triggers the `GtkTreeModel::row`-inserted signal
/// on `GtkListStore`. The row, however, is still empty, and any signal handler
/// connecting to `GtkTreeModel::row`-inserted on this particular store should be prepared
/// for the situation that the row might be empty. This is especially important
/// if you are wrapping the `GtkListStore` inside a `GtkTreeModelFilter` and are
/// using a `GtkTreeModelFilterVisibleFunc`. Using any of the non-atomic operations
/// to append rows to the `GtkListStore` will cause the
/// `GtkTreeModelFilterVisibleFunc` to be visited with an empty row first; the
/// function must be prepared for that.
/// 
/// # GtkListStore as GtkBuildable
/// 
/// The GtkListStore implementation of the GtkBuildable interface allows
/// to specify the model columns with a <columns> element that may contain
/// multiple <column> elements, each specifying one model column. The “type”
/// attribute specifies the data type for the column.
/// 
/// Additionally, it is possible to specify content for the list store
/// in the UI definition, with the <data> element. It can contain multiple
/// <row> elements, each specifying to content for one row of the list model.
/// Inside a <row>, the <col> elements specify the content for individual cells.
/// 
/// Note that it is probably more common to define your models in the code,
/// and one might consider it a layering violation to specify the content of
/// a list store in a UI definition, data, not presentation, and common wisdom
/// is to separate the two, as far as possible.
/// 
/// An example of a UI Definition fragment for a list store:
/// (C Language Example):
/// ```C
/// <object class="GtkListStore">
///   <columns>
///     <column type="gchararray"/>
///     <column type="gchararray"/>
///     <column type="gint"/>
///   </columns>
///   <data>
///     <row>
///       <col id="0">John</col>
///       <col id="1">Doe</col>
///       <col id="2">25</col>
///     </row>
///     <row>
///       <col id="0">Johan</col>
///       <col id="1">Dahlin</col>
///       <col id="2">50</col>
///     </row>
///   </data>
/// </object>
/// ```
/// 
open class ListStore: GLibObject.Object, ListStoreProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListStore` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkListStore>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListStore` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkListStore>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListStore` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListStore` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListStore` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkListStore>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ListStore` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkListStore>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkListStore`.
    /// i.e., ownership is transferred to the `ListStore` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkListStore>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ListStoreProtocol`
    /// Will retain `GtkListStore`.
    /// - Parameter other: an instance of a related type that implements `ListStoreProtocol`
    @inlinable public init<T: ListStoreProtocol>(listStore other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }


    // *** new() is not available because it has a varargs (...) parameter!


    /// Non-vararg creation function.  Used primarily by language bindings.
    @inlinable public init(nColumns: Int, types: UnsafeMutablePointer<GType>!) {
        let rv = gtk_list_store_newv(gint(nColumns), types)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Non-vararg creation function.  Used primarily by language bindings.
    @inlinable public static func listStoreNewv(nColumns: Int, types: UnsafeMutablePointer<GType>!) -> ListStore! {
        guard let rv = ListStore(gconstpointer: gconstpointer(gtk_list_store_newv(gint(nColumns), types))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

}

// MARK: no ListStore properties

// MARK: ListStore has no signals// MARK: ListStore Class: ListStoreProtocol extension (methods and fields)
public extension ListStoreProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkListStore` instance.
    @inlinable var list_store_ptr: UnsafeMutablePointer<GtkListStore>! { return ptr?.assumingMemoryBound(to: GtkListStore.self) }

    /// Appends a new row to `list_store`.  `iter` will be changed to point to this new
    /// row.  The row will be empty after this function is called.  To fill in
    /// values, you need to call `gtk_list_store_set()` or `gtk_list_store_set_value()`.
    @inlinable func append<TreeIterT: TreeIterProtocol>(iter: TreeIterT) {
        gtk_list_store_append(list_store_ptr, iter.tree_iter_ptr)
    
    }

    /// Removes all rows from the list store.
    @inlinable func clear() {
        gtk_list_store_clear(list_store_ptr)
    
    }

    /// Creates a new row at `position`.  `iter` will be changed to point to this new
    /// row.  If `position` is -1 or is larger than the number of rows on the list,
    /// then the new row will be appended to the list. The row will be empty after
    /// this function is called.  To fill in values, you need to call
    /// `gtk_list_store_set()` or `gtk_list_store_set_value()`.
    @inlinable func insert<TreeIterT: TreeIterProtocol>(iter: TreeIterT, position: Int) {
        gtk_list_store_insert(list_store_ptr, iter.tree_iter_ptr, gint(position))
    
    }

    /// Inserts a new row after `sibling`. If `sibling` is `nil`, then the row will be
    /// prepended to the beginning of the list. `iter` will be changed to point to
    /// this new row. The row will be empty after this function is called. To fill
    /// in values, you need to call `gtk_list_store_set()` or `gtk_list_store_set_value()`.
    @inlinable func insertAfter<TreeIterT: TreeIterProtocol>(iter: TreeIterT, sibling: TreeIterT?) {
        gtk_list_store_insert_after(list_store_ptr, iter.tree_iter_ptr, sibling?.tree_iter_ptr)
    
    }

    /// Inserts a new row before `sibling`. If `sibling` is `nil`, then the row will
    /// be appended to the end of the list. `iter` will be changed to point to this
    /// new row. The row will be empty after this function is called. To fill in
    /// values, you need to call `gtk_list_store_set()` or `gtk_list_store_set_value()`.
    @inlinable func insertBefore<TreeIterT: TreeIterProtocol>(iter: TreeIterT, sibling: TreeIterT?) {
        gtk_list_store_insert_before(list_store_ptr, iter.tree_iter_ptr, sibling?.tree_iter_ptr)
    
    }


    // *** insertWithValues() is not available because it has a varargs (...) parameter!


    /// A variant of `gtk_list_store_insert_with_values()` which
    /// takes the columns and values as two arrays, instead of
    /// varargs. This function is mainly intended for
    /// language-bindings.
    @inlinable func insertWithValuesv(iter: TreeIterRef? = nil, position: Int, columns: UnsafeMutablePointer<gint>!, values: UnsafeMutablePointer<GValue>!, nValues: Int) {
        gtk_list_store_insert_with_valuesv(list_store_ptr, iter?.tree_iter_ptr, gint(position), columns, values, gint(nValues))
    
    }
    /// A variant of `gtk_list_store_insert_with_values()` which
    /// takes the columns and values as two arrays, instead of
    /// varargs. This function is mainly intended for
    /// language-bindings.
    @inlinable func insertWithValuesv<TreeIterT: TreeIterProtocol>(iter: TreeIterT?, position: Int, columns: UnsafeMutablePointer<gint>!, values: UnsafeMutablePointer<GValue>!, nValues: Int) {
        gtk_list_store_insert_with_valuesv(list_store_ptr, iter?.tree_iter_ptr, gint(position), columns, values, gint(nValues))
    
    }

    /// > This function is slow. Only use it for debugging and/or testing
    /// > purposes.
    /// 
    /// Checks if the given iter is a valid iter for this `GtkListStore`.
    @inlinable func iterIsValid<TreeIterT: TreeIterProtocol>(iter: TreeIterT) -> Bool {
        let rv = ((gtk_list_store_iter_is_valid(list_store_ptr, iter.tree_iter_ptr)) != 0)
        return rv
    }

    /// Moves `iter` in `store` to the position after `position`. Note that this
    /// function only works with unsorted stores. If `position` is `nil`, `iter`
    /// will be moved to the start of the list.
    @inlinable func moveAfter<TreeIterT: TreeIterProtocol>(iter: TreeIterT, position: TreeIterT?) {
        gtk_list_store_move_after(list_store_ptr, iter.tree_iter_ptr, position?.tree_iter_ptr)
    
    }

    /// Moves `iter` in `store` to the position before `position`. Note that this
    /// function only works with unsorted stores. If `position` is `nil`, `iter`
    /// will be moved to the end of the list.
    @inlinable func moveBefore<TreeIterT: TreeIterProtocol>(iter: TreeIterT, position: TreeIterT?) {
        gtk_list_store_move_before(list_store_ptr, iter.tree_iter_ptr, position?.tree_iter_ptr)
    
    }

    /// Prepends a new row to `list_store`. `iter` will be changed to point to this new
    /// row. The row will be empty after this function is called. To fill in
    /// values, you need to call `gtk_list_store_set()` or `gtk_list_store_set_value()`.
    @inlinable func prepend<TreeIterT: TreeIterProtocol>(iter: TreeIterT) {
        gtk_list_store_prepend(list_store_ptr, iter.tree_iter_ptr)
    
    }

    /// Removes the given row from the list store.  After being removed,
    /// `iter` is set to be the next valid row, or invalidated if it pointed
    /// to the last row in `list_store`.
    @inlinable func remove<TreeIterT: TreeIterProtocol>(iter: TreeIterT) -> Bool {
        let rv = ((gtk_list_store_remove(list_store_ptr, iter.tree_iter_ptr)) != 0)
        return rv
    }

    /// Reorders `store` to follow the order indicated by `new_order`. Note that
    /// this function only works with unsorted stores.
    @inlinable func reorder(newOrder: UnsafeMutablePointer<gint>!) {
        gtk_list_store_reorder(list_store_ptr, newOrder)
    
    }


    // *** set() is not available because it has a varargs (...) parameter!


    /// This function is meant primarily for `GObjects` that inherit from `GtkListStore`,
    /// and should only be used when constructing a new `GtkListStore`.  It will not
    /// function after a row has been added, or a method on the `GtkTreeModel`
    /// interface is called.
    @inlinable func setColumnTypes(nColumns: Int, types: UnsafeMutablePointer<GType>!) {
        gtk_list_store_set_column_types(list_store_ptr, gint(nColumns), types)
    
    }

    /// See `gtk_list_store_set()`; this version takes a va_list for use by language
    /// bindings.
    @inlinable func setValist<TreeIterT: TreeIterProtocol>(iter: TreeIterT, varArgs: CVaListPointer) {
        gtk_list_store_set_valist(list_store_ptr, iter.tree_iter_ptr, varArgs)
    
    }

    /// Sets the data in the cell specified by `iter` and `column`.
    /// The type of `value` must be convertible to the type of the
    /// column.
    @inlinable func setValue<TreeIterT: TreeIterProtocol, ValueT: GLibObject.ValueProtocol>(iter: TreeIterT, column: Int, value: ValueT) {
        gtk_list_store_set_value(list_store_ptr, iter.tree_iter_ptr, gint(column), value.value_ptr)
    
    }

    /// A variant of `gtk_list_store_set_valist()` which
    /// takes the columns and values as two arrays, instead of
    /// varargs. This function is mainly intended for
    /// language-bindings and in case the number of columns to
    /// change is not known until run-time.
    @inlinable func setValuesv<TreeIterT: TreeIterProtocol>(iter: TreeIterT, columns: UnsafeMutablePointer<gint>!, values: UnsafeMutablePointer<GValue>!, nValues: Int) {
        gtk_list_store_set_valuesv(list_store_ptr, iter.tree_iter_ptr, columns, values, gint(nValues))
    
    }

    /// Swaps `a` and `b` in `store`. Note that this function only works with
    /// unsorted stores.
    @inlinable func swap<TreeIterT: TreeIterProtocol>(a: TreeIterT, b: TreeIterT) {
        gtk_list_store_swap(list_store_ptr, a.tree_iter_ptr, b.tree_iter_ptr)
    
    }

    @inlinable var parent: GObject {
        get {
            let rv = list_store_ptr.pointee.parent
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - LockButton Class

/// The `LockButtonProtocol` protocol exposes the methods and properties of an underlying `GtkLockButton` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `LockButton`.
/// Alternatively, use `LockButtonRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// GtkLockButton is a widget that can be used in control panels or
/// preference dialogs to allow users to obtain and revoke authorizations
/// needed to operate the controls. The required authorization is represented
/// by a `GPermission` object. Concrete implementations of `GPermission` may use
/// PolicyKit or some other authorization framework. To obtain a PolicyKit-based
/// `GPermission`, use `polkit_permission_new()`.
/// 
/// If the user is not currently allowed to perform the action, but can obtain
/// the permission, the widget looks like this:
/// 
/// ![](lockbutton-locked.png)
/// 
/// and the user can click the button to request the permission. Depending
/// on the platform, this may pop up an authentication dialog or ask the user
/// to authenticate in some other way. Once the user has obtained the permission,
/// the widget changes to this:
/// 
/// ![](lockbutton-unlocked.png)
/// 
/// and the permission can be dropped again by clicking the button. If the user
/// is not able to obtain the permission at all, the widget looks like this:
/// 
/// ![](lockbutton-sorry.png)
/// 
/// If the user has the permission and cannot drop it, the button is hidden.
/// 
/// The text (and tooltips) that are shown in the various cases can be adjusted
/// with the `GtkLockButton:text`-lock, `GtkLockButton:text`-unlock,
/// `GtkLockButton:tooltip`-lock, `GtkLockButton:tooltip`-unlock and
/// `GtkLockButton:tooltip`-not-authorized properties.
public protocol LockButtonProtocol: ButtonProtocol {
        /// Untyped pointer to the underlying `GtkLockButton` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkLockButton` instance.
    var lock_button_ptr: UnsafeMutablePointer<GtkLockButton>! { get }

}

/// The `LockButtonRef` type acts as a lightweight Swift reference to an underlying `GtkLockButton` instance.
/// It exposes methods that can operate on this data type through `LockButtonProtocol` conformance.
/// Use `LockButtonRef` only as an `unowned` reference to an existing `GtkLockButton` instance.
///
/// GtkLockButton is a widget that can be used in control panels or
/// preference dialogs to allow users to obtain and revoke authorizations
/// needed to operate the controls. The required authorization is represented
/// by a `GPermission` object. Concrete implementations of `GPermission` may use
/// PolicyKit or some other authorization framework. To obtain a PolicyKit-based
/// `GPermission`, use `polkit_permission_new()`.
/// 
/// If the user is not currently allowed to perform the action, but can obtain
/// the permission, the widget looks like this:
/// 
/// ![](lockbutton-locked.png)
/// 
/// and the user can click the button to request the permission. Depending
/// on the platform, this may pop up an authentication dialog or ask the user
/// to authenticate in some other way. Once the user has obtained the permission,
/// the widget changes to this:
/// 
/// ![](lockbutton-unlocked.png)
/// 
/// and the permission can be dropped again by clicking the button. If the user
/// is not able to obtain the permission at all, the widget looks like this:
/// 
/// ![](lockbutton-sorry.png)
/// 
/// If the user has the permission and cannot drop it, the button is hidden.
/// 
/// The text (and tooltips) that are shown in the various cases can be adjusted
/// with the `GtkLockButton:text`-lock, `GtkLockButton:text`-unlock,
/// `GtkLockButton:tooltip`-lock, `GtkLockButton:tooltip`-unlock and
/// `GtkLockButton:tooltip`-not-authorized properties.
public struct LockButtonRef: LockButtonProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkLockButton` instance.
    /// For type-safe access, use the generated, typed pointer `lock_button_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension LockButtonRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkLockButton>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkLockButton>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkLockButton>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkLockButton>?) {
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

    /// Reference intialiser for a related type that implements `LockButtonProtocol`
    @inlinable init<T: LockButtonProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: LockButtonProtocol>(_ other: T) -> LockButtonRef { LockButtonRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new lock button which reflects the `permission`.
    @inlinable init<PermissionT: GIO.PermissionProtocol>( permission: PermissionT?) {
        let rv = gtk_lock_button_new(permission?.permission_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `LockButton` type acts as a reference-counted owner of an underlying `GtkLockButton` instance.
/// It provides the methods that can operate on this data type through `LockButtonProtocol` conformance.
/// Use `LockButton` as a strong reference or owner of a `GtkLockButton` instance.
///
/// GtkLockButton is a widget that can be used in control panels or
/// preference dialogs to allow users to obtain and revoke authorizations
/// needed to operate the controls. The required authorization is represented
/// by a `GPermission` object. Concrete implementations of `GPermission` may use
/// PolicyKit or some other authorization framework. To obtain a PolicyKit-based
/// `GPermission`, use `polkit_permission_new()`.
/// 
/// If the user is not currently allowed to perform the action, but can obtain
/// the permission, the widget looks like this:
/// 
/// ![](lockbutton-locked.png)
/// 
/// and the user can click the button to request the permission. Depending
/// on the platform, this may pop up an authentication dialog or ask the user
/// to authenticate in some other way. Once the user has obtained the permission,
/// the widget changes to this:
/// 
/// ![](lockbutton-unlocked.png)
/// 
/// and the permission can be dropped again by clicking the button. If the user
/// is not able to obtain the permission at all, the widget looks like this:
/// 
/// ![](lockbutton-sorry.png)
/// 
/// If the user has the permission and cannot drop it, the button is hidden.
/// 
/// The text (and tooltips) that are shown in the various cases can be adjusted
/// with the `GtkLockButton:text`-lock, `GtkLockButton:text`-unlock,
/// `GtkLockButton:tooltip`-lock, `GtkLockButton:tooltip`-unlock and
/// `GtkLockButton:tooltip`-not-authorized properties.
open class LockButton: Button, LockButtonProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LockButton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkLockButton>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LockButton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkLockButton>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LockButton` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LockButton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LockButton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkLockButton>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LockButton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkLockButton>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkLockButton`.
    /// i.e., ownership is transferred to the `LockButton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkLockButton>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `LockButtonProtocol`
    /// Will retain `GtkLockButton`.
    /// - Parameter other: an instance of a related type that implements `LockButtonProtocol`
    @inlinable public init<T: LockButtonProtocol>(lockButton other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new lock button which reflects the `permission`.
    @inlinable public init<PermissionT: GIO.PermissionProtocol>( permission: PermissionT?) {
        let rv = gtk_lock_button_new(permission?.permission_ptr)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum LockButtonPropertyName: String, PropertyNameProtocol {
    /// If `true`, the button will ignore the `GtkSettings:gtk`-button-images
    /// setting and always show the image, if available.
    /// 
    /// Use this property if the button would be useless or hard to use
    /// without the image.
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
    /// The child widget to appear next to the button text.
    case image = "image"
    /// The position of the image relative to the text inside the button.
    case imagePosition = "image-position"
    case isFocus = "is-focus"
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
    case permission = "permission"
    case receivesDefault = "receives-default"
    case relief = "relief"
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
    case textLock = "text-lock"
    case textUnlock = "text-unlock"
    case tooltipLock = "tooltip-lock"
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
    case tooltipNotAuthorized = "tooltip-not-authorized"
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
    case tooltipUnlock = "tooltip-unlock"

    ///
    /// **use-stock is deprecated:**
    /// This method is deprecated.
    case useStock = "use-stock"
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
    /// If the child of the button is a `GtkMisc` or `GtkAlignment`, this property
    /// can be used to control its horizontal alignment. 0.0 is left aligned,
    /// 1.0 is right aligned.
    ///
    /// **xalign is deprecated:**
    /// Access the child widget directly if you need to control
    /// its alignment.
    case xalign = "xalign"
    /// If the child of the button is a `GtkMisc` or `GtkAlignment`, this property
    /// can be used to control its vertical alignment. 0.0 is top aligned,
    /// 1.0 is bottom aligned.
    ///
    /// **yalign is deprecated:**
    /// Access the child widget directly if you need to control
    /// its alignment.
    case yalign = "yalign"
}

public extension LockButtonProtocol {
    /// Bind a `LockButtonPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: LockButtonPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a LockButton property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: LockButtonPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a LockButton property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: LockButtonPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: LockButton has no signals// MARK: LockButton Class: LockButtonProtocol extension (methods and fields)
public extension LockButtonProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkLockButton` instance.
    @inlinable var lock_button_ptr: UnsafeMutablePointer<GtkLockButton>! { return ptr?.assumingMemoryBound(to: GtkLockButton.self) }

    /// Obtains the `GPermission` object that controls `button`.
    @inlinable func getPermission() -> GIO.PermissionRef! {
        let rv = GIO.PermissionRef(gtk_lock_button_get_permission(lock_button_ptr))
        return rv
    }

    /// Sets the `GPermission` object that controls `button`.
    @inlinable func set(permission: GIO.PermissionRef? = nil) {
        gtk_lock_button_set_permission(lock_button_ptr, permission?.permission_ptr)
    
    }
    /// Sets the `GPermission` object that controls `button`.
    @inlinable func set<PermissionT: GIO.PermissionProtocol>(permission: PermissionT?) {
        gtk_lock_button_set_permission(lock_button_ptr, permission?.permission_ptr)
    
    }
    @inlinable var permission: GIO.PermissionRef! {
        /// Obtains the `GPermission` object that controls `button`.
        get {
            let rv = GIO.PermissionRef(gtk_lock_button_get_permission(lock_button_ptr))
            return rv
        }
        /// Sets the `GPermission` object that controls `button`.
        nonmutating set {
            gtk_lock_button_set_permission(lock_button_ptr, UnsafeMutablePointer<GPermission>(newValue?.permission_ptr))
        }
    }

    @inlinable var parent: GtkButton {
        get {
            let rv = lock_button_ptr.pointee.parent
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - LockButtonAccessible Class

/// The `LockButtonAccessibleProtocol` protocol exposes the methods and properties of an underlying `GtkLockButtonAccessible` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `LockButtonAccessible`.
/// Alternatively, use `LockButtonAccessibleRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol LockButtonAccessibleProtocol: ButtonAccessibleProtocol {
        /// Untyped pointer to the underlying `GtkLockButtonAccessible` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkLockButtonAccessible` instance.
    var lock_button_accessible_ptr: UnsafeMutablePointer<GtkLockButtonAccessible>! { get }

}

/// The `LockButtonAccessibleRef` type acts as a lightweight Swift reference to an underlying `GtkLockButtonAccessible` instance.
/// It exposes methods that can operate on this data type through `LockButtonAccessibleProtocol` conformance.
/// Use `LockButtonAccessibleRef` only as an `unowned` reference to an existing `GtkLockButtonAccessible` instance.
///

public struct LockButtonAccessibleRef: LockButtonAccessibleProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkLockButtonAccessible` instance.
    /// For type-safe access, use the generated, typed pointer `lock_button_accessible_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension LockButtonAccessibleRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkLockButtonAccessible>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkLockButtonAccessible>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkLockButtonAccessible>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkLockButtonAccessible>?) {
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

    /// Reference intialiser for a related type that implements `LockButtonAccessibleProtocol`
    @inlinable init<T: LockButtonAccessibleProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: LockButtonAccessibleProtocol>(_ other: T) -> LockButtonAccessibleRef { LockButtonAccessibleRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonAccessibleProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonAccessibleProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonAccessibleProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonAccessibleProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonAccessibleProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `LockButtonAccessible` type acts as a reference-counted owner of an underlying `GtkLockButtonAccessible` instance.
/// It provides the methods that can operate on this data type through `LockButtonAccessibleProtocol` conformance.
/// Use `LockButtonAccessible` as a strong reference or owner of a `GtkLockButtonAccessible` instance.
///

open class LockButtonAccessible: ButtonAccessible, LockButtonAccessibleProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LockButtonAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkLockButtonAccessible>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LockButtonAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkLockButtonAccessible>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LockButtonAccessible` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LockButtonAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LockButtonAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkLockButtonAccessible>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LockButtonAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkLockButtonAccessible>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkLockButtonAccessible`.
    /// i.e., ownership is transferred to the `LockButtonAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkLockButtonAccessible>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `LockButtonAccessibleProtocol`
    /// Will retain `GtkLockButtonAccessible`.
    /// - Parameter other: an instance of a related type that implements `LockButtonAccessibleProtocol`
    @inlinable public init<T: LockButtonAccessibleProtocol>(lockButtonAccessible other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonAccessibleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonAccessibleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonAccessibleProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonAccessibleProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonAccessibleProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonAccessibleProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonAccessibleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonAccessibleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum LockButtonAccessiblePropertyName: String, PropertyNameProtocol {
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

public extension LockButtonAccessibleProtocol {
    /// Bind a `LockButtonAccessiblePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: LockButtonAccessiblePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a LockButtonAccessible property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: LockButtonAccessiblePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a LockButtonAccessible property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: LockButtonAccessiblePropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: LockButtonAccessible has no signals// MARK: LockButtonAccessible Class: LockButtonAccessibleProtocol extension (methods and fields)
public extension LockButtonAccessibleProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkLockButtonAccessible` instance.
    @inlinable var lock_button_accessible_ptr: UnsafeMutablePointer<GtkLockButtonAccessible>! { return ptr?.assumingMemoryBound(to: GtkLockButtonAccessible.self) }


    @inlinable var parent: GtkButtonAccessible {
        get {
            let rv = lock_button_accessible_ptr.pointee.parent
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - Menu Class

/// The `MenuProtocol` protocol exposes the methods and properties of an underlying `GtkMenu` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Menu`.
/// Alternatively, use `MenuRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GtkMenu` is a `GtkMenuShell` that implements a drop down menu
/// consisting of a list of `GtkMenuItem` objects which can be navigated
/// and activated by the user to perform application functions.
/// 
/// A `GtkMenu` is most commonly dropped down by activating a
/// `GtkMenuItem` in a `GtkMenuBar` or popped up by activating a
/// `GtkMenuItem` in another `GtkMenu`.
/// 
/// A `GtkMenu` can also be popped up by activating a `GtkComboBox`.
/// Other composite widgets such as the `GtkNotebook` can pop up a
/// `GtkMenu` as well.
/// 
/// Applications can display a `GtkMenu` as a popup menu by calling the
/// `gtk_menu_popup()` function.  The example below shows how an application
/// can pop up a menu when the 3rd mouse button is pressed.
/// 
/// ## Connecting the popup signal handler.
/// 
/// (C Language Example):
/// ```C
///   // connect our handler which will popup the menu
///   g_signal_connect_swapped (window, "button_press_event",
/// G_CALLBACK (my_popup_handler), menu);
/// ```
/// 
/// ## Signal handler which displays a popup menu.
/// 
/// (C Language Example):
/// ```C
/// static gint
/// my_popup_handler (GtkWidget *widget, GdkEvent *event)
/// {
///   GtkMenu *menu;
///   GdkEventButton *event_button;
/// 
///   g_return_val_if_fail (widget != NULL, FALSE);
///   g_return_val_if_fail (GTK_IS_MENU (widget), FALSE);
///   g_return_val_if_fail (event != NULL, FALSE);
/// 
///   // The "widget" is the menu that was supplied when
///   // g_signal_connect_swapped() was called.
///   menu = GTK_MENU (widget);
/// 
///   if (event->type == GDK_BUTTON_PRESS)
///     {
///       event_button = (GdkEventButton *) event;
///       if (event_button->button == GDK_BUTTON_SECONDARY)
///         {
///           gtk_menu_popup (menu, NULL, NULL, NULL, NULL,
///                           event_button->button, event_button->time);
///           return TRUE;
///         }
///     }
/// 
///   return FALSE;
/// }
/// ```
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
/// menu
/// ├── arrow.top
/// ├── <child>
/// ┊
/// ├── <child>
/// ╰── arrow.bottom
/// ```
/// 
/// The main CSS node of GtkMenu has name menu, and there are two subnodes
/// with name arrow, for scrolling menu arrows. These subnodes get the
/// .top and .bottom style classes.
public protocol MenuProtocol: MenuShellProtocol {
        /// Untyped pointer to the underlying `GtkMenu` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkMenu` instance.
    var menu_ptr: UnsafeMutablePointer<GtkMenu>! { get }

}

/// The `MenuRef` type acts as a lightweight Swift reference to an underlying `GtkMenu` instance.
/// It exposes methods that can operate on this data type through `MenuProtocol` conformance.
/// Use `MenuRef` only as an `unowned` reference to an existing `GtkMenu` instance.
///
/// A `GtkMenu` is a `GtkMenuShell` that implements a drop down menu
/// consisting of a list of `GtkMenuItem` objects which can be navigated
/// and activated by the user to perform application functions.
/// 
/// A `GtkMenu` is most commonly dropped down by activating a
/// `GtkMenuItem` in a `GtkMenuBar` or popped up by activating a
/// `GtkMenuItem` in another `GtkMenu`.
/// 
/// A `GtkMenu` can also be popped up by activating a `GtkComboBox`.
/// Other composite widgets such as the `GtkNotebook` can pop up a
/// `GtkMenu` as well.
/// 
/// Applications can display a `GtkMenu` as a popup menu by calling the
/// `gtk_menu_popup()` function.  The example below shows how an application
/// can pop up a menu when the 3rd mouse button is pressed.
/// 
/// ## Connecting the popup signal handler.
/// 
/// (C Language Example):
/// ```C
///   // connect our handler which will popup the menu
///   g_signal_connect_swapped (window, "button_press_event",
/// G_CALLBACK (my_popup_handler), menu);
/// ```
/// 
/// ## Signal handler which displays a popup menu.
/// 
/// (C Language Example):
/// ```C
/// static gint
/// my_popup_handler (GtkWidget *widget, GdkEvent *event)
/// {
///   GtkMenu *menu;
///   GdkEventButton *event_button;
/// 
///   g_return_val_if_fail (widget != NULL, FALSE);
///   g_return_val_if_fail (GTK_IS_MENU (widget), FALSE);
///   g_return_val_if_fail (event != NULL, FALSE);
/// 
///   // The "widget" is the menu that was supplied when
///   // g_signal_connect_swapped() was called.
///   menu = GTK_MENU (widget);
/// 
///   if (event->type == GDK_BUTTON_PRESS)
///     {
///       event_button = (GdkEventButton *) event;
///       if (event_button->button == GDK_BUTTON_SECONDARY)
///         {
///           gtk_menu_popup (menu, NULL, NULL, NULL, NULL,
///                           event_button->button, event_button->time);
///           return TRUE;
///         }
///     }
/// 
///   return FALSE;
/// }
/// ```
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
/// menu
/// ├── arrow.top
/// ├── <child>
/// ┊
/// ├── <child>
/// ╰── arrow.bottom
/// ```
/// 
/// The main CSS node of GtkMenu has name menu, and there are two subnodes
/// with name arrow, for scrolling menu arrows. These subnodes get the
/// .top and .bottom style classes.
public struct MenuRef: MenuProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkMenu` instance.
    /// For type-safe access, use the generated, typed pointer `menu_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MenuRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkMenu>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkMenu>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkMenu>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkMenu>?) {
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

    /// Reference intialiser for a related type that implements `MenuProtocol`
    @inlinable init<T: MenuProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: MenuProtocol>(_ other: T) -> MenuRef { MenuRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkMenu`
    @inlinable init() {
        let rv = gtk_menu_new()
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a `GtkMenu` and populates it with menu items and
    /// submenus according to `model`.
    /// 
    /// The created menu items are connected to actions found in the
    /// `GtkApplicationWindow` to which the menu belongs - typically
    /// by means of being attached to a widget (see `gtk_menu_attach_to_widget()`)
    /// that is contained within the `GtkApplicationWindows` widget hierarchy.
    /// 
    /// Actions can also be added using `gtk_widget_insert_action_group()` on the menu's
    /// attach widget or on any of its parent widgets.
    @inlinable init<MenuModelT: GIO.MenuModelProtocol>(model: MenuModelT) {
        let rv = gtk_menu_new_from_model(model.menu_model_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a `GtkMenu` and populates it with menu items and
    /// submenus according to `model`.
    /// 
    /// The created menu items are connected to actions found in the
    /// `GtkApplicationWindow` to which the menu belongs - typically
    /// by means of being attached to a widget (see `gtk_menu_attach_to_widget()`)
    /// that is contained within the `GtkApplicationWindows` widget hierarchy.
    /// 
    /// Actions can also be added using `gtk_widget_insert_action_group()` on the menu's
    /// attach widget or on any of its parent widgets.
    @inlinable static func newFrom<MenuModelT: GIO.MenuModelProtocol>(model: MenuModelT) -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_menu_new_from_model(model.menu_model_ptr))) else { return nil }
        return rv
    }
}

/// The `Menu` type acts as a reference-counted owner of an underlying `GtkMenu` instance.
/// It provides the methods that can operate on this data type through `MenuProtocol` conformance.
/// Use `Menu` as a strong reference or owner of a `GtkMenu` instance.
///
/// A `GtkMenu` is a `GtkMenuShell` that implements a drop down menu
/// consisting of a list of `GtkMenuItem` objects which can be navigated
/// and activated by the user to perform application functions.
/// 
/// A `GtkMenu` is most commonly dropped down by activating a
/// `GtkMenuItem` in a `GtkMenuBar` or popped up by activating a
/// `GtkMenuItem` in another `GtkMenu`.
/// 
/// A `GtkMenu` can also be popped up by activating a `GtkComboBox`.
/// Other composite widgets such as the `GtkNotebook` can pop up a
/// `GtkMenu` as well.
/// 
/// Applications can display a `GtkMenu` as a popup menu by calling the
/// `gtk_menu_popup()` function.  The example below shows how an application
/// can pop up a menu when the 3rd mouse button is pressed.
/// 
/// ## Connecting the popup signal handler.
/// 
/// (C Language Example):
/// ```C
///   // connect our handler which will popup the menu
///   g_signal_connect_swapped (window, "button_press_event",
/// G_CALLBACK (my_popup_handler), menu);
/// ```
/// 
/// ## Signal handler which displays a popup menu.
/// 
/// (C Language Example):
/// ```C
/// static gint
/// my_popup_handler (GtkWidget *widget, GdkEvent *event)
/// {
///   GtkMenu *menu;
///   GdkEventButton *event_button;
/// 
///   g_return_val_if_fail (widget != NULL, FALSE);
///   g_return_val_if_fail (GTK_IS_MENU (widget), FALSE);
///   g_return_val_if_fail (event != NULL, FALSE);
/// 
///   // The "widget" is the menu that was supplied when
///   // g_signal_connect_swapped() was called.
///   menu = GTK_MENU (widget);
/// 
///   if (event->type == GDK_BUTTON_PRESS)
///     {
///       event_button = (GdkEventButton *) event;
///       if (event_button->button == GDK_BUTTON_SECONDARY)
///         {
///           gtk_menu_popup (menu, NULL, NULL, NULL, NULL,
///                           event_button->button, event_button->time);
///           return TRUE;
///         }
///     }
/// 
///   return FALSE;
/// }
/// ```
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
/// menu
/// ├── arrow.top
/// ├── <child>
/// ┊
/// ├── <child>
/// ╰── arrow.bottom
/// ```
/// 
/// The main CSS node of GtkMenu has name menu, and there are two subnodes
/// with name arrow, for scrolling menu arrows. These subnodes get the
/// .top and .bottom style classes.
open class Menu: MenuShell, MenuProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Menu` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkMenu>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Menu` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkMenu>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Menu` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Menu` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Menu` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkMenu>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Menu` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkMenu>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkMenu`.
    /// i.e., ownership is transferred to the `Menu` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkMenu>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `MenuProtocol`
    /// Will retain `GtkMenu`.
    /// - Parameter other: an instance of a related type that implements `MenuProtocol`
    @inlinable public init<T: MenuProtocol>(menu other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkMenu`
    @inlinable public init() {
        let rv = gtk_menu_new()
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a `GtkMenu` and populates it with menu items and
    /// submenus according to `model`.
    /// 
    /// The created menu items are connected to actions found in the
    /// `GtkApplicationWindow` to which the menu belongs - typically
    /// by means of being attached to a widget (see `gtk_menu_attach_to_widget()`)
    /// that is contained within the `GtkApplicationWindows` widget hierarchy.
    /// 
    /// Actions can also be added using `gtk_widget_insert_action_group()` on the menu's
    /// attach widget or on any of its parent widgets.
    @inlinable public init<MenuModelT: GIO.MenuModelProtocol>(model: MenuModelT) {
        let rv = gtk_menu_new_from_model(model.menu_model_ptr)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a `GtkMenu` and populates it with menu items and
    /// submenus according to `model`.
    /// 
    /// The created menu items are connected to actions found in the
    /// `GtkApplicationWindow` to which the menu belongs - typically
    /// by means of being attached to a widget (see `gtk_menu_attach_to_widget()`)
    /// that is contained within the `GtkApplicationWindows` widget hierarchy.
    /// 
    /// Actions can also be added using `gtk_widget_insert_action_group()` on the menu's
    /// attach widget or on any of its parent widgets.
    @inlinable public static func newFrom<MenuModelT: GIO.MenuModelProtocol>(model: MenuModelT) -> Widget! {
        guard let rv = Widget(gconstpointer: gconstpointer(gtk_menu_new_from_model(model.menu_model_ptr))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

}

public enum MenuPropertyName: String, PropertyNameProtocol {
    /// The accel group holding accelerators for the menu.
    case accelGroup = "accel-group"
    /// An accel path used to conveniently construct accel paths of child items.
    case accelPath = "accel-path"
    /// The index of the currently selected menu item, or -1 if no
    /// menu item is selected.
    case active = "active"
    /// Positioning hints for aligning the menu relative to a rectangle.
    /// 
    /// These hints determine how the menu should be positioned in the case that
    /// the menu would fall off-screen if placed in its ideal position.
    /// 
    /// ![](popup-flip.png)
    /// 
    /// For example, `GDK_ANCHOR_FLIP_Y` will replace `GDK_GRAVITY_NORTH_WEST` with
    /// `GDK_GRAVITY_SOUTH_WEST` and vice versa if the menu extends beyond the
    /// bottom edge of the monitor.
    /// 
    /// See gtk_menu_popup_at_rect (), gtk_menu_popup_at_widget (),
    /// gtk_menu_popup_at_pointer (), `GtkMenu:rect`-anchor-dx,
    /// `GtkMenu:rect`-anchor-dy, `GtkMenu:menu`-type-hint, and `GtkMenu::popped`-up.
    case anchorHints = "anchor-hints"
    case appPaintable = "app-paintable"
    /// The widget the menu is attached to. Setting this property attaches
    /// the menu without a `GtkMenuDetachFunc`. If you need to use a detacher,
    /// use `gtk_menu_attach_to_widget()` directly.
    case attachWidget = "attach-widget"
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
    /// The `GdkWindowTypeHint` to use for the menu's `GdkWindow`.
    /// 
    /// See gtk_menu_popup_at_rect (), gtk_menu_popup_at_widget (),
    /// gtk_menu_popup_at_pointer (), `GtkMenu:anchor`-hints,
    /// `GtkMenu:rect`-anchor-dx, `GtkMenu:rect`-anchor-dy, and `GtkMenu::popped`-up.
    case menuTypeHint = "menu-type-hint"
    /// The monitor the menu will be popped up on.
    case monitor = "monitor"
    case name = "name"
    case noShowAll = "no-show-all"
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case opacity = "opacity"
    case parent = "parent"
    case receivesDefault = "receives-default"
    /// Horizontal offset to apply to the menu, i.e. the rectangle or widget
    /// anchor.
    /// 
    /// See gtk_menu_popup_at_rect (), gtk_menu_popup_at_widget (),
    /// gtk_menu_popup_at_pointer (), `GtkMenu:anchor`-hints,
    /// `GtkMenu:rect`-anchor-dy, `GtkMenu:menu`-type-hint, and `GtkMenu::popped`-up.
    case rectAnchorDx = "rect-anchor-dx"
    /// Vertical offset to apply to the menu, i.e. the rectangle or widget anchor.
    /// 
    /// See gtk_menu_popup_at_rect (), gtk_menu_popup_at_widget (),
    /// gtk_menu_popup_at_pointer (), `GtkMenu:anchor`-hints,
    /// `GtkMenu:rect`-anchor-dx, `GtkMenu:menu`-type-hint, and `GtkMenu::popped`-up.
    case rectAnchorDy = "rect-anchor-dy"
    /// A boolean that indicates whether the menu reserves space for
    /// toggles and icons, regardless of their actual presence.
    /// 
    /// This property should only be changed from its default value
    /// for special-purposes such as tabular menus. Regular menus that
    /// are connected to a menu bar or context menus should reserve
    /// toggle space for consistency.
    case reserveToggleSize = "reserve-toggle-size"
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
    /// A boolean that determines whether the menu and its submenus grab the
    /// keyboard focus. See `gtk_menu_shell_set_take_focus()` and
    /// `gtk_menu_shell_get_take_focus()`.
    case takeFocus = "take-focus"
    /// A boolean that indicates whether the menu is torn-off.
    ///
    /// **tearoff-state is deprecated:**
    /// This method is deprecated.
    case tearoffState = "tearoff-state"
    /// A title that may be displayed by the window manager when this
    /// menu is torn-off.
    ///
    /// **tearoff-title is deprecated:**
    /// This method is deprecated.
    case tearoffTitle = "tearoff-title"
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
    /// The widget's window if it is realized, `nil` otherwise.
    case window = "window"
}

public extension MenuProtocol {
    /// Bind a `MenuPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: MenuPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a Menu property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: MenuPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Menu property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: MenuPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: Signals of Menu
public extension MenuProtocol {
    /// Emitted when the position of `menu` is finalized after being popped up
    /// using gtk_menu_popup_at_rect (), gtk_menu_popup_at_widget (), or
    /// gtk_menu_popup_at_pointer ().
    /// 
    /// `menu` might be flipped over the anchor rectangle in order to keep it
    /// on-screen, in which case `flipped_x` and `flipped_y` will be set to `true`
    /// accordingly.
    /// 
    /// `flipped_rect` is the ideal position of `menu` after any possible flipping,
    /// but before any possible sliding. `final_rect` is `flipped_rect`, but possibly
    /// translated in the case that flipping is still ineffective in keeping `menu`
    /// on-screen.
    /// 
    /// ![](popup-slide.png)
    /// 
    /// The blue menu is `menu`'s ideal position, the green menu is `flipped_rect`,
    /// and the red menu is `final_rect`.
    /// 
    /// See gtk_menu_popup_at_rect (), gtk_menu_popup_at_widget (),
    /// gtk_menu_popup_at_pointer (), `GtkMenu:anchor`-hints,
    /// `GtkMenu:rect`-anchor-dx, `GtkMenu:rect`-anchor-dy, and
    /// `GtkMenu:menu`-type-hint.
    /// - Note: Representation of signal named `popped-up`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter flippedRect: the position of `menu` after any possible                flipping or `nil` if the backend can't obtain it
    /// - Parameter finalRect: the final position of `menu` or `nil` if the              backend can't obtain it
    /// - Parameter flippedX: `true` if the anchors were flipped horizontally
    /// - Parameter flippedY: `true` if the anchors were flipped vertically
    /// - Warning: Wrapper of this signal could not be generated because it contains unimplemented features: { (4)  gpointer argument is not yet supported }
    /// - Note: Use this string for `signalConnectData` method
    static var onPoppedUp: String { "popped-up" }
    /// - Note: Representation of signal named `move-scroll`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter scrollType: a `GtkScrollType`
    @discardableResult
    func onMoveScroll(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: MenuRef, _ scrollType: ScrollType) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<MenuRef, ScrollType, Void>
        let cCallback: @convention(c) (gpointer, UInt32, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(MenuRef(raw: unownedSelf), ScrollType(arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "move-scroll", 
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
    /// - Note: Representation of signal named `notify::accel-group`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyAccelGroup(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: MenuRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<MenuRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(MenuRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::accel-group", 
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
    /// - Note: Representation of signal named `notify::accel-path`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyAccelPath(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: MenuRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<MenuRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(MenuRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::accel-path", 
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
    /// - Note: Representation of signal named `notify::active`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyActive(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: MenuRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<MenuRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(MenuRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::active", 
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
    /// - Note: Representation of signal named `notify::anchor-hints`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyAnchorHints(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: MenuRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<MenuRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(MenuRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::anchor-hints", 
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
    /// - Note: Representation of signal named `notify::attach-widget`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyAttachWidget(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: MenuRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<MenuRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(MenuRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::attach-widget", 
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
    /// - Note: Representation of signal named `notify::menu-type-hint`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyMenuTypeHint(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: MenuRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<MenuRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(MenuRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::menu-type-hint", 
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
    /// - Note: Representation of signal named `notify::monitor`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyMonitor(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: MenuRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<MenuRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(MenuRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::monitor", 
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
    /// - Note: Representation of signal named `notify::rect-anchor-dx`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyRectAnchorDx(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: MenuRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<MenuRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(MenuRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::rect-anchor-dx", 
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
    /// - Note: Representation of signal named `notify::rect-anchor-dy`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyRectAnchorDy(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: MenuRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<MenuRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(MenuRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::rect-anchor-dy", 
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
    /// - Note: Representation of signal named `notify::reserve-toggle-size`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyReserveToggleSize(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: MenuRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<MenuRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(MenuRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::reserve-toggle-size", 
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
    /// - Note: Representation of signal named `notify::tearoff-state`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyTearoffState(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: MenuRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<MenuRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(MenuRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::tearoff-state", 
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
    /// - Note: Representation of signal named `notify::tearoff-title`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyTearoffTitle(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: MenuRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<MenuRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(MenuRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::tearoff-title", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
}

// MARK: Menu Class: MenuProtocol extension (methods and fields)
public extension MenuProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMenu` instance.
    @inlinable var menu_ptr: UnsafeMutablePointer<GtkMenu>! { return ptr?.assumingMemoryBound(to: GtkMenu.self) }

    /// Adds a new `GtkMenuItem` to a (table) menu. The number of “cells” that
    /// an item will occupy is specified by `left_attach`, `right_attach`,
    /// `top_attach` and `bottom_attach`. These each represent the leftmost,
    /// rightmost, uppermost and lower column and row numbers of the table.
    /// (Columns and rows are indexed from zero).
    /// 
    /// Note that this function is not related to `gtk_menu_detach()`.
    @inlinable func attach<WidgetT: WidgetProtocol>(child: WidgetT, leftAttach: Int, rightAttach: Int, topAttach: Int, bottomAttach: Int) {
        gtk_menu_attach(menu_ptr, child.widget_ptr, guint(leftAttach), guint(rightAttach), guint(topAttach), guint(bottomAttach))
    
    }

    /// Attaches the menu to the widget and provides a callback function
    /// that will be invoked when the menu calls `gtk_menu_detach()` during
    /// its destruction.
    /// 
    /// If the menu is attached to the widget then it will be destroyed
    /// when the widget is destroyed, as if it was a child widget.
    /// An attached menu will also move between screens correctly if the
    /// widgets moves between screens.
    @inlinable func attachToWidget<WidgetT: WidgetProtocol>(attachWidget: WidgetT, detacher: GtkMenuDetachFunc? = nil) {
        gtk_menu_attach_to_widget(menu_ptr, attachWidget.widget_ptr, detacher)
    
    }

    /// Detaches the menu from the widget to which it had been attached.
    /// This function will call the callback function, `detacher`, provided
    /// when the `gtk_menu_attach_to_widget()` function was called.
    @inlinable func detach() {
        gtk_menu_detach(menu_ptr)
    
    }

    /// Gets the `GtkAccelGroup` which holds global accelerators for the
    /// menu. See `gtk_menu_set_accel_group()`.
    @inlinable func getAccelGroup() -> AccelGroupRef! {
        let rv = AccelGroupRef(gconstpointer: gconstpointer(gtk_menu_get_accel_group(menu_ptr)))
        return rv
    }

    /// Retrieves the accelerator path set on the menu.
    @inlinable func getAccelPath() -> String! {
        let rv = gtk_menu_get_accel_path(menu_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Returns the selected menu item from the menu.  This is used by the
    /// `GtkComboBox`.
    @inlinable func getActive() -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_menu_get_active(menu_ptr))) else { return nil }
        return rv
    }

    /// Returns the `GtkWidget` that the menu is attached to.
    @inlinable func getAttachWidget() -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_menu_get_attach_widget(menu_ptr))) else { return nil }
        return rv
    }

    /// Retrieves the number of the monitor on which to show the menu.
    @inlinable func getMonitor() -> Int {
        let rv = Int(gtk_menu_get_monitor(menu_ptr))
        return rv
    }

    /// Returns whether the menu reserves space for toggles and
    /// icons, regardless of their actual presence.
    @inlinable func getReserveToggleSize() -> Bool {
        let rv = ((gtk_menu_get_reserve_toggle_size(menu_ptr)) != 0)
        return rv
    }

    /// Returns whether the menu is torn off.
    /// See `gtk_menu_set_tearoff_state()`.
    ///
    /// **get_tearoff_state is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated)
    @inlinable func getTearoffState() -> Bool {
        let rv = ((gtk_menu_get_tearoff_state(menu_ptr)) != 0)
        return rv
    }

    /// Returns the title of the menu. See `gtk_menu_set_title()`.
    ///
    /// **get_title is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated)
    @inlinable func getTitle() -> String! {
        let rv = gtk_menu_get_title(menu_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Places `menu` on the given monitor.
    @inlinable func placeOn<MonitorT: Gdk.MonitorProtocol>(monitor: MonitorT) {
        gtk_menu_place_on_monitor(menu_ptr, monitor.monitor_ptr)
    
    }

    /// Removes the menu from the screen.
    @inlinable func popdown() {
        gtk_menu_popdown(menu_ptr)
    
    }

    /// Displays a menu and makes it available for selection.
    /// 
    /// Applications can use this function to display context-sensitive
    /// menus, and will typically supply `nil` for the `parent_menu_shell`,
    /// `parent_menu_item`, `func` and `data` parameters. The default menu
    /// positioning function will position the menu at the current mouse
    /// cursor position.
    /// 
    /// The `button` parameter should be the mouse button pressed to initiate
    /// the menu popup. If the menu popup was initiated by something other
    /// than a mouse button press, such as a mouse button release or a keypress,
    /// `button` should be 0.
    /// 
    /// The `activate_time` parameter is used to conflict-resolve initiation
    /// of concurrent requests for mouse/keyboard grab requests. To function
    /// properly, this needs to be the timestamp of the user event (such as
    /// a mouse click or key press) that caused the initiation of the popup.
    /// Only if no such event is available, `gtk_get_current_event_time()` can
    /// be used instead.
    /// 
    /// Note that this function does not work very well on GDK backends that
    /// do not have global coordinates, such as Wayland or Mir. You should
    /// probably use one of the gtk_menu_popup_at_ variants, which do not
    /// have this problem.
    ///
    /// **popup is deprecated:**
    /// Please use gtk_menu_popup_at_widget(),
    ///     gtk_menu_popup_at_pointer(). or gtk_menu_popup_at_rect() instead
    @available(*, deprecated)
    @inlinable func popup(parentMenuShell: WidgetRef? = nil, parentMenuItem: WidgetRef? = nil, `func`: GtkMenuPositionFunc? = nil, data: gpointer! = nil, button: Int, activateTime: guint32) {
        gtk_menu_popup(menu_ptr, parentMenuShell?.widget_ptr, parentMenuItem?.widget_ptr, `func`, data, guint(button), activateTime)
    
    }
    /// Displays a menu and makes it available for selection.
    /// 
    /// Applications can use this function to display context-sensitive
    /// menus, and will typically supply `nil` for the `parent_menu_shell`,
    /// `parent_menu_item`, `func` and `data` parameters. The default menu
    /// positioning function will position the menu at the current mouse
    /// cursor position.
    /// 
    /// The `button` parameter should be the mouse button pressed to initiate
    /// the menu popup. If the menu popup was initiated by something other
    /// than a mouse button press, such as a mouse button release or a keypress,
    /// `button` should be 0.
    /// 
    /// The `activate_time` parameter is used to conflict-resolve initiation
    /// of concurrent requests for mouse/keyboard grab requests. To function
    /// properly, this needs to be the timestamp of the user event (such as
    /// a mouse click or key press) that caused the initiation of the popup.
    /// Only if no such event is available, `gtk_get_current_event_time()` can
    /// be used instead.
    /// 
    /// Note that this function does not work very well on GDK backends that
    /// do not have global coordinates, such as Wayland or Mir. You should
    /// probably use one of the gtk_menu_popup_at_ variants, which do not
    /// have this problem.
    ///
    /// **popup is deprecated:**
    /// Please use gtk_menu_popup_at_widget(),
    ///     gtk_menu_popup_at_pointer(). or gtk_menu_popup_at_rect() instead
    @available(*, deprecated)
    @inlinable func popup<WidgetT: WidgetProtocol>(parentMenuShell: WidgetT?, parentMenuItem: WidgetT?, `func`: GtkMenuPositionFunc? = nil, data: gpointer! = nil, button: Int, activateTime: guint32) {
        gtk_menu_popup(menu_ptr, parentMenuShell?.widget_ptr, parentMenuItem?.widget_ptr, `func`, data, guint(button), activateTime)
    
    }

    /// Displays `menu` and makes it available for selection.
    /// 
    /// See gtk_menu_popup_at_widget () to pop up a menu at a widget.
    /// gtk_menu_popup_at_rect () also allows you to position a menu at an arbitrary
    /// rectangle.
    /// 
    /// `menu` will be positioned at the pointer associated with `trigger_event`.
    /// 
    /// Properties that influence the behaviour of this function are
    /// `GtkMenu:anchor`-hints, `GtkMenu:rect`-anchor-dx, `GtkMenu:rect`-anchor-dy, and
    /// `GtkMenu:menu`-type-hint. Connect to the `GtkMenu::popped`-up signal to find
    /// out how it was actually positioned.
    @inlinable func popupAtPointer(triggerEvent: Gdk.EventRef? = nil) {
        gtk_menu_popup_at_pointer(menu_ptr, triggerEvent?.event_ptr)
    
    }
    /// Displays `menu` and makes it available for selection.
    /// 
    /// See gtk_menu_popup_at_widget () to pop up a menu at a widget.
    /// gtk_menu_popup_at_rect () also allows you to position a menu at an arbitrary
    /// rectangle.
    /// 
    /// `menu` will be positioned at the pointer associated with `trigger_event`.
    /// 
    /// Properties that influence the behaviour of this function are
    /// `GtkMenu:anchor`-hints, `GtkMenu:rect`-anchor-dx, `GtkMenu:rect`-anchor-dy, and
    /// `GtkMenu:menu`-type-hint. Connect to the `GtkMenu::popped`-up signal to find
    /// out how it was actually positioned.
    @inlinable func popupAtPointer<EventT: Gdk.EventProtocol>(triggerEvent: EventT?) {
        gtk_menu_popup_at_pointer(menu_ptr, triggerEvent?.event_ptr)
    
    }

    /// Displays `menu` and makes it available for selection.
    /// 
    /// See gtk_menu_popup_at_widget () and gtk_menu_popup_at_pointer (), which
    /// handle more common cases for popping up menus.
    /// 
    /// `menu` will be positioned at `rect`, aligning their anchor points. `rect` is
    /// relative to the top-left corner of `rect_window`. `rect_anchor` and
    /// `menu_anchor` determine anchor points on `rect` and `menu` to pin together.
    /// `menu` can optionally be offset by `GtkMenu:rect`-anchor-dx and
    /// `GtkMenu:rect`-anchor-dy.
    /// 
    /// Anchors should be specified under the assumption that the text direction is
    /// left-to-right; they will be flipped horizontally automatically if the text
    /// direction is right-to-left.
    /// 
    /// Other properties that influence the behaviour of this function are
    /// `GtkMenu:anchor`-hints and `GtkMenu:menu`-type-hint. Connect to the
    /// `GtkMenu::popped`-up signal to find out how it was actually positioned.
    @inlinable func popupAtRect<RectangleT: Gdk.RectangleProtocol, WindowT: Gdk.WindowProtocol>(rectWindow: WindowT, rect: RectangleT, rectAnchor: GdkGravity, menuAnchor: GdkGravity, triggerEvent: Gdk.EventRef? = nil) {
        gtk_menu_popup_at_rect(menu_ptr, rectWindow.window_ptr, rect.rectangle_ptr, rectAnchor, menuAnchor, triggerEvent?.event_ptr)
    
    }
    /// Displays `menu` and makes it available for selection.
    /// 
    /// See gtk_menu_popup_at_widget () and gtk_menu_popup_at_pointer (), which
    /// handle more common cases for popping up menus.
    /// 
    /// `menu` will be positioned at `rect`, aligning their anchor points. `rect` is
    /// relative to the top-left corner of `rect_window`. `rect_anchor` and
    /// `menu_anchor` determine anchor points on `rect` and `menu` to pin together.
    /// `menu` can optionally be offset by `GtkMenu:rect`-anchor-dx and
    /// `GtkMenu:rect`-anchor-dy.
    /// 
    /// Anchors should be specified under the assumption that the text direction is
    /// left-to-right; they will be flipped horizontally automatically if the text
    /// direction is right-to-left.
    /// 
    /// Other properties that influence the behaviour of this function are
    /// `GtkMenu:anchor`-hints and `GtkMenu:menu`-type-hint. Connect to the
    /// `GtkMenu::popped`-up signal to find out how it was actually positioned.
    @inlinable func popupAtRect<EventT: Gdk.EventProtocol, RectangleT: Gdk.RectangleProtocol, WindowT: Gdk.WindowProtocol>(rectWindow: WindowT, rect: RectangleT, rectAnchor: GdkGravity, menuAnchor: GdkGravity, triggerEvent: EventT?) {
        gtk_menu_popup_at_rect(menu_ptr, rectWindow.window_ptr, rect.rectangle_ptr, rectAnchor, menuAnchor, triggerEvent?.event_ptr)
    
    }

    /// Displays `menu` and makes it available for selection.
    /// 
    /// See gtk_menu_popup_at_pointer () to pop up a menu at the master pointer.
    /// gtk_menu_popup_at_rect () also allows you to position a menu at an arbitrary
    /// rectangle.
    /// 
    /// ![](popup-anchors.png)
    /// 
    /// `menu` will be positioned at `widget`, aligning their anchor points.
    /// `widget_anchor` and `menu_anchor` determine anchor points on `widget` and `menu`
    /// to pin together. `menu` can optionally be offset by `GtkMenu:rect`-anchor-dx
    /// and `GtkMenu:rect`-anchor-dy.
    /// 
    /// Anchors should be specified under the assumption that the text direction is
    /// left-to-right; they will be flipped horizontally automatically if the text
    /// direction is right-to-left.
    /// 
    /// Other properties that influence the behaviour of this function are
    /// `GtkMenu:anchor`-hints and `GtkMenu:menu`-type-hint. Connect to the
    /// `GtkMenu::popped`-up signal to find out how it was actually positioned.
    @inlinable func popupAt<WidgetT: WidgetProtocol>(widget: WidgetT, widgetAnchor: GdkGravity, menuAnchor: GdkGravity, triggerEvent: Gdk.EventRef? = nil) {
        gtk_menu_popup_at_widget(menu_ptr, widget.widget_ptr, widgetAnchor, menuAnchor, triggerEvent?.event_ptr)
    
    }
    /// Displays `menu` and makes it available for selection.
    /// 
    /// See gtk_menu_popup_at_pointer () to pop up a menu at the master pointer.
    /// gtk_menu_popup_at_rect () also allows you to position a menu at an arbitrary
    /// rectangle.
    /// 
    /// ![](popup-anchors.png)
    /// 
    /// `menu` will be positioned at `widget`, aligning their anchor points.
    /// `widget_anchor` and `menu_anchor` determine anchor points on `widget` and `menu`
    /// to pin together. `menu` can optionally be offset by `GtkMenu:rect`-anchor-dx
    /// and `GtkMenu:rect`-anchor-dy.
    /// 
    /// Anchors should be specified under the assumption that the text direction is
    /// left-to-right; they will be flipped horizontally automatically if the text
    /// direction is right-to-left.
    /// 
    /// Other properties that influence the behaviour of this function are
    /// `GtkMenu:anchor`-hints and `GtkMenu:menu`-type-hint. Connect to the
    /// `GtkMenu::popped`-up signal to find out how it was actually positioned.
    @inlinable func popupAt<EventT: Gdk.EventProtocol, WidgetT: WidgetProtocol>(widget: WidgetT, widgetAnchor: GdkGravity, menuAnchor: GdkGravity, triggerEvent: EventT?) {
        gtk_menu_popup_at_widget(menu_ptr, widget.widget_ptr, widgetAnchor, menuAnchor, triggerEvent?.event_ptr)
    
    }

    /// Displays a menu and makes it available for selection.
    /// 
    /// Applications can use this function to display context-sensitive menus,
    /// and will typically supply `nil` for the `parent_menu_shell`,
    /// `parent_menu_item`, `func`, `data` and `destroy` parameters. The default
    /// menu positioning function will position the menu at the current position
    /// of `device` (or its corresponding pointer).
    /// 
    /// The `button` parameter should be the mouse button pressed to initiate
    /// the menu popup. If the menu popup was initiated by something other than
    /// a mouse button press, such as a mouse button release or a keypress,
    /// `button` should be 0.
    /// 
    /// The `activate_time` parameter is used to conflict-resolve initiation of
    /// concurrent requests for mouse/keyboard grab requests. To function
    /// properly, this needs to be the time stamp of the user event (such as
    /// a mouse click or key press) that caused the initiation of the popup.
    /// Only if no such event is available, `gtk_get_current_event_time()` can
    /// be used instead.
    /// 
    /// Note that this function does not work very well on GDK backends that
    /// do not have global coordinates, such as Wayland or Mir. You should
    /// probably use one of the gtk_menu_popup_at_ variants, which do not
    /// have this problem.
    ///
    /// **popup_for_device is deprecated:**
    /// Please use gtk_menu_popup_at_widget(),
    ///     gtk_menu_popup_at_pointer(). or gtk_menu_popup_at_rect() instead
    @available(*, deprecated)
    @inlinable func popupFor(device: Gdk.DeviceRef? = nil, parentMenuShell: WidgetRef? = nil, parentMenuItem: WidgetRef? = nil, `func`: GtkMenuPositionFunc? = nil, data: gpointer! = nil, destroy: GDestroyNotify? = nil, button: Int, activateTime: guint32) {
        gtk_menu_popup_for_device(menu_ptr, device?.device_ptr, parentMenuShell?.widget_ptr, parentMenuItem?.widget_ptr, `func`, data, destroy, guint(button), activateTime)
    
    }
    /// Displays a menu and makes it available for selection.
    /// 
    /// Applications can use this function to display context-sensitive menus,
    /// and will typically supply `nil` for the `parent_menu_shell`,
    /// `parent_menu_item`, `func`, `data` and `destroy` parameters. The default
    /// menu positioning function will position the menu at the current position
    /// of `device` (or its corresponding pointer).
    /// 
    /// The `button` parameter should be the mouse button pressed to initiate
    /// the menu popup. If the menu popup was initiated by something other than
    /// a mouse button press, such as a mouse button release or a keypress,
    /// `button` should be 0.
    /// 
    /// The `activate_time` parameter is used to conflict-resolve initiation of
    /// concurrent requests for mouse/keyboard grab requests. To function
    /// properly, this needs to be the time stamp of the user event (such as
    /// a mouse click or key press) that caused the initiation of the popup.
    /// Only if no such event is available, `gtk_get_current_event_time()` can
    /// be used instead.
    /// 
    /// Note that this function does not work very well on GDK backends that
    /// do not have global coordinates, such as Wayland or Mir. You should
    /// probably use one of the gtk_menu_popup_at_ variants, which do not
    /// have this problem.
    ///
    /// **popup_for_device is deprecated:**
    /// Please use gtk_menu_popup_at_widget(),
    ///     gtk_menu_popup_at_pointer(). or gtk_menu_popup_at_rect() instead
    @available(*, deprecated)
    @inlinable func popupFor<DeviceT: Gdk.DeviceProtocol, WidgetT: WidgetProtocol>(device: DeviceT?, parentMenuShell: WidgetT?, parentMenuItem: WidgetT?, `func`: GtkMenuPositionFunc? = nil, data: gpointer! = nil, destroy: GDestroyNotify? = nil, button: Int, activateTime: guint32) {
        gtk_menu_popup_for_device(menu_ptr, device?.device_ptr, parentMenuShell?.widget_ptr, parentMenuItem?.widget_ptr, `func`, data, destroy, guint(button), activateTime)
    
    }

    /// Moves `child` to a new `position` in the list of `menu`
    /// children.
    @inlinable func reorder<WidgetT: WidgetProtocol>(child: WidgetT, position: Int) {
        gtk_menu_reorder_child(menu_ptr, child.widget_ptr, gint(position))
    
    }

    /// Repositions the menu according to its position function.
    @inlinable func reposition() {
        gtk_menu_reposition(menu_ptr)
    
    }

    /// Set the `GtkAccelGroup` which holds global accelerators for the
    /// menu.  This accelerator group needs to also be added to all windows
    /// that this menu is being used in with `gtk_window_add_accel_group()`,
    /// in order for those windows to support all the accelerators
    /// contained in this group.
    @inlinable func set(accelGroup: AccelGroupRef? = nil) {
        gtk_menu_set_accel_group(menu_ptr, accelGroup?.accel_group_ptr)
    
    }
    /// Set the `GtkAccelGroup` which holds global accelerators for the
    /// menu.  This accelerator group needs to also be added to all windows
    /// that this menu is being used in with `gtk_window_add_accel_group()`,
    /// in order for those windows to support all the accelerators
    /// contained in this group.
    @inlinable func set<AccelGroupT: AccelGroupProtocol>(accelGroup: AccelGroupT?) {
        gtk_menu_set_accel_group(menu_ptr, accelGroup?.accel_group_ptr)
    
    }

    /// Sets an accelerator path for this menu from which accelerator paths
    /// for its immediate children, its menu items, can be constructed.
    /// The main purpose of this function is to spare the programmer the
    /// inconvenience of having to call `gtk_menu_item_set_accel_path()` on
    /// each menu item that should support runtime user changable accelerators.
    /// Instead, by just calling `gtk_menu_set_accel_path()` on their parent,
    /// each menu item of this menu, that contains a label describing its
    /// purpose, automatically gets an accel path assigned.
    /// 
    /// For example, a menu containing menu items “New” and “Exit”, will, after
    /// `gtk_menu_set_accel_path (menu, "<Gnumeric-Sheet>/File");` has been
    /// called, assign its items the accel paths: `"<Gnumeric-Sheet>/File/New"`
    /// and `"<Gnumeric-Sheet>/File/Exit"`.
    /// 
    /// Assigning accel paths to menu items then enables the user to change
    /// their accelerators at runtime. More details about accelerator paths
    /// and their default setups can be found at `gtk_accel_map_add_entry()`.
    /// 
    /// Note that `accel_path` string will be stored in a `GQuark`. Therefore,
    /// if you pass a static string, you can save some memory by interning
    /// it first with `g_intern_static_string()`.
    @inlinable func set(accelPath: UnsafePointer<gchar>? = nil) {
        gtk_menu_set_accel_path(menu_ptr, accelPath)
    
    }

    /// Selects the specified menu item within the menu.  This is used by
    /// the `GtkComboBox` and should not be used by anyone else.
    @inlinable func setActive(index: Int) {
        gtk_menu_set_active(menu_ptr, guint(index))
    
    }

    /// Informs GTK+ on which monitor a menu should be popped up.
    /// See `gdk_monitor_get_geometry()`.
    /// 
    /// This function should be called from a `GtkMenuPositionFunc`
    /// if the menu should not appear on the same monitor as the pointer.
    /// This information can’t be reliably inferred from the coordinates
    /// returned by a `GtkMenuPositionFunc`, since, for very long menus,
    /// these coordinates may extend beyond the monitor boundaries or even
    /// the screen boundaries.
    @inlinable func setMonitor(monitorNum: Int) {
        gtk_menu_set_monitor(menu_ptr, gint(monitorNum))
    
    }

    /// Sets whether the menu should reserve space for drawing toggles
    /// or icons, regardless of their actual presence.
    @inlinable func set(reserveToggleSize: Bool) {
        gtk_menu_set_reserve_toggle_size(menu_ptr, gboolean((reserveToggleSize) ? 1 : 0))
    
    }

    /// Sets the `GdkScreen` on which the menu will be displayed.
    @inlinable func set(screen: Gdk.ScreenRef? = nil) {
        gtk_menu_set_screen(menu_ptr, screen?.screen_ptr)
    
    }
    /// Sets the `GdkScreen` on which the menu will be displayed.
    @inlinable func set<ScreenT: Gdk.ScreenProtocol>(screen: ScreenT?) {
        gtk_menu_set_screen(menu_ptr, screen?.screen_ptr)
    
    }

    /// Changes the tearoff state of the menu.  A menu is normally
    /// displayed as drop down menu which persists as long as the menu is
    /// active.  It can also be displayed as a tearoff menu which persists
    /// until it is closed or reattached.
    ///
    /// **set_tearoff_state is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated)
    @inlinable func setTearoffState(tornOff: Bool) {
        gtk_menu_set_tearoff_state(menu_ptr, gboolean((tornOff) ? 1 : 0))
    
    }

    /// Sets the title string for the menu.
    /// 
    /// The title is displayed when the menu is shown as a tearoff
    /// menu. If `title` is `nil`, the menu will see if it is attached
    /// to a parent menu item, and if so it will try to use the same
    /// text as that menu item’s label.
    ///
    /// **set_title is deprecated:**
    /// This method is deprecated.
    @available(*, deprecated)
    @inlinable func set(title: UnsafePointer<gchar>? = nil) {
        gtk_menu_set_title(menu_ptr, title)
    
    }
    /// Gets the `GtkAccelGroup` which holds global accelerators for the
    /// menu. See `gtk_menu_set_accel_group()`.
    @inlinable var accelGroup: AccelGroupRef! {
        /// Gets the `GtkAccelGroup` which holds global accelerators for the
        /// menu. See `gtk_menu_set_accel_group()`.
        get {
            let rv = AccelGroupRef(gconstpointer: gconstpointer(gtk_menu_get_accel_group(menu_ptr)))
            return rv
        }
        /// Set the `GtkAccelGroup` which holds global accelerators for the
        /// menu.  This accelerator group needs to also be added to all windows
        /// that this menu is being used in with `gtk_window_add_accel_group()`,
        /// in order for those windows to support all the accelerators
        /// contained in this group.
        nonmutating set {
            gtk_menu_set_accel_group(menu_ptr, UnsafeMutablePointer<GtkAccelGroup>(newValue?.accel_group_ptr))
        }
    }

    /// Retrieves the accelerator path set on the menu.
    @inlinable var accelPath: String! {
        /// Retrieves the accelerator path set on the menu.
        get {
            let rv = gtk_menu_get_accel_path(menu_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets an accelerator path for this menu from which accelerator paths
        /// for its immediate children, its menu items, can be constructed.
        /// The main purpose of this function is to spare the programmer the
        /// inconvenience of having to call `gtk_menu_item_set_accel_path()` on
        /// each menu item that should support runtime user changable accelerators.
        /// Instead, by just calling `gtk_menu_set_accel_path()` on their parent,
        /// each menu item of this menu, that contains a label describing its
        /// purpose, automatically gets an accel path assigned.
        /// 
        /// For example, a menu containing menu items “New” and “Exit”, will, after
        /// `gtk_menu_set_accel_path (menu, "<Gnumeric-Sheet>/File");` has been
        /// called, assign its items the accel paths: `"<Gnumeric-Sheet>/File/New"`
        /// and `"<Gnumeric-Sheet>/File/Exit"`.
        /// 
        /// Assigning accel paths to menu items then enables the user to change
        /// their accelerators at runtime. More details about accelerator paths
        /// and their default setups can be found at `gtk_accel_map_add_entry()`.
        /// 
        /// Note that `accel_path` string will be stored in a `GQuark`. Therefore,
        /// if you pass a static string, you can save some memory by interning
        /// it first with `g_intern_static_string()`.
        nonmutating set {
            gtk_menu_set_accel_path(menu_ptr, newValue)
        }
    }

    /// The index of the currently selected menu item, or -1 if no
    /// menu item is selected.
    @inlinable var active: WidgetRef! {
        /// Returns the selected menu item from the menu.  This is used by the
        /// `GtkComboBox`.
        get {
            guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_menu_get_active(menu_ptr))) else { return nil }
            return rv
        }
        /// Selects the specified menu item within the menu.  This is used by
        /// the `GtkComboBox` and should not be used by anyone else.
        nonmutating set {
            // gtk_menu_set_active(menu_ptr, guint(newValue))
        }
    }

    /// Returns the `GtkWidget` that the menu is attached to.
    @inlinable var attachWidget: WidgetRef! {
        /// Returns the `GtkWidget` that the menu is attached to.
        get {
            guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_menu_get_attach_widget(menu_ptr))) else { return nil }
            return rv
        }
    }

    /// The monitor the menu will be popped up on.
    @inlinable var monitor: Int {
        /// Retrieves the number of the monitor on which to show the menu.
        get {
            let rv = Int(gtk_menu_get_monitor(menu_ptr))
            return rv
        }
        /// Informs GTK+ on which monitor a menu should be popped up.
        /// See `gdk_monitor_get_geometry()`.
        /// 
        /// This function should be called from a `GtkMenuPositionFunc`
        /// if the menu should not appear on the same monitor as the pointer.
        /// This information can’t be reliably inferred from the coordinates
        /// returned by a `GtkMenuPositionFunc`, since, for very long menus,
        /// these coordinates may extend beyond the monitor boundaries or even
        /// the screen boundaries.
        nonmutating set {
            gtk_menu_set_monitor(menu_ptr, gint(newValue))
        }
    }

    /// Returns whether the menu reserves space for toggles and
    /// icons, regardless of their actual presence.
    @inlinable var reserveToggleSize: Bool {
        /// Returns whether the menu reserves space for toggles and
        /// icons, regardless of their actual presence.
        get {
            let rv = ((gtk_menu_get_reserve_toggle_size(menu_ptr)) != 0)
            return rv
        }
        /// Sets whether the menu should reserve space for drawing toggles
        /// or icons, regardless of their actual presence.
        nonmutating set {
            gtk_menu_set_reserve_toggle_size(menu_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Returns whether the menu is torn off.
    /// See `gtk_menu_set_tearoff_state()`.
    ///
    /// **get_tearoff_state is deprecated:**
    /// This method is deprecated.
    @inlinable var tearoffState: Bool {
        /// Returns whether the menu is torn off.
        /// See `gtk_menu_set_tearoff_state()`.
        ///
        /// **get_tearoff_state is deprecated:**
        /// This method is deprecated.
        @available(*, deprecated)
    get {
            let rv = ((gtk_menu_get_tearoff_state(menu_ptr)) != 0)
            return rv
        }
        /// Changes the tearoff state of the menu.  A menu is normally
        /// displayed as drop down menu which persists as long as the menu is
        /// active.  It can also be displayed as a tearoff menu which persists
        /// until it is closed or reattached.
        ///
        /// **set_tearoff_state is deprecated:**
        /// This method is deprecated.
        @available(*, deprecated)
    nonmutating set {
            gtk_menu_set_tearoff_state(menu_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Returns the title of the menu. See `gtk_menu_set_title()`.
    ///
    /// **get_title is deprecated:**
    /// This method is deprecated.
    @inlinable var title: String! {
        /// Returns the title of the menu. See `gtk_menu_set_title()`.
        ///
        /// **get_title is deprecated:**
        /// This method is deprecated.
        @available(*, deprecated)
    get {
            let rv = gtk_menu_get_title(menu_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the title string for the menu.
        /// 
        /// The title is displayed when the menu is shown as a tearoff
        /// menu. If `title` is `nil`, the menu will see if it is attached
        /// to a parent menu item, and if so it will try to use the same
        /// text as that menu item’s label.
        ///
        /// **set_title is deprecated:**
        /// This method is deprecated.
        @available(*, deprecated)
    nonmutating set {
            gtk_menu_set_title(menu_ptr, newValue)
        }
    }

    @inlinable var menuShell: GtkMenuShell {
        get {
            let rv = menu_ptr.pointee.menu_shell
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



