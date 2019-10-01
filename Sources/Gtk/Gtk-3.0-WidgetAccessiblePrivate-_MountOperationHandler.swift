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

// MARK: - WidgetAccessiblePrivate Record

/// The `WidgetAccessiblePrivateProtocol` protocol exposes the methods and properties of an underlying `GtkWidgetAccessiblePrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `WidgetAccessiblePrivate`.
/// Alternatively, use `WidgetAccessiblePrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol WidgetAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkWidgetAccessiblePrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkWidgetAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkWidgetAccessiblePrivate> { get }
}

/// The `WidgetAccessiblePrivateRef` type acts as a lightweight Swift reference to an underlying `GtkWidgetAccessiblePrivate` instance.
/// It exposes methods that can operate on this data type through `WidgetAccessiblePrivateProtocol` conformance.
/// Use `WidgetAccessiblePrivateRef` only as an `unowned` reference to an existing `GtkWidgetAccessiblePrivate` instance.
///

public struct WidgetAccessiblePrivateRef: WidgetAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkWidgetAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension WidgetAccessiblePrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkWidgetAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `WidgetAccessiblePrivateProtocol`
    init<T: WidgetAccessiblePrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetAccessiblePrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetAccessiblePrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetAccessiblePrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetAccessiblePrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetAccessiblePrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `WidgetAccessiblePrivate` type acts as an owner of an underlying `GtkWidgetAccessiblePrivate` instance.
/// It provides the methods that can operate on this data type through `WidgetAccessiblePrivateProtocol` conformance.
/// Use `WidgetAccessiblePrivate` as a strong reference or owner of a `GtkWidgetAccessiblePrivate` instance.
///

open class WidgetAccessiblePrivate: WidgetAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkWidgetAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `WidgetAccessiblePrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkWidgetAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `WidgetAccessiblePrivateProtocol`
    /// `GtkWidgetAccessiblePrivate` does not allow reference counting.
    public convenience init<T: WidgetAccessiblePrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkWidgetAccessiblePrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkWidgetAccessiblePrivate`.
    deinit {
        // no reference counting for GtkWidgetAccessiblePrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetAccessiblePrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkWidgetAccessiblePrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkWidgetAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkWidgetAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetAccessiblePrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkWidgetAccessiblePrivate>(opaquePointer))
    }



}

// MARK: - no WidgetAccessiblePrivate properties

// MARK: - no signals


public extension WidgetAccessiblePrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkWidgetAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkWidgetAccessiblePrivate> { return ptr.assumingMemoryBound(to: GtkWidgetAccessiblePrivate.self) }

}



// MARK: - WidgetClass Record

/// The `WidgetClassProtocol` protocol exposes the methods and properties of an underlying `GtkWidgetClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `WidgetClass`.
/// Alternatively, use `WidgetClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol WidgetClassProtocol {
    /// Untyped pointer to the underlying `GtkWidgetClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkWidgetClass` instance.
    var _ptr: UnsafeMutablePointer<GtkWidgetClass> { get }
}

/// The `WidgetClassRef` type acts as a lightweight Swift reference to an underlying `GtkWidgetClass` instance.
/// It exposes methods that can operate on this data type through `WidgetClassProtocol` conformance.
/// Use `WidgetClassRef` only as an `unowned` reference to an existing `GtkWidgetClass` instance.
///

public struct WidgetClassRef: WidgetClassProtocol {
    /// Untyped pointer to the underlying `GtkWidgetClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension WidgetClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkWidgetClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `WidgetClassProtocol`
    init<T: WidgetClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `WidgetClass` type acts as an owner of an underlying `GtkWidgetClass` instance.
/// It provides the methods that can operate on this data type through `WidgetClassProtocol` conformance.
/// Use `WidgetClass` as a strong reference or owner of a `GtkWidgetClass` instance.
///

open class WidgetClass: WidgetClassProtocol {
    /// Untyped pointer to the underlying `GtkWidgetClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `WidgetClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkWidgetClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `WidgetClassProtocol`
    /// `GtkWidgetClass` does not allow reference counting.
    public convenience init<T: WidgetClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkWidgetClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkWidgetClass`.
    deinit {
        // no reference counting for GtkWidgetClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkWidgetClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkWidgetClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkWidgetClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkWidgetClass>(opaquePointer))
    }



}

// MARK: - no WidgetClass properties

// MARK: - no signals


public extension WidgetClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkWidgetClass` instance.
    var _ptr: UnsafeMutablePointer<GtkWidgetClass> { return ptr.assumingMemoryBound(to: GtkWidgetClass.self) }

    /// Declares a `callback_symbol` to handle `callback_name` from the template XML
    /// defined for `widget_type`. See gtk_builder_add_callback_symbol().
    /// 
    /// Note that this must be called from a composite widget classes class
    /// initializer after calling gtk_widget_class_set_template().
    func bindTemplateCallbackFull(callbackName callback_name: UnsafePointer<gchar>, callbackSymbol callback_symbol: @escaping GLibObject.Callback) {
        gtk_widget_class_bind_template_callback_full(cast(_ptr), callback_name, callback_symbol)
    
    }

    /// Automatically assign an object declared in the class template XML to be set to a location
    /// on a freshly built instance’s private data, or alternatively accessible via gtk_widget_get_template_child().
    /// 
    /// The struct can point either into the public instance, then you should use G_STRUCT_OFFSET(WidgetType, member)
    /// for `struct_offset`,  or in the private struct, then you should use G_PRIVATE_OFFSET(WidgetType, member).
    /// 
    /// An explicit strong reference will be held automatically for the duration of your
    /// instance’s life cycle, it will be released automatically when `GObjectClass`.dispose() runs
    /// on your instance and if a `struct_offset` that is != 0 is specified, then the automatic location
    /// in your instance public or private data will be set to `nil`. You can however access an automated child
    /// pointer the first time your classes `GObjectClass`.dispose() runs, or alternatively in
    /// `GtkWidgetClass`.destroy().
    /// 
    /// If `internal_child` is specified, `GtkBuildableIface`.get_internal_child() will be automatically
    /// implemented by the `GtkWidget` class so there is no need to implement it manually.
    /// 
    /// The wrapper macros gtk_widget_class_bind_template_child(), gtk_widget_class_bind_template_child_internal(),
    /// gtk_widget_class_bind_template_child_private() and gtk_widget_class_bind_template_child_internal_private()
    /// might be more convenient to use.
    /// 
    /// Note that this must be called from a composite widget classes class
    /// initializer after calling gtk_widget_class_set_template().
    func bindTemplateChildFull(name: UnsafePointer<gchar>, internalChild internal_child: Bool, structOffset struct_offset: gssize) {
        gtk_widget_class_bind_template_child_full(cast(_ptr), name, gboolean(internal_child ? 1 : 0), struct_offset)
    
    }

    /// Finds a style property of a widget class by name.
    func findStyleProperty(propertyName property_name: UnsafePointer<gchar>) -> UnsafeMutablePointer<GParamSpec>! {
        let rv = gtk_widget_class_find_style_property(cast(_ptr), property_name)
        return cast(rv)
    }

    /// Gets the name used by this class for matching in CSS code. See
    /// gtk_widget_class_set_css_name() for details.
    func getCssName() -> String! {
        let rv = gtk_widget_class_get_css_name(cast(_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Installs a style property on a widget class. The parser for the
    /// style property is determined by the value type of `pspec`.
    func installStyleProperty(pspec: ParamSpecProtocol) {
        gtk_widget_class_install_style_property(cast(_ptr), cast(pspec.ptr))
    
    }

    /// Installs a style property on a widget class.
    func installStylePropertyParser(pspec: ParamSpecProtocol, parser: @escaping RcPropertyParser) {
        gtk_widget_class_install_style_property_parser(cast(_ptr), cast(pspec.ptr), parser)
    
    }

    /// Returns all style properties of a widget class.
    func listStyleProperties(nProperties n_properties: UnsafeMutablePointer<CUnsignedInt>) -> UnsafeMutablePointer<UnsafeMutablePointer<GParamSpec>>! {
        let rv = gtk_widget_class_list_style_properties(cast(_ptr), cast(n_properties))
        return cast(rv)
    }

    /// Sets the default `AtkRole` to be set on accessibles created for
    /// widgets of `widget_class`. Accessibles may decide to not honor this
    /// setting if their role reporting is more refined. Calls to
    /// gtk_widget_class_set_accessible_type() will reset this value.
    /// 
    /// In cases where you want more fine-grained control over the role of
    /// accessibles created for `widget_class`, you should provide your own
    /// accessible type and use gtk_widget_class_set_accessible_type()
    /// instead.
    /// 
    /// If `role` is `ATK_ROLE_INVALID`, the default role will not be changed
    /// and the accessible’s default role will be used instead.
    /// 
    /// This function should only be called from class init functions of widgets.
    func setAccessible(role: Atk.Role) {
        gtk_widget_class_set_accessible_role(cast(_ptr), role)
    
    }

    /// Sets the type to be used for creating accessibles for widgets of
    /// `widget_class`. The given `type` must be a subtype of the type used for
    /// accessibles of the parent class.
    /// 
    /// This function should only be called from class init functions of widgets.
    func setAccessible(type: GType) {
        gtk_widget_class_set_accessible_type(cast(_ptr), type)
    
    }

    /// For use in language bindings, this will override the default `GtkBuilderConnectFunc` to be
    /// used when parsing GtkBuilder XML from this class’s template data.
    /// 
    /// Note that this must be called from a composite widget classes class
    /// initializer after calling gtk_widget_class_set_template().
    func set(connectFunc connect_func: @escaping BuilderConnectFunc, connectData connect_data: UnsafeMutableRawPointer, connectDataDestroy connect_data_destroy: @escaping GLib.DestroyNotify) {
        gtk_widget_class_set_connect_func(cast(_ptr), connect_func, cast(connect_data), connect_data_destroy)
    
    }

    /// Sets the name to be used for CSS matching of widgets.
    /// 
    /// If this function is not called for a given class, the name
    /// of the parent class is used.
    func setCss(name: UnsafePointer<CChar>) {
        gtk_widget_class_set_css_name(cast(_ptr), name)
    
    }

    /// This should be called at class initialization time to specify
    /// the GtkBuilder XML to be used to extend a widget.
    /// 
    /// For convenience, gtk_widget_class_set_template_from_resource() is also provided.
    /// 
    /// Note that any class that installs templates must call gtk_widget_init_template()
    /// in the widget’s instance initializer.
    func setTemplate(templateBytes template_bytes: BytesProtocol) {
        gtk_widget_class_set_template(cast(_ptr), cast(template_bytes.ptr))
    
    }

    /// A convenience function to call gtk_widget_class_set_template().
    /// 
    /// Note that any class that installs templates must call gtk_widget_init_template()
    /// in the widget’s instance initializer.
    func setTemplateFromResource(resourceName resource_name: UnsafePointer<gchar>) {
        gtk_widget_class_set_template_from_resource(cast(_ptr), resource_name)
    
    }
    /// Gets the name used by this class for matching in CSS code. See
    /// gtk_widget_class_set_css_name() for details.
    var cssName: String! {
        /// Gets the name used by this class for matching in CSS code. See
        /// gtk_widget_class_set_css_name() for details.
        get {
            let rv = gtk_widget_class_get_css_name(cast(_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
        /// Sets the name to be used for CSS matching of widgets.
        /// 
        /// If this function is not called for a given class, the name
        /// of the parent class is used.
        nonmutating set {
            gtk_widget_class_set_css_name(cast(_ptr), newValue)
        }
    }
}



// MARK: - WidgetClassPrivate Record

/// The `WidgetClassPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkWidgetClassPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `WidgetClassPrivate`.
/// Alternatively, use `WidgetClassPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol WidgetClassPrivateProtocol {
    /// Untyped pointer to the underlying `GtkWidgetClassPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkWidgetClassPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkWidgetClassPrivate> { get }
}

/// The `WidgetClassPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkWidgetClassPrivate` instance.
/// It exposes methods that can operate on this data type through `WidgetClassPrivateProtocol` conformance.
/// Use `WidgetClassPrivateRef` only as an `unowned` reference to an existing `GtkWidgetClassPrivate` instance.
///

public struct WidgetClassPrivateRef: WidgetClassPrivateProtocol {
    /// Untyped pointer to the underlying `GtkWidgetClassPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension WidgetClassPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkWidgetClassPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `WidgetClassPrivateProtocol`
    init<T: WidgetClassPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetClassPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetClassPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetClassPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetClassPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetClassPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
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
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `WidgetClassPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkWidgetClassPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `WidgetClassPrivateProtocol`
    /// `GtkWidgetClassPrivate` does not allow reference counting.
    public convenience init<T: WidgetClassPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkWidgetClassPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkWidgetClassPrivate`.
    deinit {
        // no reference counting for GtkWidgetClassPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetClassPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkWidgetClassPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetClassPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkWidgetClassPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetClassPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkWidgetClassPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetClassPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkWidgetClassPrivate>(opaquePointer))
    }



}

// MARK: - no WidgetClassPrivate properties

// MARK: - no signals


public extension WidgetClassPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkWidgetClassPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkWidgetClassPrivate> { return ptr.assumingMemoryBound(to: GtkWidgetClassPrivate.self) }

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
/// this API directly, as there is gtk_widget_get_path(), and the style
/// context returned by gtk_widget_get_style_context() will be automatically
/// updated on widget hierarchy changes.
/// 
/// The widget path generation is generally simple:
/// 
/// ``` Defining a button within a window
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
/// 
/// Although more complex information, such as widget names, or
/// different classes (property that may be used by other widget
/// types) and intermediate regions may be included:
/// 
/// ``` Defining the first tab widget in a notebook
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
/// 
/// All this information will be used to match the style information
/// that applies to the described widget.
public protocol WidgetPathProtocol {
    /// Untyped pointer to the underlying `GtkWidgetPath` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkWidgetPath` instance.
    var widget_path_ptr: UnsafeMutablePointer<GtkWidgetPath> { get }
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
/// this API directly, as there is gtk_widget_get_path(), and the style
/// context returned by gtk_widget_get_style_context() will be automatically
/// updated on widget hierarchy changes.
/// 
/// The widget path generation is generally simple:
/// 
/// ``` Defining a button within a window
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
/// 
/// Although more complex information, such as widget names, or
/// different classes (property that may be used by other widget
/// types) and intermediate regions may be included:
/// 
/// ``` Defining the first tab widget in a notebook
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
/// 
/// All this information will be used to match the style information
/// that applies to the described widget.
public struct WidgetPathRef: WidgetPathProtocol {
    /// Untyped pointer to the underlying `GtkWidgetPath` instance.
    /// For type-safe access, use the generated, typed pointer `widget_path_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension WidgetPathRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkWidgetPath>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `WidgetPathProtocol`
    init<T: WidgetPathProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetPathProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetPathProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetPathProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetPathProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetPathProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Returns an empty widget path.
    init() {
        let rv = gtk_widget_path_new()
        self.init(cast(rv))
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
/// this API directly, as there is gtk_widget_get_path(), and the style
/// context returned by gtk_widget_get_style_context() will be automatically
/// updated on widget hierarchy changes.
/// 
/// The widget path generation is generally simple:
/// 
/// ``` Defining a button within a window
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
/// 
/// Although more complex information, such as widget names, or
/// different classes (property that may be used by other widget
/// types) and intermediate regions may be included:
/// 
/// ``` Defining the first tab widget in a notebook
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
/// 
/// All this information will be used to match the style information
/// that applies to the described widget.
open class WidgetPath: WidgetPathProtocol {
    /// Untyped pointer to the underlying `GtkWidgetPath` instance.
    /// For type-safe access, use the generated, typed pointer `widget_path_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `WidgetPath` instance.
    public init(_ op: UnsafeMutablePointer<GtkWidgetPath>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `WidgetPathProtocol`
    /// Will retain `GtkWidgetPath`.
    public convenience init<T: WidgetPathProtocol>(_ other: T) {
        self.init(cast(other.widget_path_ptr))
        gtk_widget_path_ref(cast(widget_path_ptr))
    }

    /// Releases the underlying `GtkWidgetPath` instance using `gtk_widget_path_unref`.
    deinit {
        gtk_widget_path_unref(cast(widget_path_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetPathProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkWidgetPath.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetPathProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkWidgetPath.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetPathProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkWidgetPath.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetPathProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkWidgetPath>(opaquePointer))
    }

    /// Returns an empty widget path.
    public convenience init() {
        let rv = gtk_widget_path_new()
        self.init(cast(rv))
    }


}

// MARK: - no WidgetPath properties

// MARK: - no signals


public extension WidgetPathProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkWidgetPath` instance.
    var widget_path_ptr: UnsafeMutablePointer<GtkWidgetPath> { return ptr.assumingMemoryBound(to: GtkWidgetPath.self) }

    /// Appends the data from `widget` to the widget hierarchy represented
    /// by `path`. This function is a shortcut for adding information from
    /// `widget` to the given `path`. This includes setting the name or
    /// adding the style classes from `widget`.
    func appendFor(widget: WidgetProtocol) -> CInt {
        let rv = gtk_widget_path_append_for_widget(cast(widget_path_ptr), cast(widget.ptr))
        return CInt(rv)
    }

    /// Appends a widget type to the widget hierarchy represented by `path`.
    func append(type: GType) -> CInt {
        let rv = gtk_widget_path_append_type(cast(widget_path_ptr), type)
        return CInt(rv)
    }

    /// Appends a widget type with all its siblings to the widget hierarchy
    /// represented by `path`. Using this function instead of
    /// gtk_widget_path_append_type() will allow the CSS theming to use
    /// sibling matches in selectors and apply :nth-child() pseudo classes.
    /// In turn, it requires a lot more care in widget implementations as
    /// widgets need to make sure to call gtk_widget_reset_style() on all
    /// involved widgets when the `siblings` path changes.
    func appendWith(siblings: WidgetPathProtocol, siblingIndex sibling_index: CUnsignedInt) -> CInt {
        let rv = gtk_widget_path_append_with_siblings(cast(widget_path_ptr), cast(siblings.ptr), guint(sibling_index))
        return CInt(rv)
    }

    /// Returns a copy of `path`
    func copy() -> UnsafeMutablePointer<GtkWidgetPath>! {
        let rv = gtk_widget_path_copy(cast(widget_path_ptr))
        return cast(rv)
    }

    /// Decrements the reference count on `path`, freeing the structure
    /// if the reference count reaches 0.
    func free() {
        gtk_widget_path_free(cast(widget_path_ptr))
    
    }

    /// Returns the topmost object type, that is, the object type this path
    /// is representing.
    func getObjectType() -> GType {
        let rv = gtk_widget_path_get_object_type(cast(widget_path_ptr))
        return rv
    }

    /// Returns `true` if any of the parents of the widget represented
    /// in `path` is of type `type`, or any subtype of it.
    func hasParent(type: GType) -> Bool {
        let rv = gtk_widget_path_has_parent(cast(widget_path_ptr), type)
        return Bool(rv != 0)
    }

    /// Returns `true` if the widget type represented by this path
    /// is `type`, or a subtype of it.
    func is_(type: GType) -> Bool {
        let rv = gtk_widget_path_is_type(cast(widget_path_ptr), type)
        return Bool(rv != 0)
    }

    /// Adds the class `name` to the widget at position `pos` in
    /// the hierarchy defined in `path`. See
    /// gtk_style_context_add_class().
    func iterAddClass(pos: CInt, name: UnsafePointer<gchar>) {
        gtk_widget_path_iter_add_class(cast(widget_path_ptr), gint(pos), name)
    
    }

    /// Adds the region `name` to the widget at position `pos` in
    /// the hierarchy defined in `path`. See
    /// gtk_style_context_add_region().
    /// 
    /// Region names must only contain lowercase letters
    /// and “-”, starting always with a lowercase letter.
    ///
    /// **iter_add_region is deprecated:**
    /// The use of regions is deprecated.
    @available(*, deprecated) func iterAddRegion(pos: CInt, name: UnsafePointer<gchar>, flags: RegionFlags) {
        gtk_widget_path_iter_add_region(cast(widget_path_ptr), gint(pos), name, flags)
    
    }

    /// Removes all classes from the widget at position `pos` in the
    /// hierarchy defined in `path`.
    func iterClearClasses(pos: CInt) {
        gtk_widget_path_iter_clear_classes(cast(widget_path_ptr), gint(pos))
    
    }

    /// Removes all regions from the widget at position `pos` in the
    /// hierarchy defined in `path`.
    ///
    /// **iter_clear_regions is deprecated:**
    /// The use of regions is deprecated.
    @available(*, deprecated) func iterClearRegions(pos: CInt) {
        gtk_widget_path_iter_clear_regions(cast(widget_path_ptr), gint(pos))
    
    }

    /// Returns the name corresponding to the widget found at
    /// the position `pos` in the widget hierarchy defined by
    /// `path`
    func iterGetName(pos: CInt) -> String! {
        let rv = gtk_widget_path_iter_get_name(cast(widget_path_ptr), gint(pos))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Returns the object name that is at position `pos` in the widget
    /// hierarchy defined in `path`.
    func iterGetObjectName(pos: CInt) -> String! {
        let rv = gtk_widget_path_iter_get_object_name(cast(widget_path_ptr), gint(pos))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Returns the object `GType` that is at position `pos` in the widget
    /// hierarchy defined in `path`.
    func iterGetObjectType(pos: CInt) -> GType {
        let rv = gtk_widget_path_iter_get_object_type(cast(widget_path_ptr), gint(pos))
        return rv
    }

    /// Returns the index into the list of siblings for the element at `pos` as
    /// returned by gtk_widget_path_iter_get_siblings(). If that function would
    /// return `nil` because the element at `pos` has no siblings, this function
    /// will return 0.
    func iterGetSiblingIndex(pos: CInt) -> CUnsignedInt {
        let rv = gtk_widget_path_iter_get_sibling_index(cast(widget_path_ptr), gint(pos))
        return CUnsignedInt(rv)
    }

    /// Returns the list of siblings for the element at `pos`. If the element
    /// was not added with siblings, `nil` is returned.
    func iterGetSiblings(pos: CInt) -> UnsafePointer<GtkWidgetPath>! {
        let rv = gtk_widget_path_iter_get_siblings(cast(widget_path_ptr), gint(pos))
        return cast(rv)
    }

    /// Returns the state flags corresponding to the widget found at
    /// the position `pos` in the widget hierarchy defined by
    /// `path`
    func iterGetState(pos: CInt) -> GtkStateFlags {
        let rv = gtk_widget_path_iter_get_state(cast(widget_path_ptr), gint(pos))
        return rv
    }

    /// Returns `true` if the widget at position `pos` has the class `name`
    /// defined, `false` otherwise.
    func iterHasClass(pos: CInt, name: UnsafePointer<gchar>) -> Bool {
        let rv = gtk_widget_path_iter_has_class(cast(widget_path_ptr), gint(pos), name)
        return Bool(rv != 0)
    }

    /// Returns `true` if the widget at position `pos` has the name `name`,
    /// `false` otherwise.
    func iterHasName(pos: CInt, name: UnsafePointer<gchar>) -> Bool {
        let rv = gtk_widget_path_iter_has_name(cast(widget_path_ptr), gint(pos), name)
        return Bool(rv != 0)
    }

    /// See gtk_widget_path_iter_has_class(). This is a version that operates
    /// with GQuarks.
    func iterHasQclass(pos: CInt, qname: GLib.Quark) -> Bool {
        let rv = gtk_widget_path_iter_has_qclass(cast(widget_path_ptr), gint(pos), qname)
        return Bool(rv != 0)
    }

    /// See gtk_widget_path_iter_has_name(). This is a version
    /// that operates on `GQuarks`.
    func iterHasQname(pos: CInt, qname: GLib.Quark) -> Bool {
        let rv = gtk_widget_path_iter_has_qname(cast(widget_path_ptr), gint(pos), qname)
        return Bool(rv != 0)
    }

    /// See gtk_widget_path_iter_has_region(). This is a version that operates
    /// with GQuarks.
    ///
    /// **iter_has_qregion is deprecated:**
    /// The use of regions is deprecated.
    @available(*, deprecated) func iterHasQregion(pos: CInt, qname: GLib.Quark, flags: UnsafeMutablePointer<GtkRegionFlags>) -> Bool {
        let rv = gtk_widget_path_iter_has_qregion(cast(widget_path_ptr), gint(pos), qname, cast(flags))
        return Bool(rv != 0)
    }

    /// Returns `true` if the widget at position `pos` has the class `name`
    /// defined, `false` otherwise.
    ///
    /// **iter_has_region is deprecated:**
    /// The use of regions is deprecated.
    @available(*, deprecated) func iterHasRegion(pos: CInt, name: UnsafePointer<gchar>, flags: UnsafeMutablePointer<GtkRegionFlags>) -> Bool {
        let rv = gtk_widget_path_iter_has_region(cast(widget_path_ptr), gint(pos), name, cast(flags))
        return Bool(rv != 0)
    }

    /// Returns a list with all the class names defined for the widget
    /// at position `pos` in the hierarchy defined in `path`.
    func iterListClasses(pos: CInt) -> SListRef! {
        let rv = gtk_widget_path_iter_list_classes(cast(widget_path_ptr), gint(pos))
        return cast(rv.map { SListRef($0) })
    }

    /// Returns a list with all the region names defined for the widget
    /// at position `pos` in the hierarchy defined in `path`.
    ///
    /// **iter_list_regions is deprecated:**
    /// The use of regions is deprecated.
    @available(*, deprecated) func iterListRegions(pos: CInt) -> SListRef! {
        let rv = gtk_widget_path_iter_list_regions(cast(widget_path_ptr), gint(pos))
        return cast(rv.map { SListRef($0) })
    }

    /// Removes the class `name` from the widget at position `pos` in
    /// the hierarchy defined in `path`.
    func iterRemoveClass(pos: CInt, name: UnsafePointer<gchar>) {
        gtk_widget_path_iter_remove_class(cast(widget_path_ptr), gint(pos), name)
    
    }

    /// Removes the region `name` from the widget at position `pos` in
    /// the hierarchy defined in `path`.
    ///
    /// **iter_remove_region is deprecated:**
    /// The use of regions is deprecated.
    @available(*, deprecated) func iterRemoveRegion(pos: CInt, name: UnsafePointer<gchar>) {
        gtk_widget_path_iter_remove_region(cast(widget_path_ptr), gint(pos), name)
    
    }

    /// Sets the widget name for the widget found at position `pos`
    /// in the widget hierarchy defined by `path`.
    func iterSetName(pos: CInt, name: UnsafePointer<gchar>) {
        gtk_widget_path_iter_set_name(cast(widget_path_ptr), gint(pos), name)
    
    }

    /// Sets the object name for a given position in the widget hierarchy
    /// defined by `path`.
    /// 
    /// When set, the object name overrides the object type when matching
    /// CSS.
    func iterSetObjectName(pos: CInt, name: UnsafePointer<CChar>) {
        gtk_widget_path_iter_set_object_name(cast(widget_path_ptr), gint(pos), name)
    
    }

    /// Sets the object type for a given position in the widget hierarchy
    /// defined by `path`.
    func iterSetObjectType(pos: CInt, type: GType) {
        gtk_widget_path_iter_set_object_type(cast(widget_path_ptr), gint(pos), type)
    
    }

    /// Sets the widget name for the widget found at position `pos`
    /// in the widget hierarchy defined by `path`.
    /// 
    /// If you want to update just a single state flag, you need to do
    /// this manually, as this function updates all state flags.
    /// 
    /// ``` Setting a flag
    /// 
    /// (C Language Example):
    /// ```C
    /// gtk_widget_path_iter_set_state (path, pos, gtk_widget_path_iter_get_state (path, pos) | flag);
    /// ```
    /// 
    /// 
    /// ``` Unsetting a flag
    /// 
    /// (C Language Example):
    /// ```C
    /// gtk_widget_path_iter_set_state (path, pos, gtk_widget_path_iter_get_state (path, pos) & ~flag);
    /// ```
    /// 
    func iterSetState(pos: CInt, state: StateFlags) {
        gtk_widget_path_iter_set_state(cast(widget_path_ptr), gint(pos), state)
    
    }

    /// Returns the number of `GtkWidget` `GTypes` between the represented
    /// widget and its topmost container.
    func length() -> CInt {
        let rv = gtk_widget_path_length(cast(widget_path_ptr))
        return CInt(rv)
    }

    /// Prepends a widget type to the widget hierachy represented by `path`.
    func prepend(type: GType) {
        gtk_widget_path_prepend_type(cast(widget_path_ptr), type)
    
    }

    /// Increments the reference count on `path`.
    func ref() -> UnsafeMutablePointer<GtkWidgetPath>! {
        let rv = gtk_widget_path_ref(cast(widget_path_ptr))
        return cast(rv)
    }

    /// Dumps the widget path into a string representation. It tries to match
    /// the CSS style as closely as possible (Note that there might be paths
    /// that cannot be represented in CSS).
    /// 
    /// The main use of this code is for debugging purposes, so that you can
    /// g_print() the path or dump it in a gdb session.
    func toString() -> String! {
        let rv = gtk_widget_path_to_string(cast(widget_path_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Decrements the reference count on `path`, freeing the structure
    /// if the reference count reaches 0.
    func unref() {
        gtk_widget_path_unref(cast(widget_path_ptr))
    
    }
    /// Returns the topmost object type, that is, the object type this path
    /// is representing.
    var objectType: GType {
        /// Returns the topmost object type, that is, the object type this path
        /// is representing.
        get {
            let rv = gtk_widget_path_get_object_type(cast(widget_path_ptr))
            return rv
        }
    }
}



// MARK: - WidgetPrivate Record

/// The `WidgetPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkWidgetPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `WidgetPrivate`.
/// Alternatively, use `WidgetPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol WidgetPrivateProtocol {
    /// Untyped pointer to the underlying `GtkWidgetPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkWidgetPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkWidgetPrivate> { get }
}

/// The `WidgetPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkWidgetPrivate` instance.
/// It exposes methods that can operate on this data type through `WidgetPrivateProtocol` conformance.
/// Use `WidgetPrivateRef` only as an `unowned` reference to an existing `GtkWidgetPrivate` instance.
///

public struct WidgetPrivateRef: WidgetPrivateProtocol {
    /// Untyped pointer to the underlying `GtkWidgetPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension WidgetPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkWidgetPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `WidgetPrivateProtocol`
    init<T: WidgetPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `WidgetPrivate` type acts as an owner of an underlying `GtkWidgetPrivate` instance.
/// It provides the methods that can operate on this data type through `WidgetPrivateProtocol` conformance.
/// Use `WidgetPrivate` as a strong reference or owner of a `GtkWidgetPrivate` instance.
///

open class WidgetPrivate: WidgetPrivateProtocol {
    /// Untyped pointer to the underlying `GtkWidgetPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `WidgetPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkWidgetPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `WidgetPrivateProtocol`
    /// `GtkWidgetPrivate` does not allow reference counting.
    public convenience init<T: WidgetPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkWidgetPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkWidgetPrivate`.
    deinit {
        // no reference counting for GtkWidgetPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkWidgetPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkWidgetPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkWidgetPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WidgetPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkWidgetPrivate>(opaquePointer))
    }



}

// MARK: - no WidgetPrivate properties

// MARK: - no signals


public extension WidgetPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkWidgetPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkWidgetPrivate> { return ptr.assumingMemoryBound(to: GtkWidgetPrivate.self) }

}



// MARK: - WindowAccessibleClass Record

/// The `WindowAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkWindowAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `WindowAccessibleClass`.
/// Alternatively, use `WindowAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol WindowAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkWindowAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkWindowAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkWindowAccessibleClass> { get }
}

/// The `WindowAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkWindowAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `WindowAccessibleClassProtocol` conformance.
/// Use `WindowAccessibleClassRef` only as an `unowned` reference to an existing `GtkWindowAccessibleClass` instance.
///

public struct WindowAccessibleClassRef: WindowAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkWindowAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension WindowAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkWindowAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `WindowAccessibleClassProtocol`
    init<T: WindowAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowAccessibleClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowAccessibleClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowAccessibleClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowAccessibleClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowAccessibleClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `WindowAccessibleClass` type acts as an owner of an underlying `GtkWindowAccessibleClass` instance.
/// It provides the methods that can operate on this data type through `WindowAccessibleClassProtocol` conformance.
/// Use `WindowAccessibleClass` as a strong reference or owner of a `GtkWindowAccessibleClass` instance.
///

open class WindowAccessibleClass: WindowAccessibleClassProtocol {
    /// Untyped pointer to the underlying `GtkWindowAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `WindowAccessibleClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkWindowAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `WindowAccessibleClassProtocol`
    /// `GtkWindowAccessibleClass` does not allow reference counting.
    public convenience init<T: WindowAccessibleClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkWindowAccessibleClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkWindowAccessibleClass`.
    deinit {
        // no reference counting for GtkWindowAccessibleClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowAccessibleClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkWindowAccessibleClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkWindowAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowAccessibleClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkWindowAccessibleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowAccessibleClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkWindowAccessibleClass>(opaquePointer))
    }



}

// MARK: - no WindowAccessibleClass properties

// MARK: - no signals


public extension WindowAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkWindowAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkWindowAccessibleClass> { return ptr.assumingMemoryBound(to: GtkWindowAccessibleClass.self) }

}



// MARK: - WindowAccessiblePrivate Record

/// The `WindowAccessiblePrivateProtocol` protocol exposes the methods and properties of an underlying `GtkWindowAccessiblePrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `WindowAccessiblePrivate`.
/// Alternatively, use `WindowAccessiblePrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol WindowAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkWindowAccessiblePrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkWindowAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkWindowAccessiblePrivate> { get }
}

/// The `WindowAccessiblePrivateRef` type acts as a lightweight Swift reference to an underlying `GtkWindowAccessiblePrivate` instance.
/// It exposes methods that can operate on this data type through `WindowAccessiblePrivateProtocol` conformance.
/// Use `WindowAccessiblePrivateRef` only as an `unowned` reference to an existing `GtkWindowAccessiblePrivate` instance.
///

public struct WindowAccessiblePrivateRef: WindowAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkWindowAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension WindowAccessiblePrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkWindowAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `WindowAccessiblePrivateProtocol`
    init<T: WindowAccessiblePrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowAccessiblePrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowAccessiblePrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowAccessiblePrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowAccessiblePrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowAccessiblePrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `WindowAccessiblePrivate` type acts as an owner of an underlying `GtkWindowAccessiblePrivate` instance.
/// It provides the methods that can operate on this data type through `WindowAccessiblePrivateProtocol` conformance.
/// Use `WindowAccessiblePrivate` as a strong reference or owner of a `GtkWindowAccessiblePrivate` instance.
///

open class WindowAccessiblePrivate: WindowAccessiblePrivateProtocol {
    /// Untyped pointer to the underlying `GtkWindowAccessiblePrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `WindowAccessiblePrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkWindowAccessiblePrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `WindowAccessiblePrivateProtocol`
    /// `GtkWindowAccessiblePrivate` does not allow reference counting.
    public convenience init<T: WindowAccessiblePrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkWindowAccessiblePrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkWindowAccessiblePrivate`.
    deinit {
        // no reference counting for GtkWindowAccessiblePrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowAccessiblePrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkWindowAccessiblePrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkWindowAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowAccessiblePrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkWindowAccessiblePrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowAccessiblePrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkWindowAccessiblePrivate>(opaquePointer))
    }



}

// MARK: - no WindowAccessiblePrivate properties

// MARK: - no signals


public extension WindowAccessiblePrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkWindowAccessiblePrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkWindowAccessiblePrivate> { return ptr.assumingMemoryBound(to: GtkWindowAccessiblePrivate.self) }

}



// MARK: - WindowClass Record

/// The `WindowClassProtocol` protocol exposes the methods and properties of an underlying `GtkWindowClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `WindowClass`.
/// Alternatively, use `WindowClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol WindowClassProtocol {
    /// Untyped pointer to the underlying `GtkWindowClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkWindowClass` instance.
    var _ptr: UnsafeMutablePointer<GtkWindowClass> { get }
}

/// The `WindowClassRef` type acts as a lightweight Swift reference to an underlying `GtkWindowClass` instance.
/// It exposes methods that can operate on this data type through `WindowClassProtocol` conformance.
/// Use `WindowClassRef` only as an `unowned` reference to an existing `GtkWindowClass` instance.
///

public struct WindowClassRef: WindowClassProtocol {
    /// Untyped pointer to the underlying `GtkWindowClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension WindowClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkWindowClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `WindowClassProtocol`
    init<T: WindowClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `WindowClass` type acts as an owner of an underlying `GtkWindowClass` instance.
/// It provides the methods that can operate on this data type through `WindowClassProtocol` conformance.
/// Use `WindowClass` as a strong reference or owner of a `GtkWindowClass` instance.
///

open class WindowClass: WindowClassProtocol {
    /// Untyped pointer to the underlying `GtkWindowClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `WindowClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkWindowClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `WindowClassProtocol`
    /// `GtkWindowClass` does not allow reference counting.
    public convenience init<T: WindowClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkWindowClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkWindowClass`.
    deinit {
        // no reference counting for GtkWindowClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkWindowClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkWindowClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkWindowClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkWindowClass>(opaquePointer))
    }



}

// MARK: - no WindowClass properties

// MARK: - no signals


public extension WindowClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkWindowClass` instance.
    var _ptr: UnsafeMutablePointer<GtkWindowClass> { return ptr.assumingMemoryBound(to: GtkWindowClass.self) }

}



// MARK: - WindowGeometryInfo Record

/// The `WindowGeometryInfoProtocol` protocol exposes the methods and properties of an underlying `GtkWindowGeometryInfo` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `WindowGeometryInfo`.
/// Alternatively, use `WindowGeometryInfoRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol WindowGeometryInfoProtocol {
    /// Untyped pointer to the underlying `GtkWindowGeometryInfo` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkWindowGeometryInfo` instance.
    var _ptr: UnsafeMutablePointer<GtkWindowGeometryInfo> { get }
}

/// The `WindowGeometryInfoRef` type acts as a lightweight Swift reference to an underlying `GtkWindowGeometryInfo` instance.
/// It exposes methods that can operate on this data type through `WindowGeometryInfoProtocol` conformance.
/// Use `WindowGeometryInfoRef` only as an `unowned` reference to an existing `GtkWindowGeometryInfo` instance.
///

public struct WindowGeometryInfoRef: WindowGeometryInfoProtocol {
    /// Untyped pointer to the underlying `GtkWindowGeometryInfo` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension WindowGeometryInfoRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkWindowGeometryInfo>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `WindowGeometryInfoProtocol`
    init<T: WindowGeometryInfoProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowGeometryInfoProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowGeometryInfoProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowGeometryInfoProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowGeometryInfoProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowGeometryInfoProtocol`.**
    init(opaquePointer: OpaquePointer) {
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
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `WindowGeometryInfo` instance.
    public init(_ op: UnsafeMutablePointer<GtkWindowGeometryInfo>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `WindowGeometryInfoProtocol`
    /// `GtkWindowGeometryInfo` does not allow reference counting.
    public convenience init<T: WindowGeometryInfoProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkWindowGeometryInfo, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkWindowGeometryInfo`.
    deinit {
        // no reference counting for GtkWindowGeometryInfo, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowGeometryInfoProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkWindowGeometryInfo.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowGeometryInfoProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkWindowGeometryInfo.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowGeometryInfoProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkWindowGeometryInfo.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowGeometryInfoProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkWindowGeometryInfo>(opaquePointer))
    }



}

// MARK: - no WindowGeometryInfo properties

// MARK: - no signals


public extension WindowGeometryInfoProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkWindowGeometryInfo` instance.
    var _ptr: UnsafeMutablePointer<GtkWindowGeometryInfo> { return ptr.assumingMemoryBound(to: GtkWindowGeometryInfo.self) }

}



// MARK: - WindowGroupClass Record

/// The `WindowGroupClassProtocol` protocol exposes the methods and properties of an underlying `GtkWindowGroupClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `WindowGroupClass`.
/// Alternatively, use `WindowGroupClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol WindowGroupClassProtocol {
    /// Untyped pointer to the underlying `GtkWindowGroupClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkWindowGroupClass` instance.
    var _ptr: UnsafeMutablePointer<GtkWindowGroupClass> { get }
}

/// The `WindowGroupClassRef` type acts as a lightweight Swift reference to an underlying `GtkWindowGroupClass` instance.
/// It exposes methods that can operate on this data type through `WindowGroupClassProtocol` conformance.
/// Use `WindowGroupClassRef` only as an `unowned` reference to an existing `GtkWindowGroupClass` instance.
///

public struct WindowGroupClassRef: WindowGroupClassProtocol {
    /// Untyped pointer to the underlying `GtkWindowGroupClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension WindowGroupClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkWindowGroupClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `WindowGroupClassProtocol`
    init<T: WindowGroupClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowGroupClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowGroupClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowGroupClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowGroupClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowGroupClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `WindowGroupClass` type acts as an owner of an underlying `GtkWindowGroupClass` instance.
/// It provides the methods that can operate on this data type through `WindowGroupClassProtocol` conformance.
/// Use `WindowGroupClass` as a strong reference or owner of a `GtkWindowGroupClass` instance.
///

open class WindowGroupClass: WindowGroupClassProtocol {
    /// Untyped pointer to the underlying `GtkWindowGroupClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `WindowGroupClass` instance.
    public init(_ op: UnsafeMutablePointer<GtkWindowGroupClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `WindowGroupClassProtocol`
    /// `GtkWindowGroupClass` does not allow reference counting.
    public convenience init<T: WindowGroupClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkWindowGroupClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkWindowGroupClass`.
    deinit {
        // no reference counting for GtkWindowGroupClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowGroupClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkWindowGroupClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowGroupClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkWindowGroupClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowGroupClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkWindowGroupClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowGroupClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkWindowGroupClass>(opaquePointer))
    }



}

// MARK: - no WindowGroupClass properties

// MARK: - no signals


public extension WindowGroupClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkWindowGroupClass` instance.
    var _ptr: UnsafeMutablePointer<GtkWindowGroupClass> { return ptr.assumingMemoryBound(to: GtkWindowGroupClass.self) }

}



// MARK: - WindowGroupPrivate Record

/// The `WindowGroupPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkWindowGroupPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `WindowGroupPrivate`.
/// Alternatively, use `WindowGroupPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol WindowGroupPrivateProtocol {
    /// Untyped pointer to the underlying `GtkWindowGroupPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkWindowGroupPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkWindowGroupPrivate> { get }
}

/// The `WindowGroupPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkWindowGroupPrivate` instance.
/// It exposes methods that can operate on this data type through `WindowGroupPrivateProtocol` conformance.
/// Use `WindowGroupPrivateRef` only as an `unowned` reference to an existing `GtkWindowGroupPrivate` instance.
///

public struct WindowGroupPrivateRef: WindowGroupPrivateProtocol {
    /// Untyped pointer to the underlying `GtkWindowGroupPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension WindowGroupPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkWindowGroupPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `WindowGroupPrivateProtocol`
    init<T: WindowGroupPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowGroupPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowGroupPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowGroupPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowGroupPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowGroupPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `WindowGroupPrivate` type acts as an owner of an underlying `GtkWindowGroupPrivate` instance.
/// It provides the methods that can operate on this data type through `WindowGroupPrivateProtocol` conformance.
/// Use `WindowGroupPrivate` as a strong reference or owner of a `GtkWindowGroupPrivate` instance.
///

open class WindowGroupPrivate: WindowGroupPrivateProtocol {
    /// Untyped pointer to the underlying `GtkWindowGroupPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `WindowGroupPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkWindowGroupPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `WindowGroupPrivateProtocol`
    /// `GtkWindowGroupPrivate` does not allow reference counting.
    public convenience init<T: WindowGroupPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkWindowGroupPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkWindowGroupPrivate`.
    deinit {
        // no reference counting for GtkWindowGroupPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowGroupPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkWindowGroupPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowGroupPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkWindowGroupPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowGroupPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkWindowGroupPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowGroupPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkWindowGroupPrivate>(opaquePointer))
    }



}

// MARK: - no WindowGroupPrivate properties

// MARK: - no signals


public extension WindowGroupPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkWindowGroupPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkWindowGroupPrivate> { return ptr.assumingMemoryBound(to: GtkWindowGroupPrivate.self) }

}



// MARK: - WindowPrivate Record

/// The `WindowPrivateProtocol` protocol exposes the methods and properties of an underlying `GtkWindowPrivate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `WindowPrivate`.
/// Alternatively, use `WindowPrivateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol WindowPrivateProtocol {
    /// Untyped pointer to the underlying `GtkWindowPrivate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkWindowPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkWindowPrivate> { get }
}

/// The `WindowPrivateRef` type acts as a lightweight Swift reference to an underlying `GtkWindowPrivate` instance.
/// It exposes methods that can operate on this data type through `WindowPrivateProtocol` conformance.
/// Use `WindowPrivateRef` only as an `unowned` reference to an existing `GtkWindowPrivate` instance.
///

public struct WindowPrivateRef: WindowPrivateProtocol {
    /// Untyped pointer to the underlying `GtkWindowPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension WindowPrivateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkWindowPrivate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `WindowPrivateProtocol`
    init<T: WindowPrivateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowPrivateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowPrivateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowPrivateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowPrivateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowPrivateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `WindowPrivate` type acts as an owner of an underlying `GtkWindowPrivate` instance.
/// It provides the methods that can operate on this data type through `WindowPrivateProtocol` conformance.
/// Use `WindowPrivate` as a strong reference or owner of a `GtkWindowPrivate` instance.
///

open class WindowPrivate: WindowPrivateProtocol {
    /// Untyped pointer to the underlying `GtkWindowPrivate` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `WindowPrivate` instance.
    public init(_ op: UnsafeMutablePointer<GtkWindowPrivate>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `WindowPrivateProtocol`
    /// `GtkWindowPrivate` does not allow reference counting.
    public convenience init<T: WindowPrivateProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GtkWindowPrivate, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GtkWindowPrivate`.
    deinit {
        // no reference counting for GtkWindowPrivate, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowPrivateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkWindowPrivate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowPrivateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkWindowPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowPrivateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkWindowPrivate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WindowPrivateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkWindowPrivate>(opaquePointer))
    }



}

// MARK: - no WindowPrivate properties

// MARK: - no signals


public extension WindowPrivateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkWindowPrivate` instance.
    var _ptr: UnsafeMutablePointer<GtkWindowPrivate> { return ptr.assumingMemoryBound(to: GtkWindowPrivate.self) }

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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `_GtkMountOperationHandler` instance.
    var _ptr: UnsafeMutablePointer<_GtkMountOperationHandler> { get }
}

/// The `_MountOperationHandlerRef` type acts as a lightweight Swift reference to an underlying `_GtkMountOperationHandler` instance.
/// It exposes methods that can operate on this data type through `_MountOperationHandlerProtocol` conformance.
/// Use `_MountOperationHandlerRef` only as an `unowned` reference to an existing `_GtkMountOperationHandler` instance.
///
/// Abstract interface type for the D-Bus interface <link linkend="gdbus-interface-org-Gtk-MountOperationHandler.top_of_page">org.Gtk.MountOperationHandler</link>.
public struct _MountOperationHandlerRef: _MountOperationHandlerProtocol {
    /// Untyped pointer to the underlying `_GtkMountOperationHandler` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension _MountOperationHandlerRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<_GtkMountOperationHandler>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `_MountOperationHandlerProtocol`
    init<T: _MountOperationHandlerProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProtocol`.**
    init(opaquePointer: OpaquePointer) {
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
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `_MountOperationHandler` instance.
    public init(_ op: UnsafeMutablePointer<_GtkMountOperationHandler>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `_MountOperationHandlerProtocol`
    /// `_GtkMountOperationHandler` does not allow reference counting.
    public convenience init<T: _MountOperationHandlerProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for _GtkMountOperationHandler, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`_GtkMountOperationHandler`.
    deinit {
        // no reference counting for _GtkMountOperationHandler, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: _GtkMountOperationHandler.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: _GtkMountOperationHandler.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: _GtkMountOperationHandler.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_MountOperationHandlerProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<_GtkMountOperationHandler>(opaquePointer))
    }



}

// MARK: - no _MountOperationHandler properties

// MARK: - no signals


public extension _MountOperationHandlerProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `_GtkMountOperationHandler` instance.
    var _ptr: UnsafeMutablePointer<_GtkMountOperationHandler> { return ptr.assumingMemoryBound(to: _GtkMountOperationHandler.self) }

}



