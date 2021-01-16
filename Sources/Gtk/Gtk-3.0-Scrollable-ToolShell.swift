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

// MARK: - Scrollable Interface

/// The `ScrollableProtocol` protocol exposes the methods and properties of an underlying `GtkScrollable` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Scrollable`.
/// Alternatively, use `ScrollableRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkScrollable` is an interface that is implemented by widgets with native
/// scrolling ability.
/// 
/// To implement this interface you should override the
/// `GtkScrollable:hadjustment` and `GtkScrollable:vadjustment` properties.
/// 
/// ## Creating a scrollable widget
/// 
/// All scrollable widgets should do the following.
/// 
/// - When a parent widget sets the scrollable child widget’s adjustments,
///   the widget should populate the adjustments’
///   `GtkAdjustment:lower`, `GtkAdjustment:upper`,
///   `GtkAdjustment:step`-increment, `GtkAdjustment:page`-increment and
///   `GtkAdjustment:page`-size properties and connect to the
///   `GtkAdjustment::value`-changed signal.
/// 
/// - Because its preferred size is the size for a fully expanded widget,
///   the scrollable widget must be able to cope with underallocations.
///   This means that it must accept any value passed to its
///   `GtkWidgetClass.size_allocate``()` function.
/// 
/// - When the parent allocates space to the scrollable child widget,
///   the widget should update the adjustments’ properties with new values.
/// 
/// - When any of the adjustments emits the `GtkAdjustment::value`-changed signal,
///   the scrollable widget should scroll its contents.
public protocol ScrollableProtocol {
        /// Untyped pointer to the underlying `GtkScrollable` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkScrollable` instance.
    var scrollable_ptr: UnsafeMutablePointer<GtkScrollable>! { get }

}

/// The `ScrollableRef` type acts as a lightweight Swift reference to an underlying `GtkScrollable` instance.
/// It exposes methods that can operate on this data type through `ScrollableProtocol` conformance.
/// Use `ScrollableRef` only as an `unowned` reference to an existing `GtkScrollable` instance.
///
/// `GtkScrollable` is an interface that is implemented by widgets with native
/// scrolling ability.
/// 
/// To implement this interface you should override the
/// `GtkScrollable:hadjustment` and `GtkScrollable:vadjustment` properties.
/// 
/// ## Creating a scrollable widget
/// 
/// All scrollable widgets should do the following.
/// 
/// - When a parent widget sets the scrollable child widget’s adjustments,
///   the widget should populate the adjustments’
///   `GtkAdjustment:lower`, `GtkAdjustment:upper`,
///   `GtkAdjustment:step`-increment, `GtkAdjustment:page`-increment and
///   `GtkAdjustment:page`-size properties and connect to the
///   `GtkAdjustment::value`-changed signal.
/// 
/// - Because its preferred size is the size for a fully expanded widget,
///   the scrollable widget must be able to cope with underallocations.
///   This means that it must accept any value passed to its
///   `GtkWidgetClass.size_allocate``()` function.
/// 
/// - When the parent allocates space to the scrollable child widget,
///   the widget should update the adjustments’ properties with new values.
/// 
/// - When any of the adjustments emits the `GtkAdjustment::value`-changed signal,
///   the scrollable widget should scroll its contents.
public struct ScrollableRef: ScrollableProtocol {
        /// Untyped pointer to the underlying `GtkScrollable` instance.
    /// For type-safe access, use the generated, typed pointer `scrollable_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ScrollableRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkScrollable>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkScrollable>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkScrollable>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkScrollable>?) {
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

    /// Reference intialiser for a related type that implements `ScrollableProtocol`
    @inlinable init<T: ScrollableProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrollableProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrollableProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrollableProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrollableProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrollableProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Scrollable` type acts as an owner of an underlying `GtkScrollable` instance.
/// It provides the methods that can operate on this data type through `ScrollableProtocol` conformance.
/// Use `Scrollable` as a strong reference or owner of a `GtkScrollable` instance.
///
/// `GtkScrollable` is an interface that is implemented by widgets with native
/// scrolling ability.
/// 
/// To implement this interface you should override the
/// `GtkScrollable:hadjustment` and `GtkScrollable:vadjustment` properties.
/// 
/// ## Creating a scrollable widget
/// 
/// All scrollable widgets should do the following.
/// 
/// - When a parent widget sets the scrollable child widget’s adjustments,
///   the widget should populate the adjustments’
///   `GtkAdjustment:lower`, `GtkAdjustment:upper`,
///   `GtkAdjustment:step`-increment, `GtkAdjustment:page`-increment and
///   `GtkAdjustment:page`-size properties and connect to the
///   `GtkAdjustment::value`-changed signal.
/// 
/// - Because its preferred size is the size for a fully expanded widget,
///   the scrollable widget must be able to cope with underallocations.
///   This means that it must accept any value passed to its
///   `GtkWidgetClass.size_allocate``()` function.
/// 
/// - When the parent allocates space to the scrollable child widget,
///   the widget should update the adjustments’ properties with new values.
/// 
/// - When any of the adjustments emits the `GtkAdjustment::value`-changed signal,
///   the scrollable widget should scroll its contents.
open class Scrollable: ScrollableProtocol {
        /// Untyped pointer to the underlying `GtkScrollable` instance.
    /// For type-safe access, use the generated, typed pointer `scrollable_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Scrollable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkScrollable>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Scrollable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkScrollable>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Scrollable` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Scrollable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Scrollable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkScrollable>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Scrollable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkScrollable>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GtkScrollable` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Scrollable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkScrollable>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GtkScrollable, cannot ref(scrollable_ptr)
    }

    /// Reference intialiser for a related type that implements `ScrollableProtocol`
    /// `GtkScrollable` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ScrollableProtocol`
    @inlinable public init<T: ScrollableProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GtkScrollable, cannot ref(scrollable_ptr)
    }

    /// Do-nothing destructor for `GtkScrollable`.
    deinit {
        // no reference counting for GtkScrollable, cannot unref(scrollable_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrollableProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrollableProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GtkScrollable, cannot ref(scrollable_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrollableProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrollableProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GtkScrollable, cannot ref(scrollable_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrollableProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrollableProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GtkScrollable, cannot ref(scrollable_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrollableProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrollableProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GtkScrollable, cannot ref(scrollable_ptr)
    }



}

public enum ScrollablePropertyName: String, PropertyNameProtocol {
    /// Horizontal `GtkAdjustment` of the scrollable widget. This adjustment is
    /// shared between the scrollable widget and its parent.
    case hadjustment = "hadjustment"
    /// Determines whether horizontal scrolling should start once the scrollable
    /// widget is allocated less than its minimum width or less than its natural width.
    case hscrollPolicy = "hscroll-policy"
    /// Verical `GtkAdjustment` of the scrollable widget. This adjustment is shared
    /// between the scrollable widget and its parent.
    case vadjustment = "vadjustment"
    /// Determines whether vertical scrolling should start once the scrollable
    /// widget is allocated less than its minimum height or less than its natural height.
    case vscrollPolicy = "vscroll-policy"
}

public extension ScrollableProtocol {
    /// Bind a `ScrollablePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: ScrollablePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a Scrollable property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: ScrollablePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Scrollable property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: ScrollablePropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: Scrollable has no signals// MARK: Scrollable Interface: ScrollableProtocol extension (methods and fields)
public extension ScrollableProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkScrollable` instance.
    @inlinable var scrollable_ptr: UnsafeMutablePointer<GtkScrollable>! { return ptr?.assumingMemoryBound(to: GtkScrollable.self) }

    /// Returns the size of a non-scrolling border around the
    /// outside of the scrollable. An example for this would
    /// be treeview headers. GTK+ can use this information to
    /// display overlayed graphics, like the overshoot indication,
    /// at the right position.
    @inlinable func get<BorderT: BorderProtocol>(border: BorderT) -> Bool {
        let rv = ((gtk_scrollable_get_border(scrollable_ptr, border.border_ptr)) != 0)
        return rv
    }

    /// Retrieves the `GtkAdjustment` used for horizontal scrolling.
    @inlinable func getHadjustment() -> AdjustmentRef! {
        let rv = AdjustmentRef(gconstpointer: gconstpointer(gtk_scrollable_get_hadjustment(scrollable_ptr)))
        return rv
    }

    /// Gets the horizontal `GtkScrollablePolicy`.
    @inlinable func getHscrollPolicy() -> GtkScrollablePolicy {
        let rv = gtk_scrollable_get_hscroll_policy(scrollable_ptr)
        return rv
    }

    /// Retrieves the `GtkAdjustment` used for vertical scrolling.
    @inlinable func getVadjustment() -> AdjustmentRef! {
        let rv = AdjustmentRef(gconstpointer: gconstpointer(gtk_scrollable_get_vadjustment(scrollable_ptr)))
        return rv
    }

    /// Gets the vertical `GtkScrollablePolicy`.
    @inlinable func getVscrollPolicy() -> GtkScrollablePolicy {
        let rv = gtk_scrollable_get_vscroll_policy(scrollable_ptr)
        return rv
    }

    /// Sets the horizontal adjustment of the `GtkScrollable`.
    @inlinable func set(hadjustment: AdjustmentRef? = nil) {
        gtk_scrollable_set_hadjustment(scrollable_ptr, hadjustment?.adjustment_ptr)
    
    }
    /// Sets the horizontal adjustment of the `GtkScrollable`.
    @inlinable func set<AdjustmentT: AdjustmentProtocol>(hadjustment: AdjustmentT?) {
        gtk_scrollable_set_hadjustment(scrollable_ptr, hadjustment?.adjustment_ptr)
    
    }

    /// Sets the `GtkScrollablePolicy` to determine whether
    /// horizontal scrolling should start below the minimum width or
    /// below the natural width.
    @inlinable func setHscroll(policy: GtkScrollablePolicy) {
        gtk_scrollable_set_hscroll_policy(scrollable_ptr, policy)
    
    }

    /// Sets the vertical adjustment of the `GtkScrollable`.
    @inlinable func set(vadjustment: AdjustmentRef? = nil) {
        gtk_scrollable_set_vadjustment(scrollable_ptr, vadjustment?.adjustment_ptr)
    
    }
    /// Sets the vertical adjustment of the `GtkScrollable`.
    @inlinable func set<AdjustmentT: AdjustmentProtocol>(vadjustment: AdjustmentT?) {
        gtk_scrollable_set_vadjustment(scrollable_ptr, vadjustment?.adjustment_ptr)
    
    }

    /// Sets the `GtkScrollablePolicy` to determine whether
    /// vertical scrolling should start below the minimum height or
    /// below the natural height.
    @inlinable func setVscroll(policy: GtkScrollablePolicy) {
        gtk_scrollable_set_vscroll_policy(scrollable_ptr, policy)
    
    }
    /// Horizontal `GtkAdjustment` of the scrollable widget. This adjustment is
    /// shared between the scrollable widget and its parent.
    @inlinable var hadjustment: AdjustmentRef! {
        /// Retrieves the `GtkAdjustment` used for horizontal scrolling.
        get {
            let rv = AdjustmentRef(gconstpointer: gconstpointer(gtk_scrollable_get_hadjustment(scrollable_ptr)))
            return rv
        }
        /// Sets the horizontal adjustment of the `GtkScrollable`.
        nonmutating set {
            gtk_scrollable_set_hadjustment(scrollable_ptr, UnsafeMutablePointer<GtkAdjustment>(newValue?.adjustment_ptr))
        }
    }

    /// Gets the horizontal `GtkScrollablePolicy`.
    @inlinable var hscrollPolicy: GtkScrollablePolicy {
        /// Gets the horizontal `GtkScrollablePolicy`.
        get {
            let rv = gtk_scrollable_get_hscroll_policy(scrollable_ptr)
            return rv
        }
        /// Sets the `GtkScrollablePolicy` to determine whether
        /// horizontal scrolling should start below the minimum width or
        /// below the natural width.
        nonmutating set {
            gtk_scrollable_set_hscroll_policy(scrollable_ptr, newValue)
        }
    }

    /// Verical `GtkAdjustment` of the scrollable widget. This adjustment is shared
    /// between the scrollable widget and its parent.
    @inlinable var vadjustment: AdjustmentRef! {
        /// Retrieves the `GtkAdjustment` used for vertical scrolling.
        get {
            let rv = AdjustmentRef(gconstpointer: gconstpointer(gtk_scrollable_get_vadjustment(scrollable_ptr)))
            return rv
        }
        /// Sets the vertical adjustment of the `GtkScrollable`.
        nonmutating set {
            gtk_scrollable_set_vadjustment(scrollable_ptr, UnsafeMutablePointer<GtkAdjustment>(newValue?.adjustment_ptr))
        }
    }

    /// Gets the vertical `GtkScrollablePolicy`.
    @inlinable var vscrollPolicy: GtkScrollablePolicy {
        /// Gets the vertical `GtkScrollablePolicy`.
        get {
            let rv = gtk_scrollable_get_vscroll_policy(scrollable_ptr)
            return rv
        }
        /// Sets the `GtkScrollablePolicy` to determine whether
        /// vertical scrolling should start below the minimum height or
        /// below the natural height.
        nonmutating set {
            gtk_scrollable_set_vscroll_policy(scrollable_ptr, newValue)
        }
    }


}



// MARK: - StyleProvider Interface

/// The `StyleProviderProtocol` protocol exposes the methods and properties of an underlying `GtkStyleProvider` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `StyleProvider`.
/// Alternatively, use `StyleProviderRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// GtkStyleProvider is an interface used to provide style information to a `GtkStyleContext`.
/// See `gtk_style_context_add_provider()` and `gtk_style_context_add_provider_for_screen()`.
public protocol StyleProviderProtocol {
        /// Untyped pointer to the underlying `GtkStyleProvider` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkStyleProvider` instance.
    var style_provider_ptr: UnsafeMutablePointer<GtkStyleProvider>! { get }

}

/// The `StyleProviderRef` type acts as a lightweight Swift reference to an underlying `GtkStyleProvider` instance.
/// It exposes methods that can operate on this data type through `StyleProviderProtocol` conformance.
/// Use `StyleProviderRef` only as an `unowned` reference to an existing `GtkStyleProvider` instance.
///
/// GtkStyleProvider is an interface used to provide style information to a `GtkStyleContext`.
/// See `gtk_style_context_add_provider()` and `gtk_style_context_add_provider_for_screen()`.
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
/// See `gtk_style_context_add_provider()` and `gtk_style_context_add_provider_for_screen()`.
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
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
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

// MARK: StyleProvider has no signals// MARK: StyleProvider Interface: StyleProviderProtocol extension (methods and fields)
public extension StyleProviderProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkStyleProvider` instance.
    @inlinable var style_provider_ptr: UnsafeMutablePointer<GtkStyleProvider>! { return ptr?.assumingMemoryBound(to: GtkStyleProvider.self) }

    /// Returns the `GtkIconFactory` defined to be in use for `path`, or `nil` if none
    /// is defined.
    ///
    /// **get_icon_factory is deprecated:**
    /// Will always return %NULL for all GTK-provided style providers.
    @available(*, deprecated)
    @inlinable func getIconFactory<WidgetPathT: WidgetPathProtocol>(path: WidgetPathT) -> IconFactoryRef! {
        let rv = IconFactoryRef(gconstpointer: gconstpointer(gtk_style_provider_get_icon_factory(style_provider_ptr, path.widget_path_ptr)))
        return rv
    }

    /// Returns the style settings affecting a widget defined by `path`, or `nil` if
    /// `provider` doesn’t contemplate styling `path`.
    ///
    /// **get_style is deprecated:**
    /// Will always return %NULL for all GTK-provided style providers
    ///     as the interface cannot correctly work the way CSS is specified.
    @available(*, deprecated)
    @inlinable func getStyle<WidgetPathT: WidgetPathProtocol>(path: WidgetPathT) -> StylePropertiesRef! {
        let rv = StylePropertiesRef(gconstpointer: gconstpointer(gtk_style_provider_get_style(style_provider_ptr, path.widget_path_ptr)))
        return rv
    }

    /// Looks up a widget style property as defined by `provider` for
    /// the widget represented by `path`.
    @inlinable func getStyleProperty<ParamSpecT: GLibObject.ParamSpecProtocol, ValueT: GLibObject.ValueProtocol, WidgetPathT: WidgetPathProtocol>(path: WidgetPathT, state: StateFlags, pspec: ParamSpecT, value: ValueT) -> Bool {
        let rv = ((gtk_style_provider_get_style_property(style_provider_ptr, path.widget_path_ptr, state.value, pspec.param_spec_ptr, value.value_ptr)) != 0)
        return rv
    }


}



// MARK: - ToolShell Interface

/// The `ToolShellProtocol` protocol exposes the methods and properties of an underlying `GtkToolShell` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ToolShell`.
/// Alternatively, use `ToolShellRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GtkToolShell` interface allows container widgets to provide additional
/// information when embedding `GtkToolItem` widgets.
public protocol ToolShellProtocol: WidgetProtocol {
        /// Untyped pointer to the underlying `GtkToolShell` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkToolShell` instance.
    var tool_shell_ptr: UnsafeMutablePointer<GtkToolShell>! { get }

}

/// The `ToolShellRef` type acts as a lightweight Swift reference to an underlying `GtkToolShell` instance.
/// It exposes methods that can operate on this data type through `ToolShellProtocol` conformance.
/// Use `ToolShellRef` only as an `unowned` reference to an existing `GtkToolShell` instance.
///
/// The `GtkToolShell` interface allows container widgets to provide additional
/// information when embedding `GtkToolItem` widgets.
public struct ToolShellRef: ToolShellProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkToolShell` instance.
    /// For type-safe access, use the generated, typed pointer `tool_shell_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ToolShellRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkToolShell>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkToolShell>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkToolShell>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkToolShell>?) {
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

    /// Reference intialiser for a related type that implements `ToolShellProtocol`
    @inlinable init<T: ToolShellProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: ToolShellProtocol>(_ other: T) -> ToolShellRef { ToolShellRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolShellProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolShellProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolShellProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolShellProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolShellProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ToolShell` type acts as a reference-counted owner of an underlying `GtkToolShell` instance.
/// It provides the methods that can operate on this data type through `ToolShellProtocol` conformance.
/// Use `ToolShell` as a strong reference or owner of a `GtkToolShell` instance.
///
/// The `GtkToolShell` interface allows container widgets to provide additional
/// information when embedding `GtkToolItem` widgets.
open class ToolShell: Widget, ToolShellProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ToolShell` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkToolShell>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ToolShell` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkToolShell>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ToolShell` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ToolShell` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ToolShell` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkToolShell>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ToolShell` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkToolShell>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkToolShell`.
    /// i.e., ownership is transferred to the `ToolShell` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkToolShell>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ToolShellProtocol`
    /// Will retain `GtkToolShell`.
    /// - Parameter other: an instance of a related type that implements `ToolShellProtocol`
    @inlinable public init<T: ToolShellProtocol>(toolShell other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolShellProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolShellProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolShellProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolShellProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolShellProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolShellProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolShellProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolShellProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum ToolShellPropertyName: String, PropertyNameProtocol {
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
    case widthRequest = "width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case window = "window"
}

public extension ToolShellProtocol {
    /// Bind a `ToolShellPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: ToolShellPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a ToolShell property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: ToolShellPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a ToolShell property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: ToolShellPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: ToolShell has no signals// MARK: ToolShell Interface: ToolShellProtocol extension (methods and fields)
public extension ToolShellProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkToolShell` instance.
    @inlinable var tool_shell_ptr: UnsafeMutablePointer<GtkToolShell>! { return ptr?.assumingMemoryBound(to: GtkToolShell.self) }

    /// Retrieves the current ellipsize mode for the tool shell. Tool items must not
    /// call this function directly, but rely on `gtk_tool_item_get_ellipsize_mode()`
    /// instead.
    @inlinable func getEllipsizeMode() -> PangoEllipsizeMode {
        let rv = gtk_tool_shell_get_ellipsize_mode(tool_shell_ptr)
        return rv
    }

    /// Retrieves the icon size for the tool shell. Tool items must not call this
    /// function directly, but rely on `gtk_tool_item_get_icon_size()` instead.
    @inlinable func getIconSize() -> GtkIconSize {
        let rv = gtk_tool_shell_get_icon_size(tool_shell_ptr)
        return rv
    }

    /// Retrieves the current orientation for the tool shell. Tool items must not
    /// call this function directly, but rely on `gtk_tool_item_get_orientation()`
    /// instead.
    @inlinable func getOrientation() -> GtkOrientation {
        let rv = gtk_tool_shell_get_orientation(tool_shell_ptr)
        return rv
    }

    /// Returns the relief style of buttons on `shell`. Tool items must not call this
    /// function directly, but rely on `gtk_tool_item_get_relief_style()` instead.
    @inlinable func getReliefStyle() -> GtkReliefStyle {
        let rv = gtk_tool_shell_get_relief_style(tool_shell_ptr)
        return rv
    }

    /// Retrieves whether the tool shell has text, icons, or both. Tool items must
    /// not call this function directly, but rely on `gtk_tool_item_get_toolbar_style()`
    /// instead.
    @inlinable func getStyle() -> GtkToolbarStyle {
        let rv = gtk_tool_shell_get_style(tool_shell_ptr)
        return rv
    }

    /// Retrieves the current text alignment for the tool shell. Tool items must not
    /// call this function directly, but rely on `gtk_tool_item_get_text_alignment()`
    /// instead.
    @inlinable func getTextAlignment() -> Double {
        let rv = Double(gtk_tool_shell_get_text_alignment(tool_shell_ptr))
        return rv
    }

    /// Retrieves the current text orientation for the tool shell. Tool items must not
    /// call this function directly, but rely on `gtk_tool_item_get_text_orientation()`
    /// instead.
    @inlinable func getTextOrientation() -> GtkOrientation {
        let rv = gtk_tool_shell_get_text_orientation(tool_shell_ptr)
        return rv
    }

    /// Retrieves the current text size group for the tool shell. Tool items must not
    /// call this function directly, but rely on `gtk_tool_item_get_text_size_group()`
    /// instead.
    @inlinable func getTextSizeGroup() -> SizeGroupRef! {
        let rv = SizeGroupRef(gconstpointer: gconstpointer(gtk_tool_shell_get_text_size_group(tool_shell_ptr)))
        return rv
    }

    /// Calling this function signals the tool shell that the overflow menu item for
    /// tool items have changed. If there is an overflow menu and if it is visible
    /// when this function it called, the menu will be rebuilt.
    /// 
    /// Tool items must not call this function directly, but rely on
    /// `gtk_tool_item_rebuild_menu()` instead.
    @inlinable func rebuildMenu() {
        gtk_tool_shell_rebuild_menu(tool_shell_ptr)
    
    }
    /// Retrieves the current ellipsize mode for the tool shell. Tool items must not
    /// call this function directly, but rely on `gtk_tool_item_get_ellipsize_mode()`
    /// instead.
    @inlinable var ellipsizeMode: PangoEllipsizeMode {
        /// Retrieves the current ellipsize mode for the tool shell. Tool items must not
        /// call this function directly, but rely on `gtk_tool_item_get_ellipsize_mode()`
        /// instead.
        get {
            let rv = gtk_tool_shell_get_ellipsize_mode(tool_shell_ptr)
            return rv
        }
    }

    /// Retrieves the icon size for the tool shell. Tool items must not call this
    /// function directly, but rely on `gtk_tool_item_get_icon_size()` instead.
    @inlinable var iconSize: GtkIconSize {
        /// Retrieves the icon size for the tool shell. Tool items must not call this
        /// function directly, but rely on `gtk_tool_item_get_icon_size()` instead.
        get {
            let rv = gtk_tool_shell_get_icon_size(tool_shell_ptr)
            return rv
        }
    }

    /// Retrieves the current orientation for the tool shell. Tool items must not
    /// call this function directly, but rely on `gtk_tool_item_get_orientation()`
    /// instead.
    @inlinable var orientation: GtkOrientation {
        /// Retrieves the current orientation for the tool shell. Tool items must not
        /// call this function directly, but rely on `gtk_tool_item_get_orientation()`
        /// instead.
        get {
            let rv = gtk_tool_shell_get_orientation(tool_shell_ptr)
            return rv
        }
    }

    /// Returns the relief style of buttons on `shell`. Tool items must not call this
    /// function directly, but rely on `gtk_tool_item_get_relief_style()` instead.
    @inlinable var reliefStyle: GtkReliefStyle {
        /// Returns the relief style of buttons on `shell`. Tool items must not call this
        /// function directly, but rely on `gtk_tool_item_get_relief_style()` instead.
        get {
            let rv = gtk_tool_shell_get_relief_style(tool_shell_ptr)
            return rv
        }
    }

    /// Retrieves whether the tool shell has text, icons, or both. Tool items must
    /// not call this function directly, but rely on `gtk_tool_item_get_toolbar_style()`
    /// instead.
    @inlinable var style: GtkToolbarStyle {
        /// Retrieves whether the tool shell has text, icons, or both. Tool items must
        /// not call this function directly, but rely on `gtk_tool_item_get_toolbar_style()`
        /// instead.
        get {
            let rv = gtk_tool_shell_get_style(tool_shell_ptr)
            return rv
        }
    }

    /// Retrieves the current text alignment for the tool shell. Tool items must not
    /// call this function directly, but rely on `gtk_tool_item_get_text_alignment()`
    /// instead.
    @inlinable var textAlignment: Double {
        /// Retrieves the current text alignment for the tool shell. Tool items must not
        /// call this function directly, but rely on `gtk_tool_item_get_text_alignment()`
        /// instead.
        get {
            let rv = Double(gtk_tool_shell_get_text_alignment(tool_shell_ptr))
            return rv
        }
    }

    /// Retrieves the current text orientation for the tool shell. Tool items must not
    /// call this function directly, but rely on `gtk_tool_item_get_text_orientation()`
    /// instead.
    @inlinable var textOrientation: GtkOrientation {
        /// Retrieves the current text orientation for the tool shell. Tool items must not
        /// call this function directly, but rely on `gtk_tool_item_get_text_orientation()`
        /// instead.
        get {
            let rv = gtk_tool_shell_get_text_orientation(tool_shell_ptr)
            return rv
        }
    }

    /// Retrieves the current text size group for the tool shell. Tool items must not
    /// call this function directly, but rely on `gtk_tool_item_get_text_size_group()`
    /// instead.
    @inlinable var textSizeGroup: SizeGroupRef! {
        /// Retrieves the current text size group for the tool shell. Tool items must not
        /// call this function directly, but rely on `gtk_tool_item_get_text_size_group()`
        /// instead.
        get {
            let rv = SizeGroupRef(gconstpointer: gconstpointer(gtk_tool_shell_get_text_size_group(tool_shell_ptr)))
            return rv
        }
    }


}



