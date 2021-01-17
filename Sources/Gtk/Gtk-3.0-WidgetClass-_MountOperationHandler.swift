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

/// Metatype/GType declaration for Widget
public extension WidgetClassRef {
    
    /// This getter returns the GLib type identifier registered for `Widget`
    static var metatypeReference: GType { gtk_widget_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkWidgetClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkWidgetClass.self) }
    
    static var metatype: GtkWidgetClass? { metatypePointer?.pointee } 
    
    static var wrapper: WidgetClassRef? { WidgetClassRef(metatypePointer) }
    
    
}

// MARK: - WidgetClass Record

/// The `WidgetClassProtocol` protocol exposes the methods and properties of an underlying `GtkWidgetClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `WidgetClass`.
/// Alternatively, use `WidgetClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol WidgetClassProtocol {
        /// Untyped pointer to the underlying `GtkWidgetClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkWidgetClass` instance.
    var _ptr: UnsafeMutablePointer<GtkWidgetClass>! { get }

}

/// The `WidgetClassRef` type acts as a lightweight Swift reference to an underlying `GtkWidgetClass` instance.
/// It exposes methods that can operate on this data type through `WidgetClassProtocol` conformance.
/// Use `WidgetClassRef` only as an `unowned` reference to an existing `GtkWidgetClass` instance.
///

public struct WidgetClassRef: WidgetClassProtocol {
        /// Untyped pointer to the underlying `GtkWidgetClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension WidgetClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkWidgetClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkWidgetClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkWidgetClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkWidgetClass>?) {
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

    /// Reference intialiser for a related type that implements `WidgetClassProtocol`
    @inlinable init<T: WidgetClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: WidgetClass Record: WidgetClassProtocol extension (methods and fields)
public extension WidgetClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkWidgetClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkWidgetClass>! { return ptr?.assumingMemoryBound(to: GtkWidgetClass.self) }

    /// Declares a `callback_symbol` to handle `callback_name` from the template XML
    /// defined for `widget_type`. See `gtk_builder_add_callback_symbol()`.
    /// 
    /// Note that this must be called from a composite widget classes class
    /// initializer after calling `gtk_widget_class_set_template()`.
    @inlinable func bindTemplateCallbackFull(callbackName: UnsafePointer<gchar>!, callbackSymbol: GCallback?) {
        gtk_widget_class_bind_template_callback_full(_ptr, callbackName, callbackSymbol)
    
    }

    /// Automatically assign an object declared in the class template XML to be set to a location
    /// on a freshly built instance’s private data, or alternatively accessible via `gtk_widget_get_template_child()`.
    /// 
    /// The struct can point either into the public instance, then you should use `G_STRUCT_OFFSET(WidgetType, member)`
    /// for `struct_offset`,  or in the private struct, then you should use `G_PRIVATE_OFFSET(WidgetType, member)`.
    /// 
    /// An explicit strong reference will be held automatically for the duration of your
    /// instance’s life cycle, it will be released automatically when `GObjectClass.dispose``()` runs
    /// on your instance and if a `struct_offset` that is != 0 is specified, then the automatic location
    /// in your instance public or private data will be set to `nil`. You can however access an automated child
    /// pointer the first time your classes `GObjectClass.dispose``()` runs, or alternatively in
    /// `GtkWidgetClass.destroy``()`.
    /// 
    /// If `internal_child` is specified, `GtkBuildableIface.get_internal_child``()` will be automatically
    /// implemented by the `GtkWidget` class so there is no need to implement it manually.
    /// 
    /// The wrapper macros `gtk_widget_class_bind_template_child()`, `gtk_widget_class_bind_template_child_internal()`,
    /// `gtk_widget_class_bind_template_child_private()` and `gtk_widget_class_bind_template_child_internal_private()`
    /// might be more convenient to use.
    /// 
    /// Note that this must be called from a composite widget classes class
    /// initializer after calling `gtk_widget_class_set_template()`.
    @inlinable func bindTemplateChildFull(name: UnsafePointer<gchar>!, internalChild: Bool, structOffset: gssize) {
        gtk_widget_class_bind_template_child_full(_ptr, name, gboolean((internalChild) ? 1 : 0), structOffset)
    
    }

    /// Finds a style property of a widget class by name.
    @inlinable func findStyleProperty(propertyName: UnsafePointer<gchar>!) -> GLibObject.ParamSpecRef! {
        let rv = GLibObject.ParamSpecRef(gtk_widget_class_find_style_property(_ptr, propertyName))
        return rv
    }

    /// Gets the name used by this class for matching in CSS code. See
    /// `gtk_widget_class_set_css_name()` for details.
    @inlinable func getCssName() -> String! {
        let rv = gtk_widget_class_get_css_name(_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Installs a style property on a widget class. The parser for the
    /// style property is determined by the value type of `pspec`.
    @inlinable func installStyleProperty<ParamSpecT: GLibObject.ParamSpecProtocol>(pspec: ParamSpecT) {
        gtk_widget_class_install_style_property(_ptr, pspec.param_spec_ptr)
    
    }

    /// Installs a style property on a widget class.
    @inlinable func installStylePropertyParser<ParamSpecT: GLibObject.ParamSpecProtocol>(pspec: ParamSpecT, parser: @escaping GtkRcPropertyParser) {
        gtk_widget_class_install_style_property_parser(_ptr, pspec.param_spec_ptr, parser)
    
    }

    /// Returns all style properties of a widget class.
    @inlinable func listStyleProperties(nProperties: UnsafeMutablePointer<guint>!) -> UnsafeMutablePointer<UnsafeMutablePointer<GParamSpec>?>! {
        let rv = gtk_widget_class_list_style_properties(_ptr, nProperties)
        return rv
    }

    /// Sets the default `AtkRole` to be set on accessibles created for
    /// widgets of `widget_class`. Accessibles may decide to not honor this
    /// setting if their role reporting is more refined. Calls to
    /// `gtk_widget_class_set_accessible_type()` will reset this value.
    /// 
    /// In cases where you want more fine-grained control over the role of
    /// accessibles created for `widget_class`, you should provide your own
    /// accessible type and use `gtk_widget_class_set_accessible_type()`
    /// instead.
    /// 
    /// If `role` is `ATK_ROLE_INVALID`, the default role will not be changed
    /// and the accessible’s default role will be used instead.
    /// 
    /// This function should only be called from class init functions of widgets.
    @inlinable func setAccessible(role: AtkRole) {
        gtk_widget_class_set_accessible_role(_ptr, role)
    
    }

    /// Sets the type to be used for creating accessibles for widgets of
    /// `widget_class`. The given `type` must be a subtype of the type used for
    /// accessibles of the parent class.
    /// 
    /// This function should only be called from class init functions of widgets.
    @inlinable func setAccessible(type: GType) {
        gtk_widget_class_set_accessible_type(_ptr, type)
    
    }

    /// For use in language bindings, this will override the default `GtkBuilderConnectFunc` to be
    /// used when parsing GtkBuilder XML from this class’s template data.
    /// 
    /// Note that this must be called from a composite widget classes class
    /// initializer after calling `gtk_widget_class_set_template()`.
    @inlinable func set(connectFunc: GtkBuilderConnectFunc?, connectData: gpointer! = nil, connectDataDestroy: GDestroyNotify?) {
        gtk_widget_class_set_connect_func(_ptr, connectFunc, connectData, connectDataDestroy)
    
    }

    /// Sets the name to be used for CSS matching of widgets.
    /// 
    /// If this function is not called for a given class, the name
    /// of the parent class is used.
    @inlinable func setCss(name: UnsafePointer<CChar>!) {
        gtk_widget_class_set_css_name(_ptr, name)
    
    }

    /// This should be called at class initialization time to specify
    /// the GtkBuilder XML to be used to extend a widget.
    /// 
    /// For convenience, `gtk_widget_class_set_template_from_resource()` is also provided.
    /// 
    /// Note that any class that installs templates must call `gtk_widget_init_template()`
    /// in the widget’s instance initializer.
    @inlinable func setTemplate<BytesT: GLib.BytesProtocol>(templateBytes: BytesT) {
        gtk_widget_class_set_template(_ptr, templateBytes.bytes_ptr)
    
    }

    /// A convenience function to call `gtk_widget_class_set_template()`.
    /// 
    /// Note that any class that installs templates must call `gtk_widget_init_template()`
    /// in the widget’s instance initializer.
    @inlinable func setTemplateFrom(resourceName: UnsafePointer<gchar>!) {
        gtk_widget_class_set_template_from_resource(_ptr, resourceName)
    
    }
    /// Gets the name used by this class for matching in CSS code. See
    /// `gtk_widget_class_set_css_name()` for details.
    @inlinable var cssName: String! {
        /// Gets the name used by this class for matching in CSS code. See
        /// `gtk_widget_class_set_css_name()` for details.
        get {
            let rv = gtk_widget_class_get_css_name(_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the name to be used for CSS matching of widgets.
        /// 
        /// If this function is not called for a given class, the name
        /// of the parent class is used.
        nonmutating set {
            gtk_widget_class_set_css_name(_ptr, newValue)
        }
    }

    /// The object class structure needs to be the first
    ///   element in the widget class structure in order for the class mechanism
    ///   to work correctly. This allows a GtkWidgetClass pointer to be cast to
    ///   a GObjectClass pointer.
    @inlinable var parentClass: GInitiallyUnownedClass {
        /// The object class structure needs to be the first
        ///   element in the widget class structure in order for the class mechanism
        ///   to work correctly. This allows a GtkWidgetClass pointer to be cast to
        ///   a GObjectClass pointer.
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    /// The signal to emit when a widget of this class is
    ///   activated, `gtk_widget_activate()` handles the emission.
    ///   Implementation of this signal is optional.
    @inlinable var activateSignal: guint {
        /// The signal to emit when a widget of this class is
        ///   activated, `gtk_widget_activate()` handles the emission.
        ///   Implementation of this signal is optional.
        get {
            let rv = _ptr.pointee.activate_signal
            return rv
        }
    }

    // var dispatchChildPropertiesChanged is unavailable because dispatch_child_properties_changed is void

    // var destroy is unavailable because destroy is void

    // var show is unavailable because show is void

    // var showAll is unavailable because show_all is void

    // var hide is unavailable because hide is void

    // var map is unavailable because map is void

    // var unmap is unavailable because unmap is void

    // var realize is unavailable because realize is void

    // var unrealize is unavailable because unrealize is void

    // var sizeAllocate is unavailable because size_allocate is void

    // var stateChanged is unavailable because state_changed is void

    // var stateFlagsChanged is unavailable because state_flags_changed is void

    // var parentSet is unavailable because parent_set is void

    // var hierarchyChanged is unavailable because hierarchy_changed is void

    // var styleSet is unavailable because style_set is void

    // var directionChanged is unavailable because direction_changed is void

    // var grabNotify is unavailable because grab_notify is void

    // var childNotify is unavailable because child_notify is void

    // var draw is unavailable because draw is void

    // var getRequestMode is unavailable because get_request_mode is void

    // var getPreferredHeight is unavailable because get_preferred_height is void

    // var getPreferredWidthForHeight is unavailable because get_preferred_width_for_height is void

    // var getPreferredWidth is unavailable because get_preferred_width is void

    // var getPreferredHeightForWidth is unavailable because get_preferred_height_for_width is void

    // var mnemonicActivate is unavailable because mnemonic_activate is void

    // var grabFocus is unavailable because grab_focus is void

    // var focus is unavailable because focus is void

    // var moveFocus is unavailable because move_focus is void

    // var keynavFailed is unavailable because keynav_failed is void

    // var event is unavailable because event is void

    // var buttonPressEvent is unavailable because button_press_event is void

    // var buttonReleaseEvent is unavailable because button_release_event is void

    // var scrollEvent is unavailable because scroll_event is void

    // var motionNotifyEvent is unavailable because motion_notify_event is void

    // var deleteEvent is unavailable because delete_event is void

    // var destroyEvent is unavailable because destroy_event is void

    // var keyPressEvent is unavailable because key_press_event is void

    // var keyReleaseEvent is unavailable because key_release_event is void

    // var enterNotifyEvent is unavailable because enter_notify_event is void

    // var leaveNotifyEvent is unavailable because leave_notify_event is void

    // var configureEvent is unavailable because configure_event is void

    // var focusInEvent is unavailable because focus_in_event is void

    // var focusOutEvent is unavailable because focus_out_event is void

    // var mapEvent is unavailable because map_event is void

    // var unmapEvent is unavailable because unmap_event is void

    // var propertyNotifyEvent is unavailable because property_notify_event is void

    // var selectionClearEvent is unavailable because selection_clear_event is void

    // var selectionRequestEvent is unavailable because selection_request_event is void

    // var selectionNotifyEvent is unavailable because selection_notify_event is void

    // var proximityInEvent is unavailable because proximity_in_event is void

    // var proximityOutEvent is unavailable because proximity_out_event is void

    // var visibilityNotifyEvent is unavailable because visibility_notify_event is void

    // var windowStateEvent is unavailable because window_state_event is void

    // var damageEvent is unavailable because damage_event is void

    // var grabBrokenEvent is unavailable because grab_broken_event is void

    // var selectionGet is unavailable because selection_get is void

    // var selectionReceived is unavailable because selection_received is void

    // var dragBegin is unavailable because drag_begin is void

    // var dragEnd is unavailable because drag_end is void

    // var dragDataGet is unavailable because drag_data_get is void

    // var dragDataDelete is unavailable because drag_data_delete is void

    // var dragLeave is unavailable because drag_leave is void

    // var dragMotion is unavailable because drag_motion is void

    // var dragDrop is unavailable because drag_drop is void

    // var dragDataReceived is unavailable because drag_data_received is void

    // var dragFailed is unavailable because drag_failed is void

    // var popupMenu is unavailable because popup_menu is void

    // var showHelp is unavailable because show_help is void

    // var getAccessible is unavailable because get_accessible is void

    // var screenChanged is unavailable because screen_changed is void

    // var canActivateAccel is unavailable because can_activate_accel is void

    // var compositedChanged is unavailable because composited_changed is void

    // var queryTooltip is unavailable because query_tooltip is void

    // var computeExpand is unavailable because compute_expand is void

    // var adjustSizeRequest is unavailable because adjust_size_request is void

    // var adjustSizeAllocation is unavailable because adjust_size_allocation is void

    // var styleUpdated is unavailable because style_updated is void

    // var touchEvent is unavailable because touch_event is void

    // var getPreferredHeightAndBaselineForWidth is unavailable because get_preferred_height_and_baseline_for_width is void

    // var adjustBaselineRequest is unavailable because adjust_baseline_request is void

    // var adjustBaselineAllocation is unavailable because adjust_baseline_allocation is void

    // var queueDrawRegion is unavailable because queue_draw_region is void

    // var priv is unavailable because priv is private

    // var GtkReserved6 is unavailable because _gtk_reserved6 is void

    // var GtkReserved7 is unavailable because _gtk_reserved7 is void

}



// MARK: - WidgetClassPrivate Record

/// The `WidgetClassPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkWidgetClassPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `WidgetClassPrivate`.
/// Alternatively, use `WidgetClassPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol WidgetClassPrivateProtocol {
        /// Untyped pointer to the underlying `GtkWidgetClassPrivate` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkWidgetClassPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkWidgetClassPrivate>! { get }

}

/// The `WidgetClassPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkWidgetClassPrivate` instance.
/// It exposes methods that can operate on this data type through `WidgetClassPrivateProtocol` conformance.
/// Use `WidgetClassPrivateRef` only as an `unowned` reference to an existing `GtkWidgetClassPrivate` instance.
///

public struct WidgetClassPrivateRef: WidgetClassPrivateProtocol {
        /// Untyped pointer to the underlying `GtkWidgetClassPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension WidgetClassPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkWidgetClassPrivate>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkWidgetClassPrivate>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkWidgetClassPrivate>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkWidgetClassPrivate>?) {
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

    /// Reference intialiser for a related type that implements `WidgetClassPrivateProtocol`
    @inlinable init<T: WidgetClassPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetClassPrivateProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetClassPrivateProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetClassPrivateProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetClassPrivateProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetClassPrivateProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `WidgetClassPrivate` type acts as an owner of an underlying `GtkWidgetClassPrivate` instance.
/// It provides the methods that can operate on this data type through `WidgetClassPrivateProtocol` conformance.
/// Use `WidgetClassPrivate` as a strong reference or owner of a `GtkWidgetClassPrivate` instance.
///

open class WidgetClassPrivate: WidgetClassPrivateProtocol {
        /// Untyped pointer to the underlying `GtkWidgetClassPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `WidgetClassPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkWidgetClassPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `WidgetClassPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkWidgetClassPrivate>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `WidgetClassPrivate` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `WidgetClassPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `WidgetClassPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkWidgetClassPrivate>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `WidgetClassPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkWidgetClassPrivate>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GtkWidgetClassPrivate` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `WidgetClassPrivate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkWidgetClassPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GtkWidgetClassPrivate, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `WidgetClassPrivateProtocol`
    /// `GtkWidgetClassPrivate` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `WidgetClassPrivateProtocol`
    @inlinable public init<T: WidgetClassPrivateProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GtkWidgetClassPrivate, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GtkWidgetClassPrivate`.
    deinit {
        // no reference counting for GtkWidgetClassPrivate, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetClassPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetClassPrivateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GtkWidgetClassPrivate, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetClassPrivateProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetClassPrivateProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GtkWidgetClassPrivate, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetClassPrivateProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetClassPrivateProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GtkWidgetClassPrivate, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetClassPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetClassPrivateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GtkWidgetClassPrivate, cannot ref(_ptr)
    }



}

// MARK: no WidgetClassPrivate properties

// MARK: no WidgetClassPrivate signals

// MARK: WidgetClassPrivate has no signals
// MARK: WidgetClassPrivate Record: WidgetClassPrivateProtocol extension (methods and fields)
public extension WidgetClassPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkWidgetClassPrivate` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkWidgetClassPrivate>! { return ptr?.assumingMemoryBound(to: GtkWidgetClassPrivate.self) }



}



// MARK: - WidgetPath Record

/// The `WidgetPathProtocol` protocol exposes the methods and properties of an underlying `GtkWidgetPath` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `WidgetPath`.
/// Alternatively, use `WidgetPathRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// GtkWidgetPath is a boxed type that represents a widget hierarchy from
/// the topmost widget, typically a toplevel, to any child. This widget
/// path abstraction is used in `GtkStyleContext` on behalf of the real
/// widget in order to query style information.
/// 
/// If you are using GTK+ widgets, you probably will not need to use
/// this API directly, as there is `gtk_widget_get_path()`, and the style
/// context returned by `gtk_widget_get_style_context()` will be automatically
/// updated on widget hierarchy changes.
/// 
/// The widget path generation is generally simple:
/// 
/// ## Defining a button within a window
/// 
/// (C Language Example):
/// ```C
/// {
///   GtkWidgetPath *path;
/// 
///   path = gtk_widget_path_new ();
///   gtk_widget_path_append_type (path, GTK_TYPE_WINDOW);
///   gtk_widget_path_append_type (path, GTK_TYPE_BUTTON);
/// }
/// ```
/// 
/// Although more complex information, such as widget names, or
/// different classes (property that may be used by other widget
/// types) and intermediate regions may be included:
/// 
/// ## Defining the first tab widget in a notebook
/// 
/// (C Language Example):
/// ```C
/// {
///   GtkWidgetPath *path;
///   guint pos;
/// 
///   path = gtk_widget_path_new ();
/// 
///   pos = gtk_widget_path_append_type (path, GTK_TYPE_NOTEBOOK);
///   gtk_widget_path_iter_add_region (path, pos, "tab", GTK_REGION_EVEN | GTK_REGION_FIRST);
/// 
///   pos = gtk_widget_path_append_type (path, GTK_TYPE_LABEL);
///   gtk_widget_path_iter_set_name (path, pos, "first tab label");
/// }
/// ```
/// 
/// All this information will be used to match the style information
/// that applies to the described widget.
public protocol WidgetPathProtocol {
        /// Untyped pointer to the underlying `GtkWidgetPath` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkWidgetPath` instance.
    var widget_path_ptr: UnsafeMutablePointer<GtkWidgetPath>! { get }

}

/// The `WidgetPathRef` type acts as a lightweight Swift reference to an underlying `GtkWidgetPath` instance.
/// It exposes methods that can operate on this data type through `WidgetPathProtocol` conformance.
/// Use `WidgetPathRef` only as an `unowned` reference to an existing `GtkWidgetPath` instance.
///
/// GtkWidgetPath is a boxed type that represents a widget hierarchy from
/// the topmost widget, typically a toplevel, to any child. This widget
/// path abstraction is used in `GtkStyleContext` on behalf of the real
/// widget in order to query style information.
/// 
/// If you are using GTK+ widgets, you probably will not need to use
/// this API directly, as there is `gtk_widget_get_path()`, and the style
/// context returned by `gtk_widget_get_style_context()` will be automatically
/// updated on widget hierarchy changes.
/// 
/// The widget path generation is generally simple:
/// 
/// ## Defining a button within a window
/// 
/// (C Language Example):
/// ```C
/// {
///   GtkWidgetPath *path;
/// 
///   path = gtk_widget_path_new ();
///   gtk_widget_path_append_type (path, GTK_TYPE_WINDOW);
///   gtk_widget_path_append_type (path, GTK_TYPE_BUTTON);
/// }
/// ```
/// 
/// Although more complex information, such as widget names, or
/// different classes (property that may be used by other widget
/// types) and intermediate regions may be included:
/// 
/// ## Defining the first tab widget in a notebook
/// 
/// (C Language Example):
/// ```C
/// {
///   GtkWidgetPath *path;
///   guint pos;
/// 
///   path = gtk_widget_path_new ();
/// 
///   pos = gtk_widget_path_append_type (path, GTK_TYPE_NOTEBOOK);
///   gtk_widget_path_iter_add_region (path, pos, "tab", GTK_REGION_EVEN | GTK_REGION_FIRST);
/// 
///   pos = gtk_widget_path_append_type (path, GTK_TYPE_LABEL);
///   gtk_widget_path_iter_set_name (path, pos, "first tab label");
/// }
/// ```
/// 
/// All this information will be used to match the style information
/// that applies to the described widget.
public struct WidgetPathRef: WidgetPathProtocol {
        /// Untyped pointer to the underlying `GtkWidgetPath` instance.
    /// For type-safe access, use the generated, typed pointer `widget_path_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension WidgetPathRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkWidgetPath>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkWidgetPath>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkWidgetPath>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkWidgetPath>?) {
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

    /// Reference intialiser for a related type that implements `WidgetPathProtocol`
    @inlinable init<T: WidgetPathProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetPathProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetPathProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetPathProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetPathProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetPathProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Returns an empty widget path.
    @inlinable init() {
        let rv = gtk_widget_path_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `WidgetPath` type acts as a reference-counted owner of an underlying `GtkWidgetPath` instance.
/// It provides the methods that can operate on this data type through `WidgetPathProtocol` conformance.
/// Use `WidgetPath` as a strong reference or owner of a `GtkWidgetPath` instance.
///
/// GtkWidgetPath is a boxed type that represents a widget hierarchy from
/// the topmost widget, typically a toplevel, to any child. This widget
/// path abstraction is used in `GtkStyleContext` on behalf of the real
/// widget in order to query style information.
/// 
/// If you are using GTK+ widgets, you probably will not need to use
/// this API directly, as there is `gtk_widget_get_path()`, and the style
/// context returned by `gtk_widget_get_style_context()` will be automatically
/// updated on widget hierarchy changes.
/// 
/// The widget path generation is generally simple:
/// 
/// ## Defining a button within a window
/// 
/// (C Language Example):
/// ```C
/// {
///   GtkWidgetPath *path;
/// 
///   path = gtk_widget_path_new ();
///   gtk_widget_path_append_type (path, GTK_TYPE_WINDOW);
///   gtk_widget_path_append_type (path, GTK_TYPE_BUTTON);
/// }
/// ```
/// 
/// Although more complex information, such as widget names, or
/// different classes (property that may be used by other widget
/// types) and intermediate regions may be included:
/// 
/// ## Defining the first tab widget in a notebook
/// 
/// (C Language Example):
/// ```C
/// {
///   GtkWidgetPath *path;
///   guint pos;
/// 
///   path = gtk_widget_path_new ();
/// 
///   pos = gtk_widget_path_append_type (path, GTK_TYPE_NOTEBOOK);
///   gtk_widget_path_iter_add_region (path, pos, "tab", GTK_REGION_EVEN | GTK_REGION_FIRST);
/// 
///   pos = gtk_widget_path_append_type (path, GTK_TYPE_LABEL);
///   gtk_widget_path_iter_set_name (path, pos, "first tab label");
/// }
/// ```
/// 
/// All this information will be used to match the style information
/// that applies to the described widget.
open class WidgetPath: WidgetPathProtocol {
        /// Untyped pointer to the underlying `GtkWidgetPath` instance.
    /// For type-safe access, use the generated, typed pointer `widget_path_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `WidgetPath` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkWidgetPath>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `WidgetPath` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkWidgetPath>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `WidgetPath` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `WidgetPath` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `WidgetPath` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkWidgetPath>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `WidgetPath` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkWidgetPath>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkWidgetPath`.
    /// i.e., ownership is transferred to the `WidgetPath` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkWidgetPath>) {
        ptr = UnsafeMutableRawPointer(op)
        gtk_widget_path_ref(ptr.assumingMemoryBound(to: GtkWidgetPath.self))
    }

    /// Reference intialiser for a related type that implements `WidgetPathProtocol`
    /// Will retain `GtkWidgetPath`.
    /// - Parameter other: an instance of a related type that implements `WidgetPathProtocol`
    @inlinable public init<T: WidgetPathProtocol>(_ other: T) {
        ptr = other.ptr
        gtk_widget_path_ref(ptr.assumingMemoryBound(to: GtkWidgetPath.self))
    }

    /// Releases the underlying `GtkWidgetPath` instance using `gtk_widget_path_unref`.
    deinit {
        gtk_widget_path_unref(ptr.assumingMemoryBound(to: GtkWidgetPath.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetPathProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetPathProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        gtk_widget_path_ref(ptr.assumingMemoryBound(to: GtkWidgetPath.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetPathProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetPathProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        gtk_widget_path_ref(ptr.assumingMemoryBound(to: GtkWidgetPath.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetPathProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetPathProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        gtk_widget_path_ref(ptr.assumingMemoryBound(to: GtkWidgetPath.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetPathProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetPathProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        gtk_widget_path_ref(ptr.assumingMemoryBound(to: GtkWidgetPath.self))
    }

    /// Returns an empty widget path.
    @inlinable public init() {
        let rv = gtk_widget_path_new()
        ptr = UnsafeMutableRawPointer(rv)
    }


}

// MARK: no WidgetPath properties

// MARK: no WidgetPath signals

// MARK: WidgetPath has no signals
// MARK: WidgetPath Record: WidgetPathProtocol extension (methods and fields)
public extension WidgetPathProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkWidgetPath` instance.
    @inlinable var widget_path_ptr: UnsafeMutablePointer<GtkWidgetPath>! { return ptr?.assumingMemoryBound(to: GtkWidgetPath.self) }

    /// Appends the data from `widget` to the widget hierarchy represented
    /// by `path`. This function is a shortcut for adding information from
    /// `widget` to the given `path`. This includes setting the name or
    /// adding the style classes from `widget`.
    @inlinable func appendFor<WidgetT: WidgetProtocol>(widget: WidgetT) -> Int {
        let rv = Int(gtk_widget_path_append_for_widget(widget_path_ptr, widget.widget_ptr))
        return rv
    }

    /// Appends a widget type to the widget hierarchy represented by `path`.
    @inlinable func append(type: GType) -> Int {
        let rv = Int(gtk_widget_path_append_type(widget_path_ptr, type))
        return rv
    }

    /// Appends a widget type with all its siblings to the widget hierarchy
    /// represented by `path`. Using this function instead of
    /// `gtk_widget_path_append_type()` will allow the CSS theming to use
    /// sibling matches in selectors and apply :`nth-child()` pseudo classes.
    /// In turn, it requires a lot more care in widget implementations as
    /// widgets need to make sure to call `gtk_widget_reset_style()` on all
    /// involved widgets when the `siblings` path changes.
    @inlinable func appendWith<WidgetPathT: WidgetPathProtocol>(siblings: WidgetPathT, siblingIndex: Int) -> Int {
        let rv = Int(gtk_widget_path_append_with_siblings(widget_path_ptr, siblings.widget_path_ptr, guint(siblingIndex)))
        return rv
    }

    /// Returns a copy of `path`
    @inlinable func copy() -> WidgetPathRef! {
        guard let rv = WidgetPathRef(gconstpointer: gconstpointer(gtk_widget_path_copy(widget_path_ptr))) else { return nil }
        return rv
    }

    /// Decrements the reference count on `path`, freeing the structure
    /// if the reference count reaches 0.
    @inlinable func free() {
        gtk_widget_path_free(widget_path_ptr)
    
    }

    /// Returns the topmost object type, that is, the object type this path
    /// is representing.
    @inlinable func getObjectType() -> GType {
        let rv = gtk_widget_path_get_object_type(widget_path_ptr)
        return rv
    }

    /// Returns `true` if any of the parents of the widget represented
    /// in `path` is of type `type`, or any subtype of it.
    @inlinable func hasParent(type: GType) -> Bool {
        let rv = ((gtk_widget_path_has_parent(widget_path_ptr, type)) != 0)
        return rv
    }

    /// Returns `true` if the widget type represented by this path
    /// is `type`, or a subtype of it.
    @inlinable func is_(type: GType) -> Bool {
        let rv = ((gtk_widget_path_is_type(widget_path_ptr, type)) != 0)
        return rv
    }

    /// Adds the class `name` to the widget at position `pos` in
    /// the hierarchy defined in `path`. See
    /// `gtk_style_context_add_class()`.
    @inlinable func iterAddClass(pos: Int, name: UnsafePointer<gchar>!) {
        gtk_widget_path_iter_add_class(widget_path_ptr, gint(pos), name)
    
    }

    /// Adds the region `name` to the widget at position `pos` in
    /// the hierarchy defined in `path`. See
    /// `gtk_style_context_add_region()`.
    /// 
    /// Region names must only contain lowercase letters
    /// and “-”, starting always with a lowercase letter.
    ///
    /// **iter_add_region is deprecated:**
    /// The use of regions is deprecated.
    @available(*, deprecated)
    @inlinable func iterAddRegion(pos: Int, name: UnsafePointer<gchar>!, flags: RegionFlags) {
        gtk_widget_path_iter_add_region(widget_path_ptr, gint(pos), name, flags.value)
    
    }

    /// Removes all classes from the widget at position `pos` in the
    /// hierarchy defined in `path`.
    @inlinable func iterClearClasses(pos: Int) {
        gtk_widget_path_iter_clear_classes(widget_path_ptr, gint(pos))
    
    }

    /// Removes all regions from the widget at position `pos` in the
    /// hierarchy defined in `path`.
    ///
    /// **iter_clear_regions is deprecated:**
    /// The use of regions is deprecated.
    @available(*, deprecated)
    @inlinable func iterClearRegions(pos: Int) {
        gtk_widget_path_iter_clear_regions(widget_path_ptr, gint(pos))
    
    }

    /// Returns the name corresponding to the widget found at
    /// the position `pos` in the widget hierarchy defined by
    /// `path`
    @inlinable func iterGetName(pos: Int) -> String! {
        let rv = gtk_widget_path_iter_get_name(widget_path_ptr, gint(pos)).map({ String(cString: $0) })
        return rv
    }

    /// Returns the object name that is at position `pos` in the widget
    /// hierarchy defined in `path`.
    @inlinable func iterGetObjectName(pos: Int) -> String! {
        let rv = gtk_widget_path_iter_get_object_name(widget_path_ptr, gint(pos)).map({ String(cString: $0) })
        return rv
    }

    /// Returns the object `GType` that is at position `pos` in the widget
    /// hierarchy defined in `path`.
    @inlinable func iterGetObjectType(pos: Int) -> GType {
        let rv = gtk_widget_path_iter_get_object_type(widget_path_ptr, gint(pos))
        return rv
    }

    /// Returns the index into the list of siblings for the element at `pos` as
    /// returned by `gtk_widget_path_iter_get_siblings()`. If that function would
    /// return `nil` because the element at `pos` has no siblings, this function
    /// will return 0.
    @inlinable func iterGetSiblingIndex(pos: Int) -> Int {
        let rv = Int(gtk_widget_path_iter_get_sibling_index(widget_path_ptr, gint(pos)))
        return rv
    }

    /// Returns the list of siblings for the element at `pos`. If the element
    /// was not added with siblings, `nil` is returned.
    @inlinable func iterGetSiblings(pos: Int) -> WidgetPathRef! {
        guard let rv = WidgetPathRef(gconstpointer: gconstpointer(gtk_widget_path_iter_get_siblings(widget_path_ptr, gint(pos)))) else { return nil }
        return rv
    }

    /// Returns the state flags corresponding to the widget found at
    /// the position `pos` in the widget hierarchy defined by
    /// `path`
    @inlinable func iterGetState(pos: Int) -> StateFlags {
        let rv = StateFlags(gtk_widget_path_iter_get_state(widget_path_ptr, gint(pos)))
        return rv
    }

    /// Returns `true` if the widget at position `pos` has the class `name`
    /// defined, `false` otherwise.
    @inlinable func iterHasClass(pos: Int, name: UnsafePointer<gchar>!) -> Bool {
        let rv = ((gtk_widget_path_iter_has_class(widget_path_ptr, gint(pos), name)) != 0)
        return rv
    }

    /// Returns `true` if the widget at position `pos` has the name `name`,
    /// `false` otherwise.
    @inlinable func iterHasName(pos: Int, name: UnsafePointer<gchar>!) -> Bool {
        let rv = ((gtk_widget_path_iter_has_name(widget_path_ptr, gint(pos), name)) != 0)
        return rv
    }

    /// See `gtk_widget_path_iter_has_class()`. This is a version that operates
    /// with GQuarks.
    @inlinable func iterHasQclass(pos: Int, qname: GQuark) -> Bool {
        let rv = ((gtk_widget_path_iter_has_qclass(widget_path_ptr, gint(pos), qname)) != 0)
        return rv
    }

    /// See `gtk_widget_path_iter_has_name()`. This is a version
    /// that operates on `GQuarks`.
    @inlinable func iterHasQname(pos: Int, qname: GQuark) -> Bool {
        let rv = ((gtk_widget_path_iter_has_qname(widget_path_ptr, gint(pos), qname)) != 0)
        return rv
    }

    /// See `gtk_widget_path_iter_has_region()`. This is a version that operates
    /// with GQuarks.
    ///
    /// **iter_has_qregion is deprecated:**
    /// The use of regions is deprecated.
    @available(*, deprecated)
    @inlinable func iterHasQregion(pos: Int, qname: GQuark, flags: UnsafeMutablePointer<GtkRegionFlags>!) -> Bool {
        let rv = ((gtk_widget_path_iter_has_qregion(widget_path_ptr, gint(pos), qname, flags)) != 0)
        return rv
    }

    /// Returns `true` if the widget at position `pos` has the class `name`
    /// defined, `false` otherwise.
    ///
    /// **iter_has_region is deprecated:**
    /// The use of regions is deprecated.
    @available(*, deprecated)
    @inlinable func iterHasRegion(pos: Int, name: UnsafePointer<gchar>!, flags: UnsafeMutablePointer<GtkRegionFlags>!) -> Bool {
        let rv = ((gtk_widget_path_iter_has_region(widget_path_ptr, gint(pos), name, flags)) != 0)
        return rv
    }

    /// Returns a list with all the class names defined for the widget
    /// at position `pos` in the hierarchy defined in `path`.
    @inlinable func iterListClasses(pos: Int) -> GLib.SListRef! {
        let rv = GLib.SListRef(gtk_widget_path_iter_list_classes(widget_path_ptr, gint(pos)))
        return rv
    }

    /// Returns a list with all the region names defined for the widget
    /// at position `pos` in the hierarchy defined in `path`.
    ///
    /// **iter_list_regions is deprecated:**
    /// The use of regions is deprecated.
    @available(*, deprecated)
    @inlinable func iterListRegions(pos: Int) -> GLib.SListRef! {
        let rv = GLib.SListRef(gtk_widget_path_iter_list_regions(widget_path_ptr, gint(pos)))
        return rv
    }

    /// Removes the class `name` from the widget at position `pos` in
    /// the hierarchy defined in `path`.
    @inlinable func iterRemoveClass(pos: Int, name: UnsafePointer<gchar>!) {
        gtk_widget_path_iter_remove_class(widget_path_ptr, gint(pos), name)
    
    }

    /// Removes the region `name` from the widget at position `pos` in
    /// the hierarchy defined in `path`.
    ///
    /// **iter_remove_region is deprecated:**
    /// The use of regions is deprecated.
    @available(*, deprecated)
    @inlinable func iterRemoveRegion(pos: Int, name: UnsafePointer<gchar>!) {
        gtk_widget_path_iter_remove_region(widget_path_ptr, gint(pos), name)
    
    }

    /// Sets the widget name for the widget found at position `pos`
    /// in the widget hierarchy defined by `path`.
    @inlinable func iterSetName(pos: Int, name: UnsafePointer<gchar>!) {
        gtk_widget_path_iter_set_name(widget_path_ptr, gint(pos), name)
    
    }

    /// Sets the object name for a given position in the widget hierarchy
    /// defined by `path`.
    /// 
    /// When set, the object name overrides the object type when matching
    /// CSS.
    @inlinable func iterSetObjectName(pos: Int, name: UnsafePointer<CChar>? = nil) {
        gtk_widget_path_iter_set_object_name(widget_path_ptr, gint(pos), name)
    
    }

    /// Sets the object type for a given position in the widget hierarchy
    /// defined by `path`.
    @inlinable func iterSetObjectType(pos: Int, type: GType) {
        gtk_widget_path_iter_set_object_type(widget_path_ptr, gint(pos), type)
    
    }

    /// Sets the widget name for the widget found at position `pos`
    /// in the widget hierarchy defined by `path`.
    /// 
    /// If you want to update just a single state flag, you need to do
    /// this manually, as this function updates all state flags.
    /// 
    /// ## Setting a flag
    /// 
    /// (C Language Example):
    /// ```C
    /// gtk_widget_path_iter_set_state (path, pos, gtk_widget_path_iter_get_state (path, pos) | flag);
    /// ```
    /// 
    /// ## Unsetting a flag
    /// 
    /// (C Language Example):
    /// ```C
    /// gtk_widget_path_iter_set_state (path, pos, gtk_widget_path_iter_get_state (path, pos) & ~flag);
    /// ```
    /// 
    @inlinable func iterSetState(pos: Int, state: StateFlags) {
        gtk_widget_path_iter_set_state(widget_path_ptr, gint(pos), state.value)
    
    }

    /// Returns the number of `GtkWidget` `GTypes` between the represented
    /// widget and its topmost container.
    @inlinable func length() -> Int {
        let rv = Int(gtk_widget_path_length(widget_path_ptr))
        return rv
    }

    /// Prepends a widget type to the widget hierachy represented by `path`.
    @inlinable func prepend(type: GType) {
        gtk_widget_path_prepend_type(widget_path_ptr, type)
    
    }

    /// Increments the reference count on `path`.
    @discardableResult @inlinable func ref() -> WidgetPathRef! {
        guard let rv = WidgetPathRef(gconstpointer: gconstpointer(gtk_widget_path_ref(widget_path_ptr))) else { return nil }
        return rv
    }

    /// Dumps the widget path into a string representation. It tries to match
    /// the CSS style as closely as possible (Note that there might be paths
    /// that cannot be represented in CSS).
    /// 
    /// The main use of this code is for debugging purposes, so that you can
    /// `g_print()` the path or dump it in a gdb session.
    @inlinable func toString() -> String! {
        let rv = gtk_widget_path_to_string(widget_path_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Decrements the reference count on `path`, freeing the structure
    /// if the reference count reaches 0.
    @inlinable func unref() {
        gtk_widget_path_unref(widget_path_ptr)
    
    }
    /// Returns the topmost object type, that is, the object type this path
    /// is representing.
    @inlinable var objectType: GType {
        /// Returns the topmost object type, that is, the object type this path
        /// is representing.
        get {
            let rv = gtk_widget_path_get_object_type(widget_path_ptr)
            return rv
        }
    }


}



/// Metatype/GType declaration for WindowAccessible
public extension WindowAccessibleClassRef {
    
    /// This getter returns the GLib type identifier registered for `WindowAccessible`
    static var metatypeReference: GType { gtk_window_accessible_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkWindowAccessibleClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkWindowAccessibleClass.self) }
    
    static var metatype: GtkWindowAccessibleClass? { metatypePointer?.pointee } 
    
    static var wrapper: WindowAccessibleClassRef? { WindowAccessibleClassRef(metatypePointer) }
    
    
}

// MARK: - WindowAccessibleClass Record

/// The `WindowAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkWindowAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `WindowAccessibleClass`.
/// Alternatively, use `WindowAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol WindowAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkWindowAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkWindowAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkWindowAccessibleClass>! { get }

}

/// The `WindowAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkWindowAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `WindowAccessibleClassProtocol` conformance.
/// Use `WindowAccessibleClassRef` only as an `unowned` reference to an existing `GtkWindowAccessibleClass` instance.
///

public struct WindowAccessibleClassRef: WindowAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkWindowAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension WindowAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkWindowAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkWindowAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkWindowAccessibleClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkWindowAccessibleClass>?) {
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

    /// Reference intialiser for a related type that implements `WindowAccessibleClassProtocol`
    @inlinable init<T: WindowAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowAccessibleClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowAccessibleClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowAccessibleClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowAccessibleClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowAccessibleClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: WindowAccessibleClass Record: WindowAccessibleClassProtocol extension (methods and fields)
public extension WindowAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkWindowAccessibleClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkWindowAccessibleClass>! { return ptr?.assumingMemoryBound(to: GtkWindowAccessibleClass.self) }


    @inlinable var parentClass: GtkContainerAccessibleClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for Window
public extension WindowClassRef {
    
    /// This getter returns the GLib type identifier registered for `Window`
    static var metatypeReference: GType { gtk_window_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkWindowClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkWindowClass.self) }
    
    static var metatype: GtkWindowClass? { metatypePointer?.pointee } 
    
    static var wrapper: WindowClassRef? { WindowClassRef(metatypePointer) }
    
    
}

// MARK: - WindowClass Record

/// The `WindowClassProtocol` protocol exposes the methods and properties of an underlying `GtkWindowClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `WindowClass`.
/// Alternatively, use `WindowClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol WindowClassProtocol {
        /// Untyped pointer to the underlying `GtkWindowClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkWindowClass` instance.
    var _ptr: UnsafeMutablePointer<GtkWindowClass>! { get }

}

/// The `WindowClassRef` type acts as a lightweight Swift reference to an underlying `GtkWindowClass` instance.
/// It exposes methods that can operate on this data type through `WindowClassProtocol` conformance.
/// Use `WindowClassRef` only as an `unowned` reference to an existing `GtkWindowClass` instance.
///

public struct WindowClassRef: WindowClassProtocol {
        /// Untyped pointer to the underlying `GtkWindowClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension WindowClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkWindowClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkWindowClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkWindowClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkWindowClass>?) {
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

    /// Reference intialiser for a related type that implements `WindowClassProtocol`
    @inlinable init<T: WindowClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: WindowClass Record: WindowClassProtocol extension (methods and fields)
public extension WindowClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkWindowClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkWindowClass>! { return ptr?.assumingMemoryBound(to: GtkWindowClass.self) }


    /// The parent class.
    @inlinable var parentClass: GtkBinClass {
        /// The parent class.
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var setFocus is unavailable because set_focus is void

    // var activateFocus is unavailable because activate_focus is void

    // var activateDefault is unavailable because activate_default is void

    // var keysChanged is unavailable because keys_changed is void

    // var enableDebugging is unavailable because enable_debugging is void

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

}



// MARK: - WindowGeometryInfo Record

/// The `WindowGeometryInfoProtocol` protocol exposes the methods and properties of an underlying `GtkWindowGeometryInfo` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `WindowGeometryInfo`.
/// Alternatively, use `WindowGeometryInfoRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol WindowGeometryInfoProtocol {
        /// Untyped pointer to the underlying `GtkWindowGeometryInfo` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkWindowGeometryInfo` instance.
    var _ptr: UnsafeMutablePointer<GtkWindowGeometryInfo>! { get }

}

/// The `WindowGeometryInfoRef` type acts as a lightweight Swift reference to an underlying `GtkWindowGeometryInfo` instance.
/// It exposes methods that can operate on this data type through `WindowGeometryInfoProtocol` conformance.
/// Use `WindowGeometryInfoRef` only as an `unowned` reference to an existing `GtkWindowGeometryInfo` instance.
///

public struct WindowGeometryInfoRef: WindowGeometryInfoProtocol {
        /// Untyped pointer to the underlying `GtkWindowGeometryInfo` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension WindowGeometryInfoRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkWindowGeometryInfo>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkWindowGeometryInfo>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkWindowGeometryInfo>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkWindowGeometryInfo>?) {
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

    /// Reference intialiser for a related type that implements `WindowGeometryInfoProtocol`
    @inlinable init<T: WindowGeometryInfoProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowGeometryInfoProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowGeometryInfoProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowGeometryInfoProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowGeometryInfoProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowGeometryInfoProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `WindowGeometryInfo` type acts as an owner of an underlying `GtkWindowGeometryInfo` instance.
/// It provides the methods that can operate on this data type through `WindowGeometryInfoProtocol` conformance.
/// Use `WindowGeometryInfo` as a strong reference or owner of a `GtkWindowGeometryInfo` instance.
///

open class WindowGeometryInfo: WindowGeometryInfoProtocol {
        /// Untyped pointer to the underlying `GtkWindowGeometryInfo` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `WindowGeometryInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkWindowGeometryInfo>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `WindowGeometryInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkWindowGeometryInfo>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `WindowGeometryInfo` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `WindowGeometryInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `WindowGeometryInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkWindowGeometryInfo>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `WindowGeometryInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkWindowGeometryInfo>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GtkWindowGeometryInfo` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `WindowGeometryInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkWindowGeometryInfo>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GtkWindowGeometryInfo, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `WindowGeometryInfoProtocol`
    /// `GtkWindowGeometryInfo` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `WindowGeometryInfoProtocol`
    @inlinable public init<T: WindowGeometryInfoProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GtkWindowGeometryInfo, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GtkWindowGeometryInfo`.
    deinit {
        // no reference counting for GtkWindowGeometryInfo, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowGeometryInfoProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowGeometryInfoProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GtkWindowGeometryInfo, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowGeometryInfoProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowGeometryInfoProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GtkWindowGeometryInfo, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowGeometryInfoProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowGeometryInfoProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GtkWindowGeometryInfo, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowGeometryInfoProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowGeometryInfoProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GtkWindowGeometryInfo, cannot ref(_ptr)
    }



}

// MARK: no WindowGeometryInfo properties

// MARK: no WindowGeometryInfo signals

// MARK: WindowGeometryInfo has no signals
// MARK: WindowGeometryInfo Record: WindowGeometryInfoProtocol extension (methods and fields)
public extension WindowGeometryInfoProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkWindowGeometryInfo` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkWindowGeometryInfo>! { return ptr?.assumingMemoryBound(to: GtkWindowGeometryInfo.self) }



}



/// Metatype/GType declaration for WindowGroup
public extension WindowGroupClassRef {
    
    /// This getter returns the GLib type identifier registered for `WindowGroup`
    static var metatypeReference: GType { gtk_window_group_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkWindowGroupClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkWindowGroupClass.self) }
    
    static var metatype: GtkWindowGroupClass? { metatypePointer?.pointee } 
    
    static var wrapper: WindowGroupClassRef? { WindowGroupClassRef(metatypePointer) }
    
    
}

// MARK: - WindowGroupClass Record

/// The `WindowGroupClassProtocol` protocol exposes the methods and properties of an underlying `GtkWindowGroupClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `WindowGroupClass`.
/// Alternatively, use `WindowGroupClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol WindowGroupClassProtocol {
        /// Untyped pointer to the underlying `GtkWindowGroupClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkWindowGroupClass` instance.
    var _ptr: UnsafeMutablePointer<GtkWindowGroupClass>! { get }

}

/// The `WindowGroupClassRef` type acts as a lightweight Swift reference to an underlying `GtkWindowGroupClass` instance.
/// It exposes methods that can operate on this data type through `WindowGroupClassProtocol` conformance.
/// Use `WindowGroupClassRef` only as an `unowned` reference to an existing `GtkWindowGroupClass` instance.
///

public struct WindowGroupClassRef: WindowGroupClassProtocol {
        /// Untyped pointer to the underlying `GtkWindowGroupClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension WindowGroupClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkWindowGroupClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkWindowGroupClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkWindowGroupClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkWindowGroupClass>?) {
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

    /// Reference intialiser for a related type that implements `WindowGroupClassProtocol`
    @inlinable init<T: WindowGroupClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowGroupClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowGroupClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowGroupClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowGroupClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowGroupClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: WindowGroupClass Record: WindowGroupClassProtocol extension (methods and fields)
public extension WindowGroupClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkWindowGroupClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkWindowGroupClass>! { return ptr?.assumingMemoryBound(to: GtkWindowGroupClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

}



// MARK: - _MountOperationHandler Record

/// The `_MountOperationHandlerProtocol` protocol exposes the methods and properties of an underlying `_GtkMountOperationHandler` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `_MountOperationHandler`.
/// Alternatively, use `_MountOperationHandlerRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Abstract interface type for the D-Bus interface <link linkend="gdbus-interface-org-Gtk-MountOperationHandler.top_of_page">org.Gtk.MountOperationHandler</link>.
public protocol _MountOperationHandlerProtocol {
        /// Untyped pointer to the underlying `_GtkMountOperationHandler` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `_GtkMountOperationHandler` instance.
    var _ptr: UnsafeMutablePointer<_GtkMountOperationHandler>! { get }

}

/// The `_MountOperationHandlerRef` type acts as a lightweight Swift reference to an underlying `_GtkMountOperationHandler` instance.
/// It exposes methods that can operate on this data type through `_MountOperationHandlerProtocol` conformance.
/// Use `_MountOperationHandlerRef` only as an `unowned` reference to an existing `_GtkMountOperationHandler` instance.
///
/// Abstract interface type for the D-Bus interface <link linkend="gdbus-interface-org-Gtk-MountOperationHandler.top_of_page">org.Gtk.MountOperationHandler</link>.
public struct _MountOperationHandlerRef: _MountOperationHandlerProtocol {
        /// Untyped pointer to the underlying `_GtkMountOperationHandler` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension _MountOperationHandlerRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<_GtkMountOperationHandler>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<_GtkMountOperationHandler>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<_GtkMountOperationHandler>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<_GtkMountOperationHandler>?) {
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

    /// Reference intialiser for a related type that implements `_MountOperationHandlerProtocol`
    @inlinable init<T: _MountOperationHandlerProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `_MountOperationHandler` type acts as an owner of an underlying `_GtkMountOperationHandler` instance.
/// It provides the methods that can operate on this data type through `_MountOperationHandlerProtocol` conformance.
/// Use `_MountOperationHandler` as a strong reference or owner of a `_GtkMountOperationHandler` instance.
///
/// Abstract interface type for the D-Bus interface <link linkend="gdbus-interface-org-Gtk-MountOperationHandler.top_of_page">org.Gtk.MountOperationHandler</link>.
open class _MountOperationHandler: _MountOperationHandlerProtocol {
        /// Untyped pointer to the underlying `_GtkMountOperationHandler` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `_MountOperationHandler` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<_GtkMountOperationHandler>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `_MountOperationHandler` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<_GtkMountOperationHandler>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `_MountOperationHandler` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `_MountOperationHandler` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `_MountOperationHandler` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<_GtkMountOperationHandler>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `_MountOperationHandler` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<_GtkMountOperationHandler>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `_GtkMountOperationHandler` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `_MountOperationHandler` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<_GtkMountOperationHandler>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for _GtkMountOperationHandler, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `_MountOperationHandlerProtocol`
    /// `_GtkMountOperationHandler` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `_MountOperationHandlerProtocol`
    @inlinable public init<T: _MountOperationHandlerProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for _GtkMountOperationHandler, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `_GtkMountOperationHandler`.
    deinit {
        // no reference counting for _GtkMountOperationHandler, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for _GtkMountOperationHandler, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for _GtkMountOperationHandler, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for _GtkMountOperationHandler, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for _GtkMountOperationHandler, cannot ref(_ptr)
    }



}

// MARK: no _MountOperationHandler properties

// MARK: no _MountOperationHandler signals

// MARK: _MountOperationHandler has no signals
// MARK: _MountOperationHandler Record: _MountOperationHandlerProtocol extension (methods and fields)
public extension _MountOperationHandlerProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `_GtkMountOperationHandler` instance.
    @inlinable var _ptr: UnsafeMutablePointer<_GtkMountOperationHandler>! { return ptr?.assumingMemoryBound(to: _GtkMountOperationHandler.self) }



}



