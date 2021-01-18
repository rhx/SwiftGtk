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

    /// Required Initialiser for types conforming to `WidgetClassProtocol`
    init(raw: UnsafeMutableRawPointer)
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


    // *** addBinding() is not available because it has a varargs (...) parameter!



    // *** addBindingAction() is not available because it has a varargs (...) parameter!



    // *** addBindingSignal() is not available because it has a varargs (...) parameter!


    /// Installs a shortcut in `widget_class`. Every instance created for
    /// `widget_class` or its subclasses will inherit this shortcut and
    /// trigger it.
    /// 
    /// Shortcuts added this way will be triggered in the `GTK_PHASE_BUBBLE`
    /// phase, which means they may also trigger if child widgets have focus.
    /// 
    /// This function must only be used in class initialization functions
    /// otherwise it is not guaranteed that the shortcut will be installed.
    @inlinable func add<ShortcutT: ShortcutProtocol>(shortcut: ShortcutT) {
        gtk_widget_class_add_shortcut(_ptr, shortcut.shortcut_ptr)
    
    }

    /// Declares a `callback_symbol` to handle `callback_name` from the template XML
    /// defined for `widget_type`. This function is not supported after
    /// `gtk_widget_class_set_template_scope()` has been used on `widget_class`.
    /// See `gtk_builder_cscope_add_callback_symbol()`.
    /// 
    /// Note that this must be called from a composite widget classes class
    /// initializer after calling `gtk_widget_class_set_template()`.
    @inlinable func bindTemplateCallbackFull(callbackName: UnsafePointer<CChar>!, callbackSymbol: GCallback?) {
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
    @inlinable func bindTemplateChildFull(name: UnsafePointer<CChar>!, internalChild: Bool, structOffset: gssize) {
        gtk_widget_class_bind_template_child_full(_ptr, name, gboolean((internalChild) ? 1 : 0), structOffset)
    
    }

    /// Retrieves the accessible role used by the given `GtkWidget` class.
    /// 
    /// Different accessible roles have different states, and are rendered
    /// differently by assistive technologies.
    /// 
    /// See also: `gtk_accessible_get_accessible_role()`
    @inlinable func getAccessibleRole() -> GtkAccessibleRole {
        let rv = gtk_widget_class_get_accessible_role(_ptr)
        return rv
    }

    /// Retrieves the signal id for the activation signal set using
    /// `gtk_widget_class_set_activate_signal()`.
    @inlinable func getActivateSignal() -> Int {
        let rv = Int(gtk_widget_class_get_activate_signal(_ptr))
        return rv
    }

    /// Gets the name used by this class for matching in CSS code. See
    /// `gtk_widget_class_set_css_name()` for details.
    @inlinable func getCssName() -> String! {
        let rv = gtk_widget_class_get_css_name(_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Retrieves the type of the `GtkLayoutManager` used by the `GtkWidget` class.
    /// 
    /// See also: `gtk_widget_class_set_layout_manager_type()`
    @inlinable func getLayoutManagerType() -> GType {
        let rv = gtk_widget_class_get_layout_manager_type(_ptr)
        return rv
    }

    /// This should be called at class initialization time to specify
    /// actions to be added for all instances of this class.
    /// 
    /// Actions installed by this function are stateless. The only state
    /// they have is whether they are enabled or not.
    @inlinable func installAction(actionName: UnsafePointer<CChar>!, parameterType: UnsafePointer<CChar>? = nil, activate: GtkWidgetActionActivateFunc?) {
        gtk_widget_class_install_action(_ptr, actionName, parameterType, activate)
    
    }

    /// Installs an action called `action_name` on `widget_class` and binds its
    /// state to the value of the `property_name` property.
    /// 
    /// This function will perform a few santity checks on the property selected
    /// via `property_name`. Namely, the property must exist, must be readable,
    /// writable and must not be construct-only. There are also restrictions
    /// on the type of the given property, it must be boolean, int, unsigned int,
    /// double or string. If any of these conditions are not met, a critical
    /// warning will be printed and no action will be added.
    /// 
    /// The state type of the action matches the property type.
    /// 
    /// If the property is boolean, the action will have no parameter and
    /// toggle the property value. Otherwise, the action will have a parameter
    /// of the same type as the property.
    @inlinable func installPropertyAction(actionName: UnsafePointer<CChar>!, propertyName: UnsafePointer<CChar>!) {
        gtk_widget_class_install_property_action(_ptr, actionName, propertyName)
    
    }

    /// Queries the actions that have been installed for
    /// a widget class using `gtk_widget_class_install_action()`
    /// during class initialization.
    /// 
    /// Note that this function will also return actions defined
    /// by parent classes. You can identify those by looking
    /// at `owner`.
    @inlinable func queryAction(index_: Int, owner: UnsafeMutablePointer<GType>!, actionName: UnsafeMutablePointer<UnsafePointer<CChar>?>!, parameterType: UnsafeMutablePointer<UnsafePointer<GVariantType>?>!, propertyName: UnsafeMutablePointer<UnsafePointer<CChar>?>!) -> Bool {
        let rv = ((gtk_widget_class_query_action(_ptr, guint(index_), owner, actionName, parameterType, propertyName)) != 0)
        return rv
    }

    /// Sets the accessible role used by the given `GtkWidget` class.
    /// 
    /// Different accessible roles have different states, and are rendered
    /// differently by assistive technologies.
    @inlinable func set(accessibleRole: GtkAccessibleRole) {
        gtk_widget_class_set_accessible_role(_ptr, accessibleRole)
    
    }

    /// Sets the `GtkWidgetClass.activate_signal` field with the
    /// given `signal_id`; the signal will be emitted when calling
    /// `gtk_widget_activate()`.
    /// 
    /// The `signal_id` must have been registered with `g_signal_new()`
    /// or `g_signal_newv()` before calling this function.
    @inlinable func setActivateSignal(signalId: Int) {
        gtk_widget_class_set_activate_signal(_ptr, guint(signalId))
    
    }

    /// Sets the `GtkWidgetClass.activate_signal` field with the signal id for
    /// the given `signal_name`; the signal will be emitted when calling
    /// `gtk_widget_activate()`.
    /// 
    /// The `signal_name` of `widget_type` must have been registered with
    /// `g_signal_new()` or `g_signal_newv()` before calling this function.
    @inlinable func setActivateSignalFromName(signalName: UnsafePointer<CChar>!) {
        gtk_widget_class_set_activate_signal_from_name(_ptr, signalName)
    
    }

    /// Sets the name to be used for CSS matching of widgets.
    /// 
    /// If this function is not called for a given class, the name
    /// set on the parent class is used. By default, GtkWidget uses
    /// the name "widget".
    @inlinable func setCss(name: UnsafePointer<CChar>!) {
        gtk_widget_class_set_css_name(_ptr, name)
    
    }

    /// Sets the type to be used for creating layout managers for widgets of
    /// `widget_class`. The given `type` must be a subtype of `GtkLayoutManager`.
    /// 
    /// This function should only be called from class init functions of widgets.
    @inlinable func setLayoutManager(type: GType) {
        gtk_widget_class_set_layout_manager_type(_ptr, type)
    
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
    @inlinable func setTemplateFromResource(resourceName: UnsafePointer<CChar>!) {
        gtk_widget_class_set_template_from_resource(_ptr, resourceName)
    
    }

    /// For use in language bindings, this will override the default `GtkBuilderScope` to be
    /// used when parsing GtkBuilder XML from this class’s template data.
    /// 
    /// Note that this must be called from a composite widget classes class
    /// initializer after calling `gtk_widget_class_set_template()`.
    @inlinable func setTemplate<BuilderScopeT: BuilderScopeProtocol>(scope: BuilderScopeT) {
        gtk_widget_class_set_template_scope(_ptr, scope.builder_scope_ptr)
    
    }
    /// Retrieves the accessible role used by the given `GtkWidget` class.
    /// 
    /// Different accessible roles have different states, and are rendered
    /// differently by assistive technologies.
    /// 
    /// See also: `gtk_accessible_get_accessible_role()`
    @inlinable var accessibleRole: GtkAccessibleRole {
        /// Retrieves the accessible role used by the given `GtkWidget` class.
        /// 
        /// Different accessible roles have different states, and are rendered
        /// differently by assistive technologies.
        /// 
        /// See also: `gtk_accessible_get_accessible_role()`
        get {
            let rv = gtk_widget_class_get_accessible_role(_ptr)
            return rv
        }
        /// Sets the accessible role used by the given `GtkWidget` class.
        /// 
        /// Different accessible roles have different states, and are rendered
        /// differently by assistive technologies.
        nonmutating set {
            gtk_widget_class_set_accessible_role(_ptr, newValue)
        }
    }

    /// Retrieves the signal id for the activation signal set using
    /// `gtk_widget_class_set_activate_signal()`.
    @inlinable var activateSignal: Int {
        /// Retrieves the signal id for the activation signal set using
        /// `gtk_widget_class_set_activate_signal()`.
        get {
            let rv = Int(gtk_widget_class_get_activate_signal(_ptr))
            return rv
        }
        /// Sets the `GtkWidgetClass.activate_signal` field with the
        /// given `signal_id`; the signal will be emitted when calling
        /// `gtk_widget_activate()`.
        /// 
        /// The `signal_id` must have been registered with `g_signal_new()`
        /// or `g_signal_newv()` before calling this function.
        nonmutating set {
            gtk_widget_class_set_activate_signal(_ptr, guint(newValue))
        }
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
        /// set on the parent class is used. By default, GtkWidget uses
        /// the name "widget".
        nonmutating set {
            gtk_widget_class_set_css_name(_ptr, newValue)
        }
    }

    /// Retrieves the type of the `GtkLayoutManager` used by the `GtkWidget` class.
    /// 
    /// See also: `gtk_widget_class_set_layout_manager_type()`
    @inlinable var layoutManagerType: GType {
        /// Retrieves the type of the `GtkLayoutManager` used by the `GtkWidget` class.
        /// 
        /// See also: `gtk_widget_class_set_layout_manager_type()`
        get {
            let rv = gtk_widget_class_get_layout_manager_type(_ptr)
            return rv
        }
        /// Sets the type to be used for creating layout managers for widgets of
        /// `widget_class`. The given `type` must be a subtype of `GtkLayoutManager`.
        /// 
        /// This function should only be called from class init functions of widgets.
        nonmutating set {
            gtk_widget_class_set_layout_manager_type(_ptr, newValue)
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

    // var show is unavailable because show is void

    // var hide is unavailable because hide is void

    // var map is unavailable because map is void

    // var unmap is unavailable because unmap is void

    // var realize is unavailable because realize is void

    // var unrealize is unavailable because unrealize is void

    // var root is unavailable because root is void

    // var unroot is unavailable because unroot is void

    // var sizeAllocate is unavailable because size_allocate is void

    // var stateFlagsChanged is unavailable because state_flags_changed is void

    // var directionChanged is unavailable because direction_changed is void

    // var getRequestMode is unavailable because get_request_mode is void

    // var measure is unavailable because measure is void

    // var mnemonicActivate is unavailable because mnemonic_activate is void

    // var grabFocus is unavailable because grab_focus is void

    // var focus is unavailable because focus is void

    // var setFocusChild is unavailable because set_focus_child is void

    // var moveFocus is unavailable because move_focus is void

    // var keynavFailed is unavailable because keynav_failed is void

    // var queryTooltip is unavailable because query_tooltip is void

    // var computeExpand is unavailable because compute_expand is void

    // var cssChanged is unavailable because css_changed is void

    // var systemSettingChanged is unavailable because system_setting_changed is void

    // var snapshot is unavailable because snapshot is void

    // var contains is unavailable because contains is void

    // var priv is unavailable because priv is private

    // var padding is unavailable because padding is private

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

    /// Required Initialiser for types conforming to `WidgetClassPrivateProtocol`
    init(raw: UnsafeMutableRawPointer)
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
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
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



/// Metatype/GType declaration for WidgetPaintable
public extension WidgetPaintableClassRef {
    
    /// This getter returns the GLib type identifier registered for `WidgetPaintable`
    static var metatypeReference: GType { gtk_widget_paintable_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkWidgetPaintableClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkWidgetPaintableClass.self) }
    
    static var metatype: GtkWidgetPaintableClass? { metatypePointer?.pointee } 
    
    static var wrapper: WidgetPaintableClassRef? { WidgetPaintableClassRef(metatypePointer) }
    
    
}

// MARK: - WidgetPaintableClass Record

/// The `WidgetPaintableClassProtocol` protocol exposes the methods and properties of an underlying `GtkWidgetPaintableClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `WidgetPaintableClass`.
/// Alternatively, use `WidgetPaintableClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol WidgetPaintableClassProtocol {
        /// Untyped pointer to the underlying `GtkWidgetPaintableClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkWidgetPaintableClass` instance.
    var _ptr: UnsafeMutablePointer<GtkWidgetPaintableClass>! { get }

    /// Required Initialiser for types conforming to `WidgetPaintableClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `WidgetPaintableClassRef` type acts as a lightweight Swift reference to an underlying `GtkWidgetPaintableClass` instance.
/// It exposes methods that can operate on this data type through `WidgetPaintableClassProtocol` conformance.
/// Use `WidgetPaintableClassRef` only as an `unowned` reference to an existing `GtkWidgetPaintableClass` instance.
///

public struct WidgetPaintableClassRef: WidgetPaintableClassProtocol {
        /// Untyped pointer to the underlying `GtkWidgetPaintableClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension WidgetPaintableClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkWidgetPaintableClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkWidgetPaintableClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkWidgetPaintableClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkWidgetPaintableClass>?) {
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

    /// Reference intialiser for a related type that implements `WidgetPaintableClassProtocol`
    @inlinable init<T: WidgetPaintableClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetPaintableClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetPaintableClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetPaintableClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetPaintableClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetPaintableClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: WidgetPaintableClass Record: WidgetPaintableClassProtocol extension (methods and fields)
public extension WidgetPaintableClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkWidgetPaintableClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkWidgetPaintableClass>! { return ptr?.assumingMemoryBound(to: GtkWidgetPaintableClass.self) }


    @inlinable var parentClass: GObjectClass {
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

    /// Required Initialiser for types conforming to `WindowClassProtocol`
    init(raw: UnsafeMutableRawPointer)
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
    @inlinable var parentClass: GtkWidgetClass {
        /// The parent class.
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var activateFocus is unavailable because activate_focus is void

    // var activateDefault is unavailable because activate_default is void

    // var keysChanged is unavailable because keys_changed is void

    // var enableDebugging is unavailable because enable_debugging is void

    // var closeRequest is unavailable because close_request is void

    // var padding is unavailable because padding is private

}



/// Metatype/GType declaration for WindowControls
public extension WindowControlsClassRef {
    
    /// This getter returns the GLib type identifier registered for `WindowControls`
    static var metatypeReference: GType { gtk_window_controls_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkWindowControlsClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkWindowControlsClass.self) }
    
    static var metatype: GtkWindowControlsClass? { metatypePointer?.pointee } 
    
    static var wrapper: WindowControlsClassRef? { WindowControlsClassRef(metatypePointer) }
    
    
}

// MARK: - WindowControlsClass Record

/// The `WindowControlsClassProtocol` protocol exposes the methods and properties of an underlying `GtkWindowControlsClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `WindowControlsClass`.
/// Alternatively, use `WindowControlsClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol WindowControlsClassProtocol {
        /// Untyped pointer to the underlying `GtkWindowControlsClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkWindowControlsClass` instance.
    var _ptr: UnsafeMutablePointer<GtkWindowControlsClass>! { get }

    /// Required Initialiser for types conforming to `WindowControlsClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `WindowControlsClassRef` type acts as a lightweight Swift reference to an underlying `GtkWindowControlsClass` instance.
/// It exposes methods that can operate on this data type through `WindowControlsClassProtocol` conformance.
/// Use `WindowControlsClassRef` only as an `unowned` reference to an existing `GtkWindowControlsClass` instance.
///

public struct WindowControlsClassRef: WindowControlsClassProtocol {
        /// Untyped pointer to the underlying `GtkWindowControlsClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension WindowControlsClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkWindowControlsClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkWindowControlsClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkWindowControlsClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkWindowControlsClass>?) {
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

    /// Reference intialiser for a related type that implements `WindowControlsClassProtocol`
    @inlinable init<T: WindowControlsClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowControlsClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowControlsClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowControlsClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowControlsClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowControlsClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: WindowControlsClass Record: WindowControlsClassProtocol extension (methods and fields)
public extension WindowControlsClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkWindowControlsClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkWindowControlsClass>! { return ptr?.assumingMemoryBound(to: GtkWindowControlsClass.self) }


    @inlinable var parentClass: GtkWidgetClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

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

    /// Required Initialiser for types conforming to `WindowGroupClassProtocol`
    init(raw: UnsafeMutableRawPointer)
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



/// Metatype/GType declaration for WindowHandle
public extension WindowHandleClassRef {
    
    /// This getter returns the GLib type identifier registered for `WindowHandle`
    static var metatypeReference: GType { gtk_window_handle_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkWindowHandleClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkWindowHandleClass.self) }
    
    static var metatype: GtkWindowHandleClass? { metatypePointer?.pointee } 
    
    static var wrapper: WindowHandleClassRef? { WindowHandleClassRef(metatypePointer) }
    
    
}

// MARK: - WindowHandleClass Record

/// The `WindowHandleClassProtocol` protocol exposes the methods and properties of an underlying `GtkWindowHandleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `WindowHandleClass`.
/// Alternatively, use `WindowHandleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol WindowHandleClassProtocol {
        /// Untyped pointer to the underlying `GtkWindowHandleClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkWindowHandleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkWindowHandleClass>! { get }

    /// Required Initialiser for types conforming to `WindowHandleClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `WindowHandleClassRef` type acts as a lightweight Swift reference to an underlying `GtkWindowHandleClass` instance.
/// It exposes methods that can operate on this data type through `WindowHandleClassProtocol` conformance.
/// Use `WindowHandleClassRef` only as an `unowned` reference to an existing `GtkWindowHandleClass` instance.
///

public struct WindowHandleClassRef: WindowHandleClassProtocol {
        /// Untyped pointer to the underlying `GtkWindowHandleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension WindowHandleClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkWindowHandleClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkWindowHandleClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkWindowHandleClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkWindowHandleClass>?) {
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

    /// Reference intialiser for a related type that implements `WindowHandleClassProtocol`
    @inlinable init<T: WindowHandleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowHandleClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowHandleClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowHandleClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowHandleClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowHandleClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: WindowHandleClass Record: WindowHandleClassProtocol extension (methods and fields)
public extension WindowHandleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkWindowHandleClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkWindowHandleClass>! { return ptr?.assumingMemoryBound(to: GtkWindowHandleClass.self) }


    @inlinable var parentClass: GtkWidgetClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



