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

/// The `WidgetPaintableProtocol` protocol exposes the methods and properties of an underlying `GtkWidgetPaintable` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `WidgetPaintable`.
/// Alternatively, use `WidgetPaintableRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// GtkWidgetPaintable is an implementation of the `GdkPaintable` interface
/// that allows displaying the contents of a `GtkWidget`.
/// 
/// GtkWidgetPaintable will also take care of the widget not being in a
/// state where it can be drawn (like when it isn't shown) and just draw
/// nothing or where it does not have a size (like when it is hidden) and
/// report no size in that case.
/// 
/// Of course, GtkWidgetPaintable allows you to monitor widgets for size
/// changes by emitting the `GdkPaintable::invalidate`-size signal whenever
/// the size of the widget changes as well as for visual changes by
/// emitting the `GdkPaintable::invalidate`-contents signal whenever the
/// widget changes.
/// 
/// You can of course use a GtkWidgetPaintable everywhere a
/// `GdkPaintable` is allowed, including using it on a `GtkPicture` (or one
/// of its parents) that it was set on itself via `gtk_picture_set_paintable()`.
/// The paintable will take care of recursion when this happens. If you do
/// this however, ensure the `GtkPicture:can`-shrink property is set to
/// `true` or you might end up with an infinitely growing widget.
public protocol WidgetPaintableProtocol: GLibObject.ObjectProtocol, Gdk.PaintableProtocol {
        /// Untyped pointer to the underlying `GtkWidgetPaintable` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkWidgetPaintable` instance.
    var widget_paintable_ptr: UnsafeMutablePointer<GtkWidgetPaintable>! { get }

}

/// The `WidgetPaintableRef` type acts as a lightweight Swift reference to an underlying `GtkWidgetPaintable` instance.
/// It exposes methods that can operate on this data type through `WidgetPaintableProtocol` conformance.
/// Use `WidgetPaintableRef` only as an `unowned` reference to an existing `GtkWidgetPaintable` instance.
///
/// GtkWidgetPaintable is an implementation of the `GdkPaintable` interface
/// that allows displaying the contents of a `GtkWidget`.
/// 
/// GtkWidgetPaintable will also take care of the widget not being in a
/// state where it can be drawn (like when it isn't shown) and just draw
/// nothing or where it does not have a size (like when it is hidden) and
/// report no size in that case.
/// 
/// Of course, GtkWidgetPaintable allows you to monitor widgets for size
/// changes by emitting the `GdkPaintable::invalidate`-size signal whenever
/// the size of the widget changes as well as for visual changes by
/// emitting the `GdkPaintable::invalidate`-contents signal whenever the
/// widget changes.
/// 
/// You can of course use a GtkWidgetPaintable everywhere a
/// `GdkPaintable` is allowed, including using it on a `GtkPicture` (or one
/// of its parents) that it was set on itself via `gtk_picture_set_paintable()`.
/// The paintable will take care of recursion when this happens. If you do
/// this however, ensure the `GtkPicture:can`-shrink property is set to
/// `true` or you might end up with an infinitely growing widget.
public struct WidgetPaintableRef: WidgetPaintableProtocol {
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

/// The `WidgetPaintable` type acts as a reference-counted owner of an underlying `GtkWidgetPaintable` instance.
/// It provides the methods that can operate on this data type through `WidgetPaintableProtocol` conformance.
/// Use `WidgetPaintable` as a strong reference or owner of a `GtkWidgetPaintable` instance.
///
/// GtkWidgetPaintable is an implementation of the `GdkPaintable` interface
/// that allows displaying the contents of a `GtkWidget`.
/// 
/// GtkWidgetPaintable will also take care of the widget not being in a
/// state where it can be drawn (like when it isn't shown) and just draw
/// nothing or where it does not have a size (like when it is hidden) and
/// report no size in that case.
/// 
/// Of course, GtkWidgetPaintable allows you to monitor widgets for size
/// changes by emitting the `GdkPaintable::invalidate`-size signal whenever
/// the size of the widget changes as well as for visual changes by
/// emitting the `GdkPaintable::invalidate`-contents signal whenever the
/// widget changes.
/// 
/// You can of course use a GtkWidgetPaintable everywhere a
/// `GdkPaintable` is allowed, including using it on a `GtkPicture` (or one
/// of its parents) that it was set on itself via `gtk_picture_set_paintable()`.
/// The paintable will take care of recursion when this happens. If you do
/// this however, ensure the `GtkPicture:can`-shrink property is set to
/// `true` or you might end up with an infinitely growing widget.
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
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetPaintableProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
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
    /// The observed widget or `nil` if none.
    case notifyWidget = "notify::widget"
}

public extension WidgetPaintableProtocol {
    /// Connect a `WidgetPaintableSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: WidgetPaintableSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
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

// MARK: WidgetPaintable Class: WidgetPaintableProtocol extension (methods and fields)
public extension WidgetPaintableProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkWidgetPaintable` instance.
    @inlinable var widget_paintable_ptr: UnsafeMutablePointer<GtkWidgetPaintable>! { return ptr?.assumingMemoryBound(to: GtkWidgetPaintable.self) }

    /// Returns the widget that is observed or `nil`
    /// if none.
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
        /// Returns the widget that is observed or `nil`
        /// if none.
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

/// The `WindowProtocol` protocol exposes the methods and properties of an underlying `GtkWindow` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Window`.
/// Alternatively, use `WindowRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A GtkWindow is a toplevel window which can contain other widgets.
/// Windows normally have decorations that are under the control
/// of the windowing system and allow the user to manipulate the window
/// (resize it, move it, close it,...).
/// 
/// # GtkWindow as GtkBuildable
/// 
/// The GtkWindow implementation of the `GtkBuildable` interface supports
/// setting a child as the titlebar by specifying “titlebar” as the “type”
/// attribute of a <child> element.
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
/// window.background
/// ├── <child>
/// ╰── <titlebar child>.titlebar [.default-decoration]
/// ```
/// 
/// GtkWindow has a main CSS node with name window and style class .background.
/// 
/// Style classes that are typically used with the main CSS node are .csd (when
/// client-side decorations are in use), .solid-csd (for client-side decorations
/// without invisible borders), .ssd (used by mutter when rendering server-side
/// decorations). GtkWindow also represents window states with the following
/// style classes on the main node: .tiled, .maximized, .fullscreen. Specialized
/// types of window often add their own discriminating style classes, such as
/// .popup or .tooltip.
/// 
/// Generally, some CSS properties don't make sense on the toplevel window node,
/// such as margins or padding. When client-side decorations without invisible
/// borders are in use (i.e. the .solid-csd style class is added to the
/// main window node), the CSS border of the toplevel window is used for
/// resize drags. In the .csd case, the shadow area outside of the window
/// can be used to resize it.
/// 
/// GtkWindow adds the .titlebar and .default-decoration style classes to the
/// widget that is added as a titlebar child.
/// 
/// # Accessibility
/// 
/// GtkWindow uses the `GTK_ACCESSIBLE_ROLE_WINDOW` role.
public protocol WindowProtocol: WidgetProtocol, NativeProtocol, RootProtocol, ShortcutManagerProtocol {
        /// Untyped pointer to the underlying `GtkWindow` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkWindow` instance.
    var window_ptr: UnsafeMutablePointer<GtkWindow>! { get }

}

/// The `WindowRef` type acts as a lightweight Swift reference to an underlying `GtkWindow` instance.
/// It exposes methods that can operate on this data type through `WindowProtocol` conformance.
/// Use `WindowRef` only as an `unowned` reference to an existing `GtkWindow` instance.
///
/// A GtkWindow is a toplevel window which can contain other widgets.
/// Windows normally have decorations that are under the control
/// of the windowing system and allow the user to manipulate the window
/// (resize it, move it, close it,...).
/// 
/// # GtkWindow as GtkBuildable
/// 
/// The GtkWindow implementation of the `GtkBuildable` interface supports
/// setting a child as the titlebar by specifying “titlebar” as the “type”
/// attribute of a <child> element.
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
/// window.background
/// ├── <child>
/// ╰── <titlebar child>.titlebar [.default-decoration]
/// ```
/// 
/// GtkWindow has a main CSS node with name window and style class .background.
/// 
/// Style classes that are typically used with the main CSS node are .csd (when
/// client-side decorations are in use), .solid-csd (for client-side decorations
/// without invisible borders), .ssd (used by mutter when rendering server-side
/// decorations). GtkWindow also represents window states with the following
/// style classes on the main node: .tiled, .maximized, .fullscreen. Specialized
/// types of window often add their own discriminating style classes, such as
/// .popup or .tooltip.
/// 
/// Generally, some CSS properties don't make sense on the toplevel window node,
/// such as margins or padding. When client-side decorations without invisible
/// borders are in use (i.e. the .solid-csd style class is added to the
/// main window node), the CSS border of the toplevel window is used for
/// resize drags. In the .csd case, the shadow area outside of the window
/// can be used to resize it.
/// 
/// GtkWindow adds the .titlebar and .default-decoration style classes to the
/// widget that is added as a titlebar child.
/// 
/// # Accessibility
/// 
/// GtkWindow uses the `GTK_ACCESSIBLE_ROLE_WINDOW` role.
public struct WindowRef: WindowProtocol {
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

        /// Creates a new `GtkWindow`, which is a toplevel window that can
    /// contain other widgets.
    /// 
    /// To get an undecorated window (no window borders), use
    /// `gtk_window_set_decorated()`.
    /// 
    /// All top-level windows created by `gtk_window_new()` are stored in
    /// an internal top-level window list.  This list can be obtained from
    /// `gtk_window_list_toplevels()`.  Due to Gtk+ keeping a reference to
    /// the window internally, `gtk_window_new()` does not return a reference
    /// to the caller.
    /// 
    /// To delete a `GtkWindow`, call `gtk_window_destroy()`.
    @inlinable init() {
        let rv = gtk_window_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `Window` type acts as a reference-counted owner of an underlying `GtkWindow` instance.
/// It provides the methods that can operate on this data type through `WindowProtocol` conformance.
/// Use `Window` as a strong reference or owner of a `GtkWindow` instance.
///
/// A GtkWindow is a toplevel window which can contain other widgets.
/// Windows normally have decorations that are under the control
/// of the windowing system and allow the user to manipulate the window
/// (resize it, move it, close it,...).
/// 
/// # GtkWindow as GtkBuildable
/// 
/// The GtkWindow implementation of the `GtkBuildable` interface supports
/// setting a child as the titlebar by specifying “titlebar” as the “type”
/// attribute of a <child> element.
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
/// window.background
/// ├── <child>
/// ╰── <titlebar child>.titlebar [.default-decoration]
/// ```
/// 
/// GtkWindow has a main CSS node with name window and style class .background.
/// 
/// Style classes that are typically used with the main CSS node are .csd (when
/// client-side decorations are in use), .solid-csd (for client-side decorations
/// without invisible borders), .ssd (used by mutter when rendering server-side
/// decorations). GtkWindow also represents window states with the following
/// style classes on the main node: .tiled, .maximized, .fullscreen. Specialized
/// types of window often add their own discriminating style classes, such as
/// .popup or .tooltip.
/// 
/// Generally, some CSS properties don't make sense on the toplevel window node,
/// such as margins or padding. When client-side decorations without invisible
/// borders are in use (i.e. the .solid-csd style class is added to the
/// main window node), the CSS border of the toplevel window is used for
/// resize drags. In the .csd case, the shadow area outside of the window
/// can be used to resize it.
/// 
/// GtkWindow adds the .titlebar and .default-decoration style classes to the
/// widget that is added as a titlebar child.
/// 
/// # Accessibility
/// 
/// GtkWindow uses the `GTK_ACCESSIBLE_ROLE_WINDOW` role.
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
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
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

    /// Creates a new `GtkWindow`, which is a toplevel window that can
    /// contain other widgets.
    /// 
    /// To get an undecorated window (no window borders), use
    /// `gtk_window_set_decorated()`.
    /// 
    /// All top-level windows created by `gtk_window_new()` are stored in
    /// an internal top-level window list.  This list can be obtained from
    /// `gtk_window_list_toplevels()`.  Due to Gtk+ keeping a reference to
    /// the window internally, `gtk_window_new()` does not return a reference
    /// to the caller.
    /// 
    /// To delete a `GtkWindow`, call `gtk_window_destroy()`.
    @inlinable public init() {
        let rv = gtk_window_new()
        super.init(gpointer: gpointer(rv))
    }


}

public enum WindowPropertyName: String, PropertyNameProtocol {
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
    case canTarget = "can-target"
    case child = "child"
    /// A list of css classes applied to this widget.
    case cssClasses = "css-classes"
    /// The name of this widget in the CSS tree.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case cssName = "css-name"
    /// The cursor used by `widget`. See `gtk_widget_set_cursor()` for details.
    case cursor = "cursor"
    /// Whether the window should be decorated by the window manager.
    case decorated = "decorated"
    case defaultHeight = "default-height"
    case defaultWidget = "default-widget"
    case defaultWidth = "default-width"
    /// Whether the window frame should have a close button.
    case deletable = "deletable"
    case destroyWithParent = "destroy-with-parent"
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
    case focusWidget = "focus-widget"
    /// Whether this widget itself will accept the input focus.
    case focusable = "focusable"
    /// Whether the window is fullscreen.
    /// 
    /// Setting this property is the equivalent of calling `gtk_window_fullscreen()`
    /// and `gtk_window_unfullscreen()`; either operation is asynchronous, which
    /// means you will need to connect to the `GObject::notify` signal in order to
    /// know whether the operation was successful.
    case fullscreened = "fullscreened"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case halign = "halign"
    case hasDefault = "has-default"
    case hasFocus = "has-focus"
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
    /// whether it will provide a tooltip or not.
    case hasTooltip = "has-tooltip"
    case heightRequest = "height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case hexpand = "hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case hexpandSet = "hexpand-set"
    case hideOnClose = "hide-on-close"
    /// The :icon-name property specifies the name of the themed icon to
    /// use as the window icon. See `GtkIconTheme` for more details.
    case iconName = "icon-name"
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
    /// `gtk_widget_set_size_request()` for example.
    case marginBottom = "margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginEnd = "margin-end"
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
    /// Whether the window is maximized.
    /// 
    /// Setting this property is the equivalent of calling `gtk_window_maximize()`
    /// and `gtk_window_unmaximize()`; either operation is asynchronous, which
    /// means you will need to connect to the `GObject::notify` signal in order to
    /// know whether the operation was successful.
    case maximized = "maximized"
    /// Whether mnemonics are currently visible in this window.
    /// 
    /// This property is maintained by GTK based on user input,
    /// and should not be set by applications.
    case mnemonicsVisible = "mnemonics-visible"
    case modal = "modal"
    case name = "name"
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    case opacity = "opacity"
    /// How content outside the widget's content area is treated.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case overflow = "overflow"
    case parent = "parent"
    case receivesDefault = "receives-default"
    case resizable = "resizable"
    /// The `GtkRoot` widget of the widget tree containing this widget or `nil` if
    /// the widget is not contained in a root widget.
    case root = "root"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case sensitive = "sensitive"
    /// The :startup-id is a write-only property for setting window's
    /// startup notification identifier. See `gtk_window_set_startup_id()`
    /// for more details.
    case startupId = "startup-id"
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
    /// The transient parent of the window. See `gtk_window_set_transient_for()` for
    /// more details about transient windows.
    case transientFor = "transient-for"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case valign = "valign"
    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    case vexpand = "vexpand"
    /// Whether to use the `GtkWidget:vexpand` property. See `gtk_widget_get_vexpand_set()`.
    case vexpandSet = "vexpand-set"
    case visible = "visible"
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
    /// The `activate`-default signal is a
    /// [keybinding signal](#GtkSignalAction)
    /// which gets emitted when the user activates the default widget
    /// of `window`.
    case activateDefault = "activate-default"
    /// The `activate`-focus signal is a
    /// [keybinding signal](#GtkSignalAction)
    /// which gets emitted when the user activates the currently
    /// focused widget of `window`.
    case activateFocus = "activate-focus"
    /// The "active-descendant-changed" signal is emitted by an object
    /// which has the state ATK_STATE_MANAGES_DESCENDANTS when the focus
    /// object in the object changes. For instance, a table will emit the
    /// signal when the cell in the table which has focus changes.
    case activeDescendantChanged = "active-descendant-changed"
    /// The signal "children-changed" is emitted when a child is added or
    /// removed form an object. It supports two details: "add" and
    /// "remove"
    case childrenChanged = "children-changed"
    /// The `close`-request signal is emitted when the user clicks on the close
    /// button of the window.
    case closeRequest = "close-request"
    /// Signals that all holders of a reference to the widget should release
    /// the reference that they hold. May result in finalization of the widget
    /// if all references are released.
    /// 
    /// This signal is not suitable for saving widget state.
    case destroy = "destroy"
    /// The `direction`-changed signal is emitted when the text direction
    /// of a widget changes.
    case directionChanged = "direction-changed"
    /// The `enable`-debugging signal is a [keybinding signal](#GtkSignalAction)
    /// which gets emitted when the user enables or disables interactive
    /// debugging. When `toggle` is `true`, interactive debugging is toggled
    /// on or off, when it is `false`, the debugger will be pointed at the
    /// widget under the pointer.
    /// 
    /// The default bindings for this signal are Ctrl-Shift-I
    /// and Ctrl-Shift-D.
    case enableDebugging = "enable-debugging"
    /// The signal "focus-event" is emitted when an object gained or lost
    /// focus.
    ///
    /// **focus-event is deprecated:**
    /// Use the #AtkObject::state-change signal instead.
    case focusEvent = "focus-event"
    /// The `hide` signal is emitted when `widget` is hidden, for example with
    /// `gtk_widget_hide()`.
    case hide = "hide"
    /// Gets emitted if keyboard navigation fails.
    /// See `gtk_widget_keynav_failed()` for details.
    case keynavFailed = "keynav-failed"
    /// The `keys`-changed signal gets emitted when the set of accelerators
    /// or mnemonics that are associated with `window` changes.
    case keysChanged = "keys-changed"
    /// The `map` signal is emitted when `widget` is going to be mapped, that is
    /// when the widget is visible (which is controlled with
    /// `gtk_widget_set_visible()`) and all its parents up to the toplevel widget
    /// are also visible.
    /// 
    /// The `map` signal can be used to determine whether a widget will be drawn,
    /// for instance it can resume an animation that was stopped during the
    /// emission of `GtkWidget::unmap`.
    case map = "map"
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
    /// `GdkSurface`, which means that `gtk_widget_realize()` has been called or the
    /// widget has been mapped (that is, it is going to be drawn).
    case realize = "realize"
    /// The `show` signal is emitted when `widget` is shown, for example with
    /// `gtk_widget_show()`.
    case show = "show"
    /// The "state-change" signal is emitted when an object's state
    /// changes.  The detail value identifies the state type which has
    /// changed.
    case stateChange = "state-change"
    /// The `state`-flags-changed signal is emitted when the widget state
    /// changes, see `gtk_widget_get_state_flags()`.
    case stateFlagsChanged = "state-flags-changed"
    /// The `unmap` signal is emitted when `widget` is going to be unmapped, which
    /// means that either it or any of its parents up to the toplevel widget have
    /// been set as hidden.
    /// 
    /// As `unmap` indicates that a widget will not be shown any longer, it can be
    /// used to, for example, stop an animation on the widget.
    case unmap = "unmap"
    /// The `unrealize` signal is emitted when the `GdkSurface` associated with
    /// `widget` is destroyed, which means that `gtk_widget_unrealize()` has been
    /// called or the widget has been unmapped (that is, it is going to be
    /// hidden).
    case unrealize = "unrealize"
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
    case notifyCanTarget = "notify::can-target"
    case notifyChild = "notify::child"
    /// A list of css classes applied to this widget.
    case notifyCssClasses = "notify::css-classes"
    /// The name of this widget in the CSS tree.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyCssName = "notify::css-name"
    /// The cursor used by `widget`. See `gtk_widget_set_cursor()` for details.
    case notifyCursor = "notify::cursor"
    /// Whether the window should be decorated by the window manager.
    case notifyDecorated = "notify::decorated"
    case notifyDefaultHeight = "notify::default-height"
    case notifyDefaultWidget = "notify::default-widget"
    case notifyDefaultWidth = "notify::default-width"
    /// Whether the window frame should have a close button.
    case notifyDeletable = "notify::deletable"
    case notifyDestroyWithParent = "notify::destroy-with-parent"
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
    case notifyFocusWidget = "notify::focus-widget"
    /// Whether this widget itself will accept the input focus.
    case notifyFocusable = "notify::focusable"
    /// Whether the window is fullscreen.
    /// 
    /// Setting this property is the equivalent of calling `gtk_window_fullscreen()`
    /// and `gtk_window_unfullscreen()`; either operation is asynchronous, which
    /// means you will need to connect to the `GObject::notify` signal in order to
    /// know whether the operation was successful.
    case notifyFullscreened = "notify::fullscreened"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case notifyHalign = "notify::halign"
    case notifyHasDefault = "notify::has-default"
    case notifyHasFocus = "notify::has-focus"
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
    /// whether it will provide a tooltip or not.
    case notifyHasTooltip = "notify::has-tooltip"
    case notifyHeightRequest = "notify::height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case notifyHexpand = "notify::hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case notifyHexpandSet = "notify::hexpand-set"
    case notifyHideOnClose = "notify::hide-on-close"
    /// The :icon-name property specifies the name of the themed icon to
    /// use as the window icon. See `GtkIconTheme` for more details.
    case notifyIconName = "notify::icon-name"
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
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginBottom = "notify::margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginEnd = "notify::margin-end"
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
    /// Whether the window is maximized.
    /// 
    /// Setting this property is the equivalent of calling `gtk_window_maximize()`
    /// and `gtk_window_unmaximize()`; either operation is asynchronous, which
    /// means you will need to connect to the `GObject::notify` signal in order to
    /// know whether the operation was successful.
    case notifyMaximized = "notify::maximized"
    /// Whether mnemonics are currently visible in this window.
    /// 
    /// This property is maintained by GTK based on user input,
    /// and should not be set by applications.
    case notifyMnemonicsVisible = "notify::mnemonics-visible"
    case notifyModal = "notify::modal"
    case notifyName = "notify::name"
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    case notifyOpacity = "notify::opacity"
    /// How content outside the widget's content area is treated.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyOverflow = "notify::overflow"
    case notifyParent = "notify::parent"
    case notifyReceivesDefault = "notify::receives-default"
    case notifyResizable = "notify::resizable"
    /// The `GtkRoot` widget of the widget tree containing this widget or `nil` if
    /// the widget is not contained in a root widget.
    case notifyRoot = "notify::root"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case notifyScaleFactor = "notify::scale-factor"
    case notifySensitive = "notify::sensitive"
    /// The :startup-id is a write-only property for setting window's
    /// startup notification identifier. See `gtk_window_set_startup_id()`
    /// for more details.
    case notifyStartupId = "notify::startup-id"
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
    /// The transient parent of the window. See `gtk_window_set_transient_for()` for
    /// more details about transient windows.
    case notifyTransientFor = "notify::transient-for"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case notifyValign = "notify::valign"
    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    case notifyVexpand = "notify::vexpand"
    /// Whether to use the `GtkWidget:vexpand` property. See `gtk_widget_get_vexpand_set()`.
    case notifyVexpandSet = "notify::vexpand-set"
    case notifyVisible = "notify::visible"
    case notifyWidthRequest = "notify::width-request"
}

public extension WindowProtocol {
    /// Connect a `WindowSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: WindowSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
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

// MARK: Window Class: WindowProtocol extension (methods and fields)
public extension WindowProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkWindow` instance.
    @inlinable var window_ptr: UnsafeMutablePointer<GtkWindow>! { return ptr?.assumingMemoryBound(to: GtkWindow.self) }

    /// Requests that the window is closed, similar to what happens
    /// when a window manager close button is clicked.
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
    /// Note that you shouldn’t assume the window is definitely full screen afterward,
    /// because other entities (e.g. the user or [window manager](#gtk-X11-arch)) could
    /// unfullscreen it again, and not all window managers honor requests to fullscreen
    /// windows.
    /// 
    /// You can track the result of this operation via the `GdkToplevel:state` property,
    /// or by listening to notifications of the `GtkWindow:fullscreened` property.
    @inlinable func fullscreen() {
        gtk_window_fullscreen(window_ptr)
    
    }

    /// Asks to place `window` in the fullscreen state on the given `monitor`.
    /// 
    /// Note that you shouldn't assume the window is definitely full screen
    /// afterward, or that the windowing system allows fullscreen windows on
    /// any given monitor.
    /// 
    /// You can track the result of this operation via the `GdkToplevel:state`
    /// property, or by listening to notifications of the `GtkWindow:fullscreened`
    /// property.
    @inlinable func fullscreenOn<MonitorT: Gdk.MonitorProtocol>(monitor: MonitorT) {
        gtk_window_fullscreen_on_monitor(window_ptr, monitor.monitor_ptr)
    
    }

    /// Gets the `GtkApplication` associated with the window (if any).
    @inlinable func getApplication() -> ApplicationRef! {
        let rv = ApplicationRef(gconstpointer: gconstpointer(gtk_window_get_application(window_ptr)))
        return rv
    }

    /// Gets the child widget of `window`.
    @inlinable func getChild() -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_window_get_child(window_ptr))) else { return nil }
        return rv
    }

    /// Returns whether the window has been set to have decorations
    /// such as a title bar via `gtk_window_set_decorated()`.
    @inlinable func getDecorated() -> Bool {
        let rv = ((gtk_window_get_decorated(window_ptr)) != 0)
        return rv
    }

    /// Gets the default size of the window. A value of 0 for the width or
    /// height indicates that a default size has not been explicitly set
    /// for that dimension, so the “natural” size of the window will be
    /// used.
    @inlinable func getDefaultSize(width: UnsafeMutablePointer<gint>! = nil, height: UnsafeMutablePointer<gint>! = nil) {
        gtk_window_get_default_size(window_ptr, width, height)
    
    }

    /// Returns the default widget for `window`.
    /// 
    /// See `gtk_window_set_default_widget()` for more details.
    @inlinable func getDefaultWidget() -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_window_get_default_widget(window_ptr))) else { return nil }
        return rv
    }

    /// Returns whether the window has been set to have a close button
    /// via `gtk_window_set_deletable()`.
    @inlinable func getDeletable() -> Bool {
        let rv = ((gtk_window_get_deletable(window_ptr)) != 0)
        return rv
    }

    /// Returns whether the window will be destroyed with its transient parent. See
    /// gtk_window_set_destroy_with_parent ().
    @inlinable func getDestroyWithParent() -> Bool {
        let rv = ((gtk_window_get_destroy_with_parent(window_ptr)) != 0)
        return rv
    }

    /// Retrieves the current focused widget within the window.
    /// Note that this is the widget that would have the focus
    /// if the toplevel window focused; if the toplevel window
    /// is not focused then  `gtk_widget_has_focus (widget)` will
    /// not be `true` for the widget.
    @inlinable func getFocus() -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_window_get_focus(window_ptr))) else { return nil }
        return rv
    }

    /// Gets the value of the `GtkWindow:focus`-visible property.
    @inlinable func getFocusVisible() -> Bool {
        let rv = ((gtk_window_get_focus_visible(window_ptr)) != 0)
        return rv
    }

    /// Returns the group for `window` or the default group, if
    /// `window` is `nil` or if `window` does not have an explicit
    /// window group.
    @inlinable func getGroup() -> WindowGroupRef! {
        let rv = WindowGroupRef(gconstpointer: gconstpointer(gtk_window_get_group(window_ptr)))
        return rv
    }

    /// Returns whether the window will be hidden when the close button is clicked.
    @inlinable func getHideOnClose() -> Bool {
        let rv = ((gtk_window_get_hide_on_close(window_ptr)) != 0)
        return rv
    }

    /// Returns the name of the themed icon for the window,
    /// see `gtk_window_set_icon_name()`.
    @inlinable func getIconName() -> String! {
        let rv = gtk_window_get_icon_name(window_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the value of the `GtkWindow:mnemonics`-visible property.
    @inlinable func getMnemonicsVisible() -> Bool {
        let rv = ((gtk_window_get_mnemonics_visible(window_ptr)) != 0)
        return rv
    }

    /// Returns whether the window is modal. See `gtk_window_set_modal()`.
    @inlinable func getModal() -> Bool {
        let rv = ((gtk_window_get_modal(window_ptr)) != 0)
        return rv
    }

    /// Gets the value set by `gtk_window_set_resizable()`.
    @inlinable func getResizable() -> Bool {
        let rv = ((gtk_window_get_resizable(window_ptr)) != 0)
        return rv
    }

    /// Retrieves the title of the window. See `gtk_window_set_title()`.
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

    /// Fetches the transient parent for this window. See
    /// `gtk_window_set_transient_for()`.
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
    /// Note that you shouldn’t assume the window is definitely maximized afterward,
    /// because other entities (e.g. the user or [window manager](#gtk-X11-arch))
    /// could unmaximize it again, and not all window managers support maximization.
    /// 
    /// It’s permitted to call this function before showing a window, in which case
    /// the window will be maximized when it appears onscreen initially.
    /// 
    /// You can track the result of this operation via the `GdkToplevel:state`
    /// property, or by listening to notifications on the `GtkWindow:maximized`
    /// property.
    @inlinable func maximize() {
        gtk_window_maximize(window_ptr)
    
    }

    /// Asks to minimize the specified `window`.
    /// 
    /// Note that you shouldn’t assume the window is definitely minimized
    /// afterward, because the windowing system might not support this
    /// functionality; other entities (e.g. the user or the [window manager](#gtk-X11-arch))
    /// could unminimize it again, or there may not be a window manager in
    /// which case minimization isn’t possible, etc.
    /// 
    /// It’s permitted to call this function before showing a window,
    /// in which case the window will be minimized before it ever appears
    /// onscreen.
    /// 
    /// You can track result of this operation via the `GdkToplevel:state`
    /// property.
    @inlinable func minimize() {
        gtk_window_minimize(window_ptr)
    
    }

    /// Presents a window to the user. This function should not be used
    /// as when it is called, it is too late to gather a valid timestamp
    /// to allow focus stealing prevention to work correctly.
    @inlinable func present() {
        gtk_window_present(window_ptr)
    
    }

    /// Presents a window to the user. This may mean raising the window
    /// in the stacking order, unminimizing it, moving it to the current
    /// desktop, and/or giving it the keyboard focus, possibly dependent
    /// on the user’s platform, window manager, and preferences.
    /// 
    /// If `window` is hidden, this function calls `gtk_widget_show()`
    /// as well.
    /// 
    /// This function should be used when the user tries to open a window
    /// that’s already open. Say for example the preferences dialog is
    /// currently open, and the user chooses Preferences from the menu
    /// a second time; use `gtk_window_present()` to move the already-open dialog
    /// where the user can see it.
    /// 
    /// Presents a window to the user in response to a user interaction. The
    /// timestamp should be gathered when the window was requested to be shown
    /// (when clicking a link for example), rather than once the window is
    /// ready to be shown.
    @inlinable func presentWithTime(timestamp: guint32) {
        gtk_window_present_with_time(window_ptr, timestamp)
    
    }

    /// Sets or unsets the `GtkApplication` associated with the window.
    /// 
    /// The application will be kept alive for at least as long as it has any windows
    /// associated with it (see `g_application_hold()` for a way to keep it alive
    /// without windows).
    /// 
    /// Normally, the connection between the application and the window will remain
    /// until the window is destroyed, but you can explicitly remove it by setting
    /// the `application` to `nil`.
    /// 
    /// This is equivalent to calling `gtk_application_remove_window()` and/or
    /// `gtk_application_add_window()` on the old/new applications as relevant.
    @inlinable func set(application: ApplicationRef? = nil) {
        gtk_window_set_application(window_ptr, application?.application_ptr)
    
    }
    /// Sets or unsets the `GtkApplication` associated with the window.
    /// 
    /// The application will be kept alive for at least as long as it has any windows
    /// associated with it (see `g_application_hold()` for a way to keep it alive
    /// without windows).
    /// 
    /// Normally, the connection between the application and the window will remain
    /// until the window is destroyed, but you can explicitly remove it by setting
    /// the `application` to `nil`.
    /// 
    /// This is equivalent to calling `gtk_application_remove_window()` and/or
    /// `gtk_application_add_window()` on the old/new applications as relevant.
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

    /// By default, windows are decorated with a title bar, resize
    /// controls, etc.  Some [window managers](#gtk-X11-arch)
    /// allow GTK to disable these decorations, creating a
    /// borderless window. If you set the decorated property to `false`
    /// using this function, GTK will do its best to convince the window
    /// manager not to decorate the window. Depending on the system, this
    /// function may not have any effect when called on a window that is
    /// already visible, so you should call it before calling `gtk_widget_show()`.
    /// 
    /// On Windows, this function always works, since there’s no window manager
    /// policy involved.
    @inlinable func setDecorated(setting: Bool) {
        gtk_window_set_decorated(window_ptr, gboolean((setting) ? 1 : 0))
    
    }

    /// Sets the default size of a window. If the window’s “natural” size
    /// (its size request) is larger than the default, the default will be
    /// ignored.
    /// 
    /// Unlike `gtk_widget_set_size_request()`, which sets a size request for
    /// a widget and thus would keep users from shrinking the window, this
    /// function only sets the initial size, just as if the user had
    /// resized the window themselves. Users can still shrink the window
    /// again as they normally would. Setting a default size of -1 means to
    /// use the “natural” default size (the size request of the window).
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
    /// `gtk_window_get_default_size()`. Using the window allocation directly will not
    /// work in all circumstances and can lead to growing or shrinking windows.
    @inlinable func setDefaultSize(width: Int, height: Int) {
        gtk_window_set_default_size(window_ptr, gint(width), gint(height))
    
    }

    /// The default widget is the widget that’s activated when the user
    /// presses Enter in a dialog (for example). This function sets or
    /// unsets the default widget for a `GtkWindow`.
    @inlinable func set(defaultWidget: WidgetRef? = nil) {
        gtk_window_set_default_widget(window_ptr, defaultWidget?.widget_ptr)
    
    }
    /// The default widget is the widget that’s activated when the user
    /// presses Enter in a dialog (for example). This function sets or
    /// unsets the default widget for a `GtkWindow`.
    @inlinable func set<WidgetT: WidgetProtocol>(defaultWidget: WidgetT?) {
        gtk_window_set_default_widget(window_ptr, defaultWidget?.widget_ptr)
    
    }

    /// By default, windows have a close button in the window frame. Some
    /// [window managers](#gtk-X11-arch) allow GTK to
    /// disable this button. If you set the deletable property to `false`
    /// using this function, GTK will do its best to convince the window
    /// manager not to show a close button. Depending on the system, this
    /// function may not have any effect when called on a window that is
    /// already visible, so you should call it before calling `gtk_widget_show()`.
    /// 
    /// On Windows, this function always works, since there’s no window manager
    /// policy involved.
    @inlinable func setDeletable(setting: Bool) {
        gtk_window_set_deletable(window_ptr, gboolean((setting) ? 1 : 0))
    
    }

    /// If `setting` is `true`, then destroying the transient parent of `window`
    /// will also destroy `window` itself. This is useful for dialogs that
    /// shouldn’t persist beyond the lifetime of the main window they're
    /// associated with, for example.
    @inlinable func setDestroyWithParent(setting: Bool) {
        gtk_window_set_destroy_with_parent(window_ptr, gboolean((setting) ? 1 : 0))
    
    }

    /// Sets the `GdkDisplay` where the `window` is displayed; if
    /// the window is already mapped, it will be unmapped, and
    /// then remapped on the new display.
    @inlinable func set<DisplayT: Gdk.DisplayProtocol>(display: DisplayT) {
        gtk_window_set_display(window_ptr, display.display_ptr)
    
    }

    /// If `focus` is not the current focus widget, and is focusable, sets
    /// it as the focus widget for the window. If `focus` is `nil`, unsets
    /// the focus widget for this window. To set the focus to a particular
    /// widget in the toplevel, it is usually more convenient to use
    /// `gtk_widget_grab_focus()` instead of this function.
    @inlinable func set(focus: WidgetRef? = nil) {
        gtk_window_set_focus(window_ptr, focus?.widget_ptr)
    
    }
    /// If `focus` is not the current focus widget, and is focusable, sets
    /// it as the focus widget for the window. If `focus` is `nil`, unsets
    /// the focus widget for this window. To set the focus to a particular
    /// widget in the toplevel, it is usually more convenient to use
    /// `gtk_widget_grab_focus()` instead of this function.
    @inlinable func set<WidgetT: WidgetProtocol>(focus: WidgetT?) {
        gtk_window_set_focus(window_ptr, focus?.widget_ptr)
    
    }

    /// Sets the `GtkWindow:focus`-visible property.
    @inlinable func setFocusVisible(setting: Bool) {
        gtk_window_set_focus_visible(window_ptr, gboolean((setting) ? 1 : 0))
    
    }

    /// If `setting` is `true`, then clicking the close button on the window
    /// will not destroy it, but only hide it.
    @inlinable func setHideOnClose(setting: Bool) {
        gtk_window_set_hide_on_close(window_ptr, gboolean((setting) ? 1 : 0))
    
    }

    /// Sets the icon for the window from a named themed icon.
    /// See the docs for `GtkIconTheme` for more details.
    /// On some platforms, the window icon is not used at all.
    /// 
    /// Note that this has nothing to do with the WM_ICON_NAME
    /// property which is mentioned in the ICCCM.
    @inlinable func setIcon(name: UnsafePointer<CChar>? = nil) {
        gtk_window_set_icon_name(window_ptr, name)
    
    }

    /// Sets the `GtkWindow:mnemonics`-visible property.
    @inlinable func setMnemonicsVisible(setting: Bool) {
        gtk_window_set_mnemonics_visible(window_ptr, gboolean((setting) ? 1 : 0))
    
    }

    /// Sets a window modal or non-modal. Modal windows prevent interaction
    /// with other windows in the same application. To keep modal dialogs
    /// on top of main application windows, use
    /// `gtk_window_set_transient_for()` to make the dialog transient for the
    /// parent; most [window managers](#gtk-X11-arch)
    /// will then disallow lowering the dialog below the parent.
    @inlinable func set(modal: Bool) {
        gtk_window_set_modal(window_ptr, gboolean((modal) ? 1 : 0))
    
    }

    /// Sets whether the user can resize a window.
    /// 
    /// Windows are user resizable by default.
    @inlinable func set(resizable: Bool) {
        gtk_window_set_resizable(window_ptr, gboolean((resizable) ? 1 : 0))
    
    }

    /// Startup notification identifiers are used by desktop environment to
    /// track application startup, to provide user feedback and other
    /// features. This function changes the corresponding property on the
    /// underlying GdkSurface. Normally, startup identifier is managed
    /// automatically and you should only use this function in special cases
    /// like transferring focus from other processes. You should use this
    /// function before calling `gtk_window_present()` or any equivalent
    /// function generating a window map event.
    /// 
    /// This function is only useful on X11, not with other GTK targets.
    @inlinable func set(startupId: UnsafePointer<CChar>!) {
        gtk_window_set_startup_id(window_ptr, startupId)
    
    }

    /// Sets the title of the `GtkWindow`. The title of a window will be
    /// displayed in its title bar; on the X Window System, the title bar
    /// is rendered by the [window manager](#gtk-X11-arch),
    /// so exactly how the title appears to users may vary
    /// according to a user’s exact configuration. The title should help a
    /// user distinguish this window from other windows they may have
    /// open. A good title might include the application name and current
    /// document filename, for example.
    /// document filename, for example.
    /// 
    /// Passing `nil` does the same as setting the title to an empty string.
    @inlinable func set(title: UnsafePointer<CChar>? = nil) {
        gtk_window_set_title(window_ptr, title)
    
    }

    /// Sets a custom titlebar for `window`.
    /// 
    /// A typical widget used here is `GtkHeaderBar`, as it provides various features
    /// expected of a titlebar while allowing the addition of child widgets to it.
    /// 
    /// If you set a custom titlebar, GTK will do its best to convince
    /// the window manager not to put its own titlebar on the window.
    /// Depending on the system, this function may not work for a window
    /// that is already visible, so you set the titlebar before calling
    /// `gtk_widget_show()`.
    @inlinable func set(titlebar: WidgetRef? = nil) {
        gtk_window_set_titlebar(window_ptr, titlebar?.widget_ptr)
    
    }
    /// Sets a custom titlebar for `window`.
    /// 
    /// A typical widget used here is `GtkHeaderBar`, as it provides various features
    /// expected of a titlebar while allowing the addition of child widgets to it.
    /// 
    /// If you set a custom titlebar, GTK will do its best to convince
    /// the window manager not to put its own titlebar on the window.
    /// Depending on the system, this function may not work for a window
    /// that is already visible, so you set the titlebar before calling
    /// `gtk_widget_show()`.
    @inlinable func set<WidgetT: WidgetProtocol>(titlebar: WidgetT?) {
        gtk_window_set_titlebar(window_ptr, titlebar?.widget_ptr)
    
    }

    /// Dialog windows should be set transient for the main application
    /// window they were spawned from. This allows
    /// [window managers](#gtk-X11-arch) to e.g. keep the
    /// dialog on top of the main window, or center the dialog over the
    /// main window. `gtk_dialog_new_with_buttons()` and other convenience
    /// functions in GTK will sometimes call
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
    /// window they were spawned from. This allows
    /// [window managers](#gtk-X11-arch) to e.g. keep the
    /// dialog on top of the main window, or center the dialog over the
    /// main window. `gtk_dialog_new_with_buttons()` and other convenience
    /// functions in GTK will sometimes call
    /// `gtk_window_set_transient_for()` on your behalf.
    /// 
    /// Passing `nil` for `parent` unsets the current transient window.
    /// 
    /// On Windows, this function puts the child window on top of the parent,
    /// much as the window manager would have done on X.
    @inlinable func setTransientFor<WindowT: WindowProtocol>(parent: WindowT?) {
        gtk_window_set_transient_for(window_ptr, parent?.window_ptr)
    
    }

    /// Asks to remove the fullscreen state for `window`, and return to its previous
    /// state.
    /// 
    /// Note that you shouldn’t assume the window is definitely not full screen afterward,
    /// because other entities (e.g. the user or [window manager](#gtk-X11-arch)) could
    /// fullscreen it again, and not all window managers honor requests to unfullscreen
    /// windows; normally the window will end up restored to its normal state. Just don’t
    /// write code that crashes if not.
    /// 
    /// You can track the result of this operation via the `GdkToplevel:state` property,
    /// or by listening to notifications of the `GtkWindow:fullscreened` property.
    @inlinable func unfullscreen() {
        gtk_window_unfullscreen(window_ptr)
    
    }

    /// Asks to unmaximize `window`.
    /// 
    /// Note that you shouldn’t assume the window is definitely unmaximized afterward,
    /// because other entities (e.g. the user or [window manager](#gtk-X11-arch)) could
    /// maximize it again, and not all window managers honor requests to unmaximize.
    /// 
    /// You can track the result of this operation via the `GdkToplevel:state`
    /// property, or by listening to notifications on the `GtkWindow:maximized`
    /// property.
    @inlinable func unmaximize() {
        gtk_window_unmaximize(window_ptr)
    
    }

    /// Asks to unminimize the specified `window`.
    /// 
    /// Note that you shouldn’t assume the window is definitely unminimized
    /// afterward, because the windowing system might not support this
    /// functionality; other entities (e.g. the user or the [window manager](#gtk-X11-arch))
    /// could minimize it again, or there may not be a window manager in
    /// which case minimization isn’t possible, etc.
    /// 
    /// You can track result of this operation via the `GdkToplevel:state`
    /// property.
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

    /// Finished the `gtk_show_uri()` call and returns the result
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
        /// Gets the `GtkApplication` associated with the window (if any).
        get {
            let rv = ApplicationRef(gconstpointer: gconstpointer(gtk_window_get_application(window_ptr)))
            return rv
        }
        /// Sets or unsets the `GtkApplication` associated with the window.
        /// 
        /// The application will be kept alive for at least as long as it has any windows
        /// associated with it (see `g_application_hold()` for a way to keep it alive
        /// without windows).
        /// 
        /// Normally, the connection between the application and the window will remain
        /// until the window is destroyed, but you can explicitly remove it by setting
        /// the `application` to `nil`.
        /// 
        /// This is equivalent to calling `gtk_application_remove_window()` and/or
        /// `gtk_application_add_window()` on the old/new applications as relevant.
        nonmutating set {
            gtk_window_set_application(window_ptr, UnsafeMutablePointer<GtkApplication>(newValue?.application_ptr))
        }
    }

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

    /// Whether the window should be decorated by the window manager.
    @inlinable var decorated: Bool {
        /// Returns whether the window has been set to have decorations
        /// such as a title bar via `gtk_window_set_decorated()`.
        get {
            let rv = ((gtk_window_get_decorated(window_ptr)) != 0)
            return rv
        }
        /// By default, windows are decorated with a title bar, resize
        /// controls, etc.  Some [window managers](#gtk-X11-arch)
        /// allow GTK to disable these decorations, creating a
        /// borderless window. If you set the decorated property to `false`
        /// using this function, GTK will do its best to convince the window
        /// manager not to decorate the window. Depending on the system, this
        /// function may not have any effect when called on a window that is
        /// already visible, so you should call it before calling `gtk_widget_show()`.
        /// 
        /// On Windows, this function always works, since there’s no window manager
        /// policy involved.
        nonmutating set {
            gtk_window_set_decorated(window_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Returns the default widget for `window`.
    /// 
    /// See `gtk_window_set_default_widget()` for more details.
    @inlinable var defaultWidget: WidgetRef! {
        /// Returns the default widget for `window`.
        /// 
        /// See `gtk_window_set_default_widget()` for more details.
        get {
            guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_window_get_default_widget(window_ptr))) else { return nil }
            return rv
        }
        /// The default widget is the widget that’s activated when the user
        /// presses Enter in a dialog (for example). This function sets or
        /// unsets the default widget for a `GtkWindow`.
        nonmutating set {
            gtk_window_set_default_widget(window_ptr, UnsafeMutablePointer<GtkWidget>(newValue?.widget_ptr))
        }
    }

    /// Whether the window frame should have a close button.
    @inlinable var deletable: Bool {
        /// Returns whether the window has been set to have a close button
        /// via `gtk_window_set_deletable()`.
        get {
            let rv = ((gtk_window_get_deletable(window_ptr)) != 0)
            return rv
        }
        /// By default, windows have a close button in the window frame. Some
        /// [window managers](#gtk-X11-arch) allow GTK to
        /// disable this button. If you set the deletable property to `false`
        /// using this function, GTK will do its best to convince the window
        /// manager not to show a close button. Depending on the system, this
        /// function may not have any effect when called on a window that is
        /// already visible, so you should call it before calling `gtk_widget_show()`.
        /// 
        /// On Windows, this function always works, since there’s no window manager
        /// policy involved.
        nonmutating set {
            gtk_window_set_deletable(window_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Returns whether the window will be destroyed with its transient parent. See
    /// gtk_window_set_destroy_with_parent ().
    @inlinable var destroyWithParent: Bool {
        /// Returns whether the window will be destroyed with its transient parent. See
        /// gtk_window_set_destroy_with_parent ().
        get {
            let rv = ((gtk_window_get_destroy_with_parent(window_ptr)) != 0)
            return rv
        }
        /// If `setting` is `true`, then destroying the transient parent of `window`
        /// will also destroy `window` itself. This is useful for dialogs that
        /// shouldn’t persist beyond the lifetime of the main window they're
        /// associated with, for example.
        nonmutating set {
            gtk_window_set_destroy_with_parent(window_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Retrieves the current focused widget within the window.
    /// Note that this is the widget that would have the focus
    /// if the toplevel window focused; if the toplevel window
    /// is not focused then  `gtk_widget_has_focus (widget)` will
    /// not be `true` for the widget.
    @inlinable var focus: WidgetRef! {
        /// Retrieves the current focused widget within the window.
        /// Note that this is the widget that would have the focus
        /// if the toplevel window focused; if the toplevel window
        /// is not focused then  `gtk_widget_has_focus (widget)` will
        /// not be `true` for the widget.
        get {
            guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_window_get_focus(window_ptr))) else { return nil }
            return rv
        }
        /// If `focus` is not the current focus widget, and is focusable, sets
        /// it as the focus widget for the window. If `focus` is `nil`, unsets
        /// the focus widget for this window. To set the focus to a particular
        /// widget in the toplevel, it is usually more convenient to use
        /// `gtk_widget_grab_focus()` instead of this function.
        nonmutating set {
            gtk_window_set_focus(window_ptr, UnsafeMutablePointer<GtkWidget>(newValue?.widget_ptr))
        }
    }

    /// Gets the value of the `GtkWindow:focus`-visible property.
    @inlinable var focusVisible: Bool {
        /// Gets the value of the `GtkWindow:focus`-visible property.
        get {
            let rv = ((gtk_window_get_focus_visible(window_ptr)) != 0)
            return rv
        }
        /// Sets the `GtkWindow:focus`-visible property.
        nonmutating set {
            gtk_window_set_focus_visible(window_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Returns the group for `window` or the default group, if
    /// `window` is `nil` or if `window` does not have an explicit
    /// window group.
    @inlinable var group: WindowGroupRef! {
        /// Returns the group for `window` or the default group, if
        /// `window` is `nil` or if `window` does not have an explicit
        /// window group.
        get {
            let rv = WindowGroupRef(gconstpointer: gconstpointer(gtk_window_get_group(window_ptr)))
            return rv
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

    /// Returns the name of the themed icon for the window,
    /// see `gtk_window_set_icon_name()`.
    @inlinable var iconName: String! {
        /// Returns the name of the themed icon for the window,
        /// see `gtk_window_set_icon_name()`.
        get {
            let rv = gtk_window_get_icon_name(window_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the icon for the window from a named themed icon.
        /// See the docs for `GtkIconTheme` for more details.
        /// On some platforms, the window icon is not used at all.
        /// 
        /// Note that this has nothing to do with the WM_ICON_NAME
        /// property which is mentioned in the ICCCM.
        nonmutating set {
            gtk_window_set_icon_name(window_ptr, newValue)
        }
    }

    /// Returns whether the window is part of the current active toplevel.
    /// (That is, the toplevel window receiving keystrokes.)
    /// The return value is `true` if the window is active toplevel itself.
    /// You might use this function if you wanted to draw a widget
    /// differently in an active window from a widget in an inactive window.
    @inlinable var isActive: Bool {
        /// Returns whether the window is part of the current active toplevel.
        /// (That is, the toplevel window receiving keystrokes.)
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
    /// `gtk_window_fullscreen()` or `gtk_window_unfullscreen()`.
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
        /// `gtk_window_fullscreen()` or `gtk_window_unfullscreen()`.
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
    /// `gtk_window_maximize()` or `gtk_window_unmaximize()`.
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
        /// `gtk_window_maximize()` or `gtk_window_unmaximize()`.
        /// 
        /// If the window isn't yet mapped, the value returned will whether the
        /// initial requested state is maximized.
        get {
            let rv = ((gtk_window_is_maximized(window_ptr)) != 0)
            return rv
        }
    }

    /// Gets the value of the `GtkWindow:mnemonics`-visible property.
    @inlinable var mnemonicsVisible: Bool {
        /// Gets the value of the `GtkWindow:mnemonics`-visible property.
        get {
            let rv = ((gtk_window_get_mnemonics_visible(window_ptr)) != 0)
            return rv
        }
        /// Sets the `GtkWindow:mnemonics`-visible property.
        nonmutating set {
            gtk_window_set_mnemonics_visible(window_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    @inlinable var modal: Bool {
        /// Returns whether the window is modal. See `gtk_window_set_modal()`.
        get {
            let rv = ((gtk_window_get_modal(window_ptr)) != 0)
            return rv
        }
        /// Sets a window modal or non-modal. Modal windows prevent interaction
        /// with other windows in the same application. To keep modal dialogs
        /// on top of main application windows, use
        /// `gtk_window_set_transient_for()` to make the dialog transient for the
        /// parent; most [window managers](#gtk-X11-arch)
        /// will then disallow lowering the dialog below the parent.
        nonmutating set {
            gtk_window_set_modal(window_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

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

    @inlinable var title: String! {
        /// Retrieves the title of the window. See `gtk_window_set_title()`.
        get {
            let rv = gtk_window_get_title(window_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the title of the `GtkWindow`. The title of a window will be
        /// displayed in its title bar; on the X Window System, the title bar
        /// is rendered by the [window manager](#gtk-X11-arch),
        /// so exactly how the title appears to users may vary
        /// according to a user’s exact configuration. The title should help a
        /// user distinguish this window from other windows they may have
        /// open. A good title might include the application name and current
        /// document filename, for example.
        /// document filename, for example.
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
        /// A typical widget used here is `GtkHeaderBar`, as it provides various features
        /// expected of a titlebar while allowing the addition of child widgets to it.
        /// 
        /// If you set a custom titlebar, GTK will do its best to convince
        /// the window manager not to put its own titlebar on the window.
        /// Depending on the system, this function may not work for a window
        /// that is already visible, so you set the titlebar before calling
        /// `gtk_widget_show()`.
        nonmutating set {
            gtk_window_set_titlebar(window_ptr, UnsafeMutablePointer<GtkWidget>(newValue?.widget_ptr))
        }
    }

    /// Fetches the transient parent for this window. See
    /// `gtk_window_set_transient_for()`.
    @inlinable var transientFor: WindowRef! {
        /// Fetches the transient parent for this window. See
        /// `gtk_window_set_transient_for()`.
        get {
            guard let rv = WindowRef(gconstpointer: gconstpointer(gtk_window_get_transient_for(window_ptr))) else { return nil }
            return rv
        }
        /// Dialog windows should be set transient for the main application
        /// window they were spawned from. This allows
        /// [window managers](#gtk-X11-arch) to e.g. keep the
        /// dialog on top of the main window, or center the dialog over the
        /// main window. `gtk_dialog_new_with_buttons()` and other convenience
        /// functions in GTK will sometimes call
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

/// The `WindowControlsProtocol` protocol exposes the methods and properties of an underlying `GtkWindowControls` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `WindowControls`.
/// Alternatively, use `WindowControlsRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// GtkWindowControls shows window frame controls, such as minimize, maximize
/// and close buttons, and the window icon.
/// 
/// `GtkWindowControls` only displays start or end side of the controls (see
/// `GtkWindowControls:side`), so it's intended to be always used in pair with
/// another `GtkWindowControls` using the opposite side, for example:
/// 
/// ```
/// <object class="GtkBox">
///   <child>
///     <object class="GtkWindowControls">
///       <property name="side">start</property>
///     </object>
///   </child>
/// 
///   ...
/// 
///   <child>
///     <object class="GtkWindowControls">
///       <property name="side">end</property>
///     </object>
///   </child>
/// </object>
/// ```
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
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
/// and `GtkWindowControls:decoration`-layout value.
/// 
/// When `GtkWindowControls:empty` is `true`, it gets the .empty style class.
/// 
/// # Accessibility
/// 
/// GtkWindowHandle uses the `GTK_ACCESSIBLE_ROLE_GROUP` role.
public protocol WindowControlsProtocol: WidgetProtocol {
        /// Untyped pointer to the underlying `GtkWindowControls` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkWindowControls` instance.
    var window_controls_ptr: UnsafeMutablePointer<GtkWindowControls>! { get }

}

/// The `WindowControlsRef` type acts as a lightweight Swift reference to an underlying `GtkWindowControls` instance.
/// It exposes methods that can operate on this data type through `WindowControlsProtocol` conformance.
/// Use `WindowControlsRef` only as an `unowned` reference to an existing `GtkWindowControls` instance.
///
/// GtkWindowControls shows window frame controls, such as minimize, maximize
/// and close buttons, and the window icon.
/// 
/// `GtkWindowControls` only displays start or end side of the controls (see
/// `GtkWindowControls:side`), so it's intended to be always used in pair with
/// another `GtkWindowControls` using the opposite side, for example:
/// 
/// ```
/// <object class="GtkBox">
///   <child>
///     <object class="GtkWindowControls">
///       <property name="side">start</property>
///     </object>
///   </child>
/// 
///   ...
/// 
///   <child>
///     <object class="GtkWindowControls">
///       <property name="side">end</property>
///     </object>
///   </child>
/// </object>
/// ```
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
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
/// and `GtkWindowControls:decoration`-layout value.
/// 
/// When `GtkWindowControls:empty` is `true`, it gets the .empty style class.
/// 
/// # Accessibility
/// 
/// GtkWindowHandle uses the `GTK_ACCESSIBLE_ROLE_GROUP` role.
public struct WindowControlsRef: WindowControlsProtocol {
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

/// The `WindowControls` type acts as a reference-counted owner of an underlying `GtkWindowControls` instance.
/// It provides the methods that can operate on this data type through `WindowControlsProtocol` conformance.
/// Use `WindowControls` as a strong reference or owner of a `GtkWindowControls` instance.
///
/// GtkWindowControls shows window frame controls, such as minimize, maximize
/// and close buttons, and the window icon.
/// 
/// `GtkWindowControls` only displays start or end side of the controls (see
/// `GtkWindowControls:side`), so it's intended to be always used in pair with
/// another `GtkWindowControls` using the opposite side, for example:
/// 
/// ```
/// <object class="GtkBox">
///   <child>
///     <object class="GtkWindowControls">
///       <property name="side">start</property>
///     </object>
///   </child>
/// 
///   ...
/// 
///   <child>
///     <object class="GtkWindowControls">
///       <property name="side">end</property>
///     </object>
///   </child>
/// </object>
/// ```
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
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
/// and `GtkWindowControls:decoration`-layout value.
/// 
/// When `GtkWindowControls:empty` is `true`, it gets the .empty style class.
/// 
/// # Accessibility
/// 
/// GtkWindowHandle uses the `GTK_ACCESSIBLE_ROLE_GROUP` role.
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
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowControlsProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
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
    }


}

public enum WindowControlsPropertyName: String, PropertyNameProtocol {
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
    /// Whether the widget or any of its descendents can accept
    /// the input focus.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case canFocus = "can-focus"
    case canTarget = "can-target"
    /// A list of css classes applied to this widget.
    case cssClasses = "css-classes"
    /// The name of this widget in the CSS tree.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case cssName = "css-name"
    /// The cursor used by `widget`. See `gtk_widget_set_cursor()` for details.
    case cursor = "cursor"
    /// The decoration layout for window buttons. If this property is not set,
    /// the `GtkSettings:gtk`-decoration-layout setting is used.
    /// 
    /// See `gtk_window_controls_set_decoration_layout()` for information
    /// about the format of this string.
    case decorationLayout = "decoration-layout"
    /// Whether the widget has any window buttons.
    case empty = "empty"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    case focusOnClick = "focus-on-click"
    /// Whether this widget itself will accept the input focus.
    case focusable = "focusable"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case halign = "halign"
    case hasDefault = "has-default"
    case hasFocus = "has-focus"
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
    /// whether it will provide a tooltip or not.
    case hasTooltip = "has-tooltip"
    case heightRequest = "height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case hexpand = "hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
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
    /// `gtk_widget_set_size_request()` for example.
    case marginBottom = "margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginEnd = "margin-end"
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
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    case opacity = "opacity"
    /// How content outside the widget's content area is treated.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case overflow = "overflow"
    case parent = "parent"
    case receivesDefault = "receives-default"
    /// The `GtkRoot` widget of the widget tree containing this widget or `nil` if
    /// the widget is not contained in a root widget.
    case root = "root"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case sensitive = "sensitive"
    /// Whether the widget shows start or end side of the decoration layout.
    /// 
    /// See `gtk_window_controls_set_decoration_layout()`.
    case side = "side"
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
    /// The "active-descendant-changed" signal is emitted by an object
    /// which has the state ATK_STATE_MANAGES_DESCENDANTS when the focus
    /// object in the object changes. For instance, a table will emit the
    /// signal when the cell in the table which has focus changes.
    case activeDescendantChanged = "active-descendant-changed"
    /// The signal "children-changed" is emitted when a child is added or
    /// removed form an object. It supports two details: "add" and
    /// "remove"
    case childrenChanged = "children-changed"
    /// Signals that all holders of a reference to the widget should release
    /// the reference that they hold. May result in finalization of the widget
    /// if all references are released.
    /// 
    /// This signal is not suitable for saving widget state.
    case destroy = "destroy"
    /// The `direction`-changed signal is emitted when the text direction
    /// of a widget changes.
    case directionChanged = "direction-changed"
    /// The signal "focus-event" is emitted when an object gained or lost
    /// focus.
    ///
    /// **focus-event is deprecated:**
    /// Use the #AtkObject::state-change signal instead.
    case focusEvent = "focus-event"
    /// The `hide` signal is emitted when `widget` is hidden, for example with
    /// `gtk_widget_hide()`.
    case hide = "hide"
    /// Gets emitted if keyboard navigation fails.
    /// See `gtk_widget_keynav_failed()` for details.
    case keynavFailed = "keynav-failed"
    /// The `map` signal is emitted when `widget` is going to be mapped, that is
    /// when the widget is visible (which is controlled with
    /// `gtk_widget_set_visible()`) and all its parents up to the toplevel widget
    /// are also visible.
    /// 
    /// The `map` signal can be used to determine whether a widget will be drawn,
    /// for instance it can resume an animation that was stopped during the
    /// emission of `GtkWidget::unmap`.
    case map = "map"
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
    /// `GdkSurface`, which means that `gtk_widget_realize()` has been called or the
    /// widget has been mapped (that is, it is going to be drawn).
    case realize = "realize"
    /// The `show` signal is emitted when `widget` is shown, for example with
    /// `gtk_widget_show()`.
    case show = "show"
    /// The "state-change" signal is emitted when an object's state
    /// changes.  The detail value identifies the state type which has
    /// changed.
    case stateChange = "state-change"
    /// The `state`-flags-changed signal is emitted when the widget state
    /// changes, see `gtk_widget_get_state_flags()`.
    case stateFlagsChanged = "state-flags-changed"
    /// The `unmap` signal is emitted when `widget` is going to be unmapped, which
    /// means that either it or any of its parents up to the toplevel widget have
    /// been set as hidden.
    /// 
    /// As `unmap` indicates that a widget will not be shown any longer, it can be
    /// used to, for example, stop an animation on the widget.
    case unmap = "unmap"
    /// The `unrealize` signal is emitted when the `GdkSurface` associated with
    /// `widget` is destroyed, which means that `gtk_widget_unrealize()` has been
    /// called or the widget has been unmapped (that is, it is going to be
    /// hidden).
    case unrealize = "unrealize"
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
    /// Whether the widget or any of its descendents can accept
    /// the input focus.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyCanFocus = "notify::can-focus"
    case notifyCanTarget = "notify::can-target"
    /// A list of css classes applied to this widget.
    case notifyCssClasses = "notify::css-classes"
    /// The name of this widget in the CSS tree.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyCssName = "notify::css-name"
    /// The cursor used by `widget`. See `gtk_widget_set_cursor()` for details.
    case notifyCursor = "notify::cursor"
    /// The decoration layout for window buttons. If this property is not set,
    /// the `GtkSettings:gtk`-decoration-layout setting is used.
    /// 
    /// See `gtk_window_controls_set_decoration_layout()` for information
    /// about the format of this string.
    case notifyDecorationLayout = "notify::decoration-layout"
    /// Whether the widget has any window buttons.
    case notifyEmpty = "notify::empty"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    case notifyFocusOnClick = "notify::focus-on-click"
    /// Whether this widget itself will accept the input focus.
    case notifyFocusable = "notify::focusable"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case notifyHalign = "notify::halign"
    case notifyHasDefault = "notify::has-default"
    case notifyHasFocus = "notify::has-focus"
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
    /// whether it will provide a tooltip or not.
    case notifyHasTooltip = "notify::has-tooltip"
    case notifyHeightRequest = "notify::height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case notifyHexpand = "notify::hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
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
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginBottom = "notify::margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginEnd = "notify::margin-end"
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
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    case notifyOpacity = "notify::opacity"
    /// How content outside the widget's content area is treated.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyOverflow = "notify::overflow"
    case notifyParent = "notify::parent"
    case notifyReceivesDefault = "notify::receives-default"
    /// The `GtkRoot` widget of the widget tree containing this widget or `nil` if
    /// the widget is not contained in a root widget.
    case notifyRoot = "notify::root"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case notifyScaleFactor = "notify::scale-factor"
    case notifySensitive = "notify::sensitive"
    /// Whether the widget shows start or end side of the decoration layout.
    /// 
    /// See `gtk_window_controls_set_decoration_layout()`.
    case notifySide = "notify::side"
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
    case notifyWidthRequest = "notify::width-request"
}

public extension WindowControlsProtocol {
    /// Connect a `WindowControlsSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: WindowControlsSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
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

// MARK: WindowControls Class: WindowControlsProtocol extension (methods and fields)
public extension WindowControlsProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkWindowControls` instance.
    @inlinable var window_controls_ptr: UnsafeMutablePointer<GtkWindowControls>! { return ptr?.assumingMemoryBound(to: GtkWindowControls.self) }

    /// Gets the decoration layout set with
    /// `gtk_window_controls_set_decoration_layout()`.
    @inlinable func getDecorationLayout() -> String! {
        let rv = gtk_window_controls_get_decoration_layout(window_controls_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets whether the widget has any window buttons.
    @inlinable func getEmpty() -> Bool {
        let rv = ((gtk_window_controls_get_empty(window_controls_ptr)) != 0)
        return rv
    }

    /// Gets the side set with `gtk_window_controls_set_side()`.
    @inlinable func getSide() -> GtkPackType {
        let rv = gtk_window_controls_get_side(window_controls_ptr)
        return rv
    }

    /// Sets the decoration layout for the title buttons, overriding
    /// the `GtkSettings:gtk`-decoration-layout setting.
    /// 
    /// The format of the string is button names, separated by commas.
    /// A colon separates the buttons that should appear on the left
    /// from those on the right. Recognized button names are minimize,
    /// maximize, close and icon (the window icon).
    /// 
    /// For example, “icon:minimize,maximize,close” specifies a icon
    /// on the left, and minimize, maximize and close buttons on the right.
    /// 
    /// If `GtkWindowControls:side` value is `GTK_PACK_START`, `self` will
    /// display the part before the colon, otherwise after that.
    @inlinable func setDecoration(layout: UnsafePointer<CChar>? = nil) {
        gtk_window_controls_set_decoration_layout(window_controls_ptr, layout)
    
    }

    /// Sets the side for `self`, determining which part of decoration layout it uses.
    /// 
    /// See `gtk_window_controls_set_decoration_layout()`
    @inlinable func set(side: GtkPackType) {
        gtk_window_controls_set_side(window_controls_ptr, side)
    
    }
    /// Gets the decoration layout set with
    /// `gtk_window_controls_set_decoration_layout()`.
    @inlinable var decorationLayout: String! {
        /// Gets the decoration layout set with
        /// `gtk_window_controls_set_decoration_layout()`.
        get {
            let rv = gtk_window_controls_get_decoration_layout(window_controls_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the decoration layout for the title buttons, overriding
        /// the `GtkSettings:gtk`-decoration-layout setting.
        /// 
        /// The format of the string is button names, separated by commas.
        /// A colon separates the buttons that should appear on the left
        /// from those on the right. Recognized button names are minimize,
        /// maximize, close and icon (the window icon).
        /// 
        /// For example, “icon:minimize,maximize,close” specifies a icon
        /// on the left, and minimize, maximize and close buttons on the right.
        /// 
        /// If `GtkWindowControls:side` value is `GTK_PACK_START`, `self` will
        /// display the part before the colon, otherwise after that.
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
    /// See `gtk_window_controls_set_decoration_layout()`.
    @inlinable var side: GtkPackType {
        /// Gets the side set with `gtk_window_controls_set_side()`.
        get {
            let rv = gtk_window_controls_get_side(window_controls_ptr)
            return rv
        }
        /// Sets the side for `self`, determining which part of decoration layout it uses.
        /// 
        /// See `gtk_window_controls_set_decoration_layout()`
        nonmutating set {
            gtk_window_controls_set_side(window_controls_ptr, newValue)
        }
    }


}



// MARK: - WindowGroup Class

/// The `WindowGroupProtocol` protocol exposes the methods and properties of an underlying `GtkWindowGroup` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `WindowGroup`.
/// Alternatively, use `WindowGroupRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GtkWindowGroup` restricts the effect of grabs to windows
/// in the same group, thereby making window groups almost behave
/// like separate applications.
/// 
/// A window can be a member in at most one window group at a time.
/// Windows that have not been explicitly assigned to a group are
/// implicitly treated like windows of the default window group.
/// 
/// GtkWindowGroup objects are referenced by each window in the group,
/// so once you have added all windows to a GtkWindowGroup, you can drop
/// the initial reference to the window group with `g_object_unref()`. If the
/// windows in the window group are subsequently destroyed, then they will
/// be removed from the window group and drop their references on the window
/// group; when all window have been removed, the window group will be
/// freed.
public protocol WindowGroupProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `GtkWindowGroup` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkWindowGroup` instance.
    var window_group_ptr: UnsafeMutablePointer<GtkWindowGroup>! { get }

}

/// The `WindowGroupRef` type acts as a lightweight Swift reference to an underlying `GtkWindowGroup` instance.
/// It exposes methods that can operate on this data type through `WindowGroupProtocol` conformance.
/// Use `WindowGroupRef` only as an `unowned` reference to an existing `GtkWindowGroup` instance.
///
/// A `GtkWindowGroup` restricts the effect of grabs to windows
/// in the same group, thereby making window groups almost behave
/// like separate applications.
/// 
/// A window can be a member in at most one window group at a time.
/// Windows that have not been explicitly assigned to a group are
/// implicitly treated like windows of the default window group.
/// 
/// GtkWindowGroup objects are referenced by each window in the group,
/// so once you have added all windows to a GtkWindowGroup, you can drop
/// the initial reference to the window group with `g_object_unref()`. If the
/// windows in the window group are subsequently destroyed, then they will
/// be removed from the window group and drop their references on the window
/// group; when all window have been removed, the window group will be
/// freed.
public struct WindowGroupRef: WindowGroupProtocol {
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

/// The `WindowGroup` type acts as a reference-counted owner of an underlying `GtkWindowGroup` instance.
/// It provides the methods that can operate on this data type through `WindowGroupProtocol` conformance.
/// Use `WindowGroup` as a strong reference or owner of a `GtkWindowGroup` instance.
///
/// A `GtkWindowGroup` restricts the effect of grabs to windows
/// in the same group, thereby making window groups almost behave
/// like separate applications.
/// 
/// A window can be a member in at most one window group at a time.
/// Windows that have not been explicitly assigned to a group are
/// implicitly treated like windows of the default window group.
/// 
/// GtkWindowGroup objects are referenced by each window in the group,
/// so once you have added all windows to a GtkWindowGroup, you can drop
/// the initial reference to the window group with `g_object_unref()`. If the
/// windows in the window group are subsequently destroyed, then they will
/// be removed from the window group and drop their references on the window
/// group; when all window have been removed, the window group will be
/// freed.
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
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowGroupProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
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

}

public extension WindowGroupProtocol {
    /// Connect a `WindowGroupSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: WindowGroupSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
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

    @inlinable var priv: WindowGroupPrivateRef! {
        get {
            let rv = WindowGroupPrivateRef(gconstpointer: gconstpointer(window_group_ptr.pointee.priv))
            return rv
        }
    }

}



// MARK: - WindowHandle Class

/// The `WindowHandleProtocol` protocol exposes the methods and properties of an underlying `GtkWindowHandle` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `WindowHandle`.
/// Alternatively, use `WindowHandleRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// GtkWindowHandle is a titlebar area widget. When added into a window, it can
/// be dragged to move the window, and handles right click, double click and
/// middle click as expected of a titlebar.
/// 
/// # CSS nodes
/// 
/// `GtkWindowHandle` has a single CSS node with the name `windowhandle`.
/// 
/// # Accessibility
/// 
/// GtkWindowHandle uses the `GTK_ACCESSIBLE_ROLE_GROUP` role.
public protocol WindowHandleProtocol: WidgetProtocol {
        /// Untyped pointer to the underlying `GtkWindowHandle` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkWindowHandle` instance.
    var window_handle_ptr: UnsafeMutablePointer<GtkWindowHandle>! { get }

}

/// The `WindowHandleRef` type acts as a lightweight Swift reference to an underlying `GtkWindowHandle` instance.
/// It exposes methods that can operate on this data type through `WindowHandleProtocol` conformance.
/// Use `WindowHandleRef` only as an `unowned` reference to an existing `GtkWindowHandle` instance.
///
/// GtkWindowHandle is a titlebar area widget. When added into a window, it can
/// be dragged to move the window, and handles right click, double click and
/// middle click as expected of a titlebar.
/// 
/// # CSS nodes
/// 
/// `GtkWindowHandle` has a single CSS node with the name `windowhandle`.
/// 
/// # Accessibility
/// 
/// GtkWindowHandle uses the `GTK_ACCESSIBLE_ROLE_GROUP` role.
public struct WindowHandleRef: WindowHandleProtocol {
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

/// The `WindowHandle` type acts as a reference-counted owner of an underlying `GtkWindowHandle` instance.
/// It provides the methods that can operate on this data type through `WindowHandleProtocol` conformance.
/// Use `WindowHandle` as a strong reference or owner of a `GtkWindowHandle` instance.
///
/// GtkWindowHandle is a titlebar area widget. When added into a window, it can
/// be dragged to move the window, and handles right click, double click and
/// middle click as expected of a titlebar.
/// 
/// # CSS nodes
/// 
/// `GtkWindowHandle` has a single CSS node with the name `windowhandle`.
/// 
/// # Accessibility
/// 
/// GtkWindowHandle uses the `GTK_ACCESSIBLE_ROLE_GROUP` role.
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
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowHandleProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
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
    }


}

public enum WindowHandlePropertyName: String, PropertyNameProtocol {
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
    /// Whether the widget or any of its descendents can accept
    /// the input focus.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case canFocus = "can-focus"
    case canTarget = "can-target"
    case child = "child"
    /// A list of css classes applied to this widget.
    case cssClasses = "css-classes"
    /// The name of this widget in the CSS tree.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case cssName = "css-name"
    /// The cursor used by `widget`. See `gtk_widget_set_cursor()` for details.
    case cursor = "cursor"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    case focusOnClick = "focus-on-click"
    /// Whether this widget itself will accept the input focus.
    case focusable = "focusable"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case halign = "halign"
    case hasDefault = "has-default"
    case hasFocus = "has-focus"
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
    /// whether it will provide a tooltip or not.
    case hasTooltip = "has-tooltip"
    case heightRequest = "height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case hexpand = "hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
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
    /// `gtk_widget_set_size_request()` for example.
    case marginBottom = "margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginEnd = "margin-end"
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
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    case opacity = "opacity"
    /// How content outside the widget's content area is treated.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case overflow = "overflow"
    case parent = "parent"
    case receivesDefault = "receives-default"
    /// The `GtkRoot` widget of the widget tree containing this widget or `nil` if
    /// the widget is not contained in a root widget.
    case root = "root"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case sensitive = "sensitive"
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
    /// The "active-descendant-changed" signal is emitted by an object
    /// which has the state ATK_STATE_MANAGES_DESCENDANTS when the focus
    /// object in the object changes. For instance, a table will emit the
    /// signal when the cell in the table which has focus changes.
    case activeDescendantChanged = "active-descendant-changed"
    /// The signal "children-changed" is emitted when a child is added or
    /// removed form an object. It supports two details: "add" and
    /// "remove"
    case childrenChanged = "children-changed"
    /// Signals that all holders of a reference to the widget should release
    /// the reference that they hold. May result in finalization of the widget
    /// if all references are released.
    /// 
    /// This signal is not suitable for saving widget state.
    case destroy = "destroy"
    /// The `direction`-changed signal is emitted when the text direction
    /// of a widget changes.
    case directionChanged = "direction-changed"
    /// The signal "focus-event" is emitted when an object gained or lost
    /// focus.
    ///
    /// **focus-event is deprecated:**
    /// Use the #AtkObject::state-change signal instead.
    case focusEvent = "focus-event"
    /// The `hide` signal is emitted when `widget` is hidden, for example with
    /// `gtk_widget_hide()`.
    case hide = "hide"
    /// Gets emitted if keyboard navigation fails.
    /// See `gtk_widget_keynav_failed()` for details.
    case keynavFailed = "keynav-failed"
    /// The `map` signal is emitted when `widget` is going to be mapped, that is
    /// when the widget is visible (which is controlled with
    /// `gtk_widget_set_visible()`) and all its parents up to the toplevel widget
    /// are also visible.
    /// 
    /// The `map` signal can be used to determine whether a widget will be drawn,
    /// for instance it can resume an animation that was stopped during the
    /// emission of `GtkWidget::unmap`.
    case map = "map"
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
    /// `GdkSurface`, which means that `gtk_widget_realize()` has been called or the
    /// widget has been mapped (that is, it is going to be drawn).
    case realize = "realize"
    /// The `show` signal is emitted when `widget` is shown, for example with
    /// `gtk_widget_show()`.
    case show = "show"
    /// The "state-change" signal is emitted when an object's state
    /// changes.  The detail value identifies the state type which has
    /// changed.
    case stateChange = "state-change"
    /// The `state`-flags-changed signal is emitted when the widget state
    /// changes, see `gtk_widget_get_state_flags()`.
    case stateFlagsChanged = "state-flags-changed"
    /// The `unmap` signal is emitted when `widget` is going to be unmapped, which
    /// means that either it or any of its parents up to the toplevel widget have
    /// been set as hidden.
    /// 
    /// As `unmap` indicates that a widget will not be shown any longer, it can be
    /// used to, for example, stop an animation on the widget.
    case unmap = "unmap"
    /// The `unrealize` signal is emitted when the `GdkSurface` associated with
    /// `widget` is destroyed, which means that `gtk_widget_unrealize()` has been
    /// called or the widget has been unmapped (that is, it is going to be
    /// hidden).
    case unrealize = "unrealize"
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
    /// Whether the widget or any of its descendents can accept
    /// the input focus.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyCanFocus = "notify::can-focus"
    case notifyCanTarget = "notify::can-target"
    case notifyChild = "notify::child"
    /// A list of css classes applied to this widget.
    case notifyCssClasses = "notify::css-classes"
    /// The name of this widget in the CSS tree.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyCssName = "notify::css-name"
    /// The cursor used by `widget`. See `gtk_widget_set_cursor()` for details.
    case notifyCursor = "notify::cursor"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    case notifyFocusOnClick = "notify::focus-on-click"
    /// Whether this widget itself will accept the input focus.
    case notifyFocusable = "notify::focusable"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case notifyHalign = "notify::halign"
    case notifyHasDefault = "notify::has-default"
    case notifyHasFocus = "notify::has-focus"
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
    /// whether it will provide a tooltip or not.
    case notifyHasTooltip = "notify::has-tooltip"
    case notifyHeightRequest = "notify::height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case notifyHexpand = "notify::hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
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
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginBottom = "notify::margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginEnd = "notify::margin-end"
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
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    case notifyOpacity = "notify::opacity"
    /// How content outside the widget's content area is treated.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyOverflow = "notify::overflow"
    case notifyParent = "notify::parent"
    case notifyReceivesDefault = "notify::receives-default"
    /// The `GtkRoot` widget of the widget tree containing this widget or `nil` if
    /// the widget is not contained in a root widget.
    case notifyRoot = "notify::root"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case notifyScaleFactor = "notify::scale-factor"
    case notifySensitive = "notify::sensitive"
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
    case notifyWidthRequest = "notify::width-request"
}

public extension WindowHandleProtocol {
    /// Connect a `WindowHandleSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: WindowHandleSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
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


