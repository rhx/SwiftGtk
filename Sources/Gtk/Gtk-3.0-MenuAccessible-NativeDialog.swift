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

// MARK: - MenuAccessible Class

/// The `MenuAccessibleProtocol` protocol exposes the methods and properties of an underlying `GtkMenuAccessible` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MenuAccessible`.
/// Alternatively, use `MenuAccessibleRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol MenuAccessibleProtocol: MenuShellAccessibleProtocol {
        /// Untyped pointer to the underlying `GtkMenuAccessible` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkMenuAccessible` instance.
    var menu_accessible_ptr: UnsafeMutablePointer<GtkMenuAccessible>! { get }

}

/// The `MenuAccessibleRef` type acts as a lightweight Swift reference to an underlying `GtkMenuAccessible` instance.
/// It exposes methods that can operate on this data type through `MenuAccessibleProtocol` conformance.
/// Use `MenuAccessibleRef` only as an `unowned` reference to an existing `GtkMenuAccessible` instance.
///

public struct MenuAccessibleRef: MenuAccessibleProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkMenuAccessible` instance.
    /// For type-safe access, use the generated, typed pointer `menu_accessible_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MenuAccessibleRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkMenuAccessible>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkMenuAccessible>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkMenuAccessible>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkMenuAccessible>?) {
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

    /// Reference intialiser for a related type that implements `MenuAccessibleProtocol`
    @inlinable init<T: MenuAccessibleProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: MenuAccessibleProtocol>(_ other: T) -> MenuAccessibleRef { MenuAccessibleRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAccessibleProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAccessibleProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAccessibleProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAccessibleProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAccessibleProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `MenuAccessible` type acts as a reference-counted owner of an underlying `GtkMenuAccessible` instance.
/// It provides the methods that can operate on this data type through `MenuAccessibleProtocol` conformance.
/// Use `MenuAccessible` as a strong reference or owner of a `GtkMenuAccessible` instance.
///

open class MenuAccessible: MenuShellAccessible, MenuAccessibleProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkMenuAccessible>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkMenuAccessible>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuAccessible` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkMenuAccessible>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkMenuAccessible>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkMenuAccessible`.
    /// i.e., ownership is transferred to the `MenuAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkMenuAccessible>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `MenuAccessibleProtocol`
    /// Will retain `GtkMenuAccessible`.
    /// - Parameter other: an instance of a related type that implements `MenuAccessibleProtocol`
    @inlinable public init<T: MenuAccessibleProtocol>(menuAccessible other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAccessibleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAccessibleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAccessibleProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAccessibleProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAccessibleProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAccessibleProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAccessibleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAccessibleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum MenuAccessiblePropertyName: String, PropertyNameProtocol {
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

public extension MenuAccessibleProtocol {
    /// Bind a `MenuAccessiblePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: MenuAccessiblePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a MenuAccessible property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: MenuAccessiblePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a MenuAccessible property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: MenuAccessiblePropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: MenuAccessible has no signals// MARK: MenuAccessible Class: MenuAccessibleProtocol extension (methods and fields)
public extension MenuAccessibleProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMenuAccessible` instance.
    @inlinable var menu_accessible_ptr: UnsafeMutablePointer<GtkMenuAccessible>! { return ptr?.assumingMemoryBound(to: GtkMenuAccessible.self) }


    @inlinable var parent: GtkMenuShellAccessible {
        get {
            let rv = menu_accessible_ptr.pointee.parent
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - MenuBar Class

/// The `MenuBarProtocol` protocol exposes the methods and properties of an underlying `GtkMenuBar` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MenuBar`.
/// Alternatively, use `MenuBarRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GtkMenuBar` is a subclass of `GtkMenuShell` which contains one or
/// more `GtkMenuItems`. The result is a standard menu bar which can hold
/// many menu items.
/// 
/// # CSS nodes
/// 
/// GtkMenuBar has a single CSS node with name menubar.
public protocol MenuBarProtocol: MenuShellProtocol {
        /// Untyped pointer to the underlying `GtkMenuBar` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkMenuBar` instance.
    var menu_bar_ptr: UnsafeMutablePointer<GtkMenuBar>! { get }

}

/// The `MenuBarRef` type acts as a lightweight Swift reference to an underlying `GtkMenuBar` instance.
/// It exposes methods that can operate on this data type through `MenuBarProtocol` conformance.
/// Use `MenuBarRef` only as an `unowned` reference to an existing `GtkMenuBar` instance.
///
/// The `GtkMenuBar` is a subclass of `GtkMenuShell` which contains one or
/// more `GtkMenuItems`. The result is a standard menu bar which can hold
/// many menu items.
/// 
/// # CSS nodes
/// 
/// GtkMenuBar has a single CSS node with name menubar.
public struct MenuBarRef: MenuBarProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkMenuBar` instance.
    /// For type-safe access, use the generated, typed pointer `menu_bar_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MenuBarRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkMenuBar>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkMenuBar>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkMenuBar>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkMenuBar>?) {
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

    /// Reference intialiser for a related type that implements `MenuBarProtocol`
    @inlinable init<T: MenuBarProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: MenuBarProtocol>(_ other: T) -> MenuBarRef { MenuBarRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuBarProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuBarProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuBarProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuBarProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuBarProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkMenuBar`
    @inlinable init() {
        let rv = gtk_menu_bar_new()
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GtkMenuBar` and populates it with menu items
    /// and submenus according to `model`.
    /// 
    /// The created menu items are connected to actions found in the
    /// `GtkApplicationWindow` to which the menu bar belongs - typically
    /// by means of being contained within the `GtkApplicationWindows`
    /// widget hierarchy.
    @inlinable init<MenuModelT: GIO.MenuModelProtocol>(model: MenuModelT) {
        let rv = gtk_menu_bar_new_from_model(model.menu_model_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a new `GtkMenuBar` and populates it with menu items
    /// and submenus according to `model`.
    /// 
    /// The created menu items are connected to actions found in the
    /// `GtkApplicationWindow` to which the menu bar belongs - typically
    /// by means of being contained within the `GtkApplicationWindows`
    /// widget hierarchy.
    @inlinable static func newFrom<MenuModelT: GIO.MenuModelProtocol>(model: MenuModelT) -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_menu_bar_new_from_model(model.menu_model_ptr))) else { return nil }
        return rv
    }
}

/// The `MenuBar` type acts as a reference-counted owner of an underlying `GtkMenuBar` instance.
/// It provides the methods that can operate on this data type through `MenuBarProtocol` conformance.
/// Use `MenuBar` as a strong reference or owner of a `GtkMenuBar` instance.
///
/// The `GtkMenuBar` is a subclass of `GtkMenuShell` which contains one or
/// more `GtkMenuItems`. The result is a standard menu bar which can hold
/// many menu items.
/// 
/// # CSS nodes
/// 
/// GtkMenuBar has a single CSS node with name menubar.
open class MenuBar: MenuShell, MenuBarProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuBar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkMenuBar>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuBar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkMenuBar>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuBar` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuBar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuBar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkMenuBar>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuBar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkMenuBar>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkMenuBar`.
    /// i.e., ownership is transferred to the `MenuBar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkMenuBar>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `MenuBarProtocol`
    /// Will retain `GtkMenuBar`.
    /// - Parameter other: an instance of a related type that implements `MenuBarProtocol`
    @inlinable public init<T: MenuBarProtocol>(menuBar other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuBarProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuBarProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuBarProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuBarProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuBarProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuBarProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuBarProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuBarProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkMenuBar`
    @inlinable public init() {
        let rv = gtk_menu_bar_new()
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new `GtkMenuBar` and populates it with menu items
    /// and submenus according to `model`.
    /// 
    /// The created menu items are connected to actions found in the
    /// `GtkApplicationWindow` to which the menu bar belongs - typically
    /// by means of being contained within the `GtkApplicationWindows`
    /// widget hierarchy.
    @inlinable public init<MenuModelT: GIO.MenuModelProtocol>(model: MenuModelT) {
        let rv = gtk_menu_bar_new_from_model(model.menu_model_ptr)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new `GtkMenuBar` and populates it with menu items
    /// and submenus according to `model`.
    /// 
    /// The created menu items are connected to actions found in the
    /// `GtkApplicationWindow` to which the menu bar belongs - typically
    /// by means of being contained within the `GtkApplicationWindows`
    /// widget hierarchy.
    @inlinable public static func newFrom<MenuModelT: GIO.MenuModelProtocol>(model: MenuModelT) -> Widget! {
        guard let rv = Widget(gconstpointer: gconstpointer(gtk_menu_bar_new_from_model(model.menu_model_ptr))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

}

public enum MenuBarPropertyName: String, PropertyNameProtocol {
    case appPaintable = "app-paintable"
    case borderWidth = "border-width"
    case canDefault = "can-default"
    case canFocus = "can-focus"
    case child = "child"
    /// The child pack direction of the menubar. It determines how
    /// the widgets contained in child menuitems are arranged.
    case childPackDirection = "child-pack-direction"
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
    /// The pack direction of the menubar. It determines how
    /// menuitems are arranged in the menubar.
    case packDirection = "pack-direction"
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
    /// A boolean that determines whether the menu and its submenus grab the
    /// keyboard focus. See `gtk_menu_shell_set_take_focus()` and
    /// `gtk_menu_shell_get_take_focus()`.
    case takeFocus = "take-focus"
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

public extension MenuBarProtocol {
    /// Bind a `MenuBarPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: MenuBarPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a MenuBar property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: MenuBarPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a MenuBar property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: MenuBarPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: MenuBar has no signals// MARK: MenuBar Class: MenuBarProtocol extension (methods and fields)
public extension MenuBarProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMenuBar` instance.
    @inlinable var menu_bar_ptr: UnsafeMutablePointer<GtkMenuBar>! { return ptr?.assumingMemoryBound(to: GtkMenuBar.self) }

    /// Retrieves the current child pack direction of the menubar.
    /// See `gtk_menu_bar_set_child_pack_direction()`.
    @inlinable func getChildPackDirection() -> GtkPackDirection {
        let rv = gtk_menu_bar_get_child_pack_direction(menu_bar_ptr)
        return rv
    }

    /// Retrieves the current pack direction of the menubar.
    /// See `gtk_menu_bar_set_pack_direction()`.
    @inlinable func getPackDirection() -> GtkPackDirection {
        let rv = gtk_menu_bar_get_pack_direction(menu_bar_ptr)
        return rv
    }

    /// Sets how widgets should be packed inside the children of a menubar.
    @inlinable func setChildPackDirection(childPackDir: GtkPackDirection) {
        gtk_menu_bar_set_child_pack_direction(menu_bar_ptr, childPackDir)
    
    }

    /// Sets how items should be packed inside a menubar.
    @inlinable func setPackDirection(packDir: GtkPackDirection) {
        gtk_menu_bar_set_pack_direction(menu_bar_ptr, packDir)
    
    }
    /// Retrieves the current child pack direction of the menubar.
    /// See `gtk_menu_bar_set_child_pack_direction()`.
    @inlinable var childPackDirection: GtkPackDirection {
        /// Retrieves the current child pack direction of the menubar.
        /// See `gtk_menu_bar_set_child_pack_direction()`.
        get {
            let rv = gtk_menu_bar_get_child_pack_direction(menu_bar_ptr)
            return rv
        }
        /// Sets how widgets should be packed inside the children of a menubar.
        nonmutating set {
            gtk_menu_bar_set_child_pack_direction(menu_bar_ptr, newValue)
        }
    }

    /// Retrieves the current pack direction of the menubar.
    /// See `gtk_menu_bar_set_pack_direction()`.
    @inlinable var packDirection: GtkPackDirection {
        /// Retrieves the current pack direction of the menubar.
        /// See `gtk_menu_bar_set_pack_direction()`.
        get {
            let rv = gtk_menu_bar_get_pack_direction(menu_bar_ptr)
            return rv
        }
        /// Sets how items should be packed inside a menubar.
        nonmutating set {
            gtk_menu_bar_set_pack_direction(menu_bar_ptr, newValue)
        }
    }

    @inlinable var menuShell: GtkMenuShell {
        get {
            let rv = menu_bar_ptr.pointee.menu_shell
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - MenuButton Class

/// The `MenuButtonProtocol` protocol exposes the methods and properties of an underlying `GtkMenuButton` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MenuButton`.
/// Alternatively, use `MenuButtonRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GtkMenuButton` widget is used to display a popup when clicked on.
/// This popup can be provided either as a `GtkMenu`, a `GtkPopover` or an
/// abstract `GMenuModel`.
/// 
/// The `GtkMenuButton` widget can hold any valid child widget. That is, it
/// can hold almost any other standard `GtkWidget`. The most commonly used
/// child is `GtkImage`. If no widget is explicitely added to the `GtkMenuButton`,
/// a `GtkImage` is automatically created, using an arrow image oriented
/// according to `GtkMenuButton:direction` or the generic “open-menu-symbolic”
/// icon if the direction is not set.
/// 
/// The positioning of the popup is determined by the `GtkMenuButton:direction`
/// property of the menu button.
/// 
/// For menus, the `GtkWidget:halign` and `GtkWidget:valign` properties of the
/// menu are also taken into account. For example, when the direction is
/// `GTK_ARROW_DOWN` and the horizontal alignment is `GTK_ALIGN_START`, the
/// menu will be positioned below the button, with the starting edge
/// (depending on the text direction) of the menu aligned with the starting
/// edge of the button. If there is not enough space below the button, the
/// menu is popped up above the button instead. If the alignment would move
/// part of the menu offscreen, it is “pushed in”.
/// 
/// ## Direction = Down
/// 
/// - halign = start
/// 
///     ![](down-start.png)
/// 
/// - halign = center
/// 
///     ![](down-center.png)
/// 
/// - halign = end
/// 
///     ![](down-end.png)
/// 
/// ## Direction = Up
/// 
/// - halign = start
/// 
///     ![](up-start.png)
/// 
/// - halign = center
/// 
///     ![](up-center.png)
/// 
/// - halign = end
/// 
///     ![](up-end.png)
/// 
/// ## Direction = Left
/// 
/// - valign = start
/// 
///     ![](left-start.png)
/// 
/// - valign = center
/// 
///     ![](left-center.png)
/// 
/// - valign = end
/// 
///     ![](left-end.png)
/// 
/// ## Direction = Right
/// 
/// - valign = start
/// 
///     ![](right-start.png)
/// 
/// - valign = center
/// 
///     ![](right-center.png)
/// 
/// - valign = end
/// 
///     ![](right-end.png)
/// 
/// # CSS nodes
/// 
/// GtkMenuButton has a single CSS node with name button. To differentiate
/// it from a plain `GtkButton`, it gets the .popup style class.
public protocol MenuButtonProtocol: ToggleButtonProtocol {
        /// Untyped pointer to the underlying `GtkMenuButton` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkMenuButton` instance.
    var menu_button_ptr: UnsafeMutablePointer<GtkMenuButton>! { get }

}

/// The `MenuButtonRef` type acts as a lightweight Swift reference to an underlying `GtkMenuButton` instance.
/// It exposes methods that can operate on this data type through `MenuButtonProtocol` conformance.
/// Use `MenuButtonRef` only as an `unowned` reference to an existing `GtkMenuButton` instance.
///
/// The `GtkMenuButton` widget is used to display a popup when clicked on.
/// This popup can be provided either as a `GtkMenu`, a `GtkPopover` or an
/// abstract `GMenuModel`.
/// 
/// The `GtkMenuButton` widget can hold any valid child widget. That is, it
/// can hold almost any other standard `GtkWidget`. The most commonly used
/// child is `GtkImage`. If no widget is explicitely added to the `GtkMenuButton`,
/// a `GtkImage` is automatically created, using an arrow image oriented
/// according to `GtkMenuButton:direction` or the generic “open-menu-symbolic”
/// icon if the direction is not set.
/// 
/// The positioning of the popup is determined by the `GtkMenuButton:direction`
/// property of the menu button.
/// 
/// For menus, the `GtkWidget:halign` and `GtkWidget:valign` properties of the
/// menu are also taken into account. For example, when the direction is
/// `GTK_ARROW_DOWN` and the horizontal alignment is `GTK_ALIGN_START`, the
/// menu will be positioned below the button, with the starting edge
/// (depending on the text direction) of the menu aligned with the starting
/// edge of the button. If there is not enough space below the button, the
/// menu is popped up above the button instead. If the alignment would move
/// part of the menu offscreen, it is “pushed in”.
/// 
/// ## Direction = Down
/// 
/// - halign = start
/// 
///     ![](down-start.png)
/// 
/// - halign = center
/// 
///     ![](down-center.png)
/// 
/// - halign = end
/// 
///     ![](down-end.png)
/// 
/// ## Direction = Up
/// 
/// - halign = start
/// 
///     ![](up-start.png)
/// 
/// - halign = center
/// 
///     ![](up-center.png)
/// 
/// - halign = end
/// 
///     ![](up-end.png)
/// 
/// ## Direction = Left
/// 
/// - valign = start
/// 
///     ![](left-start.png)
/// 
/// - valign = center
/// 
///     ![](left-center.png)
/// 
/// - valign = end
/// 
///     ![](left-end.png)
/// 
/// ## Direction = Right
/// 
/// - valign = start
/// 
///     ![](right-start.png)
/// 
/// - valign = center
/// 
///     ![](right-center.png)
/// 
/// - valign = end
/// 
///     ![](right-end.png)
/// 
/// # CSS nodes
/// 
/// GtkMenuButton has a single CSS node with name button. To differentiate
/// it from a plain `GtkButton`, it gets the .popup style class.
public struct MenuButtonRef: MenuButtonProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkMenuButton` instance.
    /// For type-safe access, use the generated, typed pointer `menu_button_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MenuButtonRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkMenuButton>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkMenuButton>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkMenuButton>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkMenuButton>?) {
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

    /// Reference intialiser for a related type that implements `MenuButtonProtocol`
    @inlinable init<T: MenuButtonProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: MenuButtonProtocol>(_ other: T) -> MenuButtonRef { MenuButtonRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkMenuButton` widget with downwards-pointing
    /// arrow as the only child. You can replace the child widget
    /// with another `GtkWidget` should you wish to.
    @inlinable init() {
        let rv = gtk_menu_button_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `MenuButton` type acts as a reference-counted owner of an underlying `GtkMenuButton` instance.
/// It provides the methods that can operate on this data type through `MenuButtonProtocol` conformance.
/// Use `MenuButton` as a strong reference or owner of a `GtkMenuButton` instance.
///
/// The `GtkMenuButton` widget is used to display a popup when clicked on.
/// This popup can be provided either as a `GtkMenu`, a `GtkPopover` or an
/// abstract `GMenuModel`.
/// 
/// The `GtkMenuButton` widget can hold any valid child widget. That is, it
/// can hold almost any other standard `GtkWidget`. The most commonly used
/// child is `GtkImage`. If no widget is explicitely added to the `GtkMenuButton`,
/// a `GtkImage` is automatically created, using an arrow image oriented
/// according to `GtkMenuButton:direction` or the generic “open-menu-symbolic”
/// icon if the direction is not set.
/// 
/// The positioning of the popup is determined by the `GtkMenuButton:direction`
/// property of the menu button.
/// 
/// For menus, the `GtkWidget:halign` and `GtkWidget:valign` properties of the
/// menu are also taken into account. For example, when the direction is
/// `GTK_ARROW_DOWN` and the horizontal alignment is `GTK_ALIGN_START`, the
/// menu will be positioned below the button, with the starting edge
/// (depending on the text direction) of the menu aligned with the starting
/// edge of the button. If there is not enough space below the button, the
/// menu is popped up above the button instead. If the alignment would move
/// part of the menu offscreen, it is “pushed in”.
/// 
/// ## Direction = Down
/// 
/// - halign = start
/// 
///     ![](down-start.png)
/// 
/// - halign = center
/// 
///     ![](down-center.png)
/// 
/// - halign = end
/// 
///     ![](down-end.png)
/// 
/// ## Direction = Up
/// 
/// - halign = start
/// 
///     ![](up-start.png)
/// 
/// - halign = center
/// 
///     ![](up-center.png)
/// 
/// - halign = end
/// 
///     ![](up-end.png)
/// 
/// ## Direction = Left
/// 
/// - valign = start
/// 
///     ![](left-start.png)
/// 
/// - valign = center
/// 
///     ![](left-center.png)
/// 
/// - valign = end
/// 
///     ![](left-end.png)
/// 
/// ## Direction = Right
/// 
/// - valign = start
/// 
///     ![](right-start.png)
/// 
/// - valign = center
/// 
///     ![](right-center.png)
/// 
/// - valign = end
/// 
///     ![](right-end.png)
/// 
/// # CSS nodes
/// 
/// GtkMenuButton has a single CSS node with name button. To differentiate
/// it from a plain `GtkButton`, it gets the .popup style class.
open class MenuButton: ToggleButton, MenuButtonProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuButton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkMenuButton>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuButton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkMenuButton>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuButton` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuButton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuButton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkMenuButton>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuButton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkMenuButton>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkMenuButton`.
    /// i.e., ownership is transferred to the `MenuButton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkMenuButton>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `MenuButtonProtocol`
    /// Will retain `GtkMenuButton`.
    /// - Parameter other: an instance of a related type that implements `MenuButtonProtocol`
    @inlinable public init<T: MenuButtonProtocol>(menuButton other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkMenuButton` widget with downwards-pointing
    /// arrow as the only child. You can replace the child widget
    /// with another `GtkWidget` should you wish to.
    @inlinable override public init() {
        let rv = gtk_menu_button_new()
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum MenuButtonPropertyName: String, PropertyNameProtocol {
    case active = "active"
    /// The `GtkWidget` to use to align the menu with.
    case alignWidget = "align-widget"
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
    /// The `GtkArrowType` representing the direction in which the
    /// menu or popover will be popped out.
    case direction = "direction"
    /// Whether the widget is double buffered.
    ///
    /// **double-buffered is deprecated:**
    /// Widgets should not use this property.
    case doubleBuffered = "double-buffered"
    case drawIndicator = "draw-indicator"
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
    case inconsistent = "inconsistent"
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
    /// The `GMenuModel` from which the popup will be created.
    /// Depending on the `GtkMenuButton:use`-popover property, that may
    /// be a menu or a popover.
    /// 
    /// See `gtk_menu_button_set_menu_model()` for the interaction with the
    /// `GtkMenuButton:popup` property.
    case menuModel = "menu-model"
    case name = "name"
    case noShowAll = "no-show-all"
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case opacity = "opacity"
    case parent = "parent"
    /// The `GtkPopover` that will be popped up when the button is clicked.
    case popover = "popover"
    /// The `GtkMenu` that will be popped up when the button is clicked.
    case popup = "popup"
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
    /// Whether to construct a `GtkPopover` from the menu model,
    /// or a `GtkMenu`.
    case usePopover = "use-popover"

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

public extension MenuButtonProtocol {
    /// Bind a `MenuButtonPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: MenuButtonPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a MenuButton property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: MenuButtonPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a MenuButton property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: MenuButtonPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: MenuButton has no signals// MARK: MenuButton Class: MenuButtonProtocol extension (methods and fields)
public extension MenuButtonProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMenuButton` instance.
    @inlinable var menu_button_ptr: UnsafeMutablePointer<GtkMenuButton>! { return ptr?.assumingMemoryBound(to: GtkMenuButton.self) }

    /// Returns the parent `GtkWidget` to use to line up with menu.
    @inlinable func getAlignWidget() -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_menu_button_get_align_widget(menu_button_ptr))) else { return nil }
        return rv
    }

    /// Returns the direction the popup will be pointing at when popped up.
    @inlinable func getDirection() -> GtkArrowType {
        let rv = gtk_menu_button_get_direction(menu_button_ptr)
        return rv
    }

    /// Returns the `GMenuModel` used to generate the popup.
    @inlinable func getMenuModel() -> GIO.MenuModelRef! {
        let rv = GIO.MenuModelRef(gtk_menu_button_get_menu_model(menu_button_ptr))
        return rv
    }

    /// Returns the `GtkPopover` that pops out of the button.
    /// If the button is not using a `GtkPopover`, this function
    /// returns `nil`.
    @inlinable func getPopover() -> PopoverRef! {
        let rv = PopoverRef(gconstpointer: gconstpointer(gtk_menu_button_get_popover(menu_button_ptr)))
        return rv
    }

    /// Returns the `GtkMenu` that pops out of the button.
    /// If the button does not use a `GtkMenu`, this function
    /// returns `nil`.
    @inlinable func getPopup() -> MenuRef! {
        let rv = MenuRef(gconstpointer: gconstpointer(gtk_menu_button_get_popup(menu_button_ptr)))
        return rv
    }

    /// Returns whether a `GtkPopover` or a `GtkMenu` will be constructed
    /// from the menu model.
    @inlinable func getUsePopover() -> Bool {
        let rv = ((gtk_menu_button_get_use_popover(menu_button_ptr)) != 0)
        return rv
    }

    /// Sets the `GtkWidget` to use to line the menu with when popped up.
    /// Note that the `align_widget` must contain the `GtkMenuButton` itself.
    /// 
    /// Setting it to `nil` means that the menu will be aligned with the
    /// button itself.
    /// 
    /// Note that this property is only used with menus currently,
    /// and not for popovers.
    @inlinable func set(alignWidget: WidgetRef? = nil) {
        gtk_menu_button_set_align_widget(menu_button_ptr, alignWidget?.widget_ptr)
    
    }
    /// Sets the `GtkWidget` to use to line the menu with when popped up.
    /// Note that the `align_widget` must contain the `GtkMenuButton` itself.
    /// 
    /// Setting it to `nil` means that the menu will be aligned with the
    /// button itself.
    /// 
    /// Note that this property is only used with menus currently,
    /// and not for popovers.
    @inlinable func set<WidgetT: WidgetProtocol>(alignWidget: WidgetT?) {
        gtk_menu_button_set_align_widget(menu_button_ptr, alignWidget?.widget_ptr)
    
    }

    /// Sets the direction in which the popup will be popped up, as
    /// well as changing the arrow’s direction. The child will not
    /// be changed to an arrow if it was customized.
    /// 
    /// If the does not fit in the available space in the given direction,
    /// GTK+ will its best to keep it inside the screen and fully visible.
    /// 
    /// If you pass `GTK_ARROW_NONE` for a `direction`, the popup will behave
    /// as if you passed `GTK_ARROW_DOWN` (although you won’t see any arrows).
    @inlinable func set(direction: GtkArrowType) {
        gtk_menu_button_set_direction(menu_button_ptr, direction)
    
    }

    /// Sets the `GMenuModel` from which the popup will be constructed,
    /// or `nil` to dissociate any existing menu model and disable the button.
    /// 
    /// Depending on the value of `GtkMenuButton:use`-popover, either a
    /// `GtkMenu` will be created with `gtk_menu_new_from_model()`, or a
    /// `GtkPopover` with `gtk_popover_new_from_model()`. In either case,
    /// actions will be connected as documented for these functions.
    /// 
    /// If `GtkMenuButton:popup` or `GtkMenuButton:popover` are already set, those
    /// widgets are dissociated from the `menu_button`, and those properties are set
    /// to `nil`.
    @inlinable func set(menuModel: GIO.MenuModelRef? = nil) {
        gtk_menu_button_set_menu_model(menu_button_ptr, menuModel?.menu_model_ptr)
    
    }
    /// Sets the `GMenuModel` from which the popup will be constructed,
    /// or `nil` to dissociate any existing menu model and disable the button.
    /// 
    /// Depending on the value of `GtkMenuButton:use`-popover, either a
    /// `GtkMenu` will be created with `gtk_menu_new_from_model()`, or a
    /// `GtkPopover` with `gtk_popover_new_from_model()`. In either case,
    /// actions will be connected as documented for these functions.
    /// 
    /// If `GtkMenuButton:popup` or `GtkMenuButton:popover` are already set, those
    /// widgets are dissociated from the `menu_button`, and those properties are set
    /// to `nil`.
    @inlinable func set<MenuModelT: GIO.MenuModelProtocol>(menuModel: MenuModelT?) {
        gtk_menu_button_set_menu_model(menu_button_ptr, menuModel?.menu_model_ptr)
    
    }

    /// Sets the `GtkPopover` that will be popped up when the `menu_button` is clicked,
    /// or `nil` to dissociate any existing popover and disable the button.
    /// 
    /// If `GtkMenuButton:menu`-model or `GtkMenuButton:popup` are set, those objects
    /// are dissociated from the `menu_button`, and those properties are set to `nil`.
    @inlinable func set(popover: WidgetRef? = nil) {
        gtk_menu_button_set_popover(menu_button_ptr, popover?.widget_ptr)
    
    }
    /// Sets the `GtkPopover` that will be popped up when the `menu_button` is clicked,
    /// or `nil` to dissociate any existing popover and disable the button.
    /// 
    /// If `GtkMenuButton:menu`-model or `GtkMenuButton:popup` are set, those objects
    /// are dissociated from the `menu_button`, and those properties are set to `nil`.
    @inlinable func set<WidgetT: WidgetProtocol>(popover: WidgetT?) {
        gtk_menu_button_set_popover(menu_button_ptr, popover?.widget_ptr)
    
    }

    /// Sets the `GtkMenu` that will be popped up when the `menu_button` is clicked, or
    /// `nil` to dissociate any existing menu and disable the button.
    /// 
    /// If `GtkMenuButton:menu`-model or `GtkMenuButton:popover` are set, those objects
    /// are dissociated from the `menu_button`, and those properties are set to `nil`.
    @inlinable func setPopup(menu: WidgetRef? = nil) {
        gtk_menu_button_set_popup(menu_button_ptr, menu?.widget_ptr)
    
    }
    /// Sets the `GtkMenu` that will be popped up when the `menu_button` is clicked, or
    /// `nil` to dissociate any existing menu and disable the button.
    /// 
    /// If `GtkMenuButton:menu`-model or `GtkMenuButton:popover` are set, those objects
    /// are dissociated from the `menu_button`, and those properties are set to `nil`.
    @inlinable func setPopup<WidgetT: WidgetProtocol>(menu: WidgetT?) {
        gtk_menu_button_set_popup(menu_button_ptr, menu?.widget_ptr)
    
    }

    /// Sets whether to construct a `GtkPopover` instead of `GtkMenu`
    /// when `gtk_menu_button_set_menu_model()` is called. Note that
    /// this property is only consulted when a new menu model is set.
    @inlinable func set(usePopover: Bool) {
        gtk_menu_button_set_use_popover(menu_button_ptr, gboolean((usePopover) ? 1 : 0))
    
    }
    /// Returns the parent `GtkWidget` to use to line up with menu.
    @inlinable var alignWidget: WidgetRef! {
        /// Returns the parent `GtkWidget` to use to line up with menu.
        get {
            guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_menu_button_get_align_widget(menu_button_ptr))) else { return nil }
            return rv
        }
        /// Sets the `GtkWidget` to use to line the menu with when popped up.
        /// Note that the `align_widget` must contain the `GtkMenuButton` itself.
        /// 
        /// Setting it to `nil` means that the menu will be aligned with the
        /// button itself.
        /// 
        /// Note that this property is only used with menus currently,
        /// and not for popovers.
        nonmutating set {
            gtk_menu_button_set_align_widget(menu_button_ptr, UnsafeMutablePointer<GtkWidget>(newValue?.widget_ptr))
        }
    }

    /// The `GtkArrowType` representing the direction in which the
    /// menu or popover will be popped out.
    @inlinable var direction: GtkArrowType {
        /// Returns the direction the popup will be pointing at when popped up.
        get {
            let rv = gtk_menu_button_get_direction(menu_button_ptr)
            return rv
        }
        /// Sets the direction in which the popup will be popped up, as
        /// well as changing the arrow’s direction. The child will not
        /// be changed to an arrow if it was customized.
        /// 
        /// If the does not fit in the available space in the given direction,
        /// GTK+ will its best to keep it inside the screen and fully visible.
        /// 
        /// If you pass `GTK_ARROW_NONE` for a `direction`, the popup will behave
        /// as if you passed `GTK_ARROW_DOWN` (although you won’t see any arrows).
        nonmutating set {
            gtk_menu_button_set_direction(menu_button_ptr, newValue)
        }
    }

    /// Returns the `GMenuModel` used to generate the popup.
    @inlinable var menuModel: GIO.MenuModelRef! {
        /// Returns the `GMenuModel` used to generate the popup.
        get {
            let rv = GIO.MenuModelRef(gtk_menu_button_get_menu_model(menu_button_ptr))
            return rv
        }
        /// Sets the `GMenuModel` from which the popup will be constructed,
        /// or `nil` to dissociate any existing menu model and disable the button.
        /// 
        /// Depending on the value of `GtkMenuButton:use`-popover, either a
        /// `GtkMenu` will be created with `gtk_menu_new_from_model()`, or a
        /// `GtkPopover` with `gtk_popover_new_from_model()`. In either case,
        /// actions will be connected as documented for these functions.
        /// 
        /// If `GtkMenuButton:popup` or `GtkMenuButton:popover` are already set, those
        /// widgets are dissociated from the `menu_button`, and those properties are set
        /// to `nil`.
        nonmutating set {
            gtk_menu_button_set_menu_model(menu_button_ptr, UnsafeMutablePointer<GMenuModel>(newValue?.menu_model_ptr))
        }
    }

    /// The `GtkPopover` that will be popped up when the button is clicked.
    @inlinable var popover: PopoverRef! {
        /// Returns the `GtkPopover` that pops out of the button.
        /// If the button is not using a `GtkPopover`, this function
        /// returns `nil`.
        get {
            let rv = PopoverRef(gconstpointer: gconstpointer(gtk_menu_button_get_popover(menu_button_ptr)))
            return rv
        }
        /// Sets the `GtkPopover` that will be popped up when the `menu_button` is clicked,
        /// or `nil` to dissociate any existing popover and disable the button.
        /// 
        /// If `GtkMenuButton:menu`-model or `GtkMenuButton:popup` are set, those objects
        /// are dissociated from the `menu_button`, and those properties are set to `nil`.
        nonmutating set {
            gtk_menu_button_set_popover(menu_button_ptr, UnsafeMutablePointer<GtkWidget>(newValue?.widget_ptr))
        }
    }

    /// The `GtkMenu` that will be popped up when the button is clicked.
    @inlinable var popup: MenuRef! {
        /// Returns the `GtkMenu` that pops out of the button.
        /// If the button does not use a `GtkMenu`, this function
        /// returns `nil`.
        get {
            let rv = MenuRef(gconstpointer: gconstpointer(gtk_menu_button_get_popup(menu_button_ptr)))
            return rv
        }
        /// Sets the `GtkMenu` that will be popped up when the `menu_button` is clicked, or
        /// `nil` to dissociate any existing menu and disable the button.
        /// 
        /// If `GtkMenuButton:menu`-model or `GtkMenuButton:popover` are set, those objects
        /// are dissociated from the `menu_button`, and those properties are set to `nil`.
        nonmutating set {
            gtk_menu_button_set_popup(menu_button_ptr, UnsafeMutablePointer<GtkWidget>(newValue?.widget_ptr))
        }
    }

    /// Returns whether a `GtkPopover` or a `GtkMenu` will be constructed
    /// from the menu model.
    @inlinable var usePopover: Bool {
        /// Returns whether a `GtkPopover` or a `GtkMenu` will be constructed
        /// from the menu model.
        get {
            let rv = ((gtk_menu_button_get_use_popover(menu_button_ptr)) != 0)
            return rv
        }
        /// Sets whether to construct a `GtkPopover` instead of `GtkMenu`
        /// when `gtk_menu_button_set_menu_model()` is called. Note that
        /// this property is only consulted when a new menu model is set.
        nonmutating set {
            gtk_menu_button_set_use_popover(menu_button_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    @inlinable var parent: GtkToggleButton {
        get {
            let rv = menu_button_ptr.pointee.parent
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - MenuButtonAccessible Class

/// The `MenuButtonAccessibleProtocol` protocol exposes the methods and properties of an underlying `GtkMenuButtonAccessible` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MenuButtonAccessible`.
/// Alternatively, use `MenuButtonAccessibleRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol MenuButtonAccessibleProtocol: ToggleButtonAccessibleProtocol {
        /// Untyped pointer to the underlying `GtkMenuButtonAccessible` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkMenuButtonAccessible` instance.
    var menu_button_accessible_ptr: UnsafeMutablePointer<GtkMenuButtonAccessible>! { get }

}

/// The `MenuButtonAccessibleRef` type acts as a lightweight Swift reference to an underlying `GtkMenuButtonAccessible` instance.
/// It exposes methods that can operate on this data type through `MenuButtonAccessibleProtocol` conformance.
/// Use `MenuButtonAccessibleRef` only as an `unowned` reference to an existing `GtkMenuButtonAccessible` instance.
///

public struct MenuButtonAccessibleRef: MenuButtonAccessibleProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkMenuButtonAccessible` instance.
    /// For type-safe access, use the generated, typed pointer `menu_button_accessible_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MenuButtonAccessibleRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkMenuButtonAccessible>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkMenuButtonAccessible>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkMenuButtonAccessible>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkMenuButtonAccessible>?) {
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

    /// Reference intialiser for a related type that implements `MenuButtonAccessibleProtocol`
    @inlinable init<T: MenuButtonAccessibleProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: MenuButtonAccessibleProtocol>(_ other: T) -> MenuButtonAccessibleRef { MenuButtonAccessibleRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonAccessibleProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonAccessibleProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonAccessibleProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonAccessibleProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonAccessibleProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `MenuButtonAccessible` type acts as a reference-counted owner of an underlying `GtkMenuButtonAccessible` instance.
/// It provides the methods that can operate on this data type through `MenuButtonAccessibleProtocol` conformance.
/// Use `MenuButtonAccessible` as a strong reference or owner of a `GtkMenuButtonAccessible` instance.
///

open class MenuButtonAccessible: ToggleButtonAccessible, MenuButtonAccessibleProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuButtonAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkMenuButtonAccessible>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuButtonAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkMenuButtonAccessible>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuButtonAccessible` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuButtonAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuButtonAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkMenuButtonAccessible>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuButtonAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkMenuButtonAccessible>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkMenuButtonAccessible`.
    /// i.e., ownership is transferred to the `MenuButtonAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkMenuButtonAccessible>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `MenuButtonAccessibleProtocol`
    /// Will retain `GtkMenuButtonAccessible`.
    /// - Parameter other: an instance of a related type that implements `MenuButtonAccessibleProtocol`
    @inlinable public init<T: MenuButtonAccessibleProtocol>(menuButtonAccessible other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonAccessibleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonAccessibleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonAccessibleProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonAccessibleProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonAccessibleProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonAccessibleProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonAccessibleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuButtonAccessibleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum MenuButtonAccessiblePropertyName: String, PropertyNameProtocol {
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

public extension MenuButtonAccessibleProtocol {
    /// Bind a `MenuButtonAccessiblePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: MenuButtonAccessiblePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a MenuButtonAccessible property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: MenuButtonAccessiblePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a MenuButtonAccessible property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: MenuButtonAccessiblePropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: MenuButtonAccessible has no signals// MARK: MenuButtonAccessible Class: MenuButtonAccessibleProtocol extension (methods and fields)
public extension MenuButtonAccessibleProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMenuButtonAccessible` instance.
    @inlinable var menu_button_accessible_ptr: UnsafeMutablePointer<GtkMenuButtonAccessible>! { return ptr?.assumingMemoryBound(to: GtkMenuButtonAccessible.self) }


    @inlinable var parent: GtkToggleButtonAccessible {
        get {
            let rv = menu_button_accessible_ptr.pointee.parent
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - MenuItem Class

/// The `MenuItemProtocol` protocol exposes the methods and properties of an underlying `GtkMenuItem` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MenuItem`.
/// Alternatively, use `MenuItemRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GtkMenuItem` widget and the derived widgets are the only valid
/// children for menus. Their function is to correctly handle highlighting,
/// alignment, events and submenus.
/// 
/// As a GtkMenuItem derives from `GtkBin` it can hold any valid child widget,
/// although only a few are really useful.
/// 
/// By default, a GtkMenuItem sets a `GtkAccelLabel` as its child.
/// GtkMenuItem has direct functions to set the label and its mnemonic.
/// For more advanced label settings, you can fetch the child widget from the GtkBin.
/// 
/// An example for setting markup and accelerator on a MenuItem:
/// (C Language Example):
/// ```C
/// GtkWidget *menu_item = gtk_menu_item_new_with_label ("Example Menu Item");
/// 
/// GtkWidget *child = gtk_bin_get_child (GTK_BIN (menu_item));
/// gtk_label_set_markup (GTK_LABEL (child), "<i>new label</i> with <b>markup</b>");
/// gtk_accel_label_set_accel (GTK_ACCEL_LABEL (child), GDK_KEY_1, 0);
/// ```
/// 
/// # GtkMenuItem as GtkBuildable
/// 
/// The GtkMenuItem implementation of the `GtkBuildable` interface supports
/// adding a submenu by specifying “submenu” as the “type” attribute of
/// a <child> element.
/// 
/// An example of UI definition fragment with submenus:
/// ```
/// <object class="GtkMenuItem">
///   <child type="submenu">
///     <object class="GtkMenu"/>
///   </child>
/// </object>
/// ```
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
/// menuitem
/// ├── <child>
/// ╰── [arrow.right]
/// ```
/// 
/// GtkMenuItem has a single CSS node with name menuitem. If the menuitem
/// has a submenu, it gets another CSS node with name arrow, which has
/// the .left or .right style class.
public protocol MenuItemProtocol: BinProtocol, ActionableProtocol, ActivatableProtocol {
        /// Untyped pointer to the underlying `GtkMenuItem` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkMenuItem` instance.
    var menu_item_ptr: UnsafeMutablePointer<GtkMenuItem>! { get }

}

/// The `MenuItemRef` type acts as a lightweight Swift reference to an underlying `GtkMenuItem` instance.
/// It exposes methods that can operate on this data type through `MenuItemProtocol` conformance.
/// Use `MenuItemRef` only as an `unowned` reference to an existing `GtkMenuItem` instance.
///
/// The `GtkMenuItem` widget and the derived widgets are the only valid
/// children for menus. Their function is to correctly handle highlighting,
/// alignment, events and submenus.
/// 
/// As a GtkMenuItem derives from `GtkBin` it can hold any valid child widget,
/// although only a few are really useful.
/// 
/// By default, a GtkMenuItem sets a `GtkAccelLabel` as its child.
/// GtkMenuItem has direct functions to set the label and its mnemonic.
/// For more advanced label settings, you can fetch the child widget from the GtkBin.
/// 
/// An example for setting markup and accelerator on a MenuItem:
/// (C Language Example):
/// ```C
/// GtkWidget *menu_item = gtk_menu_item_new_with_label ("Example Menu Item");
/// 
/// GtkWidget *child = gtk_bin_get_child (GTK_BIN (menu_item));
/// gtk_label_set_markup (GTK_LABEL (child), "<i>new label</i> with <b>markup</b>");
/// gtk_accel_label_set_accel (GTK_ACCEL_LABEL (child), GDK_KEY_1, 0);
/// ```
/// 
/// # GtkMenuItem as GtkBuildable
/// 
/// The GtkMenuItem implementation of the `GtkBuildable` interface supports
/// adding a submenu by specifying “submenu” as the “type” attribute of
/// a <child> element.
/// 
/// An example of UI definition fragment with submenus:
/// ```
/// <object class="GtkMenuItem">
///   <child type="submenu">
///     <object class="GtkMenu"/>
///   </child>
/// </object>
/// ```
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
/// menuitem
/// ├── <child>
/// ╰── [arrow.right]
/// ```
/// 
/// GtkMenuItem has a single CSS node with name menuitem. If the menuitem
/// has a submenu, it gets another CSS node with name arrow, which has
/// the .left or .right style class.
public struct MenuItemRef: MenuItemProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkMenuItem` instance.
    /// For type-safe access, use the generated, typed pointer `menu_item_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MenuItemRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkMenuItem>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkMenuItem>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkMenuItem>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkMenuItem>?) {
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

    /// Reference intialiser for a related type that implements `MenuItemProtocol`
    @inlinable init<T: MenuItemProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: MenuItemProtocol>(_ other: T) -> MenuItemRef { MenuItemRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkMenuItem`.
    @inlinable init() {
        let rv = gtk_menu_item_new()
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GtkMenuItem` whose child is a `GtkLabel`.
    @inlinable init(label: UnsafePointer<gchar>!) {
        let rv = gtk_menu_item_new_with_label(label)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GtkMenuItem` containing a label.
    /// 
    /// The label will be created using `gtk_label_new_with_mnemonic()`,
    /// so underscores in `label` indicate the mnemonic for the menu item.
    @inlinable init(mnemonic label: UnsafePointer<gchar>!) {
        let rv = gtk_menu_item_new_with_mnemonic(label)
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a new `GtkMenuItem` whose child is a `GtkLabel`.
    @inlinable static func newWith(label: UnsafePointer<gchar>!) -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_menu_item_new_with_label(label))) else { return nil }
        return rv
    }

    /// Creates a new `GtkMenuItem` containing a label.
    /// 
    /// The label will be created using `gtk_label_new_with_mnemonic()`,
    /// so underscores in `label` indicate the mnemonic for the menu item.
    @inlinable static func newWith(mnemonic label: UnsafePointer<gchar>!) -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_menu_item_new_with_mnemonic(label))) else { return nil }
        return rv
    }
}

/// The `MenuItem` type acts as a reference-counted owner of an underlying `GtkMenuItem` instance.
/// It provides the methods that can operate on this data type through `MenuItemProtocol` conformance.
/// Use `MenuItem` as a strong reference or owner of a `GtkMenuItem` instance.
///
/// The `GtkMenuItem` widget and the derived widgets are the only valid
/// children for menus. Their function is to correctly handle highlighting,
/// alignment, events and submenus.
/// 
/// As a GtkMenuItem derives from `GtkBin` it can hold any valid child widget,
/// although only a few are really useful.
/// 
/// By default, a GtkMenuItem sets a `GtkAccelLabel` as its child.
/// GtkMenuItem has direct functions to set the label and its mnemonic.
/// For more advanced label settings, you can fetch the child widget from the GtkBin.
/// 
/// An example for setting markup and accelerator on a MenuItem:
/// (C Language Example):
/// ```C
/// GtkWidget *menu_item = gtk_menu_item_new_with_label ("Example Menu Item");
/// 
/// GtkWidget *child = gtk_bin_get_child (GTK_BIN (menu_item));
/// gtk_label_set_markup (GTK_LABEL (child), "<i>new label</i> with <b>markup</b>");
/// gtk_accel_label_set_accel (GTK_ACCEL_LABEL (child), GDK_KEY_1, 0);
/// ```
/// 
/// # GtkMenuItem as GtkBuildable
/// 
/// The GtkMenuItem implementation of the `GtkBuildable` interface supports
/// adding a submenu by specifying “submenu” as the “type” attribute of
/// a <child> element.
/// 
/// An example of UI definition fragment with submenus:
/// ```
/// <object class="GtkMenuItem">
///   <child type="submenu">
///     <object class="GtkMenu"/>
///   </child>
/// </object>
/// ```
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
/// menuitem
/// ├── <child>
/// ╰── [arrow.right]
/// ```
/// 
/// GtkMenuItem has a single CSS node with name menuitem. If the menuitem
/// has a submenu, it gets another CSS node with name arrow, which has
/// the .left or .right style class.
open class MenuItem: Bin, MenuItemProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuItem` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkMenuItem>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuItem` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkMenuItem>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuItem` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuItem` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuItem` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkMenuItem>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuItem` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkMenuItem>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkMenuItem`.
    /// i.e., ownership is transferred to the `MenuItem` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkMenuItem>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `MenuItemProtocol`
    /// Will retain `GtkMenuItem`.
    /// - Parameter other: an instance of a related type that implements `MenuItemProtocol`
    @inlinable public init<T: MenuItemProtocol>(menuItem other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkMenuItem`.
    @inlinable public init() {
        let rv = gtk_menu_item_new()
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new `GtkMenuItem` whose child is a `GtkLabel`.
    @inlinable public init(label: UnsafePointer<gchar>!) {
        let rv = gtk_menu_item_new_with_label(label)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new `GtkMenuItem` containing a label.
    /// 
    /// The label will be created using `gtk_label_new_with_mnemonic()`,
    /// so underscores in `label` indicate the mnemonic for the menu item.
    @inlinable public init(mnemonic label: UnsafePointer<gchar>!) {
        let rv = gtk_menu_item_new_with_mnemonic(label)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new `GtkMenuItem` whose child is a `GtkLabel`.
    @inlinable public static func newWith(label: UnsafePointer<gchar>!) -> Widget! {
        guard let rv = Widget(gconstpointer: gconstpointer(gtk_menu_item_new_with_label(label))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

    /// Creates a new `GtkMenuItem` containing a label.
    /// 
    /// The label will be created using `gtk_label_new_with_mnemonic()`,
    /// so underscores in `label` indicate the mnemonic for the menu item.
    @inlinable public static func newWith(mnemonic label: UnsafePointer<gchar>!) -> Widget! {
        guard let rv = Widget(gconstpointer: gconstpointer(gtk_menu_item_new_with_mnemonic(label))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

}

public enum MenuItemPropertyName: String, PropertyNameProtocol {
    /// Sets the accelerator path of the menu item, through which runtime
    /// changes of the menu item's accelerator caused by the user can be
    /// identified and saved to persistant storage.
    case accelPath = "accel-path"
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
    /// The text for the child label.
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
    case resizeMode = "resize-mode"
    /// Sets whether the menu item appears justified
    /// at the right side of a menu bar.
    case rightJustified = "right-justified"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case sensitive = "sensitive"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case style = "style"
    /// The submenu attached to the menu item, or `nil` if it has none.
    case submenu = "submenu"
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
    /// `true` if underlines in the text indicate mnemonics.
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

public extension MenuItemProtocol {
    /// Bind a `MenuItemPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: MenuItemPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a MenuItem property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: MenuItemPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a MenuItem property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: MenuItemPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: Signals of MenuItem
public extension MenuItemProtocol {
    /// - Note: Representation of signal named `toggle-size-request`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter object: none
    /// - Warning: Wrapper of this signal could not be generated because it contains unimplemented features: { (4)  gpointer argument is not yet supported }
    /// - Note: Use this string for `signalConnectData` method
    static var onToggleSizeRequest: String { "toggle-size-request" }
    /// Emitted when the item is activated.
    /// - Note: Representation of signal named `activate`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onActivate(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: MenuItemRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<MenuItemRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(MenuItemRef(raw: unownedSelf))
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
    
    /// Emitted when the item is activated, but also if the menu item has a
    /// submenu. For normal applications, the relevant signal is
    /// `GtkMenuItem::activate`.
    /// - Note: Representation of signal named `activate-item`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onActivateItem(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: MenuItemRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<MenuItemRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(MenuItemRef(raw: unownedSelf))
            return output
        }
        return signalConnectData(
            detailedSignal: "activate-item", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// - Note: Representation of signal named `deselect`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onDeselect(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: MenuItemRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<MenuItemRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(MenuItemRef(raw: unownedSelf))
            return output
        }
        return signalConnectData(
            detailedSignal: "deselect", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// - Note: Representation of signal named `select`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onSelect(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: MenuItemRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<MenuItemRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(MenuItemRef(raw: unownedSelf))
            return output
        }
        return signalConnectData(
            detailedSignal: "select", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// - Note: Representation of signal named `toggle-size-allocate`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter object: none
    @discardableResult
    func onToggleSizeAllocate(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: MenuItemRef, _ object: Int) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<MenuItemRef, Int, Void>
        let cCallback: @convention(c) (gpointer, gint, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(MenuItemRef(raw: unownedSelf), Int(arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "toggle-size-allocate", 
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
    func onNotifyAccelPath(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: MenuItemRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<MenuItemRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(MenuItemRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
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
    /// - Note: Representation of signal named `notify::label`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyLabel(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: MenuItemRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<MenuItemRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(MenuItemRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::label", 
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
    /// - Note: Representation of signal named `notify::right-justified`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyRightJustified(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: MenuItemRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<MenuItemRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(MenuItemRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::right-justified", 
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
    /// - Note: Representation of signal named `notify::submenu`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifySubmenu(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: MenuItemRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<MenuItemRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(MenuItemRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::submenu", 
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
    /// - Note: Representation of signal named `notify::use-underline`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyUseUnderline(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: MenuItemRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<MenuItemRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(MenuItemRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::use-underline", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
}

// MARK: MenuItem Class: MenuItemProtocol extension (methods and fields)
public extension MenuItemProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMenuItem` instance.
    @inlinable var menu_item_ptr: UnsafeMutablePointer<GtkMenuItem>! { return ptr?.assumingMemoryBound(to: GtkMenuItem.self) }

    /// Emits the `GtkMenuItem::activate` signal on the given item
    @inlinable func activate() {
        gtk_menu_item_activate(menu_item_ptr)
    
    }

    /// Emits the `GtkMenuItem::deselect` signal on the given item.
    @inlinable func deselect() {
        gtk_menu_item_deselect(menu_item_ptr)
    
    }

    /// Retrieve the accelerator path that was previously set on `menu_item`.
    /// 
    /// See `gtk_menu_item_set_accel_path()` for details.
    @inlinable func getAccelPath() -> String! {
        let rv = gtk_menu_item_get_accel_path(menu_item_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Sets `text` on the `menu_item` label
    @inlinable func getLabel() -> String! {
        let rv = gtk_menu_item_get_label(menu_item_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Returns whether the `menu_item` reserves space for
    /// the submenu indicator, regardless if it has a submenu
    /// or not.
    @inlinable func getReserveIndicator() -> Bool {
        let rv = ((gtk_menu_item_get_reserve_indicator(menu_item_ptr)) != 0)
        return rv
    }

    /// Gets whether the menu item appears justified at the right
    /// side of the menu bar.
    ///
    /// **get_right_justified is deprecated:**
    /// See gtk_menu_item_set_right_justified()
    @available(*, deprecated)
    @inlinable func getRightJustified() -> Bool {
        let rv = ((gtk_menu_item_get_right_justified(menu_item_ptr)) != 0)
        return rv
    }

    /// Gets the submenu underneath this menu item, if any.
    /// See `gtk_menu_item_set_submenu()`.
    @inlinable func getSubmenu() -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_menu_item_get_submenu(menu_item_ptr))) else { return nil }
        return rv
    }

    /// Checks if an underline in the text indicates the next character
    /// should be used for the mnemonic accelerator key.
    @inlinable func getUseUnderline() -> Bool {
        let rv = ((gtk_menu_item_get_use_underline(menu_item_ptr)) != 0)
        return rv
    }

    /// Emits the `GtkMenuItem::select` signal on the given item.
    @inlinable func select() {
        gtk_menu_item_select(menu_item_ptr)
    
    }

    /// Set the accelerator path on `menu_item`, through which runtime
    /// changes of the menu item’s accelerator caused by the user can be
    /// identified and saved to persistent storage (see `gtk_accel_map_save()`
    /// on this). To set up a default accelerator for this menu item, call
    /// `gtk_accel_map_add_entry()` with the same `accel_path`. See also
    /// `gtk_accel_map_add_entry()` on the specifics of accelerator paths,
    /// and `gtk_menu_set_accel_path()` for a more convenient variant of
    /// this function.
    /// 
    /// This function is basically a convenience wrapper that handles
    /// calling `gtk_widget_set_accel_path()` with the appropriate accelerator
    /// group for the menu item.
    /// 
    /// Note that you do need to set an accelerator on the parent menu with
    /// `gtk_menu_set_accel_group()` for this to work.
    /// 
    /// Note that `accel_path` string will be stored in a `GQuark`.
    /// Therefore, if you pass a static string, you can save some memory
    /// by interning it first with `g_intern_static_string()`.
    @inlinable func set(accelPath: UnsafePointer<gchar>? = nil) {
        gtk_menu_item_set_accel_path(menu_item_ptr, accelPath)
    
    }

    /// Sets `text` on the `menu_item` label
    @inlinable func set(label: UnsafePointer<gchar>!) {
        gtk_menu_item_set_label(menu_item_ptr, label)
    
    }

    /// Sets whether the `menu_item` should reserve space for
    /// the submenu indicator, regardless if it actually has
    /// a submenu or not.
    /// 
    /// There should be little need for applications to call
    /// this functions.
    @inlinable func setReserveIndicator(reserve: Bool) {
        gtk_menu_item_set_reserve_indicator(menu_item_ptr, gboolean((reserve) ? 1 : 0))
    
    }

    /// Sets whether the menu item appears justified at the right
    /// side of a menu bar. This was traditionally done for “Help”
    /// menu items, but is now considered a bad idea. (If the widget
    /// layout is reversed for a right-to-left language like Hebrew
    /// or Arabic, right-justified-menu-items appear at the left.)
    ///
    /// **set_right_justified is deprecated:**
    /// If you insist on using it, use
    ///   gtk_widget_set_hexpand() and gtk_widget_set_halign().
    @available(*, deprecated)
    @inlinable func set(rightJustified: Bool) {
        gtk_menu_item_set_right_justified(menu_item_ptr, gboolean((rightJustified) ? 1 : 0))
    
    }

    /// Sets or replaces the menu item’s submenu, or removes it when a `nil`
    /// submenu is passed.
    @inlinable func set(submenu: MenuRef? = nil) {
        gtk_menu_item_set_submenu(menu_item_ptr, submenu?.widget_ptr)
    
    }
    /// Sets or replaces the menu item’s submenu, or removes it when a `nil`
    /// submenu is passed.
    @inlinable func set<MenuT: MenuProtocol>(submenu: MenuT?) {
        gtk_menu_item_set_submenu(menu_item_ptr, submenu?.widget_ptr)
    
    }

    /// If true, an underline in the text indicates the next character
    /// should be used for the mnemonic accelerator key.
    @inlinable func set(useUnderline setting: Bool) {
        gtk_menu_item_set_use_underline(menu_item_ptr, gboolean((setting) ? 1 : 0))
    
    }

    /// Emits the `GtkMenuItem::toggle`-size-allocate signal on the given item.
    @inlinable func toggleSizeAllocate(allocation: Int) {
        gtk_menu_item_toggle_size_allocate(menu_item_ptr, gint(allocation))
    
    }

    /// Emits the `GtkMenuItem::toggle`-size-request signal on the given item.
    @inlinable func toggleSizeRequest(requisition: UnsafeMutablePointer<gint>!) {
        gtk_menu_item_toggle_size_request(menu_item_ptr, requisition)
    
    }
    /// Retrieve the accelerator path that was previously set on `menu_item`.
    /// 
    /// See `gtk_menu_item_set_accel_path()` for details.
    @inlinable var accelPath: String! {
        /// Retrieve the accelerator path that was previously set on `menu_item`.
        /// 
        /// See `gtk_menu_item_set_accel_path()` for details.
        get {
            let rv = gtk_menu_item_get_accel_path(menu_item_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Set the accelerator path on `menu_item`, through which runtime
        /// changes of the menu item’s accelerator caused by the user can be
        /// identified and saved to persistent storage (see `gtk_accel_map_save()`
        /// on this). To set up a default accelerator for this menu item, call
        /// `gtk_accel_map_add_entry()` with the same `accel_path`. See also
        /// `gtk_accel_map_add_entry()` on the specifics of accelerator paths,
        /// and `gtk_menu_set_accel_path()` for a more convenient variant of
        /// this function.
        /// 
        /// This function is basically a convenience wrapper that handles
        /// calling `gtk_widget_set_accel_path()` with the appropriate accelerator
        /// group for the menu item.
        /// 
        /// Note that you do need to set an accelerator on the parent menu with
        /// `gtk_menu_set_accel_group()` for this to work.
        /// 
        /// Note that `accel_path` string will be stored in a `GQuark`.
        /// Therefore, if you pass a static string, you can save some memory
        /// by interning it first with `g_intern_static_string()`.
        nonmutating set {
            gtk_menu_item_set_accel_path(menu_item_ptr, newValue)
        }
    }

    /// The text for the child label.
    @inlinable var label: String! {
        /// Sets `text` on the `menu_item` label
        get {
            let rv = gtk_menu_item_get_label(menu_item_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets `text` on the `menu_item` label
        nonmutating set {
            gtk_menu_item_set_label(menu_item_ptr, newValue)
        }
    }

    /// Returns whether the `menu_item` reserves space for
    /// the submenu indicator, regardless if it has a submenu
    /// or not.
    @inlinable var reserveIndicator: Bool {
        /// Returns whether the `menu_item` reserves space for
        /// the submenu indicator, regardless if it has a submenu
        /// or not.
        get {
            let rv = ((gtk_menu_item_get_reserve_indicator(menu_item_ptr)) != 0)
            return rv
        }
        /// Sets whether the `menu_item` should reserve space for
        /// the submenu indicator, regardless if it actually has
        /// a submenu or not.
        /// 
        /// There should be little need for applications to call
        /// this functions.
        nonmutating set {
            gtk_menu_item_set_reserve_indicator(menu_item_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Gets whether the menu item appears justified at the right
    /// side of the menu bar.
    ///
    /// **get_right_justified is deprecated:**
    /// See gtk_menu_item_set_right_justified()
    @inlinable var rightJustified: Bool {
        /// Gets whether the menu item appears justified at the right
        /// side of the menu bar.
        ///
        /// **get_right_justified is deprecated:**
        /// See gtk_menu_item_set_right_justified()
        @available(*, deprecated)
    get {
            let rv = ((gtk_menu_item_get_right_justified(menu_item_ptr)) != 0)
            return rv
        }
        /// Sets whether the menu item appears justified at the right
        /// side of a menu bar. This was traditionally done for “Help”
        /// menu items, but is now considered a bad idea. (If the widget
        /// layout is reversed for a right-to-left language like Hebrew
        /// or Arabic, right-justified-menu-items appear at the left.)
        ///
        /// **set_right_justified is deprecated:**
        /// If you insist on using it, use
        ///   gtk_widget_set_hexpand() and gtk_widget_set_halign().
        @available(*, deprecated)
    nonmutating set {
            gtk_menu_item_set_right_justified(menu_item_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// The submenu attached to the menu item, or `nil` if it has none.
    @inlinable var submenu: WidgetRef! {
        /// Gets the submenu underneath this menu item, if any.
        /// See `gtk_menu_item_set_submenu()`.
        get {
            guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_menu_item_get_submenu(menu_item_ptr))) else { return nil }
            return rv
        }
        /// Sets or replaces the menu item’s submenu, or removes it when a `nil`
        /// submenu is passed.
        nonmutating set {
            gtk_menu_item_set_submenu(menu_item_ptr, UnsafeMutablePointer<GtkWidget>(newValue?.widget_ptr))
        }
    }

    /// Checks if an underline in the text indicates the next character
    /// should be used for the mnemonic accelerator key.
    @inlinable var useUnderline: Bool {
        /// Checks if an underline in the text indicates the next character
        /// should be used for the mnemonic accelerator key.
        get {
            let rv = ((gtk_menu_item_get_use_underline(menu_item_ptr)) != 0)
            return rv
        }
        /// If true, an underline in the text indicates the next character
        /// should be used for the mnemonic accelerator key.
        nonmutating set {
            gtk_menu_item_set_use_underline(menu_item_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    @inlinable var bin: GtkBin {
        get {
            let rv = menu_item_ptr.pointee.bin
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - MenuItemAccessible Class

/// The `MenuItemAccessibleProtocol` protocol exposes the methods and properties of an underlying `GtkMenuItemAccessible` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MenuItemAccessible`.
/// Alternatively, use `MenuItemAccessibleRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol MenuItemAccessibleProtocol: ContainerAccessibleProtocol, Atk.ActionProtocol, Atk.SelectionProtocol {
        /// Untyped pointer to the underlying `GtkMenuItemAccessible` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkMenuItemAccessible` instance.
    var menu_item_accessible_ptr: UnsafeMutablePointer<GtkMenuItemAccessible>! { get }

}

/// The `MenuItemAccessibleRef` type acts as a lightweight Swift reference to an underlying `GtkMenuItemAccessible` instance.
/// It exposes methods that can operate on this data type through `MenuItemAccessibleProtocol` conformance.
/// Use `MenuItemAccessibleRef` only as an `unowned` reference to an existing `GtkMenuItemAccessible` instance.
///

public struct MenuItemAccessibleRef: MenuItemAccessibleProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkMenuItemAccessible` instance.
    /// For type-safe access, use the generated, typed pointer `menu_item_accessible_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MenuItemAccessibleRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkMenuItemAccessible>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkMenuItemAccessible>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkMenuItemAccessible>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkMenuItemAccessible>?) {
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

    /// Reference intialiser for a related type that implements `MenuItemAccessibleProtocol`
    @inlinable init<T: MenuItemAccessibleProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: MenuItemAccessibleProtocol>(_ other: T) -> MenuItemAccessibleRef { MenuItemAccessibleRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemAccessibleProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemAccessibleProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemAccessibleProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemAccessibleProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemAccessibleProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `MenuItemAccessible` type acts as a reference-counted owner of an underlying `GtkMenuItemAccessible` instance.
/// It provides the methods that can operate on this data type through `MenuItemAccessibleProtocol` conformance.
/// Use `MenuItemAccessible` as a strong reference or owner of a `GtkMenuItemAccessible` instance.
///

open class MenuItemAccessible: ContainerAccessible, MenuItemAccessibleProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuItemAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkMenuItemAccessible>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuItemAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkMenuItemAccessible>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuItemAccessible` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuItemAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuItemAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkMenuItemAccessible>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuItemAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkMenuItemAccessible>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkMenuItemAccessible`.
    /// i.e., ownership is transferred to the `MenuItemAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkMenuItemAccessible>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `MenuItemAccessibleProtocol`
    /// Will retain `GtkMenuItemAccessible`.
    /// - Parameter other: an instance of a related type that implements `MenuItemAccessibleProtocol`
    @inlinable public init<T: MenuItemAccessibleProtocol>(menuItemAccessible other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemAccessibleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemAccessibleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemAccessibleProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemAccessibleProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemAccessibleProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemAccessibleProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemAccessibleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuItemAccessibleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum MenuItemAccessiblePropertyName: String, PropertyNameProtocol {
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

public extension MenuItemAccessibleProtocol {
    /// Bind a `MenuItemAccessiblePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: MenuItemAccessiblePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a MenuItemAccessible property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: MenuItemAccessiblePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a MenuItemAccessible property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: MenuItemAccessiblePropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: MenuItemAccessible has no signals// MARK: MenuItemAccessible Class: MenuItemAccessibleProtocol extension (methods and fields)
public extension MenuItemAccessibleProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMenuItemAccessible` instance.
    @inlinable var menu_item_accessible_ptr: UnsafeMutablePointer<GtkMenuItemAccessible>! { return ptr?.assumingMemoryBound(to: GtkMenuItemAccessible.self) }


    @inlinable var parent: GtkContainerAccessible {
        get {
            let rv = menu_item_accessible_ptr.pointee.parent
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - MenuShell Class

/// The `MenuShellProtocol` protocol exposes the methods and properties of an underlying `GtkMenuShell` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MenuShell`.
/// Alternatively, use `MenuShellRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GtkMenuShell` is the abstract base class used to derive the
/// `GtkMenu` and `GtkMenuBar` subclasses.
/// 
/// A `GtkMenuShell` is a container of `GtkMenuItem` objects arranged
/// in a list which can be navigated, selected, and activated by the
/// user to perform application functions. A `GtkMenuItem` can have a
/// submenu associated with it, allowing for nested hierarchical menus.
/// 
/// # Terminology
/// 
/// A menu item can be “selected”, this means that it is displayed
/// in the prelight state, and if it has a submenu, that submenu
/// will be popped up.
/// 
/// A menu is “active” when it is visible onscreen and the user
/// is selecting from it. A menubar is not active until the user
/// clicks on one of its menuitems. When a menu is active,
/// passing the mouse over a submenu will pop it up.
/// 
/// There is also is a concept of the current menu and a current
/// menu item. The current menu item is the selected menu item
/// that is furthest down in the hierarchy. (Every active menu shell
/// does not necessarily contain a selected menu item, but if
/// it does, then the parent menu shell must also contain
/// a selected menu item.) The current menu is the menu that
/// contains the current menu item. It will always have a GTK
/// grab and receive all key presses.
public protocol MenuShellProtocol: ContainerProtocol {
        /// Untyped pointer to the underlying `GtkMenuShell` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkMenuShell` instance.
    var menu_shell_ptr: UnsafeMutablePointer<GtkMenuShell>! { get }

}

/// The `MenuShellRef` type acts as a lightweight Swift reference to an underlying `GtkMenuShell` instance.
/// It exposes methods that can operate on this data type through `MenuShellProtocol` conformance.
/// Use `MenuShellRef` only as an `unowned` reference to an existing `GtkMenuShell` instance.
///
/// A `GtkMenuShell` is the abstract base class used to derive the
/// `GtkMenu` and `GtkMenuBar` subclasses.
/// 
/// A `GtkMenuShell` is a container of `GtkMenuItem` objects arranged
/// in a list which can be navigated, selected, and activated by the
/// user to perform application functions. A `GtkMenuItem` can have a
/// submenu associated with it, allowing for nested hierarchical menus.
/// 
/// # Terminology
/// 
/// A menu item can be “selected”, this means that it is displayed
/// in the prelight state, and if it has a submenu, that submenu
/// will be popped up.
/// 
/// A menu is “active” when it is visible onscreen and the user
/// is selecting from it. A menubar is not active until the user
/// clicks on one of its menuitems. When a menu is active,
/// passing the mouse over a submenu will pop it up.
/// 
/// There is also is a concept of the current menu and a current
/// menu item. The current menu item is the selected menu item
/// that is furthest down in the hierarchy. (Every active menu shell
/// does not necessarily contain a selected menu item, but if
/// it does, then the parent menu shell must also contain
/// a selected menu item.) The current menu is the menu that
/// contains the current menu item. It will always have a GTK
/// grab and receive all key presses.
public struct MenuShellRef: MenuShellProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkMenuShell` instance.
    /// For type-safe access, use the generated, typed pointer `menu_shell_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MenuShellRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkMenuShell>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkMenuShell>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkMenuShell>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkMenuShell>?) {
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

    /// Reference intialiser for a related type that implements `MenuShellProtocol`
    @inlinable init<T: MenuShellProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: MenuShellProtocol>(_ other: T) -> MenuShellRef { MenuShellRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuShellProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuShellProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuShellProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuShellProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuShellProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `MenuShell` type acts as a reference-counted owner of an underlying `GtkMenuShell` instance.
/// It provides the methods that can operate on this data type through `MenuShellProtocol` conformance.
/// Use `MenuShell` as a strong reference or owner of a `GtkMenuShell` instance.
///
/// A `GtkMenuShell` is the abstract base class used to derive the
/// `GtkMenu` and `GtkMenuBar` subclasses.
/// 
/// A `GtkMenuShell` is a container of `GtkMenuItem` objects arranged
/// in a list which can be navigated, selected, and activated by the
/// user to perform application functions. A `GtkMenuItem` can have a
/// submenu associated with it, allowing for nested hierarchical menus.
/// 
/// # Terminology
/// 
/// A menu item can be “selected”, this means that it is displayed
/// in the prelight state, and if it has a submenu, that submenu
/// will be popped up.
/// 
/// A menu is “active” when it is visible onscreen and the user
/// is selecting from it. A menubar is not active until the user
/// clicks on one of its menuitems. When a menu is active,
/// passing the mouse over a submenu will pop it up.
/// 
/// There is also is a concept of the current menu and a current
/// menu item. The current menu item is the selected menu item
/// that is furthest down in the hierarchy. (Every active menu shell
/// does not necessarily contain a selected menu item, but if
/// it does, then the parent menu shell must also contain
/// a selected menu item.) The current menu is the menu that
/// contains the current menu item. It will always have a GTK
/// grab and receive all key presses.
open class MenuShell: Container, MenuShellProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuShell` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkMenuShell>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuShell` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkMenuShell>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuShell` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuShell` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuShell` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkMenuShell>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuShell` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkMenuShell>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkMenuShell`.
    /// i.e., ownership is transferred to the `MenuShell` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkMenuShell>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `MenuShellProtocol`
    /// Will retain `GtkMenuShell`.
    /// - Parameter other: an instance of a related type that implements `MenuShellProtocol`
    @inlinable public init<T: MenuShellProtocol>(menuShell other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuShellProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuShellProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuShellProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuShellProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuShellProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuShellProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuShellProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuShellProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum MenuShellPropertyName: String, PropertyNameProtocol {
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
    /// A boolean that determines whether the menu and its submenus grab the
    /// keyboard focus. See `gtk_menu_shell_set_take_focus()` and
    /// `gtk_menu_shell_get_take_focus()`.
    case takeFocus = "take-focus"
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

public extension MenuShellProtocol {
    /// Bind a `MenuShellPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: MenuShellPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a MenuShell property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: MenuShellPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a MenuShell property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: MenuShellPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: Signals of MenuShell
public extension MenuShellProtocol {
    /// An action signal that activates the current menu item within
    /// the menu shell.
    /// - Note: Representation of signal named `activate-current`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter forceHide: if `true`, hide the menu after activating the menu item
    @discardableResult
    func onActivateCurrent(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: MenuShellRef, _ forceHide: Bool) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<MenuShellRef, Bool, Void>
        let cCallback: @convention(c) (gpointer, gboolean, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(MenuShellRef(raw: unownedSelf), ((arg1) != 0))
            return output
        }
        return signalConnectData(
            detailedSignal: "activate-current", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// An action signal which cancels the selection within the menu shell.
    /// Causes the `GtkMenuShell::selection`-done signal to be emitted.
    /// - Note: Representation of signal named `cancel`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onCancel(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: MenuShellRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<MenuShellRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(MenuShellRef(raw: unownedSelf))
            return output
        }
        return signalConnectData(
            detailedSignal: "cancel", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// A keybinding signal which moves the focus in the
    /// given `direction`.
    /// - Note: Representation of signal named `cycle-focus`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter direction: the direction to cycle in
    @discardableResult
    func onCycleFocus(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: MenuShellRef, _ direction: DirectionType) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<MenuShellRef, DirectionType, Void>
        let cCallback: @convention(c) (gpointer, UInt32, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(MenuShellRef(raw: unownedSelf), DirectionType(arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "cycle-focus", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// This signal is emitted when a menu shell is deactivated.
    /// - Note: Representation of signal named `deactivate`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onDeactivate(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: MenuShellRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<MenuShellRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(MenuShellRef(raw: unownedSelf))
            return output
        }
        return signalConnectData(
            detailedSignal: "deactivate", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The `insert` signal is emitted when a new `GtkMenuItem` is added to
    /// a `GtkMenuShell`.  A separate signal is used instead of
    /// GtkContainer`add` because of the need for an additional position
    /// parameter.
    /// 
    /// The inverse of this signal is the GtkContainer`removed` signal.
    /// - Note: Representation of signal named `insert`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter child: the `GtkMenuItem` that is being inserted
    /// - Parameter position: the position at which the insert occurs
    @discardableResult
    func onInsert(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: MenuShellRef, _ child: WidgetRef, _ position: Int) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder3<MenuShellRef, WidgetRef, Int, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gint, gpointer) -> Void = { unownedSelf, arg1, arg2, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(MenuShellRef(raw: unownedSelf), WidgetRef(raw: arg1), Int(arg2))
            return output
        }
        return signalConnectData(
            detailedSignal: "insert", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// An keybinding signal which moves the current menu item
    /// in the direction specified by `direction`.
    /// - Note: Representation of signal named `move-current`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter direction: the direction to move
    @discardableResult
    func onMoveCurrent(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: MenuShellRef, _ direction: MenuDirectionType) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<MenuShellRef, MenuDirectionType, Void>
        let cCallback: @convention(c) (gpointer, UInt32, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(MenuShellRef(raw: unownedSelf), MenuDirectionType(arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "move-current", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The `move`-selected signal is emitted to move the selection to
    /// another item.
    /// - Note: Representation of signal named `move-selected`
    /// - Parameter flags: Flags
    /// - Parameter handler: `true` to stop the signal emission, `false` to continue
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter distance: +1 to move to the next item, -1 to move to the previous
    @discardableResult
    func onMoveSelected(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: MenuShellRef, _ distance: Int) -> Bool ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<MenuShellRef, Int, Bool>
        let cCallback: @convention(c) (gpointer, gint, gpointer) -> gboolean = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output = holder.call(MenuShellRef(raw: unownedSelf), Int(arg1))
            return gboolean((output) ? 1 : 0)
        }
        return signalConnectData(
            detailedSignal: "move-selected", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// This signal is emitted when a selection has been
    /// completed within a menu shell.
    /// - Note: Representation of signal named `selection-done`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onSelectionDone(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: MenuShellRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<MenuShellRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(MenuShellRef(raw: unownedSelf))
            return output
        }
        return signalConnectData(
            detailedSignal: "selection-done", 
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
    /// - Note: Representation of signal named `notify::take-focus`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyTakeFocus(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: MenuShellRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<MenuShellRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(MenuShellRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::take-focus", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
}

// MARK: MenuShell Class: MenuShellProtocol extension (methods and fields)
public extension MenuShellProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMenuShell` instance.
    @inlinable var menu_shell_ptr: UnsafeMutablePointer<GtkMenuShell>! { return ptr?.assumingMemoryBound(to: GtkMenuShell.self) }

    /// Activates the menu item within the menu shell.
    @inlinable func activateItem<WidgetT: WidgetProtocol>(menuItem: WidgetT, forceDeactivate: Bool) {
        gtk_menu_shell_activate_item(menu_shell_ptr, menuItem.widget_ptr, gboolean((forceDeactivate) ? 1 : 0))
    
    }

    /// Adds a new `GtkMenuItem` to the end of the menu shell's
    /// item list.
    @inlinable func append<MenuItemT: MenuItemProtocol>(child: MenuItemT) {
        gtk_menu_shell_append(menu_shell_ptr, child.widget_ptr)
    
    }

    /// Establishes a binding between a `GtkMenuShell` and a `GMenuModel`.
    /// 
    /// The contents of `shell` are removed and then refilled with menu items
    /// according to `model`.  When `model` changes, `shell` is updated.
    /// Calling this function twice on `shell` with different `model` will
    /// cause the first binding to be replaced with a binding to the new
    /// model. If `model` is `nil` then any previous binding is undone and
    /// all children are removed.
    /// 
    /// `with_separators` determines if toplevel items (eg: sections) have
    /// separators inserted between them.  This is typically desired for
    /// menus but doesn’t make sense for menubars.
    /// 
    /// If `action_namespace` is non-`nil` then the effect is as if all
    /// actions mentioned in the `model` have their names prefixed with the
    /// namespace, plus a dot.  For example, if the action “quit” is
    /// mentioned and `action_namespace` is “app” then the effective action
    /// name is “app.quit”.
    /// 
    /// This function uses `GtkActionable` to define the action name and
    /// target values on the created menu items.  If you want to use an
    /// action group other than “app” and “win”, or if you want to use a
    /// `GtkMenuShell` outside of a `GtkApplicationWindow`, then you will need
    /// to attach your own action group to the widget hierarchy using
    /// `gtk_widget_insert_action_group()`.  As an example, if you created a
    /// group with a “quit” action and inserted it with the name “mygroup”
    /// then you would use the action name “mygroup.quit” in your
    /// `GMenuModel`.
    /// 
    /// For most cases you are probably better off using
    /// `gtk_menu_new_from_model()` or `gtk_menu_bar_new_from_model()` or just
    /// directly passing the `GMenuModel` to `gtk_application_set_app_menu()` or
    /// `gtk_application_set_menubar()`.
    @inlinable func bind(model: GIO.MenuModelRef? = nil, actionNamespace: UnsafePointer<gchar>? = nil, with separators: Bool) {
        gtk_menu_shell_bind_model(menu_shell_ptr, model?.menu_model_ptr, actionNamespace, gboolean((separators) ? 1 : 0))
    
    }
    /// Establishes a binding between a `GtkMenuShell` and a `GMenuModel`.
    /// 
    /// The contents of `shell` are removed and then refilled with menu items
    /// according to `model`.  When `model` changes, `shell` is updated.
    /// Calling this function twice on `shell` with different `model` will
    /// cause the first binding to be replaced with a binding to the new
    /// model. If `model` is `nil` then any previous binding is undone and
    /// all children are removed.
    /// 
    /// `with_separators` determines if toplevel items (eg: sections) have
    /// separators inserted between them.  This is typically desired for
    /// menus but doesn’t make sense for menubars.
    /// 
    /// If `action_namespace` is non-`nil` then the effect is as if all
    /// actions mentioned in the `model` have their names prefixed with the
    /// namespace, plus a dot.  For example, if the action “quit” is
    /// mentioned and `action_namespace` is “app” then the effective action
    /// name is “app.quit”.
    /// 
    /// This function uses `GtkActionable` to define the action name and
    /// target values on the created menu items.  If you want to use an
    /// action group other than “app” and “win”, or if you want to use a
    /// `GtkMenuShell` outside of a `GtkApplicationWindow`, then you will need
    /// to attach your own action group to the widget hierarchy using
    /// `gtk_widget_insert_action_group()`.  As an example, if you created a
    /// group with a “quit” action and inserted it with the name “mygroup”
    /// then you would use the action name “mygroup.quit” in your
    /// `GMenuModel`.
    /// 
    /// For most cases you are probably better off using
    /// `gtk_menu_new_from_model()` or `gtk_menu_bar_new_from_model()` or just
    /// directly passing the `GMenuModel` to `gtk_application_set_app_menu()` or
    /// `gtk_application_set_menubar()`.
    @inlinable func bind<MenuModelT: GIO.MenuModelProtocol>(model: MenuModelT?, actionNamespace: UnsafePointer<gchar>? = nil, with separators: Bool) {
        gtk_menu_shell_bind_model(menu_shell_ptr, model?.menu_model_ptr, actionNamespace, gboolean((separators) ? 1 : 0))
    
    }

    /// Cancels the selection within the menu shell.
    @inlinable func cancel() {
        gtk_menu_shell_cancel(menu_shell_ptr)
    
    }

    /// Deactivates the menu shell.
    /// 
    /// Typically this results in the menu shell being erased
    /// from the screen.
    @inlinable func deactivate() {
        gtk_menu_shell_deactivate(menu_shell_ptr)
    
    }

    /// Deselects the currently selected item from the menu shell,
    /// if any.
    @inlinable func deselect() {
        gtk_menu_shell_deselect(menu_shell_ptr)
    
    }

    /// Gets the parent menu shell.
    /// 
    /// The parent menu shell of a submenu is the `GtkMenu` or `GtkMenuBar`
    /// from which it was opened up.
    @inlinable func getParentShell() -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_menu_shell_get_parent_shell(menu_shell_ptr))) else { return nil }
        return rv
    }

    /// Gets the currently selected item.
    @inlinable func getSelectedItem() -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_menu_shell_get_selected_item(menu_shell_ptr))) else { return nil }
        return rv
    }

    /// Returns `true` if the menu shell will take the keyboard focus on popup.
    @inlinable func getTakeFocus() -> Bool {
        let rv = ((gtk_menu_shell_get_take_focus(menu_shell_ptr)) != 0)
        return rv
    }

    /// Adds a new `GtkMenuItem` to the menu shell’s item list
    /// at the position indicated by `position`.
    @inlinable func insert<WidgetT: WidgetProtocol>(child: WidgetT, position: Int) {
        gtk_menu_shell_insert(menu_shell_ptr, child.widget_ptr, gint(position))
    
    }

    /// Adds a new `GtkMenuItem` to the beginning of the menu shell's
    /// item list.
    @inlinable func prepend<WidgetT: WidgetProtocol>(child: WidgetT) {
        gtk_menu_shell_prepend(menu_shell_ptr, child.widget_ptr)
    
    }

    /// Select the first visible or selectable child of the menu shell;
    /// don’t select tearoff items unless the only item is a tearoff
    /// item.
    @inlinable func selectFirst(searchSensitive: Bool) {
        gtk_menu_shell_select_first(menu_shell_ptr, gboolean((searchSensitive) ? 1 : 0))
    
    }

    /// Selects the menu item from the menu shell.
    @inlinable func selectItem<WidgetT: WidgetProtocol>(menuItem: WidgetT) {
        gtk_menu_shell_select_item(menu_shell_ptr, menuItem.widget_ptr)
    
    }

    /// If `take_focus` is `true` (the default) the menu shell will take
    /// the keyboard focus so that it will receive all keyboard events
    /// which is needed to enable keyboard navigation in menus.
    /// 
    /// Setting `take_focus` to `false` is useful only for special applications
    /// like virtual keyboard implementations which should not take keyboard
    /// focus.
    /// 
    /// The `take_focus` state of a menu or menu bar is automatically
    /// propagated to submenus whenever a submenu is popped up, so you
    /// don’t have to worry about recursively setting it for your entire
    /// menu hierarchy. Only when programmatically picking a submenu and
    /// popping it up manually, the `take_focus` property of the submenu
    /// needs to be set explicitly.
    /// 
    /// Note that setting it to `false` has side-effects:
    /// 
    /// If the focus is in some other app, it keeps the focus and keynav in
    /// the menu doesn’t work. Consequently, keynav on the menu will only
    /// work if the focus is on some toplevel owned by the onscreen keyboard.
    /// 
    /// To avoid confusing the user, menus with `take_focus` set to `false`
    /// should not display mnemonics or accelerators, since it cannot be
    /// guaranteed that they will work.
    /// 
    /// See also `gdk_keyboard_grab()`
    @inlinable func set(takeFocus: Bool) {
        gtk_menu_shell_set_take_focus(menu_shell_ptr, gboolean((takeFocus) ? 1 : 0))
    
    }
    /// Gets the parent menu shell.
    /// 
    /// The parent menu shell of a submenu is the `GtkMenu` or `GtkMenuBar`
    /// from which it was opened up.
    @inlinable var parentShell: WidgetRef! {
        /// Gets the parent menu shell.
        /// 
        /// The parent menu shell of a submenu is the `GtkMenu` or `GtkMenuBar`
        /// from which it was opened up.
        get {
            guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_menu_shell_get_parent_shell(menu_shell_ptr))) else { return nil }
            return rv
        }
    }

    /// Gets the currently selected item.
    @inlinable var selectedItem: WidgetRef! {
        /// Gets the currently selected item.
        get {
            guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_menu_shell_get_selected_item(menu_shell_ptr))) else { return nil }
            return rv
        }
    }

    /// Returns `true` if the menu shell will take the keyboard focus on popup.
    @inlinable var takeFocus: Bool {
        /// Returns `true` if the menu shell will take the keyboard focus on popup.
        get {
            let rv = ((gtk_menu_shell_get_take_focus(menu_shell_ptr)) != 0)
            return rv
        }
        /// If `take_focus` is `true` (the default) the menu shell will take
        /// the keyboard focus so that it will receive all keyboard events
        /// which is needed to enable keyboard navigation in menus.
        /// 
        /// Setting `take_focus` to `false` is useful only for special applications
        /// like virtual keyboard implementations which should not take keyboard
        /// focus.
        /// 
        /// The `take_focus` state of a menu or menu bar is automatically
        /// propagated to submenus whenever a submenu is popped up, so you
        /// don’t have to worry about recursively setting it for your entire
        /// menu hierarchy. Only when programmatically picking a submenu and
        /// popping it up manually, the `take_focus` property of the submenu
        /// needs to be set explicitly.
        /// 
        /// Note that setting it to `false` has side-effects:
        /// 
        /// If the focus is in some other app, it keeps the focus and keynav in
        /// the menu doesn’t work. Consequently, keynav on the menu will only
        /// work if the focus is on some toplevel owned by the onscreen keyboard.
        /// 
        /// To avoid confusing the user, menus with `take_focus` set to `false`
        /// should not display mnemonics or accelerators, since it cannot be
        /// guaranteed that they will work.
        /// 
        /// See also `gdk_keyboard_grab()`
        nonmutating set {
            gtk_menu_shell_set_take_focus(menu_shell_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    @inlinable var container: GtkContainer {
        get {
            let rv = menu_shell_ptr.pointee.container
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - MenuShellAccessible Class

/// The `MenuShellAccessibleProtocol` protocol exposes the methods and properties of an underlying `GtkMenuShellAccessible` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MenuShellAccessible`.
/// Alternatively, use `MenuShellAccessibleRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol MenuShellAccessibleProtocol: ContainerAccessibleProtocol, Atk.SelectionProtocol {
        /// Untyped pointer to the underlying `GtkMenuShellAccessible` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkMenuShellAccessible` instance.
    var menu_shell_accessible_ptr: UnsafeMutablePointer<GtkMenuShellAccessible>! { get }

}

/// The `MenuShellAccessibleRef` type acts as a lightweight Swift reference to an underlying `GtkMenuShellAccessible` instance.
/// It exposes methods that can operate on this data type through `MenuShellAccessibleProtocol` conformance.
/// Use `MenuShellAccessibleRef` only as an `unowned` reference to an existing `GtkMenuShellAccessible` instance.
///

public struct MenuShellAccessibleRef: MenuShellAccessibleProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkMenuShellAccessible` instance.
    /// For type-safe access, use the generated, typed pointer `menu_shell_accessible_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MenuShellAccessibleRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkMenuShellAccessible>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkMenuShellAccessible>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkMenuShellAccessible>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkMenuShellAccessible>?) {
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

    /// Reference intialiser for a related type that implements `MenuShellAccessibleProtocol`
    @inlinable init<T: MenuShellAccessibleProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: MenuShellAccessibleProtocol>(_ other: T) -> MenuShellAccessibleRef { MenuShellAccessibleRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuShellAccessibleProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuShellAccessibleProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuShellAccessibleProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuShellAccessibleProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuShellAccessibleProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `MenuShellAccessible` type acts as a reference-counted owner of an underlying `GtkMenuShellAccessible` instance.
/// It provides the methods that can operate on this data type through `MenuShellAccessibleProtocol` conformance.
/// Use `MenuShellAccessible` as a strong reference or owner of a `GtkMenuShellAccessible` instance.
///

open class MenuShellAccessible: ContainerAccessible, MenuShellAccessibleProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuShellAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkMenuShellAccessible>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuShellAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkMenuShellAccessible>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuShellAccessible` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuShellAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuShellAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkMenuShellAccessible>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuShellAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkMenuShellAccessible>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkMenuShellAccessible`.
    /// i.e., ownership is transferred to the `MenuShellAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkMenuShellAccessible>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `MenuShellAccessibleProtocol`
    /// Will retain `GtkMenuShellAccessible`.
    /// - Parameter other: an instance of a related type that implements `MenuShellAccessibleProtocol`
    @inlinable public init<T: MenuShellAccessibleProtocol>(menuShellAccessible other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuShellAccessibleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuShellAccessibleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuShellAccessibleProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuShellAccessibleProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuShellAccessibleProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuShellAccessibleProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuShellAccessibleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuShellAccessibleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum MenuShellAccessiblePropertyName: String, PropertyNameProtocol {
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

public extension MenuShellAccessibleProtocol {
    /// Bind a `MenuShellAccessiblePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: MenuShellAccessiblePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a MenuShellAccessible property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: MenuShellAccessiblePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a MenuShellAccessible property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: MenuShellAccessiblePropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: MenuShellAccessible has no signals// MARK: MenuShellAccessible Class: MenuShellAccessibleProtocol extension (methods and fields)
public extension MenuShellAccessibleProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMenuShellAccessible` instance.
    @inlinable var menu_shell_accessible_ptr: UnsafeMutablePointer<GtkMenuShellAccessible>! { return ptr?.assumingMemoryBound(to: GtkMenuShellAccessible.self) }


    @inlinable var parent: GtkContainerAccessible {
        get {
            let rv = menu_shell_accessible_ptr.pointee.parent
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - MenuToolButton Class

/// The `MenuToolButtonProtocol` protocol exposes the methods and properties of an underlying `GtkMenuToolButton` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MenuToolButton`.
/// Alternatively, use `MenuToolButtonRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GtkMenuToolButton` is a `GtkToolItem` that contains a button and
/// a small additional button with an arrow. When clicked, the arrow
/// button pops up a dropdown menu.
/// 
/// Use `gtk_menu_tool_button_new()` to create a new
/// `GtkMenuToolButton`.
/// 
/// # GtkMenuToolButton as GtkBuildable
/// 
/// The GtkMenuToolButton implementation of the GtkBuildable interface
/// supports adding a menu by specifying “menu” as the “type” attribute
/// of a <child> element.
/// 
/// An example for a UI definition fragment with menus:
/// ```
/// <object class="GtkMenuToolButton">
///   <child type="menu">
///     <object class="GtkMenu"/>
///   </child>
/// </object>
/// ```
/// 
public protocol MenuToolButtonProtocol: ToolButtonProtocol {
        /// Untyped pointer to the underlying `GtkMenuToolButton` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkMenuToolButton` instance.
    var menu_tool_button_ptr: UnsafeMutablePointer<GtkMenuToolButton>! { get }

}

/// The `MenuToolButtonRef` type acts as a lightweight Swift reference to an underlying `GtkMenuToolButton` instance.
/// It exposes methods that can operate on this data type through `MenuToolButtonProtocol` conformance.
/// Use `MenuToolButtonRef` only as an `unowned` reference to an existing `GtkMenuToolButton` instance.
///
/// A `GtkMenuToolButton` is a `GtkToolItem` that contains a button and
/// a small additional button with an arrow. When clicked, the arrow
/// button pops up a dropdown menu.
/// 
/// Use `gtk_menu_tool_button_new()` to create a new
/// `GtkMenuToolButton`.
/// 
/// # GtkMenuToolButton as GtkBuildable
/// 
/// The GtkMenuToolButton implementation of the GtkBuildable interface
/// supports adding a menu by specifying “menu” as the “type” attribute
/// of a <child> element.
/// 
/// An example for a UI definition fragment with menus:
/// ```
/// <object class="GtkMenuToolButton">
///   <child type="menu">
///     <object class="GtkMenu"/>
///   </child>
/// </object>
/// ```
/// 
public struct MenuToolButtonRef: MenuToolButtonProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkMenuToolButton` instance.
    /// For type-safe access, use the generated, typed pointer `menu_tool_button_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MenuToolButtonRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkMenuToolButton>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkMenuToolButton>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkMenuToolButton>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkMenuToolButton>?) {
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

    /// Reference intialiser for a related type that implements `MenuToolButtonProtocol`
    @inlinable init<T: MenuToolButtonProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: MenuToolButtonProtocol>(_ other: T) -> MenuToolButtonRef { MenuToolButtonRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuToolButtonProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuToolButtonProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuToolButtonProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuToolButtonProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuToolButtonProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkMenuToolButton` using `icon_widget` as icon and
    /// `label` as label.
    @inlinable init<WidgetT: WidgetProtocol>( iconWidget: WidgetT?, label: UnsafePointer<gchar>? = nil) {
        let rv = gtk_menu_tool_button_new(iconWidget?.widget_ptr, label)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new `GtkMenuToolButton`.
    /// The new `GtkMenuToolButton` will contain an icon and label from
    /// the stock item indicated by `stock_id`.
    ///
    /// **new_from_stock is deprecated:**
    /// Use gtk_menu_tool_button_new() instead.
    @available(*, deprecated)
    @inlinable init(stock stockID: UnsafePointer<gchar>!) {
        let rv = gtk_menu_tool_button_new_from_stock(stockID)
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a new `GtkMenuToolButton`.
    /// The new `GtkMenuToolButton` will contain an icon and label from
    /// the stock item indicated by `stock_id`.
    ///
    /// **new_from_stock is deprecated:**
    /// Use gtk_menu_tool_button_new() instead.
    @available(*, deprecated)
    @inlinable static func menuToolButtonNewFrom(stock stockID: UnsafePointer<gchar>!) -> ToolItemRef! {
        guard let rv = ToolItemRef(gconstpointer: gconstpointer(gtk_menu_tool_button_new_from_stock(stockID))) else { return nil }
        return rv
    }
}

/// The `MenuToolButton` type acts as a reference-counted owner of an underlying `GtkMenuToolButton` instance.
/// It provides the methods that can operate on this data type through `MenuToolButtonProtocol` conformance.
/// Use `MenuToolButton` as a strong reference or owner of a `GtkMenuToolButton` instance.
///
/// A `GtkMenuToolButton` is a `GtkToolItem` that contains a button and
/// a small additional button with an arrow. When clicked, the arrow
/// button pops up a dropdown menu.
/// 
/// Use `gtk_menu_tool_button_new()` to create a new
/// `GtkMenuToolButton`.
/// 
/// # GtkMenuToolButton as GtkBuildable
/// 
/// The GtkMenuToolButton implementation of the GtkBuildable interface
/// supports adding a menu by specifying “menu” as the “type” attribute
/// of a <child> element.
/// 
/// An example for a UI definition fragment with menus:
/// ```
/// <object class="GtkMenuToolButton">
///   <child type="menu">
///     <object class="GtkMenu"/>
///   </child>
/// </object>
/// ```
/// 
open class MenuToolButton: ToolButton, MenuToolButtonProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuToolButton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkMenuToolButton>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuToolButton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkMenuToolButton>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuToolButton` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuToolButton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuToolButton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkMenuToolButton>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MenuToolButton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkMenuToolButton>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkMenuToolButton`.
    /// i.e., ownership is transferred to the `MenuToolButton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkMenuToolButton>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `MenuToolButtonProtocol`
    /// Will retain `GtkMenuToolButton`.
    /// - Parameter other: an instance of a related type that implements `MenuToolButtonProtocol`
    @inlinable public init<T: MenuToolButtonProtocol>(menuToolButton other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuToolButtonProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuToolButtonProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuToolButtonProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuToolButtonProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuToolButtonProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuToolButtonProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuToolButtonProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuToolButtonProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkMenuToolButton` using `icon_widget` as icon and
    /// `label` as label.
    @inlinable override public init<WidgetT: WidgetProtocol>( iconWidget: WidgetT?, label: UnsafePointer<gchar>? = nil) {
        let rv = gtk_menu_tool_button_new(iconWidget?.widget_ptr, label)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new `GtkMenuToolButton`.
    /// The new `GtkMenuToolButton` will contain an icon and label from
    /// the stock item indicated by `stock_id`.
    ///
    /// **new_from_stock is deprecated:**
    /// Use gtk_menu_tool_button_new() instead.
    @available(*, deprecated)
    @inlinable override public init(stock stockID: UnsafePointer<gchar>!) {
        let rv = gtk_menu_tool_button_new_from_stock(stockID)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new `GtkMenuToolButton`.
    /// The new `GtkMenuToolButton` will contain an icon and label from
    /// the stock item indicated by `stock_id`.
    ///
    /// **new_from_stock is deprecated:**
    /// Use gtk_menu_tool_button_new() instead.
    @available(*, deprecated)
    @inlinable public static func menuToolButtonNewFrom(stock stockID: UnsafePointer<gchar>!) -> ToolItem! {
        guard let rv = ToolItem(gconstpointer: gconstpointer(gtk_menu_tool_button_new_from_stock(stockID))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

}

public enum MenuToolButtonPropertyName: String, PropertyNameProtocol {
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
    /// The name of the themed icon displayed on the item.
    /// This property only has an effect if not overridden by
    /// `GtkToolButton:label`-widget, `GtkToolButton:icon`-widget or
    /// `GtkToolButton:stock`-id properties.
    case iconName = "icon-name"
    case iconWidget = "icon-widget"
    case isFocus = "is-focus"
    case isImportant = "is-important"
    case label = "label"
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
    case menu = "menu"
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

    ///
    /// **stock-id is deprecated:**
    /// Use #GtkToolButton:icon-name instead.
    case stockID = "stock-id"
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
    case useUnderline = "use-underline"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case valign = "valign"
    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    case vexpand = "vexpand"
    /// Whether to use the `GtkWidget:vexpand` property. See `gtk_widget_get_vexpand_set()`.
    case vexpandSet = "vexpand-set"
    case visible = "visible"
    case visibleHorizontal = "visible-horizontal"
    case visibleVertical = "visible-vertical"
    case widthRequest = "width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case window = "window"
}

public extension MenuToolButtonProtocol {
    /// Bind a `MenuToolButtonPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: MenuToolButtonPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a MenuToolButton property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: MenuToolButtonPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a MenuToolButton property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: MenuToolButtonPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: Signals of MenuToolButton
public extension MenuToolButtonProtocol {
    /// The `show`-menu signal is emitted before the menu is shown.
    /// 
    /// It can be used to populate the menu on demand, using
    /// `gtk_menu_tool_button_set_menu()`.
    /// 
    /// Note that even if you populate the menu dynamically in this way,
    /// you must set an empty menu on the `GtkMenuToolButton` beforehand,
    /// since the arrow is made insensitive if the menu is not set.
    /// - Note: Representation of signal named `show-menu`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onShowMenu(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: MenuToolButtonRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<MenuToolButtonRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(MenuToolButtonRef(raw: unownedSelf))
            return output
        }
        return signalConnectData(
            detailedSignal: "show-menu", 
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
    /// - Note: Representation of signal named `notify::menu`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyMenu(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: MenuToolButtonRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<MenuToolButtonRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(MenuToolButtonRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::menu", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
}

// MARK: MenuToolButton Class: MenuToolButtonProtocol extension (methods and fields)
public extension MenuToolButtonProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMenuToolButton` instance.
    @inlinable var menu_tool_button_ptr: UnsafeMutablePointer<GtkMenuToolButton>! { return ptr?.assumingMemoryBound(to: GtkMenuToolButton.self) }

    /// Gets the `GtkMenu` associated with `GtkMenuToolButton`.
    @inlinable func getMenu() -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_menu_tool_button_get_menu(menu_tool_button_ptr))) else { return nil }
        return rv
    }

    /// Sets the tooltip markup text to be used as tooltip for the arrow button
    /// which pops up the menu.  See `gtk_tool_item_set_tooltip_text()` for setting
    /// a tooltip on the whole `GtkMenuToolButton`.
    @inlinable func setArrowTooltip(markup: UnsafePointer<gchar>!) {
        gtk_menu_tool_button_set_arrow_tooltip_markup(menu_tool_button_ptr, markup)
    
    }

    /// Sets the tooltip text to be used as tooltip for the arrow button which
    /// pops up the menu.  See `gtk_tool_item_set_tooltip_text()` for setting a tooltip
    /// on the whole `GtkMenuToolButton`.
    @inlinable func setArrowTooltip(text: UnsafePointer<gchar>!) {
        gtk_menu_tool_button_set_arrow_tooltip_text(menu_tool_button_ptr, text)
    
    }

    /// Sets the `GtkMenu` that is popped up when the user clicks on the arrow.
    /// If `menu` is NULL, the arrow button becomes insensitive.
    @inlinable func set<WidgetT: WidgetProtocol>(menu: WidgetT) {
        gtk_menu_tool_button_set_menu(menu_tool_button_ptr, menu.widget_ptr)
    
    }
    @inlinable var menu: WidgetRef! {
        /// Gets the `GtkMenu` associated with `GtkMenuToolButton`.
        get {
            guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_menu_tool_button_get_menu(menu_tool_button_ptr))) else { return nil }
            return rv
        }
        /// Sets the `GtkMenu` that is popped up when the user clicks on the arrow.
        /// If `menu` is NULL, the arrow button becomes insensitive.
        nonmutating set {
            gtk_menu_tool_button_set_menu(menu_tool_button_ptr, UnsafeMutablePointer<GtkWidget>(newValue?.widget_ptr))
        }
    }

    @inlinable var parent: GtkToolButton {
        get {
            let rv = menu_tool_button_ptr.pointee.parent
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - MessageDialog Class

/// The `MessageDialogProtocol` protocol exposes the methods and properties of an underlying `GtkMessageDialog` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MessageDialog`.
/// Alternatively, use `MessageDialogRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkMessageDialog` presents a dialog with some message text. It’s simply a
/// convenience widget; you could construct the equivalent of `GtkMessageDialog`
/// from `GtkDialog` without too much effort, but `GtkMessageDialog` saves typing.
/// 
/// One difference from `GtkDialog` is that `GtkMessageDialog` sets the
/// `GtkWindow:skip`-taskbar-hint property to `true`, so that the dialog is hidden
/// from the taskbar by default.
/// 
/// The easiest way to do a modal message dialog is to use `gtk_dialog_run()`, though
/// you can also pass in the `GTK_DIALOG_MODAL` flag, `gtk_dialog_run()` automatically
/// makes the dialog modal and waits for the user to respond to it. `gtk_dialog_run()`
/// returns when any dialog button is clicked.
/// 
/// An example for using a modal dialog:
/// (C Language Example):
/// ```C
///  GtkDialogFlags flags = GTK_DIALOG_DESTROY_WITH_PARENT;
///  dialog = gtk_message_dialog_new (parent_window,
///                                   flags,
///                                   GTK_MESSAGE_ERROR,
///                                   GTK_BUTTONS_CLOSE,
///                                   "Error reading “%s”: %s",
///                                   filename,
///                                   g_strerror (errno));
///  gtk_dialog_run (GTK_DIALOG (dialog));
///  gtk_widget_destroy (dialog);
/// ```
/// 
/// You might do a non-modal `GtkMessageDialog` as follows:
/// 
/// An example for a non-modal dialog:
/// (C Language Example):
/// ```C
///  GtkDialogFlags flags = GTK_DIALOG_DESTROY_WITH_PARENT;
///  dialog = gtk_message_dialog_new (parent_window,
///                                   flags,
///                                   GTK_MESSAGE_ERROR,
///                                   GTK_BUTTONS_CLOSE,
///                                   "Error reading “%s”: %s",
///                                   filename,
///                                   g_strerror (errno));
/// 
///  // Destroy the dialog when the user responds to it
///  // (e.g. clicks a button)
/// 
///  g_signal_connect_swapped (dialog, "response",
///                            G_CALLBACK (gtk_widget_destroy),
///                            dialog);
/// ```
/// 
/// # GtkMessageDialog as GtkBuildable
/// 
/// The GtkMessageDialog implementation of the GtkBuildable interface exposes
/// the message area as an internal child with the name “message_area”.
public protocol MessageDialogProtocol: DialogProtocol {
        /// Untyped pointer to the underlying `GtkMessageDialog` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkMessageDialog` instance.
    var message_dialog_ptr: UnsafeMutablePointer<GtkMessageDialog>! { get }

}

/// The `MessageDialogRef` type acts as a lightweight Swift reference to an underlying `GtkMessageDialog` instance.
/// It exposes methods that can operate on this data type through `MessageDialogProtocol` conformance.
/// Use `MessageDialogRef` only as an `unowned` reference to an existing `GtkMessageDialog` instance.
///
/// `GtkMessageDialog` presents a dialog with some message text. It’s simply a
/// convenience widget; you could construct the equivalent of `GtkMessageDialog`
/// from `GtkDialog` without too much effort, but `GtkMessageDialog` saves typing.
/// 
/// One difference from `GtkDialog` is that `GtkMessageDialog` sets the
/// `GtkWindow:skip`-taskbar-hint property to `true`, so that the dialog is hidden
/// from the taskbar by default.
/// 
/// The easiest way to do a modal message dialog is to use `gtk_dialog_run()`, though
/// you can also pass in the `GTK_DIALOG_MODAL` flag, `gtk_dialog_run()` automatically
/// makes the dialog modal and waits for the user to respond to it. `gtk_dialog_run()`
/// returns when any dialog button is clicked.
/// 
/// An example for using a modal dialog:
/// (C Language Example):
/// ```C
///  GtkDialogFlags flags = GTK_DIALOG_DESTROY_WITH_PARENT;
///  dialog = gtk_message_dialog_new (parent_window,
///                                   flags,
///                                   GTK_MESSAGE_ERROR,
///                                   GTK_BUTTONS_CLOSE,
///                                   "Error reading “%s”: %s",
///                                   filename,
///                                   g_strerror (errno));
///  gtk_dialog_run (GTK_DIALOG (dialog));
///  gtk_widget_destroy (dialog);
/// ```
/// 
/// You might do a non-modal `GtkMessageDialog` as follows:
/// 
/// An example for a non-modal dialog:
/// (C Language Example):
/// ```C
///  GtkDialogFlags flags = GTK_DIALOG_DESTROY_WITH_PARENT;
///  dialog = gtk_message_dialog_new (parent_window,
///                                   flags,
///                                   GTK_MESSAGE_ERROR,
///                                   GTK_BUTTONS_CLOSE,
///                                   "Error reading “%s”: %s",
///                                   filename,
///                                   g_strerror (errno));
/// 
///  // Destroy the dialog when the user responds to it
///  // (e.g. clicks a button)
/// 
///  g_signal_connect_swapped (dialog, "response",
///                            G_CALLBACK (gtk_widget_destroy),
///                            dialog);
/// ```
/// 
/// # GtkMessageDialog as GtkBuildable
/// 
/// The GtkMessageDialog implementation of the GtkBuildable interface exposes
/// the message area as an internal child with the name “message_area”.
public struct MessageDialogRef: MessageDialogProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkMessageDialog` instance.
    /// For type-safe access, use the generated, typed pointer `message_dialog_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MessageDialogRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkMessageDialog>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkMessageDialog>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkMessageDialog>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkMessageDialog>?) {
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

    /// Reference intialiser for a related type that implements `MessageDialogProtocol`
    @inlinable init<T: MessageDialogProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: MessageDialogProtocol>(_ other: T) -> MessageDialogRef { MessageDialogRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MessageDialogProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MessageDialogProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MessageDialogProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MessageDialogProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MessageDialogProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    
    // *** new() is not available because it has a varargs (...) parameter!



    // *** newWithMarkup() is not available because it has a varargs (...) parameter!


    // *** newWithMarkup() is not available because it has a varargs (...) parameter!

}

/// The `MessageDialog` type acts as a reference-counted owner of an underlying `GtkMessageDialog` instance.
/// It provides the methods that can operate on this data type through `MessageDialogProtocol` conformance.
/// Use `MessageDialog` as a strong reference or owner of a `GtkMessageDialog` instance.
///
/// `GtkMessageDialog` presents a dialog with some message text. It’s simply a
/// convenience widget; you could construct the equivalent of `GtkMessageDialog`
/// from `GtkDialog` without too much effort, but `GtkMessageDialog` saves typing.
/// 
/// One difference from `GtkDialog` is that `GtkMessageDialog` sets the
/// `GtkWindow:skip`-taskbar-hint property to `true`, so that the dialog is hidden
/// from the taskbar by default.
/// 
/// The easiest way to do a modal message dialog is to use `gtk_dialog_run()`, though
/// you can also pass in the `GTK_DIALOG_MODAL` flag, `gtk_dialog_run()` automatically
/// makes the dialog modal and waits for the user to respond to it. `gtk_dialog_run()`
/// returns when any dialog button is clicked.
/// 
/// An example for using a modal dialog:
/// (C Language Example):
/// ```C
///  GtkDialogFlags flags = GTK_DIALOG_DESTROY_WITH_PARENT;
///  dialog = gtk_message_dialog_new (parent_window,
///                                   flags,
///                                   GTK_MESSAGE_ERROR,
///                                   GTK_BUTTONS_CLOSE,
///                                   "Error reading “%s”: %s",
///                                   filename,
///                                   g_strerror (errno));
///  gtk_dialog_run (GTK_DIALOG (dialog));
///  gtk_widget_destroy (dialog);
/// ```
/// 
/// You might do a non-modal `GtkMessageDialog` as follows:
/// 
/// An example for a non-modal dialog:
/// (C Language Example):
/// ```C
///  GtkDialogFlags flags = GTK_DIALOG_DESTROY_WITH_PARENT;
///  dialog = gtk_message_dialog_new (parent_window,
///                                   flags,
///                                   GTK_MESSAGE_ERROR,
///                                   GTK_BUTTONS_CLOSE,
///                                   "Error reading “%s”: %s",
///                                   filename,
///                                   g_strerror (errno));
/// 
///  // Destroy the dialog when the user responds to it
///  // (e.g. clicks a button)
/// 
///  g_signal_connect_swapped (dialog, "response",
///                            G_CALLBACK (gtk_widget_destroy),
///                            dialog);
/// ```
/// 
/// # GtkMessageDialog as GtkBuildable
/// 
/// The GtkMessageDialog implementation of the GtkBuildable interface exposes
/// the message area as an internal child with the name “message_area”.
open class MessageDialog: Dialog, MessageDialogProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MessageDialog` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkMessageDialog>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MessageDialog` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkMessageDialog>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MessageDialog` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MessageDialog` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MessageDialog` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkMessageDialog>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MessageDialog` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkMessageDialog>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkMessageDialog`.
    /// i.e., ownership is transferred to the `MessageDialog` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkMessageDialog>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `MessageDialogProtocol`
    /// Will retain `GtkMessageDialog`.
    /// - Parameter other: an instance of a related type that implements `MessageDialogProtocol`
    @inlinable public init<T: MessageDialogProtocol>(messageDialog other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MessageDialogProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MessageDialogProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MessageDialogProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MessageDialogProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MessageDialogProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MessageDialogProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MessageDialogProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MessageDialogProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }


    // *** new() is not available because it has a varargs (...) parameter!



    // *** newWithMarkup() is not available because it has a varargs (...) parameter!



    // *** newWithMarkup() is not available because it has a varargs (...) parameter!


}

public enum MessageDialogPropertyName: String, PropertyNameProtocol {
    /// Whether the window should receive the input focus.
    case acceptFocus = "accept-focus"
    case appPaintable = "app-paintable"
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
    /// The widget to which this window is attached.
    /// See `gtk_window_set_attached_to()`.
    /// 
    /// Examples of places where specifying this relation is useful are
    /// for instance a `GtkMenu` created by a `GtkComboBox`, a completion
    /// popup window created by `GtkEntry` or a typeahead search entry
    /// created by `GtkTreeView`.
    case attachedTo = "attached-to"
    case borderWidth = "border-width"
    case buttons = "buttons"
    case canDefault = "can-default"
    case canFocus = "can-focus"
    case child = "child"
    case compositeChild = "composite-child"
    /// Whether the window should be decorated by the window manager.
    case decorated = "decorated"
    case defaultHeight = "default-height"
    case defaultWidth = "default-width"
    /// Whether the window frame should have a close button.
    case deletable = "deletable"
    case destroyWithParent = "destroy-with-parent"
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
    /// Whether the window should receive the input focus when mapped.
    case focusOnMap = "focus-on-map"
    /// Whether 'focus rectangles' are currently visible in this window.
    /// 
    /// This property is maintained by GTK+ based on user input
    /// and should not be set by applications.
    case focusVisible = "focus-visible"
    /// The window gravity of the window. See `gtk_window_move()` and `GdkGravity` for
    /// more details about window gravity.
    case gravity = "gravity"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case halign = "halign"
    case hasDefault = "has-default"
    case hasFocus = "has-focus"
    /// Whether the window has a corner resize grip.
    /// 
    /// Note that the resize grip is only shown if the window is
    /// actually resizable and not maximized. Use
    /// `GtkWindow:resize`-grip-visible to find out if the resize
    /// grip is currently shown.
    ///
    /// **has-resize-grip is deprecated:**
    /// Resize grips have been removed.
    case hasResizeGrip = "has-resize-grip"
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
    case hasToplevelFocus = "has-toplevel-focus"
    case heightRequest = "height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case hexpand = "hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case hexpandSet = "hexpand-set"
    /// Whether the titlebar should be hidden during maximization.
    case hideTitlebarWhenMaximized = "hide-titlebar-when-maximized"
    case icon = "icon"
    /// The :icon-name property specifies the name of the themed icon to
    /// use as the window icon. See `GtkIconTheme` for more details.
    case iconName = "icon-name"
    /// The image for this dialog.
    ///
    /// **image is deprecated:**
    /// Use #GtkDialog to create dialogs with images
    case image = "image"
    case isActive = "is-active"
    case isFocus = "is-focus"
    case isMaximized = "is-maximized"
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
    /// The `GtkBox` that corresponds to the message area of this dialog.  See
    /// `gtk_message_dialog_get_message_area()` for a detailed description of this
    /// area.
    case messageArea = "message-area"
    /// The type of the message.
    case messageType = "message-type"
    /// Whether mnemonics are currently visible in this window.
    /// 
    /// This property is maintained by GTK+ based on user input,
    /// and should not be set by applications.
    case mnemonicsVisible = "mnemonics-visible"
    case modal = "modal"
    case name = "name"
    case noShowAll = "no-show-all"
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case opacity = "opacity"
    case parent = "parent"
    case receivesDefault = "receives-default"
    case resizable = "resizable"
    /// Whether a corner resize grip is currently shown.
    ///
    /// **resize-grip-visible is deprecated:**
    /// Resize grips have been removed.
    case resizeGripVisible = "resize-grip-visible"
    case resizeMode = "resize-mode"
    case role = "role"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case screen = "screen"
    /// The secondary text of the message dialog.
    case secondaryText = "secondary-text"
    /// `true` if the secondary text of the dialog includes Pango markup.
    /// See `pango_parse_markup()`.
    case secondaryUseMarkup = "secondary-use-markup"
    case sensitive = "sensitive"
    case skipPagerHint = "skip-pager-hint"
    case skipTaskbarHint = "skip-taskbar-hint"
    /// The :startup-id is a write-only property for setting window's
    /// startup notification identifier. See `gtk_window_set_startup_id()`
    /// for more details.
    case startupID = "startup-id"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case style = "style"
    /// The primary text of the message dialog. If the dialog has
    /// a secondary text, this will appear as the title.
    case text = "text"
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
    case type = "type"
    case typeHint = "type-hint"
    case urgencyHint = "urgency-hint"
    /// `true` if the dialog uses a `GtkHeaderBar` for action buttons
    /// instead of the action-area.
    /// 
    /// For technical reasons, this property is declared as an integer
    /// property, but you should only set it to `true` or `false`.
    case useHeaderBar = "use-header-bar"
    /// `true` if the primary text of the dialog includes Pango markup.
    /// See `pango_parse_markup()`.
    case useMarkup = "use-markup"
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
    case windowPosition = "window-position"
}

public extension MessageDialogProtocol {
    /// Bind a `MessageDialogPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: MessageDialogPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a MessageDialog property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: MessageDialogPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a MessageDialog property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: MessageDialogPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: MessageDialog has no signals// MARK: MessageDialog Class: MessageDialogProtocol extension (methods and fields)
public extension MessageDialogProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMessageDialog` instance.
    @inlinable var message_dialog_ptr: UnsafeMutablePointer<GtkMessageDialog>! { return ptr?.assumingMemoryBound(to: GtkMessageDialog.self) }


    // *** formatSecondaryMarkup() is not available because it has a varargs (...) parameter!



    // *** formatSecondaryText() is not available because it has a varargs (...) parameter!


    /// Gets the dialog’s image.
    ///
    /// **get_image is deprecated:**
    /// Use #GtkDialog for dialogs with images
    @available(*, deprecated)
    @inlinable func getImage() -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_message_dialog_get_image(message_dialog_ptr))) else { return nil }
        return rv
    }

    /// Returns the message area of the dialog. This is the box where the
    /// dialog’s primary and secondary labels are packed. You can add your
    /// own extra content to that box and it will appear below those labels.
    /// See `gtk_dialog_get_content_area()` for the corresponding
    /// function in the parent `GtkDialog`.
    @inlinable func getMessageArea() -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_message_dialog_get_message_area(message_dialog_ptr))) else { return nil }
        return rv
    }

    /// Sets the dialog’s image to `image`.
    ///
    /// **set_image is deprecated:**
    /// Use #GtkDialog to create dialogs with images
    @available(*, deprecated)
    @inlinable func set<WidgetT: WidgetProtocol>(image: WidgetT) {
        gtk_message_dialog_set_image(message_dialog_ptr, image.widget_ptr)
    
    }

    /// Sets the text of the message dialog to be `str`, which is marked
    /// up with the [Pango text markup language](#PangoMarkupFormat).
    @inlinable func set(markup str: UnsafePointer<gchar>!) {
        gtk_message_dialog_set_markup(message_dialog_ptr, str)
    
    }
    /// The image for this dialog.
    ///
    /// **image is deprecated:**
    /// Use #GtkDialog to create dialogs with images
    @inlinable var image: WidgetRef! {
        /// Gets the dialog’s image.
        ///
        /// **get_image is deprecated:**
        /// Use #GtkDialog for dialogs with images
        @available(*, deprecated)
    get {
            guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_message_dialog_get_image(message_dialog_ptr))) else { return nil }
            return rv
        }
        /// Sets the dialog’s image to `image`.
        ///
        /// **set_image is deprecated:**
        /// Use #GtkDialog to create dialogs with images
        @available(*, deprecated)
    nonmutating set {
            gtk_message_dialog_set_image(message_dialog_ptr, UnsafeMutablePointer<GtkWidget>(newValue?.widget_ptr))
        }
    }

    /// Returns the message area of the dialog. This is the box where the
    /// dialog’s primary and secondary labels are packed. You can add your
    /// own extra content to that box and it will appear below those labels.
    /// See `gtk_dialog_get_content_area()` for the corresponding
    /// function in the parent `GtkDialog`.
    @inlinable var messageArea: WidgetRef! {
        /// Returns the message area of the dialog. This is the box where the
        /// dialog’s primary and secondary labels are packed. You can add your
        /// own extra content to that box and it will appear below those labels.
        /// See `gtk_dialog_get_content_area()` for the corresponding
        /// function in the parent `GtkDialog`.
        get {
            guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_message_dialog_get_message_area(message_dialog_ptr))) else { return nil }
            return rv
        }
    }

    @inlinable var parentInstance: GtkDialog {
        get {
            let rv = message_dialog_ptr.pointee.parent_instance
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - Misc Class

/// The `MiscProtocol` protocol exposes the methods and properties of an underlying `GtkMisc` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Misc`.
/// Alternatively, use `MiscRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GtkMisc` widget is an abstract widget which is not useful itself, but
/// is used to derive subclasses which have alignment and padding attributes.
/// 
/// The horizontal and vertical padding attributes allows extra space to be
/// added around the widget.
/// 
/// The horizontal and vertical alignment attributes enable the widget to be
/// positioned within its allocated area. Note that if the widget is added to
/// a container in such a way that it expands automatically to fill its
/// allocated area, the alignment settings will not alter the widget's position.
/// 
/// Note that the desired effect can in most cases be achieved by using the
/// `GtkWidget:halign`, `GtkWidget:valign` and `GtkWidget:margin` properties
/// on the child widget, so GtkMisc should not be used in new code. To reflect
/// this fact, all `GtkMisc` API has been deprecated.
public protocol MiscProtocol: WidgetProtocol {
        /// Untyped pointer to the underlying `GtkMisc` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkMisc` instance.
    var misc_ptr: UnsafeMutablePointer<GtkMisc>! { get }

}

/// The `MiscRef` type acts as a lightweight Swift reference to an underlying `GtkMisc` instance.
/// It exposes methods that can operate on this data type through `MiscProtocol` conformance.
/// Use `MiscRef` only as an `unowned` reference to an existing `GtkMisc` instance.
///
/// The `GtkMisc` widget is an abstract widget which is not useful itself, but
/// is used to derive subclasses which have alignment and padding attributes.
/// 
/// The horizontal and vertical padding attributes allows extra space to be
/// added around the widget.
/// 
/// The horizontal and vertical alignment attributes enable the widget to be
/// positioned within its allocated area. Note that if the widget is added to
/// a container in such a way that it expands automatically to fill its
/// allocated area, the alignment settings will not alter the widget's position.
/// 
/// Note that the desired effect can in most cases be achieved by using the
/// `GtkWidget:halign`, `GtkWidget:valign` and `GtkWidget:margin` properties
/// on the child widget, so GtkMisc should not be used in new code. To reflect
/// this fact, all `GtkMisc` API has been deprecated.
public struct MiscRef: MiscProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkMisc` instance.
    /// For type-safe access, use the generated, typed pointer `misc_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MiscRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkMisc>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkMisc>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkMisc>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkMisc>?) {
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

    /// Reference intialiser for a related type that implements `MiscProtocol`
    @inlinable init<T: MiscProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: MiscProtocol>(_ other: T) -> MiscRef { MiscRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MiscProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MiscProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MiscProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MiscProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MiscProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Misc` type acts as a reference-counted owner of an underlying `GtkMisc` instance.
/// It provides the methods that can operate on this data type through `MiscProtocol` conformance.
/// Use `Misc` as a strong reference or owner of a `GtkMisc` instance.
///
/// The `GtkMisc` widget is an abstract widget which is not useful itself, but
/// is used to derive subclasses which have alignment and padding attributes.
/// 
/// The horizontal and vertical padding attributes allows extra space to be
/// added around the widget.
/// 
/// The horizontal and vertical alignment attributes enable the widget to be
/// positioned within its allocated area. Note that if the widget is added to
/// a container in such a way that it expands automatically to fill its
/// allocated area, the alignment settings will not alter the widget's position.
/// 
/// Note that the desired effect can in most cases be achieved by using the
/// `GtkWidget:halign`, `GtkWidget:valign` and `GtkWidget:margin` properties
/// on the child widget, so GtkMisc should not be used in new code. To reflect
/// this fact, all `GtkMisc` API has been deprecated.
open class Misc: Widget, MiscProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Misc` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkMisc>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Misc` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkMisc>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Misc` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Misc` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Misc` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkMisc>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Misc` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkMisc>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkMisc`.
    /// i.e., ownership is transferred to the `Misc` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkMisc>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `MiscProtocol`
    /// Will retain `GtkMisc`.
    /// - Parameter other: an instance of a related type that implements `MiscProtocol`
    @inlinable public init<T: MiscProtocol>(misc other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MiscProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MiscProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MiscProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MiscProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MiscProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MiscProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MiscProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MiscProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum MiscPropertyName: String, PropertyNameProtocol {
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
    /// The horizontal alignment. A value of 0.0 means left alignment (or right
    /// on RTL locales); a value of 1.0 means right alignment (or left on RTL
    /// locales).
    ///
    /// **xalign is deprecated:**
    /// Use gtk_widget_set_halign() instead. If you are using
    ///   #GtkLabel, use #GtkLabel:xalign instead.
    case xalign = "xalign"
    /// The amount of space to add on the left and right of the widget, in
    /// pixels.
    ///
    /// **xpad is deprecated:**
    /// Use gtk_widget_set_margin_start() and
    ///   gtk_widget_set_margin_end() instead
    case xpad = "xpad"
    /// The vertical alignment. A value of 0.0 means top alignment;
    /// a value of 1.0 means bottom alignment.
    ///
    /// **yalign is deprecated:**
    /// Use gtk_widget_set_valign() instead. If you are using
    ///   #GtkLabel, use #GtkLabel:yalign instead.
    case yalign = "yalign"
    /// The amount of space to add on the top and bottom of the widget, in
    /// pixels.
    ///
    /// **ypad is deprecated:**
    /// Use gtk_widget_set_margin_top() and
    ///   gtk_widget_set_margin_bottom() instead
    case ypad = "ypad"
}

public extension MiscProtocol {
    /// Bind a `MiscPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: MiscPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a Misc property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: MiscPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Misc property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: MiscPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: Misc has no signals// MARK: Misc Class: MiscProtocol extension (methods and fields)
public extension MiscProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMisc` instance.
    @inlinable var misc_ptr: UnsafeMutablePointer<GtkMisc>! { return ptr?.assumingMemoryBound(to: GtkMisc.self) }

    /// Gets the X and Y alignment of the widget within its allocation.
    /// See `gtk_misc_set_alignment()`.
    ///
    /// **get_alignment is deprecated:**
    /// Use #GtkWidget alignment and margin properties.
    @available(*, deprecated)
    @inlinable func getAlignment(xalign: UnsafeMutablePointer<gfloat>! = nil, yalign: UnsafeMutablePointer<gfloat>! = nil) {
        gtk_misc_get_alignment(misc_ptr, xalign, yalign)
    
    }

    /// Gets the padding in the X and Y directions of the widget.
    /// See `gtk_misc_set_padding()`.
    ///
    /// **get_padding is deprecated:**
    /// Use #GtkWidget alignment and margin properties.
    @available(*, deprecated)
    @inlinable func getPadding(xpad: UnsafeMutablePointer<gint>! = nil, ypad: UnsafeMutablePointer<gint>! = nil) {
        gtk_misc_get_padding(misc_ptr, xpad, ypad)
    
    }

    /// Sets the alignment of the widget.
    ///
    /// **set_alignment is deprecated:**
    /// Use #GtkWidget's alignment (#GtkWidget:halign and #GtkWidget:valign) and margin properties or #GtkLabel's #GtkLabel:xalign and #GtkLabel:yalign properties.
    @available(*, deprecated)
    @inlinable func setAlignment(xalign: Double, yalign: Double) {
        gtk_misc_set_alignment(misc_ptr, gfloat(xalign), gfloat(yalign))
    
    }

    /// Sets the amount of space to add around the widget.
    ///
    /// **set_padding is deprecated:**
    /// Use #GtkWidget alignment and margin properties.
    @available(*, deprecated)
    @inlinable func setPadding(xpad: Int, ypad: Int) {
        gtk_misc_set_padding(misc_ptr, gint(xpad), gint(ypad))
    
    }

    @inlinable var widget: GtkWidget {
        get {
            let rv = misc_ptr.pointee.widget
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - ModelButton Class

/// The `ModelButtonProtocol` protocol exposes the methods and properties of an underlying `GtkModelButton` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ModelButton`.
/// Alternatively, use `ModelButtonRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// GtkModelButton is a button class that can use a `GAction` as its model.
/// In contrast to `GtkToggleButton` or `GtkRadioButton`, which can also
/// be backed by a `GAction` via the `GtkActionable:action`-name property,
/// GtkModelButton will adapt its appearance according to the kind of
/// action it is backed by, and appear either as a plain, check or
/// radio button.
/// 
/// Model buttons are used when popovers from a menu model with
/// `gtk_popover_new_from_model()`; they can also be used manually in
/// a `GtkPopoverMenu`.
/// 
/// When the action is specified via the `GtkActionable:action`-name
/// and `GtkActionable:action`-target properties, the role of the button
/// (i.e. whether it is a plain, check or radio button) is determined by
/// the type of the action and doesn't have to be explicitly specified
/// with the `GtkModelButton:role` property.
/// 
/// The content of the button is specified by the `GtkModelButton:text`
/// and `GtkModelButton:icon` properties.
/// 
/// The appearance of model buttons can be influenced with the
/// `GtkModelButton:centered` and `GtkModelButton:iconic` properties.
/// 
/// Model buttons have built-in support for submenus in `GtkPopoverMenu`.
/// To make a GtkModelButton that opens a submenu when activated, set
/// the `GtkModelButton:menu`-name property. To make a button that goes
/// back to the parent menu, you should set the `GtkModelButton:inverted`
/// property to place the submenu indicator at the opposite side.
/// 
/// # Example
/// 
/// ```
/// <object class="GtkPopoverMenu">
///   <child>
///     <object class="GtkBox">
///       <property name="visible">True</property>
///       <property name="margin">10</property>
///       <child>
///         <object class="GtkModelButton">
///           <property name="visible">True</property>
///           <property name="action-name">view.cut</property>
///           <property name="text" translatable="yes">Cut</property>
///         </object>
///       </child>
///       <child>
///         <object class="GtkModelButton">
///           <property name="visible">True</property>
///           <property name="action-name">view.copy</property>
///           <property name="text" translatable="yes">Copy</property>
///         </object>
///       </child>
///       <child>
///         <object class="GtkModelButton">
///           <property name="visible">True</property>
///           <property name="action-name">view.paste</property>
///           <property name="text" translatable="yes">Paste</property>
///         </object>
///       </child>
///     </object>
///   </child>
/// </object>
/// ```
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
/// modelbutton
/// ├── <child>
/// ╰── check
/// ```
/// 
/// (plain Language Example):
/// ```plain
/// modelbutton
/// ├── <child>
/// ╰── radio
/// ```
/// 
/// (plain Language Example):
/// ```plain
/// modelbutton
/// ├── <child>
/// ╰── arrow
/// ```
/// 
/// GtkModelButton has a main CSS node with name modelbutton, and a subnode,
/// which will have the name check, radio or arrow, depending on the role
/// of the button and whether it has a menu name set.
/// 
/// The subnode is positioned before or after the content nodes and gets the
/// .left or .right style class, depending on where it is located.
/// 
/// (plain Language Example):
/// ```plain
/// button.model
/// ├── <child>
/// ╰── check
/// ```
/// 
/// Iconic model buttons (see `GtkModelButton:iconic`) change the name of
/// their main node to button and add a .model style class to it. The indicator
/// subnode is invisible in this case.
public protocol ModelButtonProtocol: ButtonProtocol {
        /// Untyped pointer to the underlying `GtkModelButton` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkModelButton` instance.
    var model_button_ptr: UnsafeMutablePointer<GtkModelButton>! { get }

}

/// The `ModelButtonRef` type acts as a lightweight Swift reference to an underlying `GtkModelButton` instance.
/// It exposes methods that can operate on this data type through `ModelButtonProtocol` conformance.
/// Use `ModelButtonRef` only as an `unowned` reference to an existing `GtkModelButton` instance.
///
/// GtkModelButton is a button class that can use a `GAction` as its model.
/// In contrast to `GtkToggleButton` or `GtkRadioButton`, which can also
/// be backed by a `GAction` via the `GtkActionable:action`-name property,
/// GtkModelButton will adapt its appearance according to the kind of
/// action it is backed by, and appear either as a plain, check or
/// radio button.
/// 
/// Model buttons are used when popovers from a menu model with
/// `gtk_popover_new_from_model()`; they can also be used manually in
/// a `GtkPopoverMenu`.
/// 
/// When the action is specified via the `GtkActionable:action`-name
/// and `GtkActionable:action`-target properties, the role of the button
/// (i.e. whether it is a plain, check or radio button) is determined by
/// the type of the action and doesn't have to be explicitly specified
/// with the `GtkModelButton:role` property.
/// 
/// The content of the button is specified by the `GtkModelButton:text`
/// and `GtkModelButton:icon` properties.
/// 
/// The appearance of model buttons can be influenced with the
/// `GtkModelButton:centered` and `GtkModelButton:iconic` properties.
/// 
/// Model buttons have built-in support for submenus in `GtkPopoverMenu`.
/// To make a GtkModelButton that opens a submenu when activated, set
/// the `GtkModelButton:menu`-name property. To make a button that goes
/// back to the parent menu, you should set the `GtkModelButton:inverted`
/// property to place the submenu indicator at the opposite side.
/// 
/// # Example
/// 
/// ```
/// <object class="GtkPopoverMenu">
///   <child>
///     <object class="GtkBox">
///       <property name="visible">True</property>
///       <property name="margin">10</property>
///       <child>
///         <object class="GtkModelButton">
///           <property name="visible">True</property>
///           <property name="action-name">view.cut</property>
///           <property name="text" translatable="yes">Cut</property>
///         </object>
///       </child>
///       <child>
///         <object class="GtkModelButton">
///           <property name="visible">True</property>
///           <property name="action-name">view.copy</property>
///           <property name="text" translatable="yes">Copy</property>
///         </object>
///       </child>
///       <child>
///         <object class="GtkModelButton">
///           <property name="visible">True</property>
///           <property name="action-name">view.paste</property>
///           <property name="text" translatable="yes">Paste</property>
///         </object>
///       </child>
///     </object>
///   </child>
/// </object>
/// ```
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
/// modelbutton
/// ├── <child>
/// ╰── check
/// ```
/// 
/// (plain Language Example):
/// ```plain
/// modelbutton
/// ├── <child>
/// ╰── radio
/// ```
/// 
/// (plain Language Example):
/// ```plain
/// modelbutton
/// ├── <child>
/// ╰── arrow
/// ```
/// 
/// GtkModelButton has a main CSS node with name modelbutton, and a subnode,
/// which will have the name check, radio or arrow, depending on the role
/// of the button and whether it has a menu name set.
/// 
/// The subnode is positioned before or after the content nodes and gets the
/// .left or .right style class, depending on where it is located.
/// 
/// (plain Language Example):
/// ```plain
/// button.model
/// ├── <child>
/// ╰── check
/// ```
/// 
/// Iconic model buttons (see `GtkModelButton:iconic`) change the name of
/// their main node to button and add a .model style class to it. The indicator
/// subnode is invisible in this case.
public struct ModelButtonRef: ModelButtonProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkModelButton` instance.
    /// For type-safe access, use the generated, typed pointer `model_button_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ModelButtonRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkModelButton>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkModelButton>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkModelButton>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkModelButton>?) {
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

    /// Reference intialiser for a related type that implements `ModelButtonProtocol`
    @inlinable init<T: ModelButtonProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: ModelButtonProtocol>(_ other: T) -> ModelButtonRef { ModelButtonRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ModelButtonProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ModelButtonProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ModelButtonProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ModelButtonProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ModelButtonProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkModelButton`.
    @inlinable init() {
        let rv = gtk_model_button_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `ModelButton` type acts as a reference-counted owner of an underlying `GtkModelButton` instance.
/// It provides the methods that can operate on this data type through `ModelButtonProtocol` conformance.
/// Use `ModelButton` as a strong reference or owner of a `GtkModelButton` instance.
///
/// GtkModelButton is a button class that can use a `GAction` as its model.
/// In contrast to `GtkToggleButton` or `GtkRadioButton`, which can also
/// be backed by a `GAction` via the `GtkActionable:action`-name property,
/// GtkModelButton will adapt its appearance according to the kind of
/// action it is backed by, and appear either as a plain, check or
/// radio button.
/// 
/// Model buttons are used when popovers from a menu model with
/// `gtk_popover_new_from_model()`; they can also be used manually in
/// a `GtkPopoverMenu`.
/// 
/// When the action is specified via the `GtkActionable:action`-name
/// and `GtkActionable:action`-target properties, the role of the button
/// (i.e. whether it is a plain, check or radio button) is determined by
/// the type of the action and doesn't have to be explicitly specified
/// with the `GtkModelButton:role` property.
/// 
/// The content of the button is specified by the `GtkModelButton:text`
/// and `GtkModelButton:icon` properties.
/// 
/// The appearance of model buttons can be influenced with the
/// `GtkModelButton:centered` and `GtkModelButton:iconic` properties.
/// 
/// Model buttons have built-in support for submenus in `GtkPopoverMenu`.
/// To make a GtkModelButton that opens a submenu when activated, set
/// the `GtkModelButton:menu`-name property. To make a button that goes
/// back to the parent menu, you should set the `GtkModelButton:inverted`
/// property to place the submenu indicator at the opposite side.
/// 
/// # Example
/// 
/// ```
/// <object class="GtkPopoverMenu">
///   <child>
///     <object class="GtkBox">
///       <property name="visible">True</property>
///       <property name="margin">10</property>
///       <child>
///         <object class="GtkModelButton">
///           <property name="visible">True</property>
///           <property name="action-name">view.cut</property>
///           <property name="text" translatable="yes">Cut</property>
///         </object>
///       </child>
///       <child>
///         <object class="GtkModelButton">
///           <property name="visible">True</property>
///           <property name="action-name">view.copy</property>
///           <property name="text" translatable="yes">Copy</property>
///         </object>
///       </child>
///       <child>
///         <object class="GtkModelButton">
///           <property name="visible">True</property>
///           <property name="action-name">view.paste</property>
///           <property name="text" translatable="yes">Paste</property>
///         </object>
///       </child>
///     </object>
///   </child>
/// </object>
/// ```
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
/// modelbutton
/// ├── <child>
/// ╰── check
/// ```
/// 
/// (plain Language Example):
/// ```plain
/// modelbutton
/// ├── <child>
/// ╰── radio
/// ```
/// 
/// (plain Language Example):
/// ```plain
/// modelbutton
/// ├── <child>
/// ╰── arrow
/// ```
/// 
/// GtkModelButton has a main CSS node with name modelbutton, and a subnode,
/// which will have the name check, radio or arrow, depending on the role
/// of the button and whether it has a menu name set.
/// 
/// The subnode is positioned before or after the content nodes and gets the
/// .left or .right style class, depending on where it is located.
/// 
/// (plain Language Example):
/// ```plain
/// button.model
/// ├── <child>
/// ╰── check
/// ```
/// 
/// Iconic model buttons (see `GtkModelButton:iconic`) change the name of
/// their main node to button and add a .model style class to it. The indicator
/// subnode is invisible in this case.
open class ModelButton: Button, ModelButtonProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ModelButton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkModelButton>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ModelButton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkModelButton>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ModelButton` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ModelButton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ModelButton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkModelButton>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ModelButton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkModelButton>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkModelButton`.
    /// i.e., ownership is transferred to the `ModelButton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkModelButton>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ModelButtonProtocol`
    /// Will retain `GtkModelButton`.
    /// - Parameter other: an instance of a related type that implements `ModelButtonProtocol`
    @inlinable public init<T: ModelButtonProtocol>(modelButton other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ModelButtonProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ModelButtonProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ModelButtonProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ModelButtonProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ModelButtonProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ModelButtonProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ModelButtonProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ModelButtonProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkModelButton`.
    @inlinable override public init() {
        let rv = gtk_model_button_new()
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum ModelButtonPropertyName: String, PropertyNameProtocol {
    /// The state of the button. This is reflecting the state of the associated
    /// `GAction`.
    case active = "active"
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
    /// Whether to render the button contents centered instead of left-aligned.
    /// This property should be set for title-like items.
    case centered = "centered"
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
    /// A `GIcon` that will be used if iconic appearance for the button is
    /// desired.
    case icon = "icon"
    /// If this property is set, the button will show an icon if one is set.
    /// If no icon is set, the text will be used. This is typically used for
    /// horizontal sections of linked buttons.
    case iconic = "iconic"
    /// The child widget to appear next to the button text.
    case image = "image"
    /// The position of the image relative to the text inside the button.
    case imagePosition = "image-position"
    /// Whether to show the submenu indicator at the opposite side than normal.
    /// This property should be set for model buttons that 'go back' to a parent
    /// menu.
    case inverted = "inverted"
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
    /// The name of a submenu to open when the button is activated.
    /// If this is set, the button should not have an action associated with it.
    case menuName = "menu-name"
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
    /// Specifies whether the button is a plain, check or radio button.
    /// When `GtkActionable:action`-name is set, the role will be determined
    /// from the action and does not have to be set explicitly.
    case role = "role"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case sensitive = "sensitive"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case style = "style"
    /// The label for the button.
    case text = "text"
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
    /// If `true`, XML tags in the text of the button are interpreted as by
    /// `pango_parse_markup()` to format the enclosed spans of text. If `false`, the
    /// text will be displayed verbatim.
    case useMarkup = "use-markup"

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

public extension ModelButtonProtocol {
    /// Bind a `ModelButtonPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: ModelButtonPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a ModelButton property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: ModelButtonPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a ModelButton property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: ModelButtonPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: ModelButton has no signals// MARK: ModelButton Class: ModelButtonProtocol extension (methods and fields)
public extension ModelButtonProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkModelButton` instance.
    @inlinable var model_button_ptr: UnsafeMutablePointer<GtkModelButton>! { return ptr?.assumingMemoryBound(to: GtkModelButton.self) }



}



// MARK: - MountOperation Class

/// The `MountOperationProtocol` protocol exposes the methods and properties of an underlying `GtkMountOperation` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MountOperation`.
/// Alternatively, use `MountOperationRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// This should not be accessed directly. Use the accessor functions below.
public protocol MountOperationProtocol: GIO.MountOperationProtocol {
        /// Untyped pointer to the underlying `GtkMountOperation` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkMountOperation` instance.
    var mount_operation_ptr: UnsafeMutablePointer<GtkMountOperation>! { get }

}

/// The `MountOperationRef` type acts as a lightweight Swift reference to an underlying `GtkMountOperation` instance.
/// It exposes methods that can operate on this data type through `MountOperationProtocol` conformance.
/// Use `MountOperationRef` only as an `unowned` reference to an existing `GtkMountOperation` instance.
///
/// This should not be accessed directly. Use the accessor functions below.
public struct MountOperationRef: MountOperationProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkMountOperation` instance.
    /// For type-safe access, use the generated, typed pointer `mount_operation_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MountOperationRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkMountOperation>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkMountOperation>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkMountOperation>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkMountOperation>?) {
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

    /// Reference intialiser for a related type that implements `MountOperationProtocol`
    @inlinable init<T: MountOperationProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: MountOperationProtocol>(_ other: T) -> MountOperationRef { MountOperationRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `MountOperation` type acts as a reference-counted owner of an underlying `GtkMountOperation` instance.
/// It provides the methods that can operate on this data type through `MountOperationProtocol` conformance.
/// Use `MountOperation` as a strong reference or owner of a `GtkMountOperation` instance.
///
/// This should not be accessed directly. Use the accessor functions below.
open class MountOperation: GIO.MountOperation, MountOperationProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MountOperation` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkMountOperation>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MountOperation` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkMountOperation>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MountOperation` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MountOperation` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MountOperation` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkMountOperation>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `MountOperation` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkMountOperation>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkMountOperation`.
    /// i.e., ownership is transferred to the `MountOperation` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkMountOperation>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `MountOperationProtocol`
    /// Will retain `GtkMountOperation`.
    /// - Parameter other: an instance of a related type that implements `MountOperationProtocol`
    @inlinable public init<T: MountOperationProtocol>(_ other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MountOperationProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum MountOperationPropertyName: String, PropertyNameProtocol {
    /// Whether to use an anonymous user when authenticating.
    case anonymous = "anonymous"
    /// The index of the user's choice when a question is asked during the
    /// mount operation. See the `GMountOperation::ask`-question signal.
    case choice = "choice"
    /// The domain to use for the mount operation.
    case domain = "domain"
    case isShowing = "is-showing"
    /// Whether the device to be unlocked is a TCRYPT hidden volume.
    /// See [the VeraCrypt documentation](https://www.veracrypt.fr/en/Hidden`20Volume.html`).
    case isTcryptHiddenVolume = "is-tcrypt-hidden-volume"
    /// Whether the device to be unlocked is a TCRYPT system volume.
    /// In this context, a system volume is a volume with a bootloader
    /// and operating system installed. This is only supported for Windows
    /// operating systems. For further documentation, see
    /// [the VeraCrypt documentation](https://www.veracrypt.fr/en/System`20Encryption.html`).
    case isTcryptSystemVolume = "is-tcrypt-system-volume"
    case parent = "parent"
    /// The password that is used for authentication when carrying out
    /// the mount operation.
    case password = "password"
    /// Determines if and how the password information should be saved.
    case passwordSave = "password-save"
    /// The VeraCrypt PIM value, when unlocking a VeraCrypt volume. See
    /// [the VeraCrypt documentation](https://www.veracrypt.fr/en/Personal`20Iterations``20Multiplier``20``(PIM)`.html).
    case pim = "pim"
    case screen = "screen"
    /// The user name that is used for authentication when carrying out
    /// the mount operation.
    case username = "username"
}

public extension MountOperationProtocol {
    /// Bind a `MountOperationPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: MountOperationPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a MountOperation property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: MountOperationPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a MountOperation property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: MountOperationPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: MountOperation has no signals// MARK: MountOperation Class: MountOperationProtocol extension (methods and fields)
public extension MountOperationProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMountOperation` instance.
    @inlinable var mount_operation_ptr: UnsafeMutablePointer<GtkMountOperation>! { return ptr?.assumingMemoryBound(to: GtkMountOperation.self) }

    /// Gets the transient parent used by the `GtkMountOperation`
    @inlinable func getParent() -> WindowRef! {
        let rv = WindowRef(gconstpointer: gconstpointer(gtk_mount_operation_get_parent(mount_operation_ptr)))
        return rv
    }

    /// Gets the screen on which windows of the `GtkMountOperation`
    /// will be shown.
    @inlinable func getScreen() -> Gdk.ScreenRef! {
        let rv = Gdk.ScreenRef(gtk_mount_operation_get_screen(mount_operation_ptr))
        return rv
    }

    /// Sets the transient parent for windows shown by the
    /// `GtkMountOperation`.
    @inlinable func set(parent: WindowRef? = nil) {
        gtk_mount_operation_set_parent(mount_operation_ptr, parent?.window_ptr)
    
    }
    /// Sets the transient parent for windows shown by the
    /// `GtkMountOperation`.
    @inlinable func set<WindowT: WindowProtocol>(parent: WindowT?) {
        gtk_mount_operation_set_parent(mount_operation_ptr, parent?.window_ptr)
    
    }

    /// Sets the screen to show windows of the `GtkMountOperation` on.
    @inlinable func set<ScreenT: Gdk.ScreenProtocol>(screen: ScreenT) {
        gtk_mount_operation_set_screen(mount_operation_ptr, screen.screen_ptr)
    
    }
    /// Returns whether the `GtkMountOperation` is currently displaying
    /// a window.
    @inlinable var isShowing: Bool {
        /// Returns whether the `GtkMountOperation` is currently displaying
        /// a window.
        get {
            let rv = ((gtk_mount_operation_is_showing(mount_operation_ptr)) != 0)
            return rv
        }
    }

    @inlinable var parent: WindowRef! {
        /// Gets the transient parent used by the `GtkMountOperation`
        get {
            let rv = WindowRef(gconstpointer: gconstpointer(gtk_mount_operation_get_parent(mount_operation_ptr)))
            return rv
        }
        /// Sets the transient parent for windows shown by the
        /// `GtkMountOperation`.
        nonmutating set {
            gtk_mount_operation_set_parent(mount_operation_ptr, UnsafeMutablePointer<GtkWindow>(newValue?.window_ptr))
        }
    }

    @inlinable var screen: Gdk.ScreenRef! {
        /// Gets the screen on which windows of the `GtkMountOperation`
        /// will be shown.
        get {
            let rv = Gdk.ScreenRef(gtk_mount_operation_get_screen(mount_operation_ptr))
            return rv
        }
        /// Sets the screen to show windows of the `GtkMountOperation` on.
        nonmutating set {
            gtk_mount_operation_set_screen(mount_operation_ptr, UnsafeMutablePointer<GdkScreen>(newValue?.screen_ptr))
        }
    }

    @inlinable var parentInstance: GMountOperation {
        get {
            let rv = mount_operation_ptr.pointee.parent_instance
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - NativeDialog Class

/// The `NativeDialogProtocol` protocol exposes the methods and properties of an underlying `GtkNativeDialog` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `NativeDialog`.
/// Alternatively, use `NativeDialogRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// Native dialogs are platform dialogs that don't use `GtkDialog` or
/// `GtkWindow`. They are used in order to integrate better with a
/// platform, by looking the same as other native applications and
/// supporting platform specific features.
/// 
/// The `GtkDialog` functions cannot be used on such objects, but we
/// need a similar API in order to drive them. The `GtkNativeDialog`
/// object is an API that allows you to do this. It allows you to set
/// various common properties on the dialog, as well as show and hide
/// it and get a `GtkNativeDialog::response` signal when the user finished
/// with the dialog.
/// 
/// There is also a `gtk_native_dialog_run()` helper that makes it easy
/// to run any native dialog in a modal way with a recursive mainloop,
/// similar to `gtk_dialog_run()`.
public protocol NativeDialogProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `GtkNativeDialog` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkNativeDialog` instance.
    var native_dialog_ptr: UnsafeMutablePointer<GtkNativeDialog>! { get }

}

/// The `NativeDialogRef` type acts as a lightweight Swift reference to an underlying `GtkNativeDialog` instance.
/// It exposes methods that can operate on this data type through `NativeDialogProtocol` conformance.
/// Use `NativeDialogRef` only as an `unowned` reference to an existing `GtkNativeDialog` instance.
///
/// Native dialogs are platform dialogs that don't use `GtkDialog` or
/// `GtkWindow`. They are used in order to integrate better with a
/// platform, by looking the same as other native applications and
/// supporting platform specific features.
/// 
/// The `GtkDialog` functions cannot be used on such objects, but we
/// need a similar API in order to drive them. The `GtkNativeDialog`
/// object is an API that allows you to do this. It allows you to set
/// various common properties on the dialog, as well as show and hide
/// it and get a `GtkNativeDialog::response` signal when the user finished
/// with the dialog.
/// 
/// There is also a `gtk_native_dialog_run()` helper that makes it easy
/// to run any native dialog in a modal way with a recursive mainloop,
/// similar to `gtk_dialog_run()`.
public struct NativeDialogRef: NativeDialogProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkNativeDialog` instance.
    /// For type-safe access, use the generated, typed pointer `native_dialog_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension NativeDialogRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkNativeDialog>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkNativeDialog>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkNativeDialog>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkNativeDialog>?) {
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

    /// Reference intialiser for a related type that implements `NativeDialogProtocol`
    @inlinable init<T: NativeDialogProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: NativeDialogProtocol>(_ other: T) -> NativeDialogRef { NativeDialogRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeDialogProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeDialogProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeDialogProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeDialogProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeDialogProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `NativeDialog` type acts as a reference-counted owner of an underlying `GtkNativeDialog` instance.
/// It provides the methods that can operate on this data type through `NativeDialogProtocol` conformance.
/// Use `NativeDialog` as a strong reference or owner of a `GtkNativeDialog` instance.
///
/// Native dialogs are platform dialogs that don't use `GtkDialog` or
/// `GtkWindow`. They are used in order to integrate better with a
/// platform, by looking the same as other native applications and
/// supporting platform specific features.
/// 
/// The `GtkDialog` functions cannot be used on such objects, but we
/// need a similar API in order to drive them. The `GtkNativeDialog`
/// object is an API that allows you to do this. It allows you to set
/// various common properties on the dialog, as well as show and hide
/// it and get a `GtkNativeDialog::response` signal when the user finished
/// with the dialog.
/// 
/// There is also a `gtk_native_dialog_run()` helper that makes it easy
/// to run any native dialog in a modal way with a recursive mainloop,
/// similar to `gtk_dialog_run()`.
open class NativeDialog: GLibObject.Object, NativeDialogProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NativeDialog` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkNativeDialog>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NativeDialog` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkNativeDialog>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NativeDialog` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NativeDialog` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NativeDialog` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkNativeDialog>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `NativeDialog` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkNativeDialog>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkNativeDialog`.
    /// i.e., ownership is transferred to the `NativeDialog` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkNativeDialog>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `NativeDialogProtocol`
    /// Will retain `GtkNativeDialog`.
    /// - Parameter other: an instance of a related type that implements `NativeDialogProtocol`
    @inlinable public init<T: NativeDialogProtocol>(nativeDialog other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeDialogProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeDialogProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeDialogProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeDialogProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeDialogProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeDialogProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeDialogProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeDialogProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum NativeDialogPropertyName: String, PropertyNameProtocol {
    /// Whether the window should be modal with respect to its transient parent.
    case modal = "modal"
    /// The title of the dialog window
    case title = "title"
    /// The transient parent of the dialog, or `nil` for none.
    case transientFor = "transient-for"
    /// Whether the window is currenlty visible.
    case visible = "visible"
}

public extension NativeDialogProtocol {
    /// Bind a `NativeDialogPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: NativeDialogPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a NativeDialog property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: NativeDialogPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a NativeDialog property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: NativeDialogPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: Signals of NativeDialog
public extension NativeDialogProtocol {
    /// Emitted when the user responds to the dialog.
    /// 
    /// When this is called the dialog has been hidden.
    /// 
    /// If you call `gtk_native_dialog_hide()` before the user responds to
    /// the dialog this signal will not be emitted.
    /// - Note: Representation of signal named `response`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter responseID: the response ID
    @discardableResult
    func onResponse(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: NativeDialogRef, _ responseID: Int) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<NativeDialogRef, Int, Void>
        let cCallback: @convention(c) (gpointer, gint, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(NativeDialogRef(raw: unownedSelf), Int(arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "response", 
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
    /// - Note: Representation of signal named `notify::modal`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyModal(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: NativeDialogRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<NativeDialogRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(NativeDialogRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::modal", 
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
    /// - Note: Representation of signal named `notify::title`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyTitle(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: NativeDialogRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<NativeDialogRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(NativeDialogRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::title", 
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
    /// - Note: Representation of signal named `notify::transient-for`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyTransientFor(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: NativeDialogRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<NativeDialogRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(NativeDialogRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::transient-for", 
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
    /// - Note: Representation of signal named `notify::visible`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyVisible(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: NativeDialogRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<NativeDialogRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(NativeDialogRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::visible", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
}

// MARK: NativeDialog Class: NativeDialogProtocol extension (methods and fields)
public extension NativeDialogProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkNativeDialog` instance.
    @inlinable var native_dialog_ptr: UnsafeMutablePointer<GtkNativeDialog>! { return ptr?.assumingMemoryBound(to: GtkNativeDialog.self) }

    /// Destroys a dialog.
    /// 
    /// When a dialog is destroyed, it will break any references it holds
    /// to other objects. If it is visible it will be hidden and any underlying
    /// window system resources will be destroyed.
    /// 
    /// Note that this does not release any reference to the object (as opposed to
    /// destroying a GtkWindow) because there is no reference from the windowing
    /// system to the `GtkNativeDialog`.
    @inlinable func destroy() {
        gtk_native_dialog_destroy(native_dialog_ptr)
    
    }

    /// Returns whether the dialog is modal. See `gtk_native_dialog_set_modal()`.
    @inlinable func getModal() -> Bool {
        let rv = ((gtk_native_dialog_get_modal(native_dialog_ptr)) != 0)
        return rv
    }

    /// Gets the title of the `GtkNativeDialog`.
    @inlinable func getTitle() -> String! {
        let rv = gtk_native_dialog_get_title(native_dialog_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Fetches the transient parent for this window. See
    /// `gtk_native_dialog_set_transient_for()`.
    @inlinable func getTransientFor() -> WindowRef! {
        let rv = WindowRef(gconstpointer: gconstpointer(gtk_native_dialog_get_transient_for(native_dialog_ptr)))
        return rv
    }

    /// Determines whether the dialog is visible.
    @inlinable func getVisible() -> Bool {
        let rv = ((gtk_native_dialog_get_visible(native_dialog_ptr)) != 0)
        return rv
    }

    /// Hides the dialog if it is visilbe, aborting any interaction. Once this
    /// is called the  `GtkNativeDialog::response` signal will not be emitted
    /// until after the next call to `gtk_native_dialog_show()`.
    /// 
    /// If the dialog is not visible this does nothing.
    @inlinable func hide() {
        gtk_native_dialog_hide(native_dialog_ptr)
    
    }

    /// Blocks in a recursive main loop until `self` emits the
    /// `GtkNativeDialog::response` signal. It then returns the response ID
    /// from the `response` signal emission.
    /// 
    /// Before entering the recursive main loop, `gtk_native_dialog_run()`
    /// calls `gtk_native_dialog_show()` on the dialog for you.
    /// 
    /// After `gtk_native_dialog_run()` returns, then dialog will be hidden.
    /// 
    /// Typical usage of this function might be:
    /// (C Language Example):
    /// ```C
    ///   gint result = gtk_native_dialog_run (GTK_NATIVE_DIALOG (dialog));
    ///   switch (result)
    ///     {
    ///       case GTK_RESPONSE_ACCEPT:
    ///          do_application_specific_something ();
    ///          break;
    ///       default:
    ///          do_nothing_since_dialog_was_cancelled ();
    ///          break;
    ///     }
    ///   g_object_unref (dialog);
    /// ```
    /// 
    /// Note that even though the recursive main loop gives the effect of a
    /// modal dialog (it prevents the user from interacting with other
    /// windows in the same window group while the dialog is run), callbacks
    /// such as timeouts, IO channel watches, DND drops, etc, will
    /// be triggered during a `gtk_nautilus_dialog_run()` call.
    @inlinable func run() -> Int {
        let rv = Int(gtk_native_dialog_run(native_dialog_ptr))
        return rv
    }

    /// Sets a dialog modal or non-modal. Modal dialogs prevent interaction
    /// with other windows in the same application. To keep modal dialogs
    /// on top of main application windows, use
    /// `gtk_native_dialog_set_transient_for()` to make the dialog transient for the
    /// parent; most [window managers](#gtk-X11-arch)
    /// will then disallow lowering the dialog below the parent.
    @inlinable func set(modal: Bool) {
        gtk_native_dialog_set_modal(native_dialog_ptr, gboolean((modal) ? 1 : 0))
    
    }

    /// Sets the title of the `GtkNativeDialog`.
    @inlinable func set(title: UnsafePointer<CChar>!) {
        gtk_native_dialog_set_title(native_dialog_ptr, title)
    
    }

    /// Dialog windows should be set transient for the main application
    /// window they were spawned from. This allows
    /// [window managers](#gtk-X11-arch) to e.g. keep the
    /// dialog on top of the main window, or center the dialog over the
    /// main window.
    /// 
    /// Passing `nil` for `parent` unsets the current transient window.
    @inlinable func setTransientFor(parent: WindowRef? = nil) {
        gtk_native_dialog_set_transient_for(native_dialog_ptr, parent?.window_ptr)
    
    }
    /// Dialog windows should be set transient for the main application
    /// window they were spawned from. This allows
    /// [window managers](#gtk-X11-arch) to e.g. keep the
    /// dialog on top of the main window, or center the dialog over the
    /// main window.
    /// 
    /// Passing `nil` for `parent` unsets the current transient window.
    @inlinable func setTransientFor<WindowT: WindowProtocol>(parent: WindowT?) {
        gtk_native_dialog_set_transient_for(native_dialog_ptr, parent?.window_ptr)
    
    }

    /// Shows the dialog on the display, allowing the user to interact with
    /// it. When the user accepts the state of the dialog the dialog will
    /// be automatically hidden and the `GtkNativeDialog::response` signal
    /// will be emitted.
    /// 
    /// Multiple calls while the dialog is visible will be ignored.
    @inlinable func show() {
        gtk_native_dialog_show(native_dialog_ptr)
    
    }
    /// Whether the window should be modal with respect to its transient parent.
    @inlinable var modal: Bool {
        /// Returns whether the dialog is modal. See `gtk_native_dialog_set_modal()`.
        get {
            let rv = ((gtk_native_dialog_get_modal(native_dialog_ptr)) != 0)
            return rv
        }
        /// Sets a dialog modal or non-modal. Modal dialogs prevent interaction
        /// with other windows in the same application. To keep modal dialogs
        /// on top of main application windows, use
        /// `gtk_native_dialog_set_transient_for()` to make the dialog transient for the
        /// parent; most [window managers](#gtk-X11-arch)
        /// will then disallow lowering the dialog below the parent.
        nonmutating set {
            gtk_native_dialog_set_modal(native_dialog_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// The title of the dialog window
    @inlinable var title: String! {
        /// Gets the title of the `GtkNativeDialog`.
        get {
            let rv = gtk_native_dialog_get_title(native_dialog_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the title of the `GtkNativeDialog`.
        nonmutating set {
            gtk_native_dialog_set_title(native_dialog_ptr, newValue)
        }
    }

    /// Fetches the transient parent for this window. See
    /// `gtk_native_dialog_set_transient_for()`.
    @inlinable var transientFor: WindowRef! {
        /// Fetches the transient parent for this window. See
        /// `gtk_native_dialog_set_transient_for()`.
        get {
            let rv = WindowRef(gconstpointer: gconstpointer(gtk_native_dialog_get_transient_for(native_dialog_ptr)))
            return rv
        }
        /// Dialog windows should be set transient for the main application
        /// window they were spawned from. This allows
        /// [window managers](#gtk-X11-arch) to e.g. keep the
        /// dialog on top of the main window, or center the dialog over the
        /// main window.
        /// 
        /// Passing `nil` for `parent` unsets the current transient window.
        nonmutating set {
            gtk_native_dialog_set_transient_for(native_dialog_ptr, UnsafeMutablePointer<GtkWindow>(newValue?.window_ptr))
        }
    }

    /// Whether the window is currenlty visible.
    @inlinable var visible: Bool {
        /// Determines whether the dialog is visible.
        get {
            let rv = ((gtk_native_dialog_get_visible(native_dialog_ptr)) != 0)
            return rv
        }
    }

    @inlinable var parentInstance: GObject {
        get {
            let rv = native_dialog_ptr.pointee.parent_instance
            return rv
        }
    }

}



