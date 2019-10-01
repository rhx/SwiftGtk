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
/// `GtkScrollable`:hadjustment and `GtkScrollable`:vadjustment properties.
/// 
/// ``` Creating a scrollable widget
/// 
/// All scrollable widgets should do the following.
/// 
/// - When a parent widget sets the scrollable child widget’s adjustments,
///   the widget should populate the adjustments’
///   `GtkAdjustment`:lower, `GtkAdjustment`:upper,
///   `GtkAdjustment`:step-increment, `GtkAdjustment`:page-increment and
///   `GtkAdjustment`:page-size properties and connect to the
///   `GtkAdjustment`::value-changed signal.
/// 
/// - Because its preferred size is the size for a fully expanded widget,
///   the scrollable widget must be able to cope with underallocations.
///   This means that it must accept any value passed to its
///   `GtkWidgetClass`.size_allocate() function.
/// 
/// - When the parent allocates space to the scrollable child widget,
///   the widget should update the adjustments’ properties with new values.
/// 
/// - When any of the adjustments emits the `GtkAdjustment`::value-changed signal,
///   the scrollable widget should scroll its contents.
public protocol ScrollableProtocol {
    /// Untyped pointer to the underlying `GtkScrollable` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkScrollable` instance.
    var scrollable_ptr: UnsafeMutablePointer<GtkScrollable> { get }
}

/// The `ScrollableRef` type acts as a lightweight Swift reference to an underlying `GtkScrollable` instance.
/// It exposes methods that can operate on this data type through `ScrollableProtocol` conformance.
/// Use `ScrollableRef` only as an `unowned` reference to an existing `GtkScrollable` instance.
///
/// `GtkScrollable` is an interface that is implemented by widgets with native
/// scrolling ability.
/// 
/// To implement this interface you should override the
/// `GtkScrollable`:hadjustment and `GtkScrollable`:vadjustment properties.
/// 
/// ``` Creating a scrollable widget
/// 
/// All scrollable widgets should do the following.
/// 
/// - When a parent widget sets the scrollable child widget’s adjustments,
///   the widget should populate the adjustments’
///   `GtkAdjustment`:lower, `GtkAdjustment`:upper,
///   `GtkAdjustment`:step-increment, `GtkAdjustment`:page-increment and
///   `GtkAdjustment`:page-size properties and connect to the
///   `GtkAdjustment`::value-changed signal.
/// 
/// - Because its preferred size is the size for a fully expanded widget,
///   the scrollable widget must be able to cope with underallocations.
///   This means that it must accept any value passed to its
///   `GtkWidgetClass`.size_allocate() function.
/// 
/// - When the parent allocates space to the scrollable child widget,
///   the widget should update the adjustments’ properties with new values.
/// 
/// - When any of the adjustments emits the `GtkAdjustment`::value-changed signal,
///   the scrollable widget should scroll its contents.
public struct ScrollableRef: ScrollableProtocol {
    /// Untyped pointer to the underlying `GtkScrollable` instance.
    /// For type-safe access, use the generated, typed pointer `scrollable_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ScrollableRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkScrollable>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ScrollableProtocol`
    init<T: ScrollableProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrollableProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrollableProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrollableProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrollableProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrollableProtocol`.**
    init(opaquePointer: OpaquePointer) {
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
/// `GtkScrollable`:hadjustment and `GtkScrollable`:vadjustment properties.
/// 
/// ``` Creating a scrollable widget
/// 
/// All scrollable widgets should do the following.
/// 
/// - When a parent widget sets the scrollable child widget’s adjustments,
///   the widget should populate the adjustments’
///   `GtkAdjustment`:lower, `GtkAdjustment`:upper,
///   `GtkAdjustment`:step-increment, `GtkAdjustment`:page-increment and
///   `GtkAdjustment`:page-size properties and connect to the
///   `GtkAdjustment`::value-changed signal.
/// 
/// - Because its preferred size is the size for a fully expanded widget,
///   the scrollable widget must be able to cope with underallocations.
///   This means that it must accept any value passed to its
///   `GtkWidgetClass`.size_allocate() function.
/// 
/// - When the parent allocates space to the scrollable child widget,
///   the widget should update the adjustments’ properties with new values.
/// 
/// - When any of the adjustments emits the `GtkAdjustment`::value-changed signal,
///   the scrollable widget should scroll its contents.
open class Scrollable: ScrollableProtocol {
    /// Untyped pointer to the underlying `GtkScrollable` instance.
    /// For type-safe access, use the generated, typed pointer `scrollable_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `Scrollable` instance.
    public init(_ op: UnsafeMutablePointer<GtkScrollable>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ScrollableProtocol`
    /// `GtkScrollable` does not allow reference counting.
    public convenience init<T: ScrollableProtocol>(_ other: T) {
        self.init(cast(other.scrollable_ptr))
        // no reference counting for GtkScrollable, cannot ref(cast(scrollable_ptr))
    }

    /// Do-nothing destructor for`GtkScrollable`.
    deinit {
        // no reference counting for GtkScrollable, cannot unref(cast(scrollable_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrollableProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkScrollable.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrollableProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkScrollable.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrollableProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkScrollable.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrollableProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkScrollable>(opaquePointer))
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
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: ScrollablePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(scrollable_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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

public enum ScrollableSignalName: String, SignalNameProtocol {

    /// Horizontal `GtkAdjustment` of the scrollable widget. This adjustment is
    /// shared between the scrollable widget and its parent.
    case notifyHadjustment = "notify::hadjustment"
    /// Determines whether horizontal scrolling should start once the scrollable
    /// widget is allocated less than its minimum width or less than its natural width.
    case notifyHscrollPolicy = "notify::hscroll-policy"
    /// Verical `GtkAdjustment` of the scrollable widget. This adjustment is shared
    /// between the scrollable widget and its parent.
    case notifyVadjustment = "notify::vadjustment"
    /// Determines whether vertical scrolling should start once the scrollable
    /// widget is allocated less than its minimum height or less than its natural height.
    case notifyVscrollPolicy = "notify::vscroll-policy"
}

public extension ScrollableProtocol {
    /// Connect a `ScrollableSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: ScrollableSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(scrollable_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension ScrollableProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkScrollable` instance.
    var scrollable_ptr: UnsafeMutablePointer<GtkScrollable> { return ptr.assumingMemoryBound(to: GtkScrollable.self) }

    /// Returns the size of a non-scrolling border around the
    /// outside of the scrollable. An example for this would
    /// be treeview headers. GTK+ can use this information to
    /// display overlayed graphics, like the overshoot indication,
    /// at the right position.
    func get(border: BorderProtocol) -> Bool {
        let rv = gtk_scrollable_get_border(cast(scrollable_ptr), cast(border.ptr))
        return Bool(rv != 0)
    }

    /// Retrieves the `GtkAdjustment` used for horizontal scrolling.
    func getHadjustment() -> UnsafeMutablePointer<GtkAdjustment>! {
        let rv = gtk_scrollable_get_hadjustment(cast(scrollable_ptr))
        return cast(rv)
    }

    /// Gets the horizontal `GtkScrollablePolicy`.
    func getHscrollPolicy() -> GtkScrollablePolicy {
        let rv = gtk_scrollable_get_hscroll_policy(cast(scrollable_ptr))
        return rv
    }

    /// Retrieves the `GtkAdjustment` used for vertical scrolling.
    func getVadjustment() -> UnsafeMutablePointer<GtkAdjustment>! {
        let rv = gtk_scrollable_get_vadjustment(cast(scrollable_ptr))
        return cast(rv)
    }

    /// Gets the vertical `GtkScrollablePolicy`.
    func getVscrollPolicy() -> GtkScrollablePolicy {
        let rv = gtk_scrollable_get_vscroll_policy(cast(scrollable_ptr))
        return rv
    }

    /// Sets the horizontal adjustment of the `GtkScrollable`.
    func set(hadjustment: AdjustmentProtocol) {
        gtk_scrollable_set_hadjustment(cast(scrollable_ptr), cast(hadjustment.ptr))
    
    }

    /// Sets the `GtkScrollablePolicy` to determine whether
    /// horizontal scrolling should start below the minimum width or
    /// below the natural width.
    func setHscroll(policy: ScrollablePolicy) {
        gtk_scrollable_set_hscroll_policy(cast(scrollable_ptr), policy)
    
    }

    /// Sets the vertical adjustment of the `GtkScrollable`.
    func set(vadjustment: AdjustmentProtocol) {
        gtk_scrollable_set_vadjustment(cast(scrollable_ptr), cast(vadjustment.ptr))
    
    }

    /// Sets the `GtkScrollablePolicy` to determine whether
    /// vertical scrolling should start below the minimum height or
    /// below the natural height.
    func setVscroll(policy: ScrollablePolicy) {
        gtk_scrollable_set_vscroll_policy(cast(scrollable_ptr), policy)
    
    }
    /// Horizontal `GtkAdjustment` of the scrollable widget. This adjustment is
    /// shared between the scrollable widget and its parent.
    var hadjustment: UnsafeMutablePointer<GtkAdjustment>! {
        /// Retrieves the `GtkAdjustment` used for horizontal scrolling.
        get {
            let rv = gtk_scrollable_get_hadjustment(cast(scrollable_ptr))
            return cast(rv)
        }
        /// Sets the horizontal adjustment of the `GtkScrollable`.
        nonmutating set {
            gtk_scrollable_set_hadjustment(cast(scrollable_ptr), cast(newValue))
        }
    }

    /// Gets the horizontal `GtkScrollablePolicy`.
    var hscrollPolicy: GtkScrollablePolicy {
        /// Gets the horizontal `GtkScrollablePolicy`.
        get {
            let rv = gtk_scrollable_get_hscroll_policy(cast(scrollable_ptr))
            return rv
        }
        /// Sets the `GtkScrollablePolicy` to determine whether
        /// horizontal scrolling should start below the minimum width or
        /// below the natural width.
        nonmutating set {
            gtk_scrollable_set_hscroll_policy(cast(scrollable_ptr), newValue)
        }
    }

    /// Verical `GtkAdjustment` of the scrollable widget. This adjustment is shared
    /// between the scrollable widget and its parent.
    var vadjustment: UnsafeMutablePointer<GtkAdjustment>! {
        /// Retrieves the `GtkAdjustment` used for vertical scrolling.
        get {
            let rv = gtk_scrollable_get_vadjustment(cast(scrollable_ptr))
            return cast(rv)
        }
        /// Sets the vertical adjustment of the `GtkScrollable`.
        nonmutating set {
            gtk_scrollable_set_vadjustment(cast(scrollable_ptr), cast(newValue))
        }
    }

    /// Gets the vertical `GtkScrollablePolicy`.
    var vscrollPolicy: GtkScrollablePolicy {
        /// Gets the vertical `GtkScrollablePolicy`.
        get {
            let rv = gtk_scrollable_get_vscroll_policy(cast(scrollable_ptr))
            return rv
        }
        /// Sets the `GtkScrollablePolicy` to determine whether
        /// vertical scrolling should start below the minimum height or
        /// below the natural height.
        nonmutating set {
            gtk_scrollable_set_vscroll_policy(cast(scrollable_ptr), newValue)
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
/// See gtk_style_context_add_provider() and gtk_style_context_add_provider_for_screen().
public protocol StyleProviderProtocol {
    /// Untyped pointer to the underlying `GtkStyleProvider` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkStyleProvider` instance.
    var style_provider_ptr: UnsafeMutablePointer<GtkStyleProvider> { get }
}

/// The `StyleProviderRef` type acts as a lightweight Swift reference to an underlying `GtkStyleProvider` instance.
/// It exposes methods that can operate on this data type through `StyleProviderProtocol` conformance.
/// Use `StyleProviderRef` only as an `unowned` reference to an existing `GtkStyleProvider` instance.
///
/// GtkStyleProvider is an interface used to provide style information to a `GtkStyleContext`.
/// See gtk_style_context_add_provider() and gtk_style_context_add_provider_for_screen().
public struct StyleProviderRef: StyleProviderProtocol {
    /// Untyped pointer to the underlying `GtkStyleProvider` instance.
    /// For type-safe access, use the generated, typed pointer `style_provider_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension StyleProviderRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkStyleProvider>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `StyleProviderProtocol`
    init<T: StyleProviderProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StyleProviderProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StyleProviderProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StyleProviderProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StyleProviderProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StyleProviderProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `StyleProvider` type acts as an owner of an underlying `GtkStyleProvider` instance.
/// It provides the methods that can operate on this data type through `StyleProviderProtocol` conformance.
/// Use `StyleProvider` as a strong reference or owner of a `GtkStyleProvider` instance.
///
/// GtkStyleProvider is an interface used to provide style information to a `GtkStyleContext`.
/// See gtk_style_context_add_provider() and gtk_style_context_add_provider_for_screen().
open class StyleProvider: StyleProviderProtocol {
    /// Untyped pointer to the underlying `GtkStyleProvider` instance.
    /// For type-safe access, use the generated, typed pointer `style_provider_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `StyleProvider` instance.
    public init(_ op: UnsafeMutablePointer<GtkStyleProvider>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `StyleProviderProtocol`
    /// `GtkStyleProvider` does not allow reference counting.
    public convenience init<T: StyleProviderProtocol>(_ other: T) {
        self.init(cast(other.style_provider_ptr))
        // no reference counting for GtkStyleProvider, cannot ref(cast(style_provider_ptr))
    }

    /// Do-nothing destructor for`GtkStyleProvider`.
    deinit {
        // no reference counting for GtkStyleProvider, cannot unref(cast(style_provider_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StyleProviderProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkStyleProvider.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StyleProviderProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkStyleProvider.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StyleProviderProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkStyleProvider.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StyleProviderProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkStyleProvider>(opaquePointer))
    }



}

// MARK: - no StyleProvider properties

// MARK: - no signals


public extension StyleProviderProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkStyleProvider` instance.
    var style_provider_ptr: UnsafeMutablePointer<GtkStyleProvider> { return ptr.assumingMemoryBound(to: GtkStyleProvider.self) }

    /// Returns the `GtkIconFactory` defined to be in use for `path`, or `nil` if none
    /// is defined.
    ///
    /// **get_icon_factory is deprecated:**
    /// Will always return %NULL for all GTK-provided style providers.
    @available(*, deprecated) func getIconFactory(path: WidgetPathProtocol) -> UnsafeMutablePointer<GtkIconFactory>! {
        let rv = gtk_style_provider_get_icon_factory(cast(style_provider_ptr), cast(path.ptr))
        return cast(rv)
    }

    /// Returns the style settings affecting a widget defined by `path`, or `nil` if
    /// `provider` doesn’t contemplate styling `path`.
    ///
    /// **get_style is deprecated:**
    /// Will always return %NULL for all GTK-provided style providers
    ///     as the interface cannot correctly work the way CSS is specified.
    @available(*, deprecated) func getStyle(path: WidgetPathProtocol) -> UnsafeMutablePointer<GtkStyleProperties>! {
        let rv = gtk_style_provider_get_style(cast(style_provider_ptr), cast(path.ptr))
        return cast(rv)
    }

    /// Looks up a widget style property as defined by `provider` for
    /// the widget represented by `path`.
    func getStyleProperty(path: WidgetPathProtocol, state: StateFlags, pspec: ParamSpecProtocol, value: GLibObject.ValueProtocol) -> Bool {
        let rv = gtk_style_provider_get_style_property(cast(style_provider_ptr), cast(path.ptr), state, cast(pspec.ptr), cast(value.ptr))
        return Bool(rv != 0)
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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkToolShell` instance.
    var tool_shell_ptr: UnsafeMutablePointer<GtkToolShell> { get }
}

/// The `ToolShellRef` type acts as a lightweight Swift reference to an underlying `GtkToolShell` instance.
/// It exposes methods that can operate on this data type through `ToolShellProtocol` conformance.
/// Use `ToolShellRef` only as an `unowned` reference to an existing `GtkToolShell` instance.
///
/// The `GtkToolShell` interface allows container widgets to provide additional
/// information when embedding `GtkToolItem` widgets.
public struct ToolShellRef: ToolShellProtocol {
    /// Untyped pointer to the underlying `GtkToolShell` instance.
    /// For type-safe access, use the generated, typed pointer `tool_shell_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ToolShellRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkToolShell>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ToolShellProtocol`
    init<T: ToolShellProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolShellProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolShellProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolShellProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolShellProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolShellProtocol`.**
    init(opaquePointer: OpaquePointer) {
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
    /// Ownership is transferred to the `ToolShell` instance.
    public init(_ op: UnsafeMutablePointer<GtkToolShell>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `ToolShellProtocol`
    /// Will retain `GtkToolShell`.
    public convenience init<T: ToolShellProtocol>(_ other: T) {
        self.init(cast(other.tool_shell_ptr))
        g_object_ref(cast(tool_shell_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolShellProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkToolShell.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolShellProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkToolShell.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolShellProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkToolShell.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ToolShellProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkToolShell>(opaquePointer))
    }



}

public enum ToolShellPropertyName: String, PropertyNameProtocol {
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
    case name = "name"
    case noShowAll = "no-show-all"
    /// The requested opacity of the widget. See gtk_widget_set_opacity() for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case opacity = "opacity"
    case parent = "parent"
    case receivesDefault = "receives-default"
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
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: ToolShellPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(tool_shell_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
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

public enum ToolShellSignalName: String, SignalNameProtocol {
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
    case notifyName = "notify::name"
    case notifyNoShowAll = "notify::no-show-all"
    /// The requested opacity of the widget. See gtk_widget_set_opacity() for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case notifyOpacity = "notify::opacity"
    case notifyParent = "notify::parent"
    case notifyReceivesDefault = "notify::receives-default"
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
    case notifyWidthRequest = "notify::width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case notifyWindow = "notify::window"
}

public extension ToolShellProtocol {
    /// Connect a `ToolShellSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: ToolShellSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(tool_shell_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension ToolShellProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkToolShell` instance.
    var tool_shell_ptr: UnsafeMutablePointer<GtkToolShell> { return ptr.assumingMemoryBound(to: GtkToolShell.self) }

    /// Retrieves the current ellipsize mode for the tool shell. Tool items must not
    /// call this function directly, but rely on gtk_tool_item_get_ellipsize_mode()
    /// instead.
    func getEllipsizeMode() -> PangoEllipsizeMode {
        let rv = gtk_tool_shell_get_ellipsize_mode(cast(tool_shell_ptr))
        return rv
    }

    /// Retrieves the icon size for the tool shell. Tool items must not call this
    /// function directly, but rely on gtk_tool_item_get_icon_size() instead.
    func getIconSize() -> GtkIconSize {
        let rv = gtk_tool_shell_get_icon_size(cast(tool_shell_ptr))
        return rv
    }

    /// Retrieves the current orientation for the tool shell. Tool items must not
    /// call this function directly, but rely on gtk_tool_item_get_orientation()
    /// instead.
    func getOrientation() -> GtkOrientation {
        let rv = gtk_tool_shell_get_orientation(cast(tool_shell_ptr))
        return rv
    }

    /// Returns the relief style of buttons on `shell`. Tool items must not call this
    /// function directly, but rely on gtk_tool_item_get_relief_style() instead.
    func getReliefStyle() -> GtkReliefStyle {
        let rv = gtk_tool_shell_get_relief_style(cast(tool_shell_ptr))
        return rv
    }

    /// Retrieves whether the tool shell has text, icons, or both. Tool items must
    /// not call this function directly, but rely on gtk_tool_item_get_toolbar_style()
    /// instead.
    func getStyle() -> GtkToolbarStyle {
        let rv = gtk_tool_shell_get_style(cast(tool_shell_ptr))
        return rv
    }

    /// Retrieves the current text alignment for the tool shell. Tool items must not
    /// call this function directly, but rely on gtk_tool_item_get_text_alignment()
    /// instead.
    func getTextAlignment() -> gfloat {
        let rv = gtk_tool_shell_get_text_alignment(cast(tool_shell_ptr))
        return rv
    }

    /// Retrieves the current text orientation for the tool shell. Tool items must not
    /// call this function directly, but rely on gtk_tool_item_get_text_orientation()
    /// instead.
    func getTextOrientation() -> GtkOrientation {
        let rv = gtk_tool_shell_get_text_orientation(cast(tool_shell_ptr))
        return rv
    }

    /// Retrieves the current text size group for the tool shell. Tool items must not
    /// call this function directly, but rely on gtk_tool_item_get_text_size_group()
    /// instead.
    func getTextSizeGroup() -> UnsafeMutablePointer<GtkSizeGroup>! {
        let rv = gtk_tool_shell_get_text_size_group(cast(tool_shell_ptr))
        return cast(rv)
    }

    /// Calling this function signals the tool shell that the overflow menu item for
    /// tool items have changed. If there is an overflow menu and if it is visible
    /// when this function it called, the menu will be rebuilt.
    /// 
    /// Tool items must not call this function directly, but rely on
    /// gtk_tool_item_rebuild_menu() instead.
    func rebuildMenu() {
        gtk_tool_shell_rebuild_menu(cast(tool_shell_ptr))
    
    }
    /// Retrieves the current ellipsize mode for the tool shell. Tool items must not
    /// call this function directly, but rely on gtk_tool_item_get_ellipsize_mode()
    /// instead.
    var ellipsizeMode: PangoEllipsizeMode {
        /// Retrieves the current ellipsize mode for the tool shell. Tool items must not
        /// call this function directly, but rely on gtk_tool_item_get_ellipsize_mode()
        /// instead.
        get {
            let rv = gtk_tool_shell_get_ellipsize_mode(cast(tool_shell_ptr))
            return rv
        }
    }

    /// Retrieves the icon size for the tool shell. Tool items must not call this
    /// function directly, but rely on gtk_tool_item_get_icon_size() instead.
    var iconSize: GtkIconSize {
        /// Retrieves the icon size for the tool shell. Tool items must not call this
        /// function directly, but rely on gtk_tool_item_get_icon_size() instead.
        get {
            let rv = gtk_tool_shell_get_icon_size(cast(tool_shell_ptr))
            return rv
        }
    }

    /// Retrieves the current orientation for the tool shell. Tool items must not
    /// call this function directly, but rely on gtk_tool_item_get_orientation()
    /// instead.
    var orientation: GtkOrientation {
        /// Retrieves the current orientation for the tool shell. Tool items must not
        /// call this function directly, but rely on gtk_tool_item_get_orientation()
        /// instead.
        get {
            let rv = gtk_tool_shell_get_orientation(cast(tool_shell_ptr))
            return rv
        }
    }

    /// Returns the relief style of buttons on `shell`. Tool items must not call this
    /// function directly, but rely on gtk_tool_item_get_relief_style() instead.
    var reliefStyle: GtkReliefStyle {
        /// Returns the relief style of buttons on `shell`. Tool items must not call this
        /// function directly, but rely on gtk_tool_item_get_relief_style() instead.
        get {
            let rv = gtk_tool_shell_get_relief_style(cast(tool_shell_ptr))
            return rv
        }
    }

    /// Retrieves whether the tool shell has text, icons, or both. Tool items must
    /// not call this function directly, but rely on gtk_tool_item_get_toolbar_style()
    /// instead.
    var style: GtkToolbarStyle {
        /// Retrieves whether the tool shell has text, icons, or both. Tool items must
        /// not call this function directly, but rely on gtk_tool_item_get_toolbar_style()
        /// instead.
        get {
            let rv = gtk_tool_shell_get_style(cast(tool_shell_ptr))
            return rv
        }
    }

    /// Retrieves the current text alignment for the tool shell. Tool items must not
    /// call this function directly, but rely on gtk_tool_item_get_text_alignment()
    /// instead.
    var textAlignment: gfloat {
        /// Retrieves the current text alignment for the tool shell. Tool items must not
        /// call this function directly, but rely on gtk_tool_item_get_text_alignment()
        /// instead.
        get {
            let rv = gtk_tool_shell_get_text_alignment(cast(tool_shell_ptr))
            return rv
        }
    }

    /// Retrieves the current text orientation for the tool shell. Tool items must not
    /// call this function directly, but rely on gtk_tool_item_get_text_orientation()
    /// instead.
    var textOrientation: GtkOrientation {
        /// Retrieves the current text orientation for the tool shell. Tool items must not
        /// call this function directly, but rely on gtk_tool_item_get_text_orientation()
        /// instead.
        get {
            let rv = gtk_tool_shell_get_text_orientation(cast(tool_shell_ptr))
            return rv
        }
    }

    /// Retrieves the current text size group for the tool shell. Tool items must not
    /// call this function directly, but rely on gtk_tool_item_get_text_size_group()
    /// instead.
    var textSizeGroup: UnsafeMutablePointer<GtkSizeGroup>! {
        /// Retrieves the current text size group for the tool shell. Tool items must not
        /// call this function directly, but rely on gtk_tool_item_get_text_size_group()
        /// instead.
        get {
            let rv = gtk_tool_shell_get_text_size_group(cast(tool_shell_ptr))
            return cast(rv)
        }
    }
}



