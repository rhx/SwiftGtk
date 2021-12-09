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

// MARK: - WidgetPaintable Class

/// `GtkWidgetPaintable` is a `GdkPaintable` that displays the contents
/// of a widget.
/// 
/// `GtkWidgetPaintable` will also take care of the widget not being in a
/// state where it can be drawn (like when it isn't shown) and just draw
/// nothing or where it does not have a size (like when it is hidden) and
/// report no size in that case.
/// 
/// Of course, `GtkWidgetPaintable` allows you to monitor widgets for size
/// changes by emitting the [signal`Gdk.Paintable::invalidate-size`] signal
/// whenever the size of the widget changes as well as for visual changes by
/// emitting the [signal`Gdk.Paintable::invalidate-contents`] signal whenever
/// the widget changes.
/// 
/// You can use a `GtkWidgetPaintable` everywhere a `GdkPaintable` is allowed,
/// including using it on a `GtkPicture` (or one of its parents) that it was
/// set on itself via `gtk_picture_set_paintable()`. The paintable will take care
/// of recursion when this happens. If you do this however, ensure that the
/// [property`Gtk.Picture:can-shrink`] property is set to `true` or you might
/// end up with an infinitely growing widget.
///
/// The `WidgetPaintableProtocol` protocol exposes the methods and properties of an underlying `GtkWidgetPaintable` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `WidgetPaintable`.
/// Alternatively, use `WidgetPaintableRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol WidgetPaintableProtocol: GLibObject.ObjectProtocol, Gdk.PaintableProtocol {
        /// Untyped pointer to the underlying `GtkWidgetPaintable` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkWidgetPaintable` instance.
    var widget_paintable_ptr: UnsafeMutablePointer<GtkWidgetPaintable>! { get }

    /// Required Initialiser for types conforming to `WidgetPaintableProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GtkWidgetPaintable` is a `GdkPaintable` that displays the contents
/// of a widget.
/// 
/// `GtkWidgetPaintable` will also take care of the widget not being in a
/// state where it can be drawn (like when it isn't shown) and just draw
/// nothing or where it does not have a size (like when it is hidden) and
/// report no size in that case.
/// 
/// Of course, `GtkWidgetPaintable` allows you to monitor widgets for size
/// changes by emitting the [signal`Gdk.Paintable::invalidate-size`] signal
/// whenever the size of the widget changes as well as for visual changes by
/// emitting the [signal`Gdk.Paintable::invalidate-contents`] signal whenever
/// the widget changes.
/// 
/// You can use a `GtkWidgetPaintable` everywhere a `GdkPaintable` is allowed,
/// including using it on a `GtkPicture` (or one of its parents) that it was
/// set on itself via `gtk_picture_set_paintable()`. The paintable will take care
/// of recursion when this happens. If you do this however, ensure that the
/// [property`Gtk.Picture:can-shrink`] property is set to `true` or you might
/// end up with an infinitely growing widget.
///
/// The `WidgetPaintableRef` type acts as a lightweight Swift reference to an underlying `GtkWidgetPaintable` instance.
/// It exposes methods that can operate on this data type through `WidgetPaintableProtocol` conformance.
/// Use `WidgetPaintableRef` only as an `unowned` reference to an existing `GtkWidgetPaintable` instance.
///
public struct WidgetPaintableRef: WidgetPaintableProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkWidgetPaintable` instance.
    /// For type-safe access, use the generated, typed pointer `widget_paintable_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension WidgetPaintableRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkWidgetPaintable>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkWidgetPaintable>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkWidgetPaintable>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkWidgetPaintable>?) {
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

    /// Reference intialiser for a related type that implements `WidgetPaintableProtocol`
    @inlinable init<T: WidgetPaintableProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: WidgetPaintableProtocol>(_ other: T) -> WidgetPaintableRef { WidgetPaintableRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetPaintableProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetPaintableProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetPaintableProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetPaintableProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetPaintableProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// `GtkWidgetPaintable` is a `GdkPaintable` that displays the contents
/// of a widget.
/// 
/// `GtkWidgetPaintable` will also take care of the widget not being in a
/// state where it can be drawn (like when it isn't shown) and just draw
/// nothing or where it does not have a size (like when it is hidden) and
/// report no size in that case.
/// 
/// Of course, `GtkWidgetPaintable` allows you to monitor widgets for size
/// changes by emitting the [signal`Gdk.Paintable::invalidate-size`] signal
/// whenever the size of the widget changes as well as for visual changes by
/// emitting the [signal`Gdk.Paintable::invalidate-contents`] signal whenever
/// the widget changes.
/// 
/// You can use a `GtkWidgetPaintable` everywhere a `GdkPaintable` is allowed,
/// including using it on a `GtkPicture` (or one of its parents) that it was
/// set on itself via `gtk_picture_set_paintable()`. The paintable will take care
/// of recursion when this happens. If you do this however, ensure that the
/// [property`Gtk.Picture:can-shrink`] property is set to `true` or you might
/// end up with an infinitely growing widget.
///
/// The `WidgetPaintable` type acts as a reference-counted owner of an underlying `GtkWidgetPaintable` instance.
/// It provides the methods that can operate on this data type through `WidgetPaintableProtocol` conformance.
/// Use `WidgetPaintable` as a strong reference or owner of a `GtkWidgetPaintable` instance.
///
open class WidgetPaintable: GLibObject.Object, WidgetPaintableProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `WidgetPaintable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkWidgetPaintable>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `WidgetPaintable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkWidgetPaintable>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `WidgetPaintable` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `WidgetPaintable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `WidgetPaintable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkWidgetPaintable>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `WidgetPaintable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkWidgetPaintable>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkWidgetPaintable`.
    /// i.e., ownership is transferred to the `WidgetPaintable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkWidgetPaintable>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `WidgetPaintableProtocol`
    /// Will retain `GtkWidgetPaintable`.
    /// - Parameter other: an instance of a related type that implements `WidgetPaintableProtocol`
    @inlinable public init<T: WidgetPaintableProtocol>(widgetPaintable other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetPaintableProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetPaintableProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetPaintableProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetPaintableProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetPaintableProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetPaintableProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetPaintableProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetPaintableProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum WidgetPaintablePropertyName: String, PropertyNameProtocol {
    /// The observed widget or `nil` if none.
    case widget = "widget"
}

public extension WidgetPaintableProtocol {
    /// Bind a `WidgetPaintablePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: WidgetPaintablePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a WidgetPaintable property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: WidgetPaintablePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a WidgetPaintable property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: WidgetPaintablePropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum WidgetPaintableSignalName: String, SignalNameProtocol {
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// The observed widget or `nil` if none.
    case notifyWidget = "notify::widget"
}

// MARK: WidgetPaintable has no signals
// MARK: WidgetPaintable Class: WidgetPaintableProtocol extension (methods and fields)
public extension WidgetPaintableProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkWidgetPaintable` instance.
    @inlinable var widget_paintable_ptr: UnsafeMutablePointer<GtkWidgetPaintable>! { return ptr?.assumingMemoryBound(to: GtkWidgetPaintable.self) }

    /// Returns the widget that is observed or `nil` if none.
    @inlinable func getWidget() -> WidgetRef! {
        let rv = WidgetRef(gconstpointer: gconstpointer(gtk_widget_paintable_get_widget(widget_paintable_ptr)))
        return rv
    }

    /// Sets the widget that should be observed.
    @inlinable func set(widget: WidgetRef? = nil) {
        gtk_widget_paintable_set_widget(widget_paintable_ptr, widget?.widget_ptr)
    
    }
    /// Sets the widget that should be observed.
    @inlinable func set<WidgetT: WidgetProtocol>(widget: WidgetT?) {
        gtk_widget_paintable_set_widget(widget_paintable_ptr, widget?.widget_ptr)
    
    }
    /// The observed widget or `nil` if none.
    @inlinable var widget: WidgetRef! {
        /// Returns the widget that is observed or `nil` if none.
        get {
            let rv = WidgetRef(gconstpointer: gconstpointer(gtk_widget_paintable_get_widget(widget_paintable_ptr)))
            return rv
        }
        /// Sets the widget that should be observed.
        nonmutating set {
            gtk_widget_paintable_set_widget(widget_paintable_ptr, UnsafeMutablePointer<GtkWidget>(newValue?.widget_ptr))
        }
    }


}



// MARK: - Window Class

/// A `GtkWindow` is a toplevel window which can contain other widgets.
/// 
/// ![An example GtkWindow](window.png)
/// 
/// Windows normally have decorations that are under the control
/// of the windowing system and allow the user to manipulate the window
/// (resize it, move it, close it,...).
/// 
/// # GtkWindow as GtkBuildable
/// 
/// The `GtkWindow` implementation of the [iface`Gtk.Buildable`] interface supports
/// setting a child as the titlebar by specifying “titlebar” as the “type”
/// attribute of a &lt;child&gt; element.
/// 
/// # CSS nodes
/// 
/// ```
/// window.background [.csd / .solid-csd / .ssd] [.maximized / .fullscreen / .tiled]
/// ├── &lt;child&gt;
/// ╰── &lt;titlebar child&gt;.titlebar [.default-decoration]
/// ```
/// 
/// `GtkWindow` has a main CSS node with name window and style class .background.
/// 
/// Style classes that are typically used with the main CSS node are .csd (when
/// client-side decorations are in use), .solid-csd (for client-side decorations
/// without invisible borders), .ssd (used by mutter when rendering server-side
/// decorations). GtkWindow also represents window states with the following
/// style classes on the main node: .maximized, .fullscreen, .tiled (when supported,
/// also .tiled-top, .tiled-left, .tiled-right, .tiled-bottom).
/// 
/// `GtkWindow` subclasses often add their own discriminating style classes,
/// such as .dialog, .popup or .tooltip.
/// 
/// Generally, some CSS properties don't make sense on the toplevel window node,
/// such as margins or padding. When client-side decorations without invisible
/// borders are in use (i.e. the .solid-csd style class is added to the
/// main window node), the CSS border of the toplevel window is used for
/// resize drags. In the .csd case, the shadow area outside of the window
/// can be used to resize it.
/// 
/// `GtkWindow` adds the .titlebar and .default-decoration style classes to the
/// widget that is added as a titlebar child.
/// 
/// # Accessibility
/// 
/// `GtkWindow` uses the `GTK_ACCESSIBLE_ROLE_WINDOW` role.
///
/// The `WindowProtocol` protocol exposes the methods and properties of an underlying `GtkWindow` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Window`.
/// Alternatively, use `WindowRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol WindowProtocol: WidgetProtocol, NativeProtocol, RootProtocol, ShortcutManagerProtocol {
        /// Untyped pointer to the underlying `GtkWindow` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkWindow` instance.
    var window_ptr: UnsafeMutablePointer<GtkWindow>! { get }

    /// Required Initialiser for types conforming to `WindowProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `GtkWindow` is a toplevel window which can contain other widgets.
/// 
/// ![An example GtkWindow](window.png)
/// 
/// Windows normally have decorations that are under the control
/// of the windowing system and allow the user to manipulate the window
/// (resize it, move it, close it,...).
/// 
/// # GtkWindow as GtkBuildable
/// 
/// The `GtkWindow` implementation of the [iface`Gtk.Buildable`] interface supports
/// setting a child as the titlebar by specifying “titlebar” as the “type”
/// attribute of a &lt;child&gt; element.
/// 
/// # CSS nodes
/// 
/// ```
/// window.background [.csd / .solid-csd / .ssd] [.maximized / .fullscreen / .tiled]
/// ├── &lt;child&gt;
/// ╰── &lt;titlebar child&gt;.titlebar [.default-decoration]
/// ```
/// 
/// `GtkWindow` has a main CSS node with name window and style class .background.
/// 
/// Style classes that are typically used with the main CSS node are .csd (when
/// client-side decorations are in use), .solid-csd (for client-side decorations
/// without invisible borders), .ssd (used by mutter when rendering server-side
/// decorations). GtkWindow also represents window states with the following
/// style classes on the main node: .maximized, .fullscreen, .tiled (when supported,
/// also .tiled-top, .tiled-left, .tiled-right, .tiled-bottom).
/// 
/// `GtkWindow` subclasses often add their own discriminating style classes,
/// such as .dialog, .popup or .tooltip.
/// 
/// Generally, some CSS properties don't make sense on the toplevel window node,
/// such as margins or padding. When client-side decorations without invisible
/// borders are in use (i.e. the .solid-csd style class is added to the
/// main window node), the CSS border of the toplevel window is used for
/// resize drags. In the .csd case, the shadow area outside of the window
/// can be used to resize it.
/// 
/// `GtkWindow` adds the .titlebar and .default-decoration style classes to the
/// widget that is added as a titlebar child.
/// 
/// # Accessibility
/// 
/// `GtkWindow` uses the `GTK_ACCESSIBLE_ROLE_WINDOW` role.
///
/// The `WindowRef` type acts as a lightweight Swift reference to an underlying `GtkWindow` instance.
/// It exposes methods that can operate on this data type through `WindowProtocol` conformance.
/// Use `WindowRef` only as an `unowned` reference to an existing `GtkWindow` instance.
///
public struct WindowRef: WindowProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkWindow` instance.
    /// For type-safe access, use the generated, typed pointer `window_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension WindowRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkWindow>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkWindow>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkWindow>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkWindow>?) {
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

    /// Reference intialiser for a related type that implements `WindowProtocol`
    @inlinable init<T: WindowProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: WindowProtocol>(_ other: T) -> WindowRef { WindowRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkWindow`.
    /// 
    /// To get an undecorated window (no window borders), use
    /// [method`Gtk.Window.set_decorated`].
    /// 
    /// All top-level windows created by `gtk_window_new()` are stored
    /// in an internal top-level window list. This list can be obtained
    /// from [func`Gtk.Window.list_toplevels`]. Due to GTK keeping a
    /// reference to the window internally, `gtk_window_new()` does not
    /// return a reference to the caller.
    /// 
    /// To delete a `GtkWindow`, call [method`Gtk.Window.destroy`].
    @inlinable init() {
        let rv = gtk_window_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// A `GtkWindow` is a toplevel window which can contain other widgets.
/// 
/// ![An example GtkWindow](window.png)
/// 
/// Windows normally have decorations that are under the control
/// of the windowing system and allow the user to manipulate the window
/// (resize it, move it, close it,...).
/// 
/// # GtkWindow as GtkBuildable
/// 
/// The `GtkWindow` implementation of the [iface`Gtk.Buildable`] interface supports
/// setting a child as the titlebar by specifying “titlebar” as the “type”
/// attribute of a &lt;child&gt; element.
/// 
/// # CSS nodes
/// 
/// ```
/// window.background [.csd / .solid-csd / .ssd] [.maximized / .fullscreen / .tiled]
/// ├── &lt;child&gt;
/// ╰── &lt;titlebar child&gt;.titlebar [.default-decoration]
/// ```
/// 
/// `GtkWindow` has a main CSS node with name window and style class .background.
/// 
/// Style classes that are typically used with the main CSS node are .csd (when
/// client-side decorations are in use), .solid-csd (for client-side decorations
/// without invisible borders), .ssd (used by mutter when rendering server-side
/// decorations). GtkWindow also represents window states with the following
/// style classes on the main node: .maximized, .fullscreen, .tiled (when supported,
/// also .tiled-top, .tiled-left, .tiled-right, .tiled-bottom).
/// 
/// `GtkWindow` subclasses often add their own discriminating style classes,
/// such as .dialog, .popup or .tooltip.
/// 
/// Generally, some CSS properties don't make sense on the toplevel window node,
/// such as margins or padding. When client-side decorations without invisible
/// borders are in use (i.e. the .solid-csd style class is added to the
/// main window node), the CSS border of the toplevel window is used for
/// resize drags. In the .csd case, the shadow area outside of the window
/// can be used to resize it.
/// 
/// `GtkWindow` adds the .titlebar and .default-decoration style classes to the
/// widget that is added as a titlebar child.
/// 
/// # Accessibility
/// 
/// `GtkWindow` uses the `GTK_ACCESSIBLE_ROLE_WINDOW` role.
///
/// The `Window` type acts as a reference-counted owner of an underlying `GtkWindow` instance.
/// It provides the methods that can operate on this data type through `WindowProtocol` conformance.
/// Use `Window` as a strong reference or owner of a `GtkWindow` instance.
///
open class Window: Widget, WindowProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Window` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkWindow>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Window` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkWindow>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Window` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Window` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Window` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkWindow>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Window` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkWindow>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkWindow`.
    /// i.e., ownership is transferred to the `Window` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkWindow>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `WindowProtocol`
    /// Will retain `GtkWindow`.
    /// - Parameter other: an instance of a related type that implements `WindowProtocol`
    @inlinable public init<T: WindowProtocol>(window other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkWindow`.
    /// 
    /// To get an undecorated window (no window borders), use
    /// [method`Gtk.Window.set_decorated`].
    /// 
    /// All top-level windows created by `gtk_window_new()` are stored
    /// in an internal top-level window list. This list can be obtained
    /// from [func`Gtk.Window.list_toplevels`]. Due to GTK keeping a
    /// reference to the window internally, `gtk_window_new()` does not
    /// return a reference to the caller.
    /// 
    /// To delete a `GtkWindow`, call [method`Gtk.Window.destroy`].
    @inlinable public init() {
        let rv = gtk_window_new()
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum WindowPropertyName: String, PropertyNameProtocol {
    /// The `GtkApplication` associated with the window.
    /// 
    /// The application will be kept alive for at least as long as it
    /// has any windows associated with it (see `g_application_hold()`
    /// for a way to keep it alive without windows).
    /// 
    /// Normally, the connection between the application and the window
    /// will remain until the window is destroyed, but you can explicitly
    /// remove it by setting the :application property to `nil`.
    case application = "application"
    /// Whether the widget or any of its descendents can accept
    /// the input focus.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case canFocus = "can-focus"
    /// Whether the widget can receive pointer events.
    case canTarget = "can-target"
    /// The child widget.
    case child = "child"
    /// A list of css classes applied to this widget.
    case cssClasses = "css-classes"
    /// The name of this widget in the CSS tree.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case cssName = "css-name"
    /// The cursor used by `widget`.
    case cursor = "cursor"
    /// Whether the window should have a frame (also known as *decorations*).
    case decorated = "decorated"
    /// The default height of the window.
    case defaultHeight = "default-height"
    /// The default widget.
    case defaultWidget = "default-widget"
    /// The default width of the window.
    case defaultWidth = "default-width"
    /// Whether the window frame should have a close button.
    case deletable = "deletable"
    /// If this window should be destroyed when the parent is destroyed.
    case destroyWithParent = "destroy-with-parent"
    /// The display that will display this window.
    case display = "display"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    case focusOnClick = "focus-on-click"
    /// Whether 'focus rectangles' are currently visible in this window.
    /// 
    /// This property is maintained by GTK based on user input
    /// and should not be set by applications.
    case focusVisible = "focus-visible"
    /// The focus widget.
    case focusWidget = "focus-widget"
    /// Whether this widget itself will accept the input focus.
    case focusable = "focusable"
    /// Whether the window is fullscreen.
    /// 
    /// Setting this property is the equivalent of calling
    /// [method`Gtk.Window.fullscreen`] or [method`Gtk.Window.unfullscreen`];
    /// either operation is asynchronous, which means you will need to
    /// connect to the `notify` signal in order to know whether the
    /// operation was successful.
    case fullscreened = "fullscreened"
    /// How to distribute horizontal space if widget gets extra space.
    case halign = "halign"
    /// Whether the window frame should handle F10 for activating
    /// menubars.
    case handleMenubarAccel = "handle-menubar-accel"
    /// Whether the widget is the default widget.
    case hasDefault = "has-default"
    /// Whether the widget has the input focus.
    case hasFocus = "has-focus"
    /// Enables or disables the emission of the `query-tooltip` signal on `widget`.
    /// 
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using [signal`Gtk.Widget::query-tooltip`] to
    /// determine whether it will provide a tooltip or not.
    case hasTooltip = "has-tooltip"
    /// Override for height request of the widget.
    /// 
    /// If this is -1, the natural request will be used.
    case heightRequest = "height-request"
    /// Whether to expand horizontally.
    case hexpand = "hexpand"
    /// Whether to use the `hexpand` property.
    case hexpandSet = "hexpand-set"
    /// If this window should be hidden when the users clicks the close button.
    case hideOnClose = "hide-on-close"
    /// Specifies the name of the themed icon to use as the window icon.
    /// 
    /// See [class`Gtk.IconTheme`] for more details.
    case iconName = "icon-name"
    /// Whether the toplevel is the currently active window.
    case isActive = "is-active"
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
    /// [method`Gtk.Widget.set_size_request`] for example.
    case marginBottom = "margin-bottom"
    /// Margin on end of widget, horizontally.
    /// 
    /// This property supports left-to-right and right-to-left text
    /// directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case marginEnd = "margin-end"
    /// Margin on start of widget, horizontally.
    /// 
    /// This property supports left-to-right and right-to-left text
    /// directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case marginStart = "margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case marginTop = "margin-top"
    /// Whether the window is maximized.
    /// 
    /// Setting this property is the equivalent of calling
    /// [method`Gtk.Window.maximize`] or [method`Gtk.Window.unmaximize`];
    /// either operation is asynchronous, which means you will need to
    /// connect to the `notify` signal in order to know whether the
    /// operation was successful.
    case maximized = "maximized"
    /// Whether mnemonics are currently visible in this window.
    /// 
    /// This property is maintained by GTK based on user input,
    /// and should not be set by applications.
    case mnemonicsVisible = "mnemonics-visible"
    /// If `true`, the window is modal.
    case modal = "modal"
    /// The name of the widget.
    case name = "name"
    /// The requested opacity of the widget.
    case opacity = "opacity"
    /// How content outside the widget's content area is treated.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case overflow = "overflow"
    /// The parent widget of this widget.
    case parent = "parent"
    /// Whether the widget will receive the default action when it is focused.
    case receivesDefault = "receives-default"
    /// If `true`, users can resize the window.
    case resizable = "resizable"
    /// The `GtkRoot` widget of the widget tree containing this widget.
    /// 
    /// This will be `nil` if the widget is not contained in a root widget.
    case root = "root"
    /// The scale factor of the widget.
    case scaleFactor = "scale-factor"
    /// Whether the widget responds to input.
    case sensitive = "sensitive"
    /// A write-only property for setting window's startup notification identifier.
    case startupId = "startup-id"
    /// The title of the window.
    case title = "title"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with Pango markup.
    /// 
    /// Also see [method`Gtk.Tooltip.set_markup`].
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`:
    /// [property`Gtk.Widget:has-tooltip`] will automatically be set to `true`
    /// and there will be taken care of [signal`Gtk.Widget::query-tooltip`] in
    /// the default signal handler.
    /// 
    /// Note that if both [property`Gtk.Widget:tooltip-text`] and
    /// [property`Gtk.Widget:tooltip-markup`] are set, the last one wins.
    case tooltipMarkup = "tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see [method`Gtk.Tooltip.set_text`].
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`:
    /// [property`Gtk.Widget:has-tooltip`] will automatically be set to `true`
    /// and there will be taken care of [signal`Gtk.Widget::query-tooltip`] in
    /// the default signal handler.
    /// 
    /// Note that if both [property`Gtk.Widget:tooltip-text`] and
    /// [property`Gtk.Widget:tooltip-markup`] are set, the last one wins.
    case tooltipText = "tooltip-text"
    /// The transient parent of the window.
    case transientFor = "transient-for"
    /// How to distribute vertical space if widget gets extra space.
    case valign = "valign"
    /// Whether to expand vertically.
    case vexpand = "vexpand"
    /// Whether to use the `vexpand` property.
    case vexpandSet = "vexpand-set"
    /// Whether the widget is visible.
    case visible = "visible"
    /// Override for width request of the widget.
    /// 
    /// If this is -1, the natural request will be used.
    case widthRequest = "width-request"
}

public extension WindowProtocol {
    /// Bind a `WindowPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: WindowPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a Window property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: WindowPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Window property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: WindowPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum WindowSignalName: String, SignalNameProtocol {
    /// Emitted when the user activates the default widget
    /// of `window`.
    /// 
    /// This is a [keybinding signal](class.SignalAction.html).
    case activateDefault = "activate-default"
    /// Emitted when the user activates the currently focused
    /// widget of `window`.
    /// 
    /// This is a [keybinding signal](class.SignalAction.html).
    case activateFocus = "activate-focus"
    /// Emitted when the user clicks on the close button of the window.
    case closeRequest = "close-request"
    /// Signals that all holders of a reference to the widget should release
    /// the reference that they hold.
    /// 
    /// May result in finalization of the widget if all references are released.
    /// 
    /// This signal is not suitable for saving widget state.
    case destroy = "destroy"
    /// Emitted when the text direction of a widget changes.
    case directionChanged = "direction-changed"
    /// Emitted when the user enables or disables interactive debugging.
    /// 
    /// When `toggle` is `true`, interactive debugging is toggled on or off,
    /// when it is `false`, the debugger will be pointed at the widget
    /// under the pointer.
    /// 
    /// This is a [keybinding signal](class.SignalAction.html).
    /// 
    /// The default bindings for this signal are Ctrl-Shift-I
    /// and Ctrl-Shift-D.
    case enableDebugging = "enable-debugging"
    /// Emitted when `widget` is hidden.
    case hide = "hide"
    /// Emitted if keyboard navigation fails.
    /// 
    /// See [method`Gtk.Widget.keynav_failed`] for details.
    case keynavFailed = "keynav-failed"
    /// emitted when the set of accelerators or mnemonics that
    /// are associated with `window` changes.
    case keysChanged = "keys-changed"
    /// Emitted when `widget` is going to be mapped.
    /// 
    /// A widget is mapped when the widget is visible (which is controlled with
    /// [property`Gtk.Widget:visible`]) and all its parents up to the toplevel widget
    /// are also visible.
    /// 
    /// The `map` signal can be used to determine whether a widget will be drawn,
    /// for instance it can resume an animation that was stopped during the
    /// emission of [signal`Gtk.Widget::unmap`].
    case map = "map"
    /// Emitted when a widget is activated via a mnemonic.
    /// 
    /// The default handler for this signal activates `widget` if `group_cycling`
    /// is `false`, or just makes `widget` grab focus if `group_cycling` is `true`.
    case mnemonicActivate = "mnemonic-activate"
    /// Emitted when the focus is moved.
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// Emitted when the widgets tooltip is about to be shown.
    /// 
    /// This happens when the [property`Gtk.Widget:has-tooltip`] property
    /// is `true` and the hover timeout has expired with the cursor hovering
    /// "above" `widget`; or emitted when `widget` got focus in keyboard mode.
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
    /// Emitted when `widget` is associated with a `GdkSurface`.
    /// 
    /// This means that [method`Gtk.Widget.realize`] has been called
    /// or the widget has been mapped (that is, it is going to be drawn).
    case realize = "realize"
    /// Emitted when `widget` is shown.
    case show = "show"
    /// Emitted when the widget state changes.
    /// 
    /// See [method`Gtk.Widget.get_state_flags`].
    case stateFlagsChanged = "state-flags-changed"
    /// Emitted when `widget` is going to be unmapped.
    /// 
    /// A widget is unmapped when either it or any of its parents up to the
    /// toplevel widget have been set as hidden.
    /// 
    /// As `unmap` indicates that a widget will not be shown any longer,
    /// it can be used to, for example, stop an animation on the widget.
    case unmap = "unmap"
    /// Emitted when the `GdkSurface` associated with `widget` is destroyed.
    /// 
    /// This means that [method`Gtk.Widget.unrealize`] has been called
    /// or the widget has been unmapped (that is, it is going to be hidden).
    case unrealize = "unrealize"
    /// The `GtkApplication` associated with the window.
    /// 
    /// The application will be kept alive for at least as long as it
    /// has any windows associated with it (see `g_application_hold()`
    /// for a way to keep it alive without windows).
    /// 
    /// Normally, the connection between the application and the window
    /// will remain until the window is destroyed, but you can explicitly
    /// remove it by setting the :application property to `nil`.
    case notifyApplication = "notify::application"
    /// Whether the widget or any of its descendents can accept
    /// the input focus.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyCanFocus = "notify::can-focus"
    /// Whether the widget can receive pointer events.
    case notifyCanTarget = "notify::can-target"
    /// The child widget.
    case notifyChild = "notify::child"
    /// A list of css classes applied to this widget.
    case notifyCssClasses = "notify::css-classes"
    /// The name of this widget in the CSS tree.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyCssName = "notify::css-name"
    /// The cursor used by `widget`.
    case notifyCursor = "notify::cursor"
    /// Whether the window should have a frame (also known as *decorations*).
    case notifyDecorated = "notify::decorated"
    /// The default height of the window.
    case notifyDefaultHeight = "notify::default-height"
    /// The default widget.
    case notifyDefaultWidget = "notify::default-widget"
    /// The default width of the window.
    case notifyDefaultWidth = "notify::default-width"
    /// Whether the window frame should have a close button.
    case notifyDeletable = "notify::deletable"
    /// If this window should be destroyed when the parent is destroyed.
    case notifyDestroyWithParent = "notify::destroy-with-parent"
    /// The display that will display this window.
    case notifyDisplay = "notify::display"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    case notifyFocusOnClick = "notify::focus-on-click"
    /// Whether 'focus rectangles' are currently visible in this window.
    /// 
    /// This property is maintained by GTK based on user input
    /// and should not be set by applications.
    case notifyFocusVisible = "notify::focus-visible"
    /// The focus widget.
    case notifyFocusWidget = "notify::focus-widget"
    /// Whether this widget itself will accept the input focus.
    case notifyFocusable = "notify::focusable"
    /// Whether the window is fullscreen.
    /// 
    /// Setting this property is the equivalent of calling
    /// [method`Gtk.Window.fullscreen`] or [method`Gtk.Window.unfullscreen`];
    /// either operation is asynchronous, which means you will need to
    /// connect to the `notify` signal in order to know whether the
    /// operation was successful.
    case notifyFullscreened = "notify::fullscreened"
    /// How to distribute horizontal space if widget gets extra space.
    case notifyHalign = "notify::halign"
    /// Whether the window frame should handle F10 for activating
    /// menubars.
    case notifyHandleMenubarAccel = "notify::handle-menubar-accel"
    /// Whether the widget is the default widget.
    case notifyHasDefault = "notify::has-default"
    /// Whether the widget has the input focus.
    case notifyHasFocus = "notify::has-focus"
    /// Enables or disables the emission of the `query-tooltip` signal on `widget`.
    /// 
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using [signal`Gtk.Widget::query-tooltip`] to
    /// determine whether it will provide a tooltip or not.
    case notifyHasTooltip = "notify::has-tooltip"
    /// Override for height request of the widget.
    /// 
    /// If this is -1, the natural request will be used.
    case notifyHeightRequest = "notify::height-request"
    /// Whether to expand horizontally.
    case notifyHexpand = "notify::hexpand"
    /// Whether to use the `hexpand` property.
    case notifyHexpandSet = "notify::hexpand-set"
    /// If this window should be hidden when the users clicks the close button.
    case notifyHideOnClose = "notify::hide-on-close"
    /// Specifies the name of the themed icon to use as the window icon.
    /// 
    /// See [class`Gtk.IconTheme`] for more details.
    case notifyIconName = "notify::icon-name"
    /// Whether the toplevel is the currently active window.
    case notifyIsActive = "notify::is-active"
    /// The `GtkLayoutManager` instance to use to compute the preferred size
    /// of the widget, and allocate its children.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyLayoutManager = "notify::layout-manager"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case notifyMarginBottom = "notify::margin-bottom"
    /// Margin on end of widget, horizontally.
    /// 
    /// This property supports left-to-right and right-to-left text
    /// directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case notifyMarginEnd = "notify::margin-end"
    /// Margin on start of widget, horizontally.
    /// 
    /// This property supports left-to-right and right-to-left text
    /// directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case notifyMarginStart = "notify::margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case notifyMarginTop = "notify::margin-top"
    /// Whether the window is maximized.
    /// 
    /// Setting this property is the equivalent of calling
    /// [method`Gtk.Window.maximize`] or [method`Gtk.Window.unmaximize`];
    /// either operation is asynchronous, which means you will need to
    /// connect to the `notify` signal in order to know whether the
    /// operation was successful.
    case notifyMaximized = "notify::maximized"
    /// Whether mnemonics are currently visible in this window.
    /// 
    /// This property is maintained by GTK based on user input,
    /// and should not be set by applications.
    case notifyMnemonicsVisible = "notify::mnemonics-visible"
    /// If `true`, the window is modal.
    case notifyModal = "notify::modal"
    /// The name of the widget.
    case notifyName = "notify::name"
    /// The requested opacity of the widget.
    case notifyOpacity = "notify::opacity"
    /// How content outside the widget's content area is treated.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyOverflow = "notify::overflow"
    /// The parent widget of this widget.
    case notifyParent = "notify::parent"
    /// Whether the widget will receive the default action when it is focused.
    case notifyReceivesDefault = "notify::receives-default"
    /// If `true`, users can resize the window.
    case notifyResizable = "notify::resizable"
    /// The `GtkRoot` widget of the widget tree containing this widget.
    /// 
    /// This will be `nil` if the widget is not contained in a root widget.
    case notifyRoot = "notify::root"
    /// The scale factor of the widget.
    case notifyScaleFactor = "notify::scale-factor"
    /// Whether the widget responds to input.
    case notifySensitive = "notify::sensitive"
    /// A write-only property for setting window's startup notification identifier.
    case notifyStartupId = "notify::startup-id"
    /// The title of the window.
    case notifyTitle = "notify::title"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with Pango markup.
    /// 
    /// Also see [method`Gtk.Tooltip.set_markup`].
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`:
    /// [property`Gtk.Widget:has-tooltip`] will automatically be set to `true`
    /// and there will be taken care of [signal`Gtk.Widget::query-tooltip`] in
    /// the default signal handler.
    /// 
    /// Note that if both [property`Gtk.Widget:tooltip-text`] and
    /// [property`Gtk.Widget:tooltip-markup`] are set, the last one wins.
    case notifyTooltipMarkup = "notify::tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see [method`Gtk.Tooltip.set_text`].
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`:
    /// [property`Gtk.Widget:has-tooltip`] will automatically be set to `true`
    /// and there will be taken care of [signal`Gtk.Widget::query-tooltip`] in
    /// the default signal handler.
    /// 
    /// Note that if both [property`Gtk.Widget:tooltip-text`] and
    /// [property`Gtk.Widget:tooltip-markup`] are set, the last one wins.
    case notifyTooltipText = "notify::tooltip-text"
    /// The transient parent of the window.
    case notifyTransientFor = "notify::transient-for"
    /// How to distribute vertical space if widget gets extra space.
    case notifyValign = "notify::valign"
    /// Whether to expand vertically.
    case notifyVexpand = "notify::vexpand"
    /// Whether to use the `vexpand` property.
    case notifyVexpandSet = "notify::vexpand-set"
    /// Whether the widget is visible.
    case notifyVisible = "notify::visible"
    /// Override for width request of the widget.
    /// 
    /// If this is -1, the natural request will be used.
    case notifyWidthRequest = "notify::width-request"
}

// MARK: Window signals
public extension WindowProtocol {
    /// Connect a Swift signal handler to the given, typed `WindowSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - handler: The Swift signal handler (function or callback) to invoke on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: WindowSignalName, flags f: ConnectFlags = ConnectFlags(0), handler h: @escaping SignalHandler) -> Int {
        connect(s, flags: f, handler: h)
    }
    
    
    /// Connect a C signal handler to the given, typed `WindowSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - signalHandler: The C function to be called on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: WindowSignalName, flags f: ConnectFlags = ConnectFlags(0), data userData: gpointer!, destroyData destructor: GClosureNotify? = nil, signalHandler h: @escaping GCallback) -> Int {
        connectSignal(s, flags: f, data: userData, destroyData: destructor, handler: h)
    }
    
    
    /// Emitted when the user activates the default widget
    /// of `window`.
    /// 
    /// This is a [keybinding signal](class.SignalAction.html).
    /// - Note: This represents the underlying `activate-default` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `activateDefault` signal is emitted
    @discardableResult @inlinable func onActivateDefault(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WindowRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<WindowRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WindowRef(raw: unownedSelf))
            return output
        }
        return connect(
            signal: .activateDefault,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `activate-default` signal for using the `connect(signal:)` methods
    static var activateDefaultSignal: WindowSignalName { .activateDefault }
    
    /// Emitted when the user activates the currently focused
    /// widget of `window`.
    /// 
    /// This is a [keybinding signal](class.SignalAction.html).
    /// - Note: This represents the underlying `activate-focus` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `activateFocus` signal is emitted
    @discardableResult @inlinable func onActivateFocus(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WindowRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<WindowRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WindowRef(raw: unownedSelf))
            return output
        }
        return connect(
            signal: .activateFocus,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `activate-focus` signal for using the `connect(signal:)` methods
    static var activateFocusSignal: WindowSignalName { .activateFocus }
    
    /// Emitted when the user clicks on the close button of the window.
    /// - Note: This represents the underlying `close-request` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter handler: `true` to stop other handlers from being invoked for the signal
    /// Run the given callback whenever the `closeRequest` signal is emitted
    @discardableResult @inlinable func onCloseRequest(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WindowRef) -> Bool ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<WindowRef, Bool>
        let cCallback: @convention(c) (gpointer, gpointer) -> gboolean = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output = holder.call(WindowRef(raw: unownedSelf))
            return gboolean((output) ? 1 : 0)
        }
        return connect(
            signal: .closeRequest,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `close-request` signal for using the `connect(signal:)` methods
    static var closeRequestSignal: WindowSignalName { .closeRequest }
    
    /// Emitted when the user enables or disables interactive debugging.
    /// 
    /// When `toggle` is `true`, interactive debugging is toggled on or off,
    /// when it is `false`, the debugger will be pointed at the widget
    /// under the pointer.
    /// 
    /// This is a [keybinding signal](class.SignalAction.html).
    /// 
    /// The default bindings for this signal are Ctrl-Shift-I
    /// and Ctrl-Shift-D.
    /// - Note: This represents the underlying `enable-debugging` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter toggle: toggle the debugger
    /// - Parameter handler: `true` if the key binding was handled
    /// Run the given callback whenever the `enableDebugging` signal is emitted
    @discardableResult @inlinable func onEnableDebugging(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WindowRef, _ toggle: Bool) -> Bool ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WindowRef, Bool, Bool>
        let cCallback: @convention(c) (gpointer, gboolean, gpointer) -> gboolean = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output = holder.call(WindowRef(raw: unownedSelf), ((arg1) != 0))
            return gboolean((output) ? 1 : 0)
        }
        return connect(
            signal: .enableDebugging,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `enable-debugging` signal for using the `connect(signal:)` methods
    static var enableDebuggingSignal: WindowSignalName { .enableDebugging }
    
    /// emitted when the set of accelerators or mnemonics that
    /// are associated with `window` changes.
    /// - Note: This represents the underlying `keys-changed` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `keysChanged` signal is emitted
    @discardableResult @inlinable func onKeysChanged(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WindowRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<WindowRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WindowRef(raw: unownedSelf))
            return output
        }
        return connect(
            signal: .keysChanged,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `keys-changed` signal for using the `connect(signal:)` methods
    static var keysChangedSignal: WindowSignalName { .keysChanged }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::application` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyApplication` signal is emitted
    @discardableResult @inlinable func onNotifyApplication(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WindowRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WindowRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WindowRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyApplication,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::application` signal for using the `connect(signal:)` methods
    static var notifyApplicationSignal: WindowSignalName { .notifyApplication }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::child` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyChild` signal is emitted
    @discardableResult @inlinable func onNotifyChild(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WindowRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WindowRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WindowRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyChild,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::child` signal for using the `connect(signal:)` methods
    static var notifyChildSignal: WindowSignalName { .notifyChild }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::decorated` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyDecorated` signal is emitted
    @discardableResult @inlinable func onNotifyDecorated(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WindowRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WindowRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WindowRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyDecorated,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::decorated` signal for using the `connect(signal:)` methods
    static var notifyDecoratedSignal: WindowSignalName { .notifyDecorated }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::default-height` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyDefaultHeight` signal is emitted
    @discardableResult @inlinable func onNotifyDefaultHeight(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WindowRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WindowRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WindowRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyDefaultHeight,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::default-height` signal for using the `connect(signal:)` methods
    static var notifyDefaultHeightSignal: WindowSignalName { .notifyDefaultHeight }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::default-widget` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyDefaultWidget` signal is emitted
    @discardableResult @inlinable func onNotifyDefaultWidget(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WindowRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WindowRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WindowRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyDefaultWidget,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::default-widget` signal for using the `connect(signal:)` methods
    static var notifyDefaultWidgetSignal: WindowSignalName { .notifyDefaultWidget }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::default-width` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyDefaultWidth` signal is emitted
    @discardableResult @inlinable func onNotifyDefaultWidth(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WindowRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WindowRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WindowRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyDefaultWidth,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::default-width` signal for using the `connect(signal:)` methods
    static var notifyDefaultWidthSignal: WindowSignalName { .notifyDefaultWidth }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::deletable` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyDeletable` signal is emitted
    @discardableResult @inlinable func onNotifyDeletable(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WindowRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WindowRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WindowRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyDeletable,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::deletable` signal for using the `connect(signal:)` methods
    static var notifyDeletableSignal: WindowSignalName { .notifyDeletable }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::destroy-with-parent` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyDestroyWithParent` signal is emitted
    @discardableResult @inlinable func onNotifyDestroyWithParent(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WindowRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WindowRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WindowRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyDestroyWithParent,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::destroy-with-parent` signal for using the `connect(signal:)` methods
    static var notifyDestroyWithParentSignal: WindowSignalName { .notifyDestroyWithParent }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::display` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyDisplay` signal is emitted
    @discardableResult @inlinable func onNotifyDisplay(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WindowRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WindowRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WindowRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyDisplay,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::display` signal for using the `connect(signal:)` methods
    static var notifyDisplaySignal: WindowSignalName { .notifyDisplay }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::focus-visible` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyFocusVisible` signal is emitted
    @discardableResult @inlinable func onNotifyFocusVisible(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WindowRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WindowRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WindowRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyFocusVisible,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::focus-visible` signal for using the `connect(signal:)` methods
    static var notifyFocusVisibleSignal: WindowSignalName { .notifyFocusVisible }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::focus-widget` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyFocusWidget` signal is emitted
    @discardableResult @inlinable func onNotifyFocusWidget(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WindowRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WindowRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WindowRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyFocusWidget,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::focus-widget` signal for using the `connect(signal:)` methods
    static var notifyFocusWidgetSignal: WindowSignalName { .notifyFocusWidget }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::fullscreened` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyFullscreened` signal is emitted
    @discardableResult @inlinable func onNotifyFullscreened(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WindowRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WindowRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WindowRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyFullscreened,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::fullscreened` signal for using the `connect(signal:)` methods
    static var notifyFullscreenedSignal: WindowSignalName { .notifyFullscreened }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::handle-menubar-accel` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyHandleMenubarAccel` signal is emitted
    @discardableResult @inlinable func onNotifyHandleMenubarAccel(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WindowRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WindowRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WindowRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyHandleMenubarAccel,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::handle-menubar-accel` signal for using the `connect(signal:)` methods
    static var notifyHandleMenubarAccelSignal: WindowSignalName { .notifyHandleMenubarAccel }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::hide-on-close` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyHideOnClose` signal is emitted
    @discardableResult @inlinable func onNotifyHideOnClose(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WindowRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WindowRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WindowRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyHideOnClose,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::hide-on-close` signal for using the `connect(signal:)` methods
    static var notifyHideOnCloseSignal: WindowSignalName { .notifyHideOnClose }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::icon-name` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyIconName` signal is emitted
    @discardableResult @inlinable func onNotifyIconName(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WindowRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WindowRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WindowRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyIconName,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::icon-name` signal for using the `connect(signal:)` methods
    static var notifyIconNameSignal: WindowSignalName { .notifyIconName }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::is-active` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyIsActive` signal is emitted
    @discardableResult @inlinable func onNotifyIsActive(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WindowRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WindowRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WindowRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyIsActive,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::is-active` signal for using the `connect(signal:)` methods
    static var notifyIsActiveSignal: WindowSignalName { .notifyIsActive }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::maximized` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyMaximized` signal is emitted
    @discardableResult @inlinable func onNotifyMaximized(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WindowRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WindowRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WindowRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyMaximized,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::maximized` signal for using the `connect(signal:)` methods
    static var notifyMaximizedSignal: WindowSignalName { .notifyMaximized }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::mnemonics-visible` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyMnemonicsVisible` signal is emitted
    @discardableResult @inlinable func onNotifyMnemonicsVisible(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WindowRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WindowRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WindowRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyMnemonicsVisible,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::mnemonics-visible` signal for using the `connect(signal:)` methods
    static var notifyMnemonicsVisibleSignal: WindowSignalName { .notifyMnemonicsVisible }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::modal` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyModal` signal is emitted
    @discardableResult @inlinable func onNotifyModal(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WindowRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WindowRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WindowRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyModal,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::modal` signal for using the `connect(signal:)` methods
    static var notifyModalSignal: WindowSignalName { .notifyModal }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::resizable` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyResizable` signal is emitted
    @discardableResult @inlinable func onNotifyResizable(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WindowRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WindowRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WindowRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyResizable,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::resizable` signal for using the `connect(signal:)` methods
    static var notifyResizableSignal: WindowSignalName { .notifyResizable }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::startup-id` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyStartupId` signal is emitted
    @discardableResult @inlinable func onNotifyStartupId(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WindowRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WindowRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WindowRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyStartupId,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::startup-id` signal for using the `connect(signal:)` methods
    static var notifyStartupIdSignal: WindowSignalName { .notifyStartupId }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::title` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyTitle` signal is emitted
    @discardableResult @inlinable func onNotifyTitle(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WindowRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WindowRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WindowRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyTitle,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::title` signal for using the `connect(signal:)` methods
    static var notifyTitleSignal: WindowSignalName { .notifyTitle }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::transient-for` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyTransientFor` signal is emitted
    @discardableResult @inlinable func onNotifyTransientFor(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: WindowRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<WindowRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(WindowRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyTransientFor,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::transient-for` signal for using the `connect(signal:)` methods
    static var notifyTransientForSignal: WindowSignalName { .notifyTransientFor }
    
}

// MARK: Window Class: WindowProtocol extension (methods and fields)
public extension WindowProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkWindow` instance.
    @inlinable var window_ptr: UnsafeMutablePointer<GtkWindow>! { return ptr?.assumingMemoryBound(to: GtkWindow.self) }

    /// Requests that the window is closed.
    /// 
    /// This is similar to what happens when a window manager
    /// close button is clicked.
    /// 
    /// This function can be used with close buttons in custom
    /// titlebars.
    @inlinable func close() {
        gtk_window_close(window_ptr)
    
    }

    /// Drop the internal reference GTK holds on toplevel windows.
    @inlinable func destroy() {
        gtk_window_destroy(window_ptr)
    
    }

    /// Asks to place `window` in the fullscreen state.
    /// 
    /// Note that you shouldn’t assume the window is definitely fullscreen
    /// afterward, because other entities (e.g. the user or window manager
    /// unfullscreen it again, and not all window managers honor requests
    /// to fullscreen windows.
    /// 
    /// You can track the result of this operation via the
    /// [property`Gdk.Toplevel:state`] property, or by listening to
    /// notifications of the [property`Gtk.Window:fullscreened`] property.
    @inlinable func fullscreen() {
        gtk_window_fullscreen(window_ptr)
    
    }

    /// Asks to place `window` in the fullscreen state on the given `monitor`.
    /// 
    /// Note that you shouldn't assume the window is definitely fullscreen
    /// afterward, or that the windowing system allows fullscreen windows on
    /// any given monitor.
    /// 
    /// You can track the result of this operation via the
    /// [property`Gdk.Toplevel:state`] property, or by listening to
    /// notifications of the [property`Gtk.Window:fullscreened`] property.
    @inlinable func fullscreenOn<MonitorT: Gdk.MonitorProtocol>(monitor: MonitorT) {
        gtk_window_fullscreen_on_monitor(window_ptr, monitor.monitor_ptr)
    
    }

    /// Gets the `GtkApplication` associated with the window.
    @inlinable func getApplication() -> ApplicationRef! {
        let rv = ApplicationRef(gconstpointer: gconstpointer(gtk_window_get_application(window_ptr)))
        return rv
    }

    /// Gets the child widget of `window`.
    @inlinable func getChild() -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_window_get_child(window_ptr))) else { return nil }
        return rv
    }

    /// Returns whether the window has been set to have decorations.
    @inlinable func getDecorated() -> Bool {
        let rv = ((gtk_window_get_decorated(window_ptr)) != 0)
        return rv
    }

    /// Gets the default size of the window.
    /// 
    /// A value of 0 for the width or height indicates that a default
    /// size has not been explicitly set for that dimension, so the
    /// “natural” size of the window will be used.
    @inlinable func getDefaultSize(width: UnsafeMutablePointer<gint>! = nil, height: UnsafeMutablePointer<gint>! = nil) {
        gtk_window_get_default_size(window_ptr, width, height)
    
    }

    /// Returns the default widget for `window`.
    @inlinable func getDefaultWidget() -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_window_get_default_widget(window_ptr))) else { return nil }
        return rv
    }

    /// Returns whether the window has been set to have a close button.
    @inlinable func getDeletable() -> Bool {
        let rv = ((gtk_window_get_deletable(window_ptr)) != 0)
        return rv
    }

    /// Returns whether the window will be destroyed with its transient parent.
    @inlinable func getDestroyWithParent() -> Bool {
        let rv = ((gtk_window_get_destroy_with_parent(window_ptr)) != 0)
        return rv
    }

    /// Retrieves the current focused widget within the window.
    /// 
    /// Note that this is the widget that would have the focus
    /// if the toplevel window focused; if the toplevel window
    /// is not focused then `gtk_widget_has_focus (widget)` will
    /// not be `true` for the widget.
    @inlinable func getFocus() -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_window_get_focus(window_ptr))) else { return nil }
        return rv
    }

    /// Gets whether “focus rectangles” are supposed to be visible.
    @inlinable func getFocusVisible() -> Bool {
        let rv = ((gtk_window_get_focus_visible(window_ptr)) != 0)
        return rv
    }

    /// Returns the group for `window`.
    /// 
    /// If the window has no group, then the default group is returned.
    @inlinable func getGroup() -> WindowGroupRef! {
        let rv = WindowGroupRef(gconstpointer: gconstpointer(gtk_window_get_group(window_ptr)))
        return rv
    }

    /// Returns whether this window reacts to F10 key presses by
    /// activating a menubar it contains.
    @inlinable func getHandleMenubarAccel() -> Bool {
        let rv = ((gtk_window_get_handle_menubar_accel(window_ptr)) != 0)
        return rv
    }

    /// Returns whether the window will be hidden when the close button is clicked.
    @inlinable func getHideOnClose() -> Bool {
        let rv = ((gtk_window_get_hide_on_close(window_ptr)) != 0)
        return rv
    }

    /// Returns the name of the themed icon for the window.
    @inlinable func getIconName() -> String! {
        let rv = gtk_window_get_icon_name(window_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets whether mnemonics are supposed to be visible.
    @inlinable func getMnemonicsVisible() -> Bool {
        let rv = ((gtk_window_get_mnemonics_visible(window_ptr)) != 0)
        return rv
    }

    /// Returns whether the window is modal.
    @inlinable func getModal() -> Bool {
        let rv = ((gtk_window_get_modal(window_ptr)) != 0)
        return rv
    }

    /// Gets the value set by `gtk_window_set_resizable()`.
    @inlinable func getResizable() -> Bool {
        let rv = ((gtk_window_get_resizable(window_ptr)) != 0)
        return rv
    }

    /// Retrieves the title of the window.
    @inlinable func getTitle() -> String! {
        let rv = gtk_window_get_title(window_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Returns the custom titlebar that has been set with
    /// `gtk_window_set_titlebar()`.
    @inlinable func getTitlebar() -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_window_get_titlebar(window_ptr))) else { return nil }
        return rv
    }

    /// Fetches the transient parent for this window.
    @inlinable func getTransientFor() -> WindowRef! {
        guard let rv = WindowRef(gconstpointer: gconstpointer(gtk_window_get_transient_for(window_ptr))) else { return nil }
        return rv
    }

    /// Returns whether `window` has an explicit window group.
    @inlinable func hasGroup() -> Bool {
        let rv = ((gtk_window_has_group(window_ptr)) != 0)
        return rv
    }

    /// Asks to maximize `window`, so that it fills the screen.
    /// 
    /// Note that you shouldn’t assume the window is definitely maximized
    /// afterward, because other entities (e.g. the user or window manager
    /// could unmaximize it again, and not all window managers support
    /// maximization.
    /// 
    /// It’s permitted to call this function before showing a window,
    /// in which case the window will be maximized when it appears onscreen
    /// initially.
    /// 
    /// You can track the result of this operation via the
    /// [property`Gdk.Toplevel:state`] property, or by listening to
    /// notifications on the [property`Gtk.Window:maximized`]
    /// property.
    @inlinable func maximize() {
        gtk_window_maximize(window_ptr)
    
    }

    /// Asks to minimize the specified `window`.
    /// 
    /// Note that you shouldn’t assume the window is definitely minimized
    /// afterward, because the windowing system might not support this
    /// functionality; other entities (e.g. the user or the window manager
    /// could unminimize it again, or there may not be a window manager in
    /// which case minimization isn’t possible, etc.
    /// 
    /// It’s permitted to call this function before showing a window,
    /// in which case the window will be minimized before it ever appears
    /// onscreen.
    /// 
    /// You can track result of this operation via the
    /// [property`Gdk.Toplevel:state`] property.
    @inlinable func minimize() {
        gtk_window_minimize(window_ptr)
    
    }

    /// Presents a window to the user.
    /// 
    /// This function should not be used as when it is called,
    /// it is too late to gather a valid timestamp to allow focus
    /// stealing prevention to work correctly.
    @inlinable func present() {
        gtk_window_present(window_ptr)
    
    }

    /// Presents a window to the user.
    /// 
    /// This may mean raising the window in the stacking order,
    /// unminimizing it, moving it to the current desktop, and/or
    /// giving it the keyboard focus, possibly dependent on the user’s
    /// platform, window manager, and preferences.
    /// 
    /// If `window` is hidden, this function calls [method`Gtk.Widget.show`]
    /// as well.
    /// 
    /// This function should be used when the user tries to open a window
    /// that’s already open. Say for example the preferences dialog is
    /// currently open, and the user chooses Preferences from the menu
    /// a second time; use [method`Gtk.Window.present`] to move the
    /// already-open dialog where the user can see it.
    /// 
    /// Presents a window to the user in response to a user interaction.
    /// The timestamp should be gathered when the window was requested
    /// to be shown (when clicking a link for example), rather than once
    /// the window is ready to be shown.
    @inlinable func presentWithTime(timestamp: guint32) {
        gtk_window_present_with_time(window_ptr, timestamp)
    
    }

    /// Sets or unsets the `GtkApplication` associated with the window.
    /// 
    /// The application will be kept alive for at least as long as it has
    /// any windows associated with it (see `g_application_hold()` for a way
    /// to keep it alive without windows).
    /// 
    /// Normally, the connection between the application and the window will
    /// remain until the window is destroyed, but you can explicitly remove
    /// it by setting the `application` to `nil`.
    /// 
    /// This is equivalent to calling [method`Gtk.Application.remove_window`]
    /// and/or [method`Gtk.Application.add_window`] on the old/new applications
    /// as relevant.
    @inlinable func set(application: ApplicationRef? = nil) {
        gtk_window_set_application(window_ptr, application?.application_ptr)
    
    }
    /// Sets or unsets the `GtkApplication` associated with the window.
    /// 
    /// The application will be kept alive for at least as long as it has
    /// any windows associated with it (see `g_application_hold()` for a way
    /// to keep it alive without windows).
    /// 
    /// Normally, the connection between the application and the window will
    /// remain until the window is destroyed, but you can explicitly remove
    /// it by setting the `application` to `nil`.
    /// 
    /// This is equivalent to calling [method`Gtk.Application.remove_window`]
    /// and/or [method`Gtk.Application.add_window`] on the old/new applications
    /// as relevant.
    @inlinable func set<ApplicationT: ApplicationProtocol>(application: ApplicationT?) {
        gtk_window_set_application(window_ptr, application?.application_ptr)
    
    }

    /// Sets the child widget of `window`.
    @inlinable func set(child: WidgetRef? = nil) {
        gtk_window_set_child(window_ptr, child?.widget_ptr)
    
    }
    /// Sets the child widget of `window`.
    @inlinable func set<WidgetT: WidgetProtocol>(child: WidgetT?) {
        gtk_window_set_child(window_ptr, child?.widget_ptr)
    
    }

    /// Sets whether the window should be decorated.
    /// 
    /// By default, windows are decorated with a title bar, resize
    /// controls, etc. Some window managers allow GTK to disable these
    /// decorations, creating a borderless window. If you set the decorated
    /// property to `false` using this function, GTK will do its best to
    /// convince the window manager not to decorate the window. Depending on
    /// the system, this function may not have any effect when called on a
    /// window that is already visible, so you should call it before calling
    /// [method`Gtk.Widget.show`].
    /// 
    /// On Windows, this function always works, since there’s no window manager
    /// policy involved.
    @inlinable func setDecorated(setting: Bool) {
        gtk_window_set_decorated(window_ptr, gboolean((setting) ? 1 : 0))
    
    }

    /// Sets the default size of a window.
    /// 
    /// If the window’s “natural” size (its size request) is larger than
    /// the default, the default will be ignored.
    /// 
    /// Unlike [method`Gtk.Widget.set_size_request`], which sets a size
    /// request for a widget and thus would keep users from shrinking
    /// the window, this function only sets the initial size, just as
    /// if the user had resized the window themselves. Users can still
    /// shrink the window again as they normally would. Setting a default
    /// size of -1 means to use the “natural” default size (the size request
    /// of the window).
    /// 
    /// The default size of a window only affects the first time a window is
    /// shown; if a window is hidden and re-shown, it will remember the size
    /// it had prior to hiding, rather than using the default size.
    /// 
    /// Windows can’t actually be 0x0 in size, they must be at least 1x1, but
    /// passing 0 for `width` and `height` is OK, resulting in a 1x1 default size.
    /// 
    /// If you use this function to reestablish a previously saved window size,
    /// note that the appropriate size to save is the one returned by
    /// [method`Gtk.Window.get_default_size`]. Using the window allocation
    /// directly will not work in all circumstances and can lead to growing
    /// or shrinking windows.
    @inlinable func setDefaultSize(width: Int, height: Int) {
        gtk_window_set_default_size(window_ptr, gint(width), gint(height))
    
    }

    /// Sets the default widget.
    /// 
    /// The default widget is the widget that is activated when the user
    /// presses Enter in a dialog (for example).
    @inlinable func set(defaultWidget: WidgetRef? = nil) {
        gtk_window_set_default_widget(window_ptr, defaultWidget?.widget_ptr)
    
    }
    /// Sets the default widget.
    /// 
    /// The default widget is the widget that is activated when the user
    /// presses Enter in a dialog (for example).
    @inlinable func set<WidgetT: WidgetProtocol>(defaultWidget: WidgetT?) {
        gtk_window_set_default_widget(window_ptr, defaultWidget?.widget_ptr)
    
    }

    /// Sets whether the window should be deletable.
    /// 
    /// By default, windows have a close button in the window frame.
    /// Some  window managers allow GTK to disable this button. If you
    /// set the deletable property to `false` using this function, GTK
    /// will do its best to convince the window manager not to show a
    /// close button. Depending on the system, this function may not
    /// have any effect when called on a window that is already visible,
    /// so you should call it before calling [method`Gtk.Widget.show`].
    /// 
    /// On Windows, this function always works, since there’s no window
    /// manager policy involved.
    @inlinable func setDeletable(setting: Bool) {
        gtk_window_set_deletable(window_ptr, gboolean((setting) ? 1 : 0))
    
    }

    /// If `setting` is `true`, then destroying the transient parent of `window`
    /// will also destroy `window` itself.
    /// 
    /// This is useful for dialogs that shouldn’t persist beyond the lifetime
    /// of the main window they are associated with, for example.
    @inlinable func setDestroyWithParent(setting: Bool) {
        gtk_window_set_destroy_with_parent(window_ptr, gboolean((setting) ? 1 : 0))
    
    }

    /// Sets the `GdkDisplay` where the `window` is displayed.
    /// 
    /// If the window is already mapped, it will be unmapped,
    /// and then remapped on the new display.
    @inlinable func set<DisplayT: Gdk.DisplayProtocol>(display: DisplayT) {
        gtk_window_set_display(window_ptr, display.display_ptr)
    
    }

    /// Sets the focus widget.
    /// 
    /// If `focus` is not the current focus widget, and is focusable,
    /// sets it as the focus widget for the window. If `focus` is `nil`,
    /// unsets the focus widget for this window. To set the focus to a
    /// particular widget in the toplevel, it is usually more convenient
    /// to use [method`Gtk.Widget.grab_focus`] instead of this function.
    @inlinable func set(focus: WidgetRef? = nil) {
        gtk_window_set_focus(window_ptr, focus?.widget_ptr)
    
    }
    /// Sets the focus widget.
    /// 
    /// If `focus` is not the current focus widget, and is focusable,
    /// sets it as the focus widget for the window. If `focus` is `nil`,
    /// unsets the focus widget for this window. To set the focus to a
    /// particular widget in the toplevel, it is usually more convenient
    /// to use [method`Gtk.Widget.grab_focus`] instead of this function.
    @inlinable func set<WidgetT: WidgetProtocol>(focus: WidgetT?) {
        gtk_window_set_focus(window_ptr, focus?.widget_ptr)
    
    }

    /// Sets whether “focus rectangles” are supposed to be visible.
    @inlinable func setFocusVisible(setting: Bool) {
        gtk_window_set_focus_visible(window_ptr, gboolean((setting) ? 1 : 0))
    
    }

    /// Sets whether this window should react to F10 key presses
    /// by activating a menubar it contains.
    @inlinable func set(handleMenubarAccel: Bool) {
        gtk_window_set_handle_menubar_accel(window_ptr, gboolean((handleMenubarAccel) ? 1 : 0))
    
    }

    /// If `setting` is `true`, then clicking the close button on the window
    /// will not destroy it, but only hide it.
    @inlinable func setHideOnClose(setting: Bool) {
        gtk_window_set_hide_on_close(window_ptr, gboolean((setting) ? 1 : 0))
    
    }

    /// Sets the icon for the window from a named themed icon.
    /// 
    /// See the docs for [class`Gtk.IconTheme`] for more details.
    /// On some platforms, the window icon is not used at all.
    /// 
    /// Note that this has nothing to do with the WM_ICON_NAME
    /// property which is mentioned in the ICCCM.
    @inlinable func setIcon(name: UnsafePointer<CChar>? = nil) {
        gtk_window_set_icon_name(window_ptr, name)
    
    }

    /// Sets whether mnemonics are supposed to be visible.
    @inlinable func setMnemonicsVisible(setting: Bool) {
        gtk_window_set_mnemonics_visible(window_ptr, gboolean((setting) ? 1 : 0))
    
    }

    /// Sets a window modal or non-modal.
    /// 
    /// Modal windows prevent interaction with other windows in the same
    /// application. To keep modal dialogs on top of main application windows,
    /// use [method`Gtk.Window.set_transient_for`] to make the dialog transient
    /// for the parent; most window managers will then disallow lowering the
    /// dialog below the parent.
    @inlinable func set(modal: Bool) {
        gtk_window_set_modal(window_ptr, gboolean((modal) ? 1 : 0))
    
    }

    /// Sets whether the user can resize a window.
    /// 
    /// Windows are user resizable by default.
    @inlinable func set(resizable: Bool) {
        gtk_window_set_resizable(window_ptr, gboolean((resizable) ? 1 : 0))
    
    }

    /// Sets the startup notification ID.
    /// 
    /// Startup notification identifiers are used by desktop environment
    /// to track application startup, to provide user feedback and other
    /// features. This function changes the corresponding property on the
    /// underlying `GdkSurface`.
    /// 
    /// Normally, startup identifier is managed automatically and you should
    /// only use this function in special cases like transferring focus from
    /// other processes. You should use this function before calling
    /// [method`Gtk.Window.present`] or any equivalent function generating
    /// a window map event.
    /// 
    /// This function is only useful on X11, not with other GTK targets.
    @inlinable func set(startupId: UnsafePointer<CChar>!) {
        gtk_window_set_startup_id(window_ptr, startupId)
    
    }

    /// Sets the title of the `GtkWindow`.
    /// 
    /// The title of a window will be displayed in its title bar; on the
    /// X Window System, the title bar is rendered by the window manager
    /// so exactly how the title appears to users may vary according to a
    /// user’s exact configuration. The title should help a user distinguish
    /// this window from other windows they may have open. A good title might
    /// include the application name and current document filename, for example.
    /// 
    /// Passing `nil` does the same as setting the title to an empty string.
    @inlinable func set(title: UnsafePointer<CChar>? = nil) {
        gtk_window_set_title(window_ptr, title)
    
    }

    /// Sets a custom titlebar for `window`.
    /// 
    /// A typical widget used here is [class`Gtk.HeaderBar`], as it
    /// provides various features expected of a titlebar while allowing
    /// the addition of child widgets to it.
    /// 
    /// If you set a custom titlebar, GTK will do its best to convince
    /// the window manager not to put its own titlebar on the window.
    /// Depending on the system, this function may not work for a window
    /// that is already visible, so you set the titlebar before calling
    /// [method`Gtk.Widget.show`].
    @inlinable func set(titlebar: WidgetRef? = nil) {
        gtk_window_set_titlebar(window_ptr, titlebar?.widget_ptr)
    
    }
    /// Sets a custom titlebar for `window`.
    /// 
    /// A typical widget used here is [class`Gtk.HeaderBar`], as it
    /// provides various features expected of a titlebar while allowing
    /// the addition of child widgets to it.
    /// 
    /// If you set a custom titlebar, GTK will do its best to convince
    /// the window manager not to put its own titlebar on the window.
    /// Depending on the system, this function may not work for a window
    /// that is already visible, so you set the titlebar before calling
    /// [method`Gtk.Widget.show`].
    @inlinable func set<WidgetT: WidgetProtocol>(titlebar: WidgetT?) {
        gtk_window_set_titlebar(window_ptr, titlebar?.widget_ptr)
    
    }

    /// Dialog windows should be set transient for the main application
    /// window they were spawned from. This allows window managers to e.g.
    /// keep the dialog on top of the main window, or center the dialog
    /// over the main window. [ctor`Gtk.Dialog.new_with_buttons`] and other
    /// convenience functions in GTK will sometimes call
    /// `gtk_window_set_transient_for()` on your behalf.
    /// 
    /// Passing `nil` for `parent` unsets the current transient window.
    /// 
    /// On Windows, this function puts the child window on top of the parent,
    /// much as the window manager would have done on X.
    @inlinable func setTransientFor(parent: WindowRef? = nil) {
        gtk_window_set_transient_for(window_ptr, parent?.window_ptr)
    
    }
    /// Dialog windows should be set transient for the main application
    /// window they were spawned from. This allows window managers to e.g.
    /// keep the dialog on top of the main window, or center the dialog
    /// over the main window. [ctor`Gtk.Dialog.new_with_buttons`] and other
    /// convenience functions in GTK will sometimes call
    /// `gtk_window_set_transient_for()` on your behalf.
    /// 
    /// Passing `nil` for `parent` unsets the current transient window.
    /// 
    /// On Windows, this function puts the child window on top of the parent,
    /// much as the window manager would have done on X.
    @inlinable func setTransientFor<WindowT: WindowProtocol>(parent: WindowT?) {
        gtk_window_set_transient_for(window_ptr, parent?.window_ptr)
    
    }

    /// Asks to remove the fullscreen state for `window`, and return to
    /// its previous state.
    /// 
    /// Note that you shouldn’t assume the window is definitely not
    /// fullscreen afterward, because other entities (e.g. the user or
    /// window manager could fullscreen it again, and not all window
    /// managers honor requests to unfullscreen windows; normally the
    /// window will end up restored to its normal state. Just don’t
    /// write code that crashes if not.
    /// 
    /// You can track the result of this operation via the
    /// [property`Gdk.Toplevel:state`] property, or by listening to
    /// notifications of the [property`Gtk.Window:fullscreened`] property.
    @inlinable func unfullscreen() {
        gtk_window_unfullscreen(window_ptr)
    
    }

    /// Asks to unmaximize `window`.
    /// 
    /// Note that you shouldn’t assume the window is definitely unmaximized
    /// afterward, because other entities (e.g. the user or window manager
    /// maximize it again, and not all window managers honor requests to
    /// unmaximize.
    /// 
    /// You can track the result of this operation via the
    /// [property`Gdk.Toplevel:state`] property, or by listening to
    /// notifications on the [property`Gtk.Window:maximized`] property.
    @inlinable func unmaximize() {
        gtk_window_unmaximize(window_ptr)
    
    }

    /// Asks to unminimize the specified `window`.
    /// 
    /// Note that you shouldn’t assume the window is definitely unminimized
    /// afterward, because the windowing system might not support this
    /// functionality; other entities (e.g. the user or the window manager
    /// could minimize it again, or there may not be a window manager in
    /// which case minimization isn’t possible, etc.
    /// 
    /// You can track result of this operation via the
    /// [property`Gdk.Toplevel:state`] property.
    @inlinable func unminimize() {
        gtk_window_unminimize(window_ptr)
    
    }

    /// Runs a page setup dialog, letting the user modify the values from
    /// `page_setup`. If the user cancels the dialog, the returned `GtkPageSetup`
    /// is identical to the passed in `page_setup`, otherwise it contains the
    /// modifications done in the dialog.
    /// 
    /// Note that this function may use a recursive mainloop to show the page
    /// setup dialog. See `gtk_print_run_page_setup_dialog_async()` if this is
    /// a problem.
    @inlinable func printRunPageSetupDialog<PrintSettingsT: PrintSettingsProtocol>(pageSetup: PageSetupRef? = nil, settings: PrintSettingsT) -> PageSetupRef! {
        let rv = PageSetupRef(gconstpointer: gconstpointer(gtk_print_run_page_setup_dialog(window_ptr, pageSetup?.page_setup_ptr, settings.print_settings_ptr)))
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
    @inlinable func printRunPageSetupDialog<PageSetupT: PageSetupProtocol, PrintSettingsT: PrintSettingsProtocol>(pageSetup: PageSetupT?, settings: PrintSettingsT) -> PageSetupRef! {
        let rv = PageSetupRef(gconstpointer: gconstpointer(gtk_print_run_page_setup_dialog(window_ptr, pageSetup?.page_setup_ptr, settings.print_settings_ptr)))
        return rv
    }

    /// Runs a page setup dialog, letting the user modify the values from `page_setup`.
    /// 
    /// In contrast to `gtk_print_run_page_setup_dialog()`, this function  returns after
    /// showing the page setup dialog on platforms that support this, and calls `done_cb`
    /// from a signal handler for the `response` signal of the dialog.
    @inlinable func printRunPageSetupDialogAsync<PrintSettingsT: PrintSettingsProtocol>(pageSetup: PageSetupRef? = nil, settings: PrintSettingsT, doneCb: GtkPageSetupDoneFunc?, data: gpointer! = nil) {
        gtk_print_run_page_setup_dialog_async(window_ptr, pageSetup?.page_setup_ptr, settings.print_settings_ptr, doneCb, data)
    
    }
    /// Runs a page setup dialog, letting the user modify the values from `page_setup`.
    /// 
    /// In contrast to `gtk_print_run_page_setup_dialog()`, this function  returns after
    /// showing the page setup dialog on platforms that support this, and calls `done_cb`
    /// from a signal handler for the `response` signal of the dialog.
    @inlinable func printRunPageSetupDialogAsync<PageSetupT: PageSetupProtocol, PrintSettingsT: PrintSettingsProtocol>(pageSetup: PageSetupT?, settings: PrintSettingsT, doneCb: GtkPageSetupDoneFunc?, data: gpointer! = nil) {
        gtk_print_run_page_setup_dialog_async(window_ptr, pageSetup?.page_setup_ptr, settings.print_settings_ptr, doneCb, data)
    
    }


    // *** showAboutDialog() is not available because it has a varargs (...) parameter!


    /// This function launches the default application for showing
    /// a given uri, or shows an error dialog if that fails.
    @inlinable func show(uri: UnsafePointer<CChar>!, timestamp: guint32) {
        gtk_show_uri(window_ptr, uri, timestamp)
    
    }

    /// This function launches the default application for showing
    /// a given uri.
    /// 
    /// The `callback` will be called when the launch is completed.
    /// It should call `gtk_show_uri_full_finish()` to obtain the result.
    /// 
    /// This is the recommended call to be used as it passes information
    /// necessary for sandbox helpers to parent their dialogs properly.
    @inlinable func showUriFull(uri: UnsafePointer<CChar>!, timestamp: guint32, cancellable: GIO.CancellableRef? = nil, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        gtk_show_uri_full(window_ptr, uri, timestamp, cancellable?.cancellable_ptr, callback, userData)
    
    }
    /// This function launches the default application for showing
    /// a given uri.
    /// 
    /// The `callback` will be called when the launch is completed.
    /// It should call `gtk_show_uri_full_finish()` to obtain the result.
    /// 
    /// This is the recommended call to be used as it passes information
    /// necessary for sandbox helpers to parent their dialogs properly.
    @inlinable func showUriFull<CancellableT: GIO.CancellableProtocol>(uri: UnsafePointer<CChar>!, timestamp: guint32, cancellable: CancellableT?, callback: GAsyncReadyCallback? = nil, userData: gpointer! = nil) {
        gtk_show_uri_full(window_ptr, uri, timestamp, cancellable?.cancellable_ptr, callback, userData)
    
    }

    /// Finishes the `gtk_show_uri()` call and returns the result
    /// of the operation.
    @inlinable func showUriFullFinish<AsyncResultT: GIO.AsyncResultProtocol>(result: AsyncResultT) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((gtk_show_uri_full_finish(window_ptr, result.async_result_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }
    /// The `GtkApplication` associated with the window.
    /// 
    /// The application will be kept alive for at least as long as it
    /// has any windows associated with it (see `g_application_hold()`
    /// for a way to keep it alive without windows).
    /// 
    /// Normally, the connection between the application and the window
    /// will remain until the window is destroyed, but you can explicitly
    /// remove it by setting the :application property to `nil`.
    @inlinable var application: ApplicationRef! {
        /// Gets the `GtkApplication` associated with the window.
        get {
            let rv = ApplicationRef(gconstpointer: gconstpointer(gtk_window_get_application(window_ptr)))
            return rv
        }
        /// Sets or unsets the `GtkApplication` associated with the window.
        /// 
        /// The application will be kept alive for at least as long as it has
        /// any windows associated with it (see `g_application_hold()` for a way
        /// to keep it alive without windows).
        /// 
        /// Normally, the connection between the application and the window will
        /// remain until the window is destroyed, but you can explicitly remove
        /// it by setting the `application` to `nil`.
        /// 
        /// This is equivalent to calling [method`Gtk.Application.remove_window`]
        /// and/or [method`Gtk.Application.add_window`] on the old/new applications
        /// as relevant.
        nonmutating set {
            gtk_window_set_application(window_ptr, UnsafeMutablePointer<GtkApplication>(newValue?.application_ptr))
        }
    }

    /// The child widget.
    @inlinable var child: WidgetRef! {
        /// Gets the child widget of `window`.
        get {
            guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_window_get_child(window_ptr))) else { return nil }
            return rv
        }
        /// Sets the child widget of `window`.
        nonmutating set {
            gtk_window_set_child(window_ptr, UnsafeMutablePointer<GtkWidget>(newValue?.widget_ptr))
        }
    }

    /// Whether the window should have a frame (also known as *decorations*).
    @inlinable var decorated: Bool {
        /// Returns whether the window has been set to have decorations.
        get {
            let rv = ((gtk_window_get_decorated(window_ptr)) != 0)
            return rv
        }
        /// Sets whether the window should be decorated.
        /// 
        /// By default, windows are decorated with a title bar, resize
        /// controls, etc. Some window managers allow GTK to disable these
        /// decorations, creating a borderless window. If you set the decorated
        /// property to `false` using this function, GTK will do its best to
        /// convince the window manager not to decorate the window. Depending on
        /// the system, this function may not have any effect when called on a
        /// window that is already visible, so you should call it before calling
        /// [method`Gtk.Widget.show`].
        /// 
        /// On Windows, this function always works, since there’s no window manager
        /// policy involved.
        nonmutating set {
            gtk_window_set_decorated(window_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Returns the default widget for `window`.
    @inlinable var defaultWidget: WidgetRef! {
        /// Returns the default widget for `window`.
        get {
            guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_window_get_default_widget(window_ptr))) else { return nil }
            return rv
        }
        /// Sets the default widget.
        /// 
        /// The default widget is the widget that is activated when the user
        /// presses Enter in a dialog (for example).
        nonmutating set {
            gtk_window_set_default_widget(window_ptr, UnsafeMutablePointer<GtkWidget>(newValue?.widget_ptr))
        }
    }

    /// Whether the window frame should have a close button.
    @inlinable var deletable: Bool {
        /// Returns whether the window has been set to have a close button.
        get {
            let rv = ((gtk_window_get_deletable(window_ptr)) != 0)
            return rv
        }
        /// Sets whether the window should be deletable.
        /// 
        /// By default, windows have a close button in the window frame.
        /// Some  window managers allow GTK to disable this button. If you
        /// set the deletable property to `false` using this function, GTK
        /// will do its best to convince the window manager not to show a
        /// close button. Depending on the system, this function may not
        /// have any effect when called on a window that is already visible,
        /// so you should call it before calling [method`Gtk.Widget.show`].
        /// 
        /// On Windows, this function always works, since there’s no window
        /// manager policy involved.
        nonmutating set {
            gtk_window_set_deletable(window_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Returns whether the window will be destroyed with its transient parent.
    @inlinable var destroyWithParent: Bool {
        /// Returns whether the window will be destroyed with its transient parent.
        get {
            let rv = ((gtk_window_get_destroy_with_parent(window_ptr)) != 0)
            return rv
        }
        /// If `setting` is `true`, then destroying the transient parent of `window`
        /// will also destroy `window` itself.
        /// 
        /// This is useful for dialogs that shouldn’t persist beyond the lifetime
        /// of the main window they are associated with, for example.
        nonmutating set {
            gtk_window_set_destroy_with_parent(window_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Retrieves the current focused widget within the window.
    /// 
    /// Note that this is the widget that would have the focus
    /// if the toplevel window focused; if the toplevel window
    /// is not focused then `gtk_widget_has_focus (widget)` will
    /// not be `true` for the widget.
    @inlinable var focus: WidgetRef! {
        /// Retrieves the current focused widget within the window.
        /// 
        /// Note that this is the widget that would have the focus
        /// if the toplevel window focused; if the toplevel window
        /// is not focused then `gtk_widget_has_focus (widget)` will
        /// not be `true` for the widget.
        get {
            guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_window_get_focus(window_ptr))) else { return nil }
            return rv
        }
        /// Sets the focus widget.
        /// 
        /// If `focus` is not the current focus widget, and is focusable,
        /// sets it as the focus widget for the window. If `focus` is `nil`,
        /// unsets the focus widget for this window. To set the focus to a
        /// particular widget in the toplevel, it is usually more convenient
        /// to use [method`Gtk.Widget.grab_focus`] instead of this function.
        nonmutating set {
            gtk_window_set_focus(window_ptr, UnsafeMutablePointer<GtkWidget>(newValue?.widget_ptr))
        }
    }

    /// Gets whether “focus rectangles” are supposed to be visible.
    @inlinable var focusVisible: Bool {
        /// Gets whether “focus rectangles” are supposed to be visible.
        get {
            let rv = ((gtk_window_get_focus_visible(window_ptr)) != 0)
            return rv
        }
        /// Sets whether “focus rectangles” are supposed to be visible.
        nonmutating set {
            gtk_window_set_focus_visible(window_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Returns the group for `window`.
    /// 
    /// If the window has no group, then the default group is returned.
    @inlinable var group: WindowGroupRef! {
        /// Returns the group for `window`.
        /// 
        /// If the window has no group, then the default group is returned.
        get {
            let rv = WindowGroupRef(gconstpointer: gconstpointer(gtk_window_get_group(window_ptr)))
            return rv
        }
    }

    /// Returns whether this window reacts to F10 key presses by
    /// activating a menubar it contains.
    @inlinable var handleMenubarAccel: Bool {
        /// Returns whether this window reacts to F10 key presses by
        /// activating a menubar it contains.
        get {
            let rv = ((gtk_window_get_handle_menubar_accel(window_ptr)) != 0)
            return rv
        }
        /// Sets whether this window should react to F10 key presses
        /// by activating a menubar it contains.
        nonmutating set {
            gtk_window_set_handle_menubar_accel(window_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Returns whether the window will be hidden when the close button is clicked.
    @inlinable var hideOnClose: Bool {
        /// Returns whether the window will be hidden when the close button is clicked.
        get {
            let rv = ((gtk_window_get_hide_on_close(window_ptr)) != 0)
            return rv
        }
        /// If `setting` is `true`, then clicking the close button on the window
        /// will not destroy it, but only hide it.
        nonmutating set {
            gtk_window_set_hide_on_close(window_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Returns the name of the themed icon for the window.
    @inlinable var iconName: String! {
        /// Returns the name of the themed icon for the window.
        get {
            let rv = gtk_window_get_icon_name(window_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the icon for the window from a named themed icon.
        /// 
        /// See the docs for [class`Gtk.IconTheme`] for more details.
        /// On some platforms, the window icon is not used at all.
        /// 
        /// Note that this has nothing to do with the WM_ICON_NAME
        /// property which is mentioned in the ICCCM.
        nonmutating set {
            gtk_window_set_icon_name(window_ptr, newValue)
        }
    }

    /// Returns whether the window is part of the current active toplevel.
    /// 
    /// The active toplevel is the window receiving keystrokes.
    /// 
    /// The return value is `true` if the window is active toplevel itself.
    /// You might use this function if you wanted to draw a widget
    /// differently in an active window from a widget in an inactive window.
    @inlinable var isActive: Bool {
        /// Returns whether the window is part of the current active toplevel.
        /// 
        /// The active toplevel is the window receiving keystrokes.
        /// 
        /// The return value is `true` if the window is active toplevel itself.
        /// You might use this function if you wanted to draw a widget
        /// differently in an active window from a widget in an inactive window.
        get {
            let rv = ((gtk_window_is_active(window_ptr)) != 0)
            return rv
        }
    }

    /// Retrieves the current fullscreen state of `window`.
    /// 
    /// Note that since fullscreening is ultimately handled by the window
    /// manager and happens asynchronously to an application request, you
    /// shouldn’t assume the return value of this function changing
    /// immediately (or at all), as an effect of calling
    /// [method`Gtk.Window.fullscreen`] or [method`Gtk.Window.unfullscreen`].
    /// 
    /// If the window isn't yet mapped, the value returned will whether the
    /// initial requested state is fullscreen.
    @inlinable var isFullscreen: Bool {
        /// Retrieves the current fullscreen state of `window`.
        /// 
        /// Note that since fullscreening is ultimately handled by the window
        /// manager and happens asynchronously to an application request, you
        /// shouldn’t assume the return value of this function changing
        /// immediately (or at all), as an effect of calling
        /// [method`Gtk.Window.fullscreen`] or [method`Gtk.Window.unfullscreen`].
        /// 
        /// If the window isn't yet mapped, the value returned will whether the
        /// initial requested state is fullscreen.
        get {
            let rv = ((gtk_window_is_fullscreen(window_ptr)) != 0)
            return rv
        }
    }

    /// Retrieves the current maximized state of `window`.
    /// 
    /// Note that since maximization is ultimately handled by the window
    /// manager and happens asynchronously to an application request, you
    /// shouldn’t assume the return value of this function changing
    /// immediately (or at all), as an effect of calling
    /// [method`Gtk.Window.maximize`] or [method`Gtk.Window.unmaximize`].
    /// 
    /// If the window isn't yet mapped, the value returned will whether the
    /// initial requested state is maximized.
    @inlinable var isMaximized: Bool {
        /// Retrieves the current maximized state of `window`.
        /// 
        /// Note that since maximization is ultimately handled by the window
        /// manager and happens asynchronously to an application request, you
        /// shouldn’t assume the return value of this function changing
        /// immediately (or at all), as an effect of calling
        /// [method`Gtk.Window.maximize`] or [method`Gtk.Window.unmaximize`].
        /// 
        /// If the window isn't yet mapped, the value returned will whether the
        /// initial requested state is maximized.
        get {
            let rv = ((gtk_window_is_maximized(window_ptr)) != 0)
            return rv
        }
    }

    /// Gets whether mnemonics are supposed to be visible.
    @inlinable var mnemonicsVisible: Bool {
        /// Gets whether mnemonics are supposed to be visible.
        get {
            let rv = ((gtk_window_get_mnemonics_visible(window_ptr)) != 0)
            return rv
        }
        /// Sets whether mnemonics are supposed to be visible.
        nonmutating set {
            gtk_window_set_mnemonics_visible(window_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// If `true`, the window is modal.
    @inlinable var modal: Bool {
        /// Returns whether the window is modal.
        get {
            let rv = ((gtk_window_get_modal(window_ptr)) != 0)
            return rv
        }
        /// Sets a window modal or non-modal.
        /// 
        /// Modal windows prevent interaction with other windows in the same
        /// application. To keep modal dialogs on top of main application windows,
        /// use [method`Gtk.Window.set_transient_for`] to make the dialog transient
        /// for the parent; most window managers will then disallow lowering the
        /// dialog below the parent.
        nonmutating set {
            gtk_window_set_modal(window_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// If `true`, users can resize the window.
    @inlinable var resizable: Bool {
        /// Gets the value set by `gtk_window_set_resizable()`.
        get {
            let rv = ((gtk_window_get_resizable(window_ptr)) != 0)
            return rv
        }
        /// Sets whether the user can resize a window.
        /// 
        /// Windows are user resizable by default.
        nonmutating set {
            gtk_window_set_resizable(window_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// The title of the window.
    @inlinable var title: String! {
        /// Retrieves the title of the window.
        get {
            let rv = gtk_window_get_title(window_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the title of the `GtkWindow`.
        /// 
        /// The title of a window will be displayed in its title bar; on the
        /// X Window System, the title bar is rendered by the window manager
        /// so exactly how the title appears to users may vary according to a
        /// user’s exact configuration. The title should help a user distinguish
        /// this window from other windows they may have open. A good title might
        /// include the application name and current document filename, for example.
        /// 
        /// Passing `nil` does the same as setting the title to an empty string.
        nonmutating set {
            gtk_window_set_title(window_ptr, newValue)
        }
    }

    /// Returns the custom titlebar that has been set with
    /// `gtk_window_set_titlebar()`.
    @inlinable var titlebar: WidgetRef! {
        /// Returns the custom titlebar that has been set with
        /// `gtk_window_set_titlebar()`.
        get {
            guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_window_get_titlebar(window_ptr))) else { return nil }
            return rv
        }
        /// Sets a custom titlebar for `window`.
        /// 
        /// A typical widget used here is [class`Gtk.HeaderBar`], as it
        /// provides various features expected of a titlebar while allowing
        /// the addition of child widgets to it.
        /// 
        /// If you set a custom titlebar, GTK will do its best to convince
        /// the window manager not to put its own titlebar on the window.
        /// Depending on the system, this function may not work for a window
        /// that is already visible, so you set the titlebar before calling
        /// [method`Gtk.Widget.show`].
        nonmutating set {
            gtk_window_set_titlebar(window_ptr, UnsafeMutablePointer<GtkWidget>(newValue?.widget_ptr))
        }
    }

    /// Fetches the transient parent for this window.
    @inlinable var transientFor: WindowRef! {
        /// Fetches the transient parent for this window.
        get {
            guard let rv = WindowRef(gconstpointer: gconstpointer(gtk_window_get_transient_for(window_ptr))) else { return nil }
            return rv
        }
        /// Dialog windows should be set transient for the main application
        /// window they were spawned from. This allows window managers to e.g.
        /// keep the dialog on top of the main window, or center the dialog
        /// over the main window. [ctor`Gtk.Dialog.new_with_buttons`] and other
        /// convenience functions in GTK will sometimes call
        /// `gtk_window_set_transient_for()` on your behalf.
        /// 
        /// Passing `nil` for `parent` unsets the current transient window.
        /// 
        /// On Windows, this function puts the child window on top of the parent,
        /// much as the window manager would have done on X.
        nonmutating set {
            gtk_window_set_transient_for(window_ptr, window_ptr)
        }
    }

    @inlinable var parentInstance: GtkWidget {
        get {
            let rv = window_ptr.pointee.parent_instance
            return rv
        }
    }

}



// MARK: - WindowControls Class

/// `GtkWindowControls` shows window frame controls.
/// 
/// Typical window frame controls are minimize, maximize and close buttons,
/// and the window icon.
/// 
/// ![An example GtkWindowControls](windowcontrols.png)
/// 
/// `GtkWindowControls` only displays start or end side of the controls (see
/// [property`Gtk.WindowControls:side`]), so it's intended to be always used
/// in pair with another `GtkWindowControls` for the opposite side, for example:
/// 
/// ```xml
/// &lt;object class="GtkBox"&gt;
///   &lt;child&gt;
///     &lt;object class="GtkWindowControls"&gt;
///       &lt;property name="side"&gt;start&lt;/property&gt;
///     &lt;/object&gt;
///   &lt;/child&gt;
/// 
///   ...
/// 
///   &lt;child&gt;
///     &lt;object class="GtkWindowControls"&gt;
///       &lt;property name="side"&gt;end&lt;/property&gt;
///     &lt;/object&gt;
///   &lt;/child&gt;
/// &lt;/object&gt;
/// ```
/// 
/// # CSS nodes
/// 
/// ```
/// windowcontrols
/// ├── [image.icon]
/// ├── [button.minimize]
/// ├── [button.maximize]
/// ╰── [button.close]
/// ```
/// 
/// A `GtkWindowControls`' CSS node is called windowcontrols. It contains
/// subnodes corresponding to each title button. Which of the title buttons
/// exist and where they are placed exactly depends on the desktop environment
/// and [property`Gtk.WindowControls:decoration-layout`] value.
/// 
/// When [property`Gtk.WindowControls:empty`] is `true`, it gets the .empty
/// style class.
/// 
/// # Accessibility
/// 
/// `GtkWindowControls` uses the `GTK_ACCESSIBLE_ROLE_GROUP` role.
///
/// The `WindowControlsProtocol` protocol exposes the methods and properties of an underlying `GtkWindowControls` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `WindowControls`.
/// Alternatively, use `WindowControlsRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol WindowControlsProtocol: WidgetProtocol {
        /// Untyped pointer to the underlying `GtkWindowControls` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkWindowControls` instance.
    var window_controls_ptr: UnsafeMutablePointer<GtkWindowControls>! { get }

    /// Required Initialiser for types conforming to `WindowControlsProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GtkWindowControls` shows window frame controls.
/// 
/// Typical window frame controls are minimize, maximize and close buttons,
/// and the window icon.
/// 
/// ![An example GtkWindowControls](windowcontrols.png)
/// 
/// `GtkWindowControls` only displays start or end side of the controls (see
/// [property`Gtk.WindowControls:side`]), so it's intended to be always used
/// in pair with another `GtkWindowControls` for the opposite side, for example:
/// 
/// ```xml
/// &lt;object class="GtkBox"&gt;
///   &lt;child&gt;
///     &lt;object class="GtkWindowControls"&gt;
///       &lt;property name="side"&gt;start&lt;/property&gt;
///     &lt;/object&gt;
///   &lt;/child&gt;
/// 
///   ...
/// 
///   &lt;child&gt;
///     &lt;object class="GtkWindowControls"&gt;
///       &lt;property name="side"&gt;end&lt;/property&gt;
///     &lt;/object&gt;
///   &lt;/child&gt;
/// &lt;/object&gt;
/// ```
/// 
/// # CSS nodes
/// 
/// ```
/// windowcontrols
/// ├── [image.icon]
/// ├── [button.minimize]
/// ├── [button.maximize]
/// ╰── [button.close]
/// ```
/// 
/// A `GtkWindowControls`' CSS node is called windowcontrols. It contains
/// subnodes corresponding to each title button. Which of the title buttons
/// exist and where they are placed exactly depends on the desktop environment
/// and [property`Gtk.WindowControls:decoration-layout`] value.
/// 
/// When [property`Gtk.WindowControls:empty`] is `true`, it gets the .empty
/// style class.
/// 
/// # Accessibility
/// 
/// `GtkWindowControls` uses the `GTK_ACCESSIBLE_ROLE_GROUP` role.
///
/// The `WindowControlsRef` type acts as a lightweight Swift reference to an underlying `GtkWindowControls` instance.
/// It exposes methods that can operate on this data type through `WindowControlsProtocol` conformance.
/// Use `WindowControlsRef` only as an `unowned` reference to an existing `GtkWindowControls` instance.
///
public struct WindowControlsRef: WindowControlsProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkWindowControls` instance.
    /// For type-safe access, use the generated, typed pointer `window_controls_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension WindowControlsRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkWindowControls>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkWindowControls>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkWindowControls>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkWindowControls>?) {
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

    /// Reference intialiser for a related type that implements `WindowControlsProtocol`
    @inlinable init<T: WindowControlsProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: WindowControlsProtocol>(_ other: T) -> WindowControlsRef { WindowControlsRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowControlsProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowControlsProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowControlsProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowControlsProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowControlsProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkWindowControls`.
    @inlinable init( side: GtkPackType) {
        let rv = gtk_window_controls_new(side)
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// `GtkWindowControls` shows window frame controls.
/// 
/// Typical window frame controls are minimize, maximize and close buttons,
/// and the window icon.
/// 
/// ![An example GtkWindowControls](windowcontrols.png)
/// 
/// `GtkWindowControls` only displays start or end side of the controls (see
/// [property`Gtk.WindowControls:side`]), so it's intended to be always used
/// in pair with another `GtkWindowControls` for the opposite side, for example:
/// 
/// ```xml
/// &lt;object class="GtkBox"&gt;
///   &lt;child&gt;
///     &lt;object class="GtkWindowControls"&gt;
///       &lt;property name="side"&gt;start&lt;/property&gt;
///     &lt;/object&gt;
///   &lt;/child&gt;
/// 
///   ...
/// 
///   &lt;child&gt;
///     &lt;object class="GtkWindowControls"&gt;
///       &lt;property name="side"&gt;end&lt;/property&gt;
///     &lt;/object&gt;
///   &lt;/child&gt;
/// &lt;/object&gt;
/// ```
/// 
/// # CSS nodes
/// 
/// ```
/// windowcontrols
/// ├── [image.icon]
/// ├── [button.minimize]
/// ├── [button.maximize]
/// ╰── [button.close]
/// ```
/// 
/// A `GtkWindowControls`' CSS node is called windowcontrols. It contains
/// subnodes corresponding to each title button. Which of the title buttons
/// exist and where they are placed exactly depends on the desktop environment
/// and [property`Gtk.WindowControls:decoration-layout`] value.
/// 
/// When [property`Gtk.WindowControls:empty`] is `true`, it gets the .empty
/// style class.
/// 
/// # Accessibility
/// 
/// `GtkWindowControls` uses the `GTK_ACCESSIBLE_ROLE_GROUP` role.
///
/// The `WindowControls` type acts as a reference-counted owner of an underlying `GtkWindowControls` instance.
/// It provides the methods that can operate on this data type through `WindowControlsProtocol` conformance.
/// Use `WindowControls` as a strong reference or owner of a `GtkWindowControls` instance.
///
open class WindowControls: Widget, WindowControlsProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `WindowControls` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkWindowControls>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `WindowControls` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkWindowControls>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `WindowControls` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `WindowControls` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `WindowControls` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkWindowControls>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `WindowControls` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkWindowControls>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkWindowControls`.
    /// i.e., ownership is transferred to the `WindowControls` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkWindowControls>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `WindowControlsProtocol`
    /// Will retain `GtkWindowControls`.
    /// - Parameter other: an instance of a related type that implements `WindowControlsProtocol`
    @inlinable public init<T: WindowControlsProtocol>(windowControls other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowControlsProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowControlsProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowControlsProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowControlsProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowControlsProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowControlsProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowControlsProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowControlsProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkWindowControls`.
    @inlinable public init( side: GtkPackType) {
        let rv = gtk_window_controls_new(side)
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum WindowControlsPropertyName: String, PropertyNameProtocol {
    /// Whether the widget or any of its descendents can accept
    /// the input focus.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case canFocus = "can-focus"
    /// Whether the widget can receive pointer events.
    case canTarget = "can-target"
    /// A list of css classes applied to this widget.
    case cssClasses = "css-classes"
    /// The name of this widget in the CSS tree.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case cssName = "css-name"
    /// The cursor used by `widget`.
    case cursor = "cursor"
    /// The decoration layout for window buttons.
    /// 
    /// If this property is not set, the
    /// [property`Gtk.Settings:gtk-decoration-layout`] setting is used.
    case decorationLayout = "decoration-layout"
    /// Whether the widget has any window buttons.
    case empty = "empty"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    case focusOnClick = "focus-on-click"
    /// Whether this widget itself will accept the input focus.
    case focusable = "focusable"
    /// How to distribute horizontal space if widget gets extra space.
    case halign = "halign"
    /// Whether the widget is the default widget.
    case hasDefault = "has-default"
    /// Whether the widget has the input focus.
    case hasFocus = "has-focus"
    /// Enables or disables the emission of the `query-tooltip` signal on `widget`.
    /// 
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using [signal`Gtk.Widget::query-tooltip`] to
    /// determine whether it will provide a tooltip or not.
    case hasTooltip = "has-tooltip"
    /// Override for height request of the widget.
    /// 
    /// If this is -1, the natural request will be used.
    case heightRequest = "height-request"
    /// Whether to expand horizontally.
    case hexpand = "hexpand"
    /// Whether to use the `hexpand` property.
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
    /// [method`Gtk.Widget.set_size_request`] for example.
    case marginBottom = "margin-bottom"
    /// Margin on end of widget, horizontally.
    /// 
    /// This property supports left-to-right and right-to-left text
    /// directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case marginEnd = "margin-end"
    /// Margin on start of widget, horizontally.
    /// 
    /// This property supports left-to-right and right-to-left text
    /// directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case marginStart = "margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case marginTop = "margin-top"
    /// The name of the widget.
    case name = "name"
    /// The requested opacity of the widget.
    case opacity = "opacity"
    /// How content outside the widget's content area is treated.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case overflow = "overflow"
    /// The parent widget of this widget.
    case parent = "parent"
    /// Whether the widget will receive the default action when it is focused.
    case receivesDefault = "receives-default"
    /// The `GtkRoot` widget of the widget tree containing this widget.
    /// 
    /// This will be `nil` if the widget is not contained in a root widget.
    case root = "root"
    /// The scale factor of the widget.
    case scaleFactor = "scale-factor"
    /// Whether the widget responds to input.
    case sensitive = "sensitive"
    /// Whether the widget shows start or end side of the decoration layout.
    /// 
    /// See [property`Gtk.WindowControls:decoration_layout`].
    case side = "side"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with Pango markup.
    /// 
    /// Also see [method`Gtk.Tooltip.set_markup`].
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`:
    /// [property`Gtk.Widget:has-tooltip`] will automatically be set to `true`
    /// and there will be taken care of [signal`Gtk.Widget::query-tooltip`] in
    /// the default signal handler.
    /// 
    /// Note that if both [property`Gtk.Widget:tooltip-text`] and
    /// [property`Gtk.Widget:tooltip-markup`] are set, the last one wins.
    case tooltipMarkup = "tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see [method`Gtk.Tooltip.set_text`].
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`:
    /// [property`Gtk.Widget:has-tooltip`] will automatically be set to `true`
    /// and there will be taken care of [signal`Gtk.Widget::query-tooltip`] in
    /// the default signal handler.
    /// 
    /// Note that if both [property`Gtk.Widget:tooltip-text`] and
    /// [property`Gtk.Widget:tooltip-markup`] are set, the last one wins.
    case tooltipText = "tooltip-text"
    /// How to distribute vertical space if widget gets extra space.
    case valign = "valign"
    /// Whether to expand vertically.
    case vexpand = "vexpand"
    /// Whether to use the `vexpand` property.
    case vexpandSet = "vexpand-set"
    /// Whether the widget is visible.
    case visible = "visible"
    /// Override for width request of the widget.
    /// 
    /// If this is -1, the natural request will be used.
    case widthRequest = "width-request"
}

public extension WindowControlsProtocol {
    /// Bind a `WindowControlsPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: WindowControlsPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a WindowControls property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: WindowControlsPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a WindowControls property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: WindowControlsPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum WindowControlsSignalName: String, SignalNameProtocol {
    /// Signals that all holders of a reference to the widget should release
    /// the reference that they hold.
    /// 
    /// May result in finalization of the widget if all references are released.
    /// 
    /// This signal is not suitable for saving widget state.
    case destroy = "destroy"
    /// Emitted when the text direction of a widget changes.
    case directionChanged = "direction-changed"
    /// Emitted when `widget` is hidden.
    case hide = "hide"
    /// Emitted if keyboard navigation fails.
    /// 
    /// See [method`Gtk.Widget.keynav_failed`] for details.
    case keynavFailed = "keynav-failed"
    /// Emitted when `widget` is going to be mapped.
    /// 
    /// A widget is mapped when the widget is visible (which is controlled with
    /// [property`Gtk.Widget:visible`]) and all its parents up to the toplevel widget
    /// are also visible.
    /// 
    /// The `map` signal can be used to determine whether a widget will be drawn,
    /// for instance it can resume an animation that was stopped during the
    /// emission of [signal`Gtk.Widget::unmap`].
    case map = "map"
    /// Emitted when a widget is activated via a mnemonic.
    /// 
    /// The default handler for this signal activates `widget` if `group_cycling`
    /// is `false`, or just makes `widget` grab focus if `group_cycling` is `true`.
    case mnemonicActivate = "mnemonic-activate"
    /// Emitted when the focus is moved.
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// Emitted when the widgets tooltip is about to be shown.
    /// 
    /// This happens when the [property`Gtk.Widget:has-tooltip`] property
    /// is `true` and the hover timeout has expired with the cursor hovering
    /// "above" `widget`; or emitted when `widget` got focus in keyboard mode.
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
    /// Emitted when `widget` is associated with a `GdkSurface`.
    /// 
    /// This means that [method`Gtk.Widget.realize`] has been called
    /// or the widget has been mapped (that is, it is going to be drawn).
    case realize = "realize"
    /// Emitted when `widget` is shown.
    case show = "show"
    /// Emitted when the widget state changes.
    /// 
    /// See [method`Gtk.Widget.get_state_flags`].
    case stateFlagsChanged = "state-flags-changed"
    /// Emitted when `widget` is going to be unmapped.
    /// 
    /// A widget is unmapped when either it or any of its parents up to the
    /// toplevel widget have been set as hidden.
    /// 
    /// As `unmap` indicates that a widget will not be shown any longer,
    /// it can be used to, for example, stop an animation on the widget.
    case unmap = "unmap"
    /// Emitted when the `GdkSurface` associated with `widget` is destroyed.
    /// 
    /// This means that [method`Gtk.Widget.unrealize`] has been called
    /// or the widget has been unmapped (that is, it is going to be hidden).
    case unrealize = "unrealize"
    /// Whether the widget or any of its descendents can accept
    /// the input focus.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyCanFocus = "notify::can-focus"
    /// Whether the widget can receive pointer events.
    case notifyCanTarget = "notify::can-target"
    /// A list of css classes applied to this widget.
    case notifyCssClasses = "notify::css-classes"
    /// The name of this widget in the CSS tree.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyCssName = "notify::css-name"
    /// The cursor used by `widget`.
    case notifyCursor = "notify::cursor"
    /// The decoration layout for window buttons.
    /// 
    /// If this property is not set, the
    /// [property`Gtk.Settings:gtk-decoration-layout`] setting is used.
    case notifyDecorationLayout = "notify::decoration-layout"
    /// Whether the widget has any window buttons.
    case notifyEmpty = "notify::empty"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    case notifyFocusOnClick = "notify::focus-on-click"
    /// Whether this widget itself will accept the input focus.
    case notifyFocusable = "notify::focusable"
    /// How to distribute horizontal space if widget gets extra space.
    case notifyHalign = "notify::halign"
    /// Whether the widget is the default widget.
    case notifyHasDefault = "notify::has-default"
    /// Whether the widget has the input focus.
    case notifyHasFocus = "notify::has-focus"
    /// Enables or disables the emission of the `query-tooltip` signal on `widget`.
    /// 
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using [signal`Gtk.Widget::query-tooltip`] to
    /// determine whether it will provide a tooltip or not.
    case notifyHasTooltip = "notify::has-tooltip"
    /// Override for height request of the widget.
    /// 
    /// If this is -1, the natural request will be used.
    case notifyHeightRequest = "notify::height-request"
    /// Whether to expand horizontally.
    case notifyHexpand = "notify::hexpand"
    /// Whether to use the `hexpand` property.
    case notifyHexpandSet = "notify::hexpand-set"
    /// The `GtkLayoutManager` instance to use to compute the preferred size
    /// of the widget, and allocate its children.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyLayoutManager = "notify::layout-manager"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case notifyMarginBottom = "notify::margin-bottom"
    /// Margin on end of widget, horizontally.
    /// 
    /// This property supports left-to-right and right-to-left text
    /// directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case notifyMarginEnd = "notify::margin-end"
    /// Margin on start of widget, horizontally.
    /// 
    /// This property supports left-to-right and right-to-left text
    /// directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case notifyMarginStart = "notify::margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case notifyMarginTop = "notify::margin-top"
    /// The name of the widget.
    case notifyName = "notify::name"
    /// The requested opacity of the widget.
    case notifyOpacity = "notify::opacity"
    /// How content outside the widget's content area is treated.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyOverflow = "notify::overflow"
    /// The parent widget of this widget.
    case notifyParent = "notify::parent"
    /// Whether the widget will receive the default action when it is focused.
    case notifyReceivesDefault = "notify::receives-default"
    /// The `GtkRoot` widget of the widget tree containing this widget.
    /// 
    /// This will be `nil` if the widget is not contained in a root widget.
    case notifyRoot = "notify::root"
    /// The scale factor of the widget.
    case notifyScaleFactor = "notify::scale-factor"
    /// Whether the widget responds to input.
    case notifySensitive = "notify::sensitive"
    /// Whether the widget shows start or end side of the decoration layout.
    /// 
    /// See [property`Gtk.WindowControls:decoration_layout`].
    case notifySide = "notify::side"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with Pango markup.
    /// 
    /// Also see [method`Gtk.Tooltip.set_markup`].
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`:
    /// [property`Gtk.Widget:has-tooltip`] will automatically be set to `true`
    /// and there will be taken care of [signal`Gtk.Widget::query-tooltip`] in
    /// the default signal handler.
    /// 
    /// Note that if both [property`Gtk.Widget:tooltip-text`] and
    /// [property`Gtk.Widget:tooltip-markup`] are set, the last one wins.
    case notifyTooltipMarkup = "notify::tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see [method`Gtk.Tooltip.set_text`].
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`:
    /// [property`Gtk.Widget:has-tooltip`] will automatically be set to `true`
    /// and there will be taken care of [signal`Gtk.Widget::query-tooltip`] in
    /// the default signal handler.
    /// 
    /// Note that if both [property`Gtk.Widget:tooltip-text`] and
    /// [property`Gtk.Widget:tooltip-markup`] are set, the last one wins.
    case notifyTooltipText = "notify::tooltip-text"
    /// How to distribute vertical space if widget gets extra space.
    case notifyValign = "notify::valign"
    /// Whether to expand vertically.
    case notifyVexpand = "notify::vexpand"
    /// Whether to use the `vexpand` property.
    case notifyVexpandSet = "notify::vexpand-set"
    /// Whether the widget is visible.
    case notifyVisible = "notify::visible"
    /// Override for width request of the widget.
    /// 
    /// If this is -1, the natural request will be used.
    case notifyWidthRequest = "notify::width-request"
}

// MARK: WindowControls has no signals
// MARK: WindowControls Class: WindowControlsProtocol extension (methods and fields)
public extension WindowControlsProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkWindowControls` instance.
    @inlinable var window_controls_ptr: UnsafeMutablePointer<GtkWindowControls>! { return ptr?.assumingMemoryBound(to: GtkWindowControls.self) }

    /// Gets the decoration layout of this `GtkWindowControls`.
    @inlinable func getDecorationLayout() -> String! {
        let rv = gtk_window_controls_get_decoration_layout(window_controls_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets whether the widget has any window buttons.
    @inlinable func getEmpty() -> Bool {
        let rv = ((gtk_window_controls_get_empty(window_controls_ptr)) != 0)
        return rv
    }

    /// Gets the side to which this `GtkWindowControls` instance belongs.
    @inlinable func getSide() -> GtkPackType {
        let rv = gtk_window_controls_get_side(window_controls_ptr)
        return rv
    }

    /// Sets the decoration layout for the title buttons.
    /// 
    /// This overrides the [property`Gtk.Settings:gtk-decoration-layout`]
    /// setting.
    /// 
    /// The format of the string is button names, separated by commas.
    /// A colon separates the buttons that should appear on the left
    /// from those on the right. Recognized button names are minimize,
    /// maximize, close and icon (the window icon).
    /// 
    /// For example, “icon:minimize,maximize,close” specifies a icon
    /// on the left, and minimize, maximize and close buttons on the right.
    /// 
    /// If [property`Gtk.WindowControls:side`] value is `GTK_PACK_START`, `self`
    /// will display the part before the colon, otherwise after that.
    @inlinable func setDecoration(layout: UnsafePointer<CChar>? = nil) {
        gtk_window_controls_set_decoration_layout(window_controls_ptr, layout)
    
    }

    /// Determines which part of decoration layout the `GtkWindowControls` uses.
    /// 
    /// See [property`Gtk.WindowControls:decoration-layout`].
    @inlinable func set(side: GtkPackType) {
        gtk_window_controls_set_side(window_controls_ptr, side)
    
    }
    /// Gets the decoration layout of this `GtkWindowControls`.
    @inlinable var decorationLayout: String! {
        /// Gets the decoration layout of this `GtkWindowControls`.
        get {
            let rv = gtk_window_controls_get_decoration_layout(window_controls_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the decoration layout for the title buttons.
        /// 
        /// This overrides the [property`Gtk.Settings:gtk-decoration-layout`]
        /// setting.
        /// 
        /// The format of the string is button names, separated by commas.
        /// A colon separates the buttons that should appear on the left
        /// from those on the right. Recognized button names are minimize,
        /// maximize, close and icon (the window icon).
        /// 
        /// For example, “icon:minimize,maximize,close” specifies a icon
        /// on the left, and minimize, maximize and close buttons on the right.
        /// 
        /// If [property`Gtk.WindowControls:side`] value is `GTK_PACK_START`, `self`
        /// will display the part before the colon, otherwise after that.
        nonmutating set {
            gtk_window_controls_set_decoration_layout(window_controls_ptr, newValue)
        }
    }

    /// Whether the widget has any window buttons.
    @inlinable var empty: Bool {
        /// Gets whether the widget has any window buttons.
        get {
            let rv = ((gtk_window_controls_get_empty(window_controls_ptr)) != 0)
            return rv
        }
    }

    /// Whether the widget shows start or end side of the decoration layout.
    /// 
    /// See [property`Gtk.WindowControls:decoration_layout`].
    @inlinable var side: GtkPackType {
        /// Gets the side to which this `GtkWindowControls` instance belongs.
        get {
            let rv = gtk_window_controls_get_side(window_controls_ptr)
            return rv
        }
        /// Determines which part of decoration layout the `GtkWindowControls` uses.
        /// 
        /// See [property`Gtk.WindowControls:decoration-layout`].
        nonmutating set {
            gtk_window_controls_set_side(window_controls_ptr, newValue)
        }
    }


}



// MARK: - WindowGroup Class

/// `GtkWindowGroup` makes group of windows behave like separate applications.
/// 
/// It achieves this by limiting the effect of GTK grabs and modality
/// to windows in the same group.
/// 
/// A window can be a member in at most one window group at a time.
/// Windows that have not been explicitly assigned to a group are
/// implicitly treated like windows of the default window group.
/// 
/// `GtkWindowGroup` objects are referenced by each window in the group,
/// so once you have added all windows to a `GtkWindowGroup`, you can drop
/// the initial reference to the window group with `g_object_unref()`. If the
/// windows in the window group are subsequently destroyed, then they will
/// be removed from the window group and drop their references on the window
/// group; when all window have been removed, the window group will be
/// freed.
///
/// The `WindowGroupProtocol` protocol exposes the methods and properties of an underlying `GtkWindowGroup` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `WindowGroup`.
/// Alternatively, use `WindowGroupRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol WindowGroupProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `GtkWindowGroup` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkWindowGroup` instance.
    var window_group_ptr: UnsafeMutablePointer<GtkWindowGroup>! { get }

    /// Required Initialiser for types conforming to `WindowGroupProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GtkWindowGroup` makes group of windows behave like separate applications.
/// 
/// It achieves this by limiting the effect of GTK grabs and modality
/// to windows in the same group.
/// 
/// A window can be a member in at most one window group at a time.
/// Windows that have not been explicitly assigned to a group are
/// implicitly treated like windows of the default window group.
/// 
/// `GtkWindowGroup` objects are referenced by each window in the group,
/// so once you have added all windows to a `GtkWindowGroup`, you can drop
/// the initial reference to the window group with `g_object_unref()`. If the
/// windows in the window group are subsequently destroyed, then they will
/// be removed from the window group and drop their references on the window
/// group; when all window have been removed, the window group will be
/// freed.
///
/// The `WindowGroupRef` type acts as a lightweight Swift reference to an underlying `GtkWindowGroup` instance.
/// It exposes methods that can operate on this data type through `WindowGroupProtocol` conformance.
/// Use `WindowGroupRef` only as an `unowned` reference to an existing `GtkWindowGroup` instance.
///
public struct WindowGroupRef: WindowGroupProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkWindowGroup` instance.
    /// For type-safe access, use the generated, typed pointer `window_group_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension WindowGroupRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkWindowGroup>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkWindowGroup>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkWindowGroup>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkWindowGroup>?) {
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

    /// Reference intialiser for a related type that implements `WindowGroupProtocol`
    @inlinable init<T: WindowGroupProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: WindowGroupProtocol>(_ other: T) -> WindowGroupRef { WindowGroupRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowGroupProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowGroupProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowGroupProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowGroupProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowGroupProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkWindowGroup` object.
    /// 
    /// Modality of windows only affects windows
    /// within the same `GtkWindowGroup`.
    @inlinable init() {
        let rv = gtk_window_group_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// `GtkWindowGroup` makes group of windows behave like separate applications.
/// 
/// It achieves this by limiting the effect of GTK grabs and modality
/// to windows in the same group.
/// 
/// A window can be a member in at most one window group at a time.
/// Windows that have not been explicitly assigned to a group are
/// implicitly treated like windows of the default window group.
/// 
/// `GtkWindowGroup` objects are referenced by each window in the group,
/// so once you have added all windows to a `GtkWindowGroup`, you can drop
/// the initial reference to the window group with `g_object_unref()`. If the
/// windows in the window group are subsequently destroyed, then they will
/// be removed from the window group and drop their references on the window
/// group; when all window have been removed, the window group will be
/// freed.
///
/// The `WindowGroup` type acts as a reference-counted owner of an underlying `GtkWindowGroup` instance.
/// It provides the methods that can operate on this data type through `WindowGroupProtocol` conformance.
/// Use `WindowGroup` as a strong reference or owner of a `GtkWindowGroup` instance.
///
open class WindowGroup: GLibObject.Object, WindowGroupProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `WindowGroup` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkWindowGroup>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `WindowGroup` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkWindowGroup>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `WindowGroup` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `WindowGroup` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `WindowGroup` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkWindowGroup>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `WindowGroup` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkWindowGroup>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkWindowGroup`.
    /// i.e., ownership is transferred to the `WindowGroup` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkWindowGroup>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `WindowGroupProtocol`
    /// Will retain `GtkWindowGroup`.
    /// - Parameter other: an instance of a related type that implements `WindowGroupProtocol`
    @inlinable public init<T: WindowGroupProtocol>(windowGroup other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowGroupProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowGroupProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowGroupProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowGroupProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowGroupProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowGroupProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowGroupProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowGroupProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkWindowGroup` object.
    /// 
    /// Modality of windows only affects windows
    /// within the same `GtkWindowGroup`.
    @inlinable public init() {
        let rv = gtk_window_group_new()
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

// MARK: no WindowGroup properties

public enum WindowGroupSignalName: String, SignalNameProtocol {
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"

}

// MARK: WindowGroup has no signals
// MARK: WindowGroup Class: WindowGroupProtocol extension (methods and fields)
public extension WindowGroupProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkWindowGroup` instance.
    @inlinable var window_group_ptr: UnsafeMutablePointer<GtkWindowGroup>! { return ptr?.assumingMemoryBound(to: GtkWindowGroup.self) }

    /// Adds a window to a `GtkWindowGroup`.
    @inlinable func add<WindowT: WindowProtocol>(window: WindowT) {
        gtk_window_group_add_window(window_group_ptr, window.window_ptr)
    
    }

    /// Returns a list of the `GtkWindows` that belong to `window_group`.
    @inlinable func listWindows() -> GLib.ListRef! {
        let rv = GLib.ListRef(gtk_window_group_list_windows(window_group_ptr))
        return rv
    }

    /// Removes a window from a `GtkWindowGroup`.
    @inlinable func remove<WindowT: WindowProtocol>(window: WindowT) {
        gtk_window_group_remove_window(window_group_ptr, window.window_ptr)
    
    }

    @inlinable var parentInstance: GObject {
        get {
            let rv = window_group_ptr.pointee.parent_instance
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - WindowHandle Class

/// `GtkWindowHandle` is a titlebar area widget.
/// 
/// When added into a window, it can be dragged to move the window, and handles
/// right click, double click and middle click as expected of a titlebar.
/// 
/// # CSS nodes
/// 
/// `GtkWindowHandle` has a single CSS node with the name `windowhandle`.
/// 
/// # Accessibility
/// 
/// `GtkWindowHandle` uses the `GTK_ACCESSIBLE_ROLE_GROUP` role.
///
/// The `WindowHandleProtocol` protocol exposes the methods and properties of an underlying `GtkWindowHandle` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `WindowHandle`.
/// Alternatively, use `WindowHandleRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol WindowHandleProtocol: WidgetProtocol {
        /// Untyped pointer to the underlying `GtkWindowHandle` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkWindowHandle` instance.
    var window_handle_ptr: UnsafeMutablePointer<GtkWindowHandle>! { get }

    /// Required Initialiser for types conforming to `WindowHandleProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GtkWindowHandle` is a titlebar area widget.
/// 
/// When added into a window, it can be dragged to move the window, and handles
/// right click, double click and middle click as expected of a titlebar.
/// 
/// # CSS nodes
/// 
/// `GtkWindowHandle` has a single CSS node with the name `windowhandle`.
/// 
/// # Accessibility
/// 
/// `GtkWindowHandle` uses the `GTK_ACCESSIBLE_ROLE_GROUP` role.
///
/// The `WindowHandleRef` type acts as a lightweight Swift reference to an underlying `GtkWindowHandle` instance.
/// It exposes methods that can operate on this data type through `WindowHandleProtocol` conformance.
/// Use `WindowHandleRef` only as an `unowned` reference to an existing `GtkWindowHandle` instance.
///
public struct WindowHandleRef: WindowHandleProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkWindowHandle` instance.
    /// For type-safe access, use the generated, typed pointer `window_handle_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension WindowHandleRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkWindowHandle>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkWindowHandle>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkWindowHandle>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkWindowHandle>?) {
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

    /// Reference intialiser for a related type that implements `WindowHandleProtocol`
    @inlinable init<T: WindowHandleProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: WindowHandleProtocol>(_ other: T) -> WindowHandleRef { WindowHandleRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowHandleProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowHandleProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowHandleProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowHandleProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowHandleProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkWindowHandle`.
    @inlinable init() {
        let rv = gtk_window_handle_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// `GtkWindowHandle` is a titlebar area widget.
/// 
/// When added into a window, it can be dragged to move the window, and handles
/// right click, double click and middle click as expected of a titlebar.
/// 
/// # CSS nodes
/// 
/// `GtkWindowHandle` has a single CSS node with the name `windowhandle`.
/// 
/// # Accessibility
/// 
/// `GtkWindowHandle` uses the `GTK_ACCESSIBLE_ROLE_GROUP` role.
///
/// The `WindowHandle` type acts as a reference-counted owner of an underlying `GtkWindowHandle` instance.
/// It provides the methods that can operate on this data type through `WindowHandleProtocol` conformance.
/// Use `WindowHandle` as a strong reference or owner of a `GtkWindowHandle` instance.
///
open class WindowHandle: Widget, WindowHandleProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `WindowHandle` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkWindowHandle>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `WindowHandle` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkWindowHandle>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `WindowHandle` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `WindowHandle` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `WindowHandle` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkWindowHandle>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `WindowHandle` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkWindowHandle>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkWindowHandle`.
    /// i.e., ownership is transferred to the `WindowHandle` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkWindowHandle>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `WindowHandleProtocol`
    /// Will retain `GtkWindowHandle`.
    /// - Parameter other: an instance of a related type that implements `WindowHandleProtocol`
    @inlinable public init<T: WindowHandleProtocol>(windowHandle other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowHandleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowHandleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowHandleProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowHandleProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowHandleProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowHandleProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowHandleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowHandleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkWindowHandle`.
    @inlinable public init() {
        let rv = gtk_window_handle_new()
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum WindowHandlePropertyName: String, PropertyNameProtocol {
    /// Whether the widget or any of its descendents can accept
    /// the input focus.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case canFocus = "can-focus"
    /// Whether the widget can receive pointer events.
    case canTarget = "can-target"
    /// The child widget.
    case child = "child"
    /// A list of css classes applied to this widget.
    case cssClasses = "css-classes"
    /// The name of this widget in the CSS tree.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case cssName = "css-name"
    /// The cursor used by `widget`.
    case cursor = "cursor"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    case focusOnClick = "focus-on-click"
    /// Whether this widget itself will accept the input focus.
    case focusable = "focusable"
    /// How to distribute horizontal space if widget gets extra space.
    case halign = "halign"
    /// Whether the widget is the default widget.
    case hasDefault = "has-default"
    /// Whether the widget has the input focus.
    case hasFocus = "has-focus"
    /// Enables or disables the emission of the `query-tooltip` signal on `widget`.
    /// 
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using [signal`Gtk.Widget::query-tooltip`] to
    /// determine whether it will provide a tooltip or not.
    case hasTooltip = "has-tooltip"
    /// Override for height request of the widget.
    /// 
    /// If this is -1, the natural request will be used.
    case heightRequest = "height-request"
    /// Whether to expand horizontally.
    case hexpand = "hexpand"
    /// Whether to use the `hexpand` property.
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
    /// [method`Gtk.Widget.set_size_request`] for example.
    case marginBottom = "margin-bottom"
    /// Margin on end of widget, horizontally.
    /// 
    /// This property supports left-to-right and right-to-left text
    /// directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case marginEnd = "margin-end"
    /// Margin on start of widget, horizontally.
    /// 
    /// This property supports left-to-right and right-to-left text
    /// directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case marginStart = "margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case marginTop = "margin-top"
    /// The name of the widget.
    case name = "name"
    /// The requested opacity of the widget.
    case opacity = "opacity"
    /// How content outside the widget's content area is treated.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case overflow = "overflow"
    /// The parent widget of this widget.
    case parent = "parent"
    /// Whether the widget will receive the default action when it is focused.
    case receivesDefault = "receives-default"
    /// The `GtkRoot` widget of the widget tree containing this widget.
    /// 
    /// This will be `nil` if the widget is not contained in a root widget.
    case root = "root"
    /// The scale factor of the widget.
    case scaleFactor = "scale-factor"
    /// Whether the widget responds to input.
    case sensitive = "sensitive"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with Pango markup.
    /// 
    /// Also see [method`Gtk.Tooltip.set_markup`].
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`:
    /// [property`Gtk.Widget:has-tooltip`] will automatically be set to `true`
    /// and there will be taken care of [signal`Gtk.Widget::query-tooltip`] in
    /// the default signal handler.
    /// 
    /// Note that if both [property`Gtk.Widget:tooltip-text`] and
    /// [property`Gtk.Widget:tooltip-markup`] are set, the last one wins.
    case tooltipMarkup = "tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see [method`Gtk.Tooltip.set_text`].
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`:
    /// [property`Gtk.Widget:has-tooltip`] will automatically be set to `true`
    /// and there will be taken care of [signal`Gtk.Widget::query-tooltip`] in
    /// the default signal handler.
    /// 
    /// Note that if both [property`Gtk.Widget:tooltip-text`] and
    /// [property`Gtk.Widget:tooltip-markup`] are set, the last one wins.
    case tooltipText = "tooltip-text"
    /// How to distribute vertical space if widget gets extra space.
    case valign = "valign"
    /// Whether to expand vertically.
    case vexpand = "vexpand"
    /// Whether to use the `vexpand` property.
    case vexpandSet = "vexpand-set"
    /// Whether the widget is visible.
    case visible = "visible"
    /// Override for width request of the widget.
    /// 
    /// If this is -1, the natural request will be used.
    case widthRequest = "width-request"
}

public extension WindowHandleProtocol {
    /// Bind a `WindowHandlePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: WindowHandlePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a WindowHandle property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: WindowHandlePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a WindowHandle property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: WindowHandlePropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum WindowHandleSignalName: String, SignalNameProtocol {
    /// Signals that all holders of a reference to the widget should release
    /// the reference that they hold.
    /// 
    /// May result in finalization of the widget if all references are released.
    /// 
    /// This signal is not suitable for saving widget state.
    case destroy = "destroy"
    /// Emitted when the text direction of a widget changes.
    case directionChanged = "direction-changed"
    /// Emitted when `widget` is hidden.
    case hide = "hide"
    /// Emitted if keyboard navigation fails.
    /// 
    /// See [method`Gtk.Widget.keynav_failed`] for details.
    case keynavFailed = "keynav-failed"
    /// Emitted when `widget` is going to be mapped.
    /// 
    /// A widget is mapped when the widget is visible (which is controlled with
    /// [property`Gtk.Widget:visible`]) and all its parents up to the toplevel widget
    /// are also visible.
    /// 
    /// The `map` signal can be used to determine whether a widget will be drawn,
    /// for instance it can resume an animation that was stopped during the
    /// emission of [signal`Gtk.Widget::unmap`].
    case map = "map"
    /// Emitted when a widget is activated via a mnemonic.
    /// 
    /// The default handler for this signal activates `widget` if `group_cycling`
    /// is `false`, or just makes `widget` grab focus if `group_cycling` is `true`.
    case mnemonicActivate = "mnemonic-activate"
    /// Emitted when the focus is moved.
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// Emitted when the widgets tooltip is about to be shown.
    /// 
    /// This happens when the [property`Gtk.Widget:has-tooltip`] property
    /// is `true` and the hover timeout has expired with the cursor hovering
    /// "above" `widget`; or emitted when `widget` got focus in keyboard mode.
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
    /// Emitted when `widget` is associated with a `GdkSurface`.
    /// 
    /// This means that [method`Gtk.Widget.realize`] has been called
    /// or the widget has been mapped (that is, it is going to be drawn).
    case realize = "realize"
    /// Emitted when `widget` is shown.
    case show = "show"
    /// Emitted when the widget state changes.
    /// 
    /// See [method`Gtk.Widget.get_state_flags`].
    case stateFlagsChanged = "state-flags-changed"
    /// Emitted when `widget` is going to be unmapped.
    /// 
    /// A widget is unmapped when either it or any of its parents up to the
    /// toplevel widget have been set as hidden.
    /// 
    /// As `unmap` indicates that a widget will not be shown any longer,
    /// it can be used to, for example, stop an animation on the widget.
    case unmap = "unmap"
    /// Emitted when the `GdkSurface` associated with `widget` is destroyed.
    /// 
    /// This means that [method`Gtk.Widget.unrealize`] has been called
    /// or the widget has been unmapped (that is, it is going to be hidden).
    case unrealize = "unrealize"
    /// Whether the widget or any of its descendents can accept
    /// the input focus.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyCanFocus = "notify::can-focus"
    /// Whether the widget can receive pointer events.
    case notifyCanTarget = "notify::can-target"
    /// The child widget.
    case notifyChild = "notify::child"
    /// A list of css classes applied to this widget.
    case notifyCssClasses = "notify::css-classes"
    /// The name of this widget in the CSS tree.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyCssName = "notify::css-name"
    /// The cursor used by `widget`.
    case notifyCursor = "notify::cursor"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    case notifyFocusOnClick = "notify::focus-on-click"
    /// Whether this widget itself will accept the input focus.
    case notifyFocusable = "notify::focusable"
    /// How to distribute horizontal space if widget gets extra space.
    case notifyHalign = "notify::halign"
    /// Whether the widget is the default widget.
    case notifyHasDefault = "notify::has-default"
    /// Whether the widget has the input focus.
    case notifyHasFocus = "notify::has-focus"
    /// Enables or disables the emission of the `query-tooltip` signal on `widget`.
    /// 
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using [signal`Gtk.Widget::query-tooltip`] to
    /// determine whether it will provide a tooltip or not.
    case notifyHasTooltip = "notify::has-tooltip"
    /// Override for height request of the widget.
    /// 
    /// If this is -1, the natural request will be used.
    case notifyHeightRequest = "notify::height-request"
    /// Whether to expand horizontally.
    case notifyHexpand = "notify::hexpand"
    /// Whether to use the `hexpand` property.
    case notifyHexpandSet = "notify::hexpand-set"
    /// The `GtkLayoutManager` instance to use to compute the preferred size
    /// of the widget, and allocate its children.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyLayoutManager = "notify::layout-manager"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case notifyMarginBottom = "notify::margin-bottom"
    /// Margin on end of widget, horizontally.
    /// 
    /// This property supports left-to-right and right-to-left text
    /// directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case notifyMarginEnd = "notify::margin-end"
    /// Margin on start of widget, horizontally.
    /// 
    /// This property supports left-to-right and right-to-left text
    /// directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case notifyMarginStart = "notify::margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case notifyMarginTop = "notify::margin-top"
    /// The name of the widget.
    case notifyName = "notify::name"
    /// The requested opacity of the widget.
    case notifyOpacity = "notify::opacity"
    /// How content outside the widget's content area is treated.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyOverflow = "notify::overflow"
    /// The parent widget of this widget.
    case notifyParent = "notify::parent"
    /// Whether the widget will receive the default action when it is focused.
    case notifyReceivesDefault = "notify::receives-default"
    /// The `GtkRoot` widget of the widget tree containing this widget.
    /// 
    /// This will be `nil` if the widget is not contained in a root widget.
    case notifyRoot = "notify::root"
    /// The scale factor of the widget.
    case notifyScaleFactor = "notify::scale-factor"
    /// Whether the widget responds to input.
    case notifySensitive = "notify::sensitive"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with Pango markup.
    /// 
    /// Also see [method`Gtk.Tooltip.set_markup`].
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`:
    /// [property`Gtk.Widget:has-tooltip`] will automatically be set to `true`
    /// and there will be taken care of [signal`Gtk.Widget::query-tooltip`] in
    /// the default signal handler.
    /// 
    /// Note that if both [property`Gtk.Widget:tooltip-text`] and
    /// [property`Gtk.Widget:tooltip-markup`] are set, the last one wins.
    case notifyTooltipMarkup = "notify::tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see [method`Gtk.Tooltip.set_text`].
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`:
    /// [property`Gtk.Widget:has-tooltip`] will automatically be set to `true`
    /// and there will be taken care of [signal`Gtk.Widget::query-tooltip`] in
    /// the default signal handler.
    /// 
    /// Note that if both [property`Gtk.Widget:tooltip-text`] and
    /// [property`Gtk.Widget:tooltip-markup`] are set, the last one wins.
    case notifyTooltipText = "notify::tooltip-text"
    /// How to distribute vertical space if widget gets extra space.
    case notifyValign = "notify::valign"
    /// Whether to expand vertically.
    case notifyVexpand = "notify::vexpand"
    /// Whether to use the `vexpand` property.
    case notifyVexpandSet = "notify::vexpand-set"
    /// Whether the widget is visible.
    case notifyVisible = "notify::visible"
    /// Override for width request of the widget.
    /// 
    /// If this is -1, the natural request will be used.
    case notifyWidthRequest = "notify::width-request"
}

// MARK: WindowHandle has no signals
// MARK: WindowHandle Class: WindowHandleProtocol extension (methods and fields)
public extension WindowHandleProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkWindowHandle` instance.
    @inlinable var window_handle_ptr: UnsafeMutablePointer<GtkWindowHandle>! { return ptr?.assumingMemoryBound(to: GtkWindowHandle.self) }

    /// Gets the child widget of `self`.
    @inlinable func getChild() -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_window_handle_get_child(window_handle_ptr))) else { return nil }
        return rv
    }

    /// Sets the child widget of `self`.
    @inlinable func set(child: WidgetRef? = nil) {
        gtk_window_handle_set_child(window_handle_ptr, child?.widget_ptr)
    
    }
    /// Sets the child widget of `self`.
    @inlinable func set<WidgetT: WidgetProtocol>(child: WidgetT?) {
        gtk_window_handle_set_child(window_handle_ptr, child?.widget_ptr)
    
    }
    /// The child widget.
    @inlinable var child: WidgetRef! {
        /// Gets the child widget of `self`.
        get {
            guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_window_handle_get_child(window_handle_ptr))) else { return nil }
            return rv
        }
        /// Sets the child widget of `self`.
        nonmutating set {
            gtk_window_handle_set_child(window_handle_ptr, UnsafeMutablePointer<GtkWidget>(newValue?.widget_ptr))
        }
    }


}



