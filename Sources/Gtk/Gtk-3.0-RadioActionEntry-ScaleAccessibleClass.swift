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

// MARK: - RadioActionEntry Record

/// `GtkRadioActionEntry` structs are used with
/// `gtk_action_group_add_radio_actions()` to construct groups of radio actions.
///
/// The `RadioActionEntryProtocol` protocol exposes the methods and properties of an underlying `GtkRadioActionEntry` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RadioActionEntry`.
/// Alternatively, use `RadioActionEntryRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol RadioActionEntryProtocol {
        /// Untyped pointer to the underlying `GtkRadioActionEntry` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkRadioActionEntry` instance.
    var _ptr: UnsafeMutablePointer<GtkRadioActionEntry>! { get }

    /// Required Initialiser for types conforming to `RadioActionEntryProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GtkRadioActionEntry` structs are used with
/// `gtk_action_group_add_radio_actions()` to construct groups of radio actions.
///
/// The `RadioActionEntryRef` type acts as a lightweight Swift reference to an underlying `GtkRadioActionEntry` instance.
/// It exposes methods that can operate on this data type through `RadioActionEntryProtocol` conformance.
/// Use `RadioActionEntryRef` only as an `unowned` reference to an existing `GtkRadioActionEntry` instance.
///
public struct RadioActionEntryRef: RadioActionEntryProtocol {
        /// Untyped pointer to the underlying `GtkRadioActionEntry` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension RadioActionEntryRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkRadioActionEntry>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkRadioActionEntry>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkRadioActionEntry>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkRadioActionEntry>?) {
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

    /// Reference intialiser for a related type that implements `RadioActionEntryProtocol`
    @inlinable init<T: RadioActionEntryProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioActionEntryProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioActionEntryProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioActionEntryProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioActionEntryProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioActionEntryProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// `GtkRadioActionEntry` structs are used with
/// `gtk_action_group_add_radio_actions()` to construct groups of radio actions.
///
/// The `RadioActionEntry` type acts as an owner of an underlying `GtkRadioActionEntry` instance.
/// It provides the methods that can operate on this data type through `RadioActionEntryProtocol` conformance.
/// Use `RadioActionEntry` as a strong reference or owner of a `GtkRadioActionEntry` instance.
///
open class RadioActionEntry: RadioActionEntryProtocol {
        /// Untyped pointer to the underlying `GtkRadioActionEntry` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RadioActionEntry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkRadioActionEntry>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RadioActionEntry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkRadioActionEntry>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RadioActionEntry` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RadioActionEntry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RadioActionEntry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkRadioActionEntry>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RadioActionEntry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkRadioActionEntry>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GtkRadioActionEntry` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `RadioActionEntry` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkRadioActionEntry>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GtkRadioActionEntry, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `RadioActionEntryProtocol`
    /// `GtkRadioActionEntry` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `RadioActionEntryProtocol`
    @inlinable public init<T: RadioActionEntryProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GtkRadioActionEntry, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GtkRadioActionEntry`.
    deinit {
        // no reference counting for GtkRadioActionEntry, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioActionEntryProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioActionEntryProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GtkRadioActionEntry, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioActionEntryProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioActionEntryProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GtkRadioActionEntry, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioActionEntryProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioActionEntryProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GtkRadioActionEntry, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioActionEntryProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioActionEntryProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GtkRadioActionEntry, cannot ref(_ptr)
    }



}

// MARK: no RadioActionEntry properties

// MARK: no RadioActionEntry signals

// MARK: RadioActionEntry has no signals
// MARK: RadioActionEntry Record: RadioActionEntryProtocol extension (methods and fields)
public extension RadioActionEntryProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRadioActionEntry` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkRadioActionEntry>! { return ptr?.assumingMemoryBound(to: GtkRadioActionEntry.self) }


    /// The name of the action.
    @inlinable var name: UnsafePointer<gchar>! {
        /// The name of the action.
        get {
            let rv = _ptr.pointee.name
            return rv
        }
        /// The name of the action.
         set {
            _ptr.pointee.name = newValue
        }
    }

    /// The stock id for the action, or the name of an icon from the
    ///  icon theme.
    @inlinable var stockID: UnsafePointer<gchar>! {
        /// The stock id for the action, or the name of an icon from the
        ///  icon theme.
        get {
            let rv = _ptr.pointee.stock_id
            return rv
        }
        /// The stock id for the action, or the name of an icon from the
        ///  icon theme.
         set {
            _ptr.pointee.stock_id = newValue
        }
    }

    /// The label for the action. This field should typically be marked
    ///  for translation, see `gtk_action_group_set_translation_domain()`.
    @inlinable var label: UnsafePointer<gchar>! {
        /// The label for the action. This field should typically be marked
        ///  for translation, see `gtk_action_group_set_translation_domain()`.
        get {
            let rv = _ptr.pointee.label
            return rv
        }
        /// The label for the action. This field should typically be marked
        ///  for translation, see `gtk_action_group_set_translation_domain()`.
         set {
            _ptr.pointee.label = newValue
        }
    }

    /// The accelerator for the action, in the format understood by
    ///  `gtk_accelerator_parse()`.
    @inlinable var accelerator: UnsafePointer<gchar>! {
        /// The accelerator for the action, in the format understood by
        ///  `gtk_accelerator_parse()`.
        get {
            let rv = _ptr.pointee.accelerator
            return rv
        }
        /// The accelerator for the action, in the format understood by
        ///  `gtk_accelerator_parse()`.
         set {
            _ptr.pointee.accelerator = newValue
        }
    }

    /// The tooltip for the action. This field should typically be
    ///  marked for translation, see `gtk_action_group_set_translation_domain()`.
    @inlinable var tooltip: UnsafePointer<gchar>! {
        /// The tooltip for the action. This field should typically be
        ///  marked for translation, see `gtk_action_group_set_translation_domain()`.
        get {
            let rv = _ptr.pointee.tooltip
            return rv
        }
        /// The tooltip for the action. This field should typically be
        ///  marked for translation, see `gtk_action_group_set_translation_domain()`.
         set {
            _ptr.pointee.tooltip = newValue
        }
    }

    /// The value to set on the radio action. See
    ///  `gtk_radio_action_get_current_value()`.
    @inlinable var value: gint {
        /// The value to set on the radio action. See
        ///  `gtk_radio_action_get_current_value()`.
        get {
            let rv = _ptr.pointee.value
            return rv
        }
        /// The value to set on the radio action. See
        ///  `gtk_radio_action_get_current_value()`.
         set {
            _ptr.pointee.value = newValue
        }
    }

}



/// Metatype/GType declaration for RadioButtonAccessible
public extension RadioButtonAccessibleClassRef {
    
    /// This getter returns the GLib type identifier registered for `RadioButtonAccessible`
    static var metatypeReference: GType { gtk_radio_button_accessible_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkRadioButtonAccessibleClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkRadioButtonAccessibleClass.self) }
    
    static var metatype: GtkRadioButtonAccessibleClass? { metatypePointer?.pointee } 
    
    static var wrapper: RadioButtonAccessibleClassRef? { RadioButtonAccessibleClassRef(metatypePointer) }
    
    
}

// MARK: - RadioButtonAccessibleClass Record


///
/// The `RadioButtonAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkRadioButtonAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RadioButtonAccessibleClass`.
/// Alternatively, use `RadioButtonAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol RadioButtonAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkRadioButtonAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkRadioButtonAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkRadioButtonAccessibleClass>! { get }

    /// Required Initialiser for types conforming to `RadioButtonAccessibleClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `RadioButtonAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkRadioButtonAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `RadioButtonAccessibleClassProtocol` conformance.
/// Use `RadioButtonAccessibleClassRef` only as an `unowned` reference to an existing `GtkRadioButtonAccessibleClass` instance.
///
public struct RadioButtonAccessibleClassRef: RadioButtonAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkRadioButtonAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension RadioButtonAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkRadioButtonAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkRadioButtonAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkRadioButtonAccessibleClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkRadioButtonAccessibleClass>?) {
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

    /// Reference intialiser for a related type that implements `RadioButtonAccessibleClassProtocol`
    @inlinable init<T: RadioButtonAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonAccessibleClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonAccessibleClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonAccessibleClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonAccessibleClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonAccessibleClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: RadioButtonAccessibleClass Record: RadioButtonAccessibleClassProtocol extension (methods and fields)
public extension RadioButtonAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRadioButtonAccessibleClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkRadioButtonAccessibleClass>! { return ptr?.assumingMemoryBound(to: GtkRadioButtonAccessibleClass.self) }


    @inlinable var parentClass: GtkToggleButtonAccessibleClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for RadioButton
public extension RadioButtonClassRef {
    
    /// This getter returns the GLib type identifier registered for `RadioButton`
    static var metatypeReference: GType { gtk_radio_button_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkRadioButtonClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkRadioButtonClass.self) }
    
    static var metatype: GtkRadioButtonClass? { metatypePointer?.pointee } 
    
    static var wrapper: RadioButtonClassRef? { RadioButtonClassRef(metatypePointer) }
    
    
}

// MARK: - RadioButtonClass Record


///
/// The `RadioButtonClassProtocol` protocol exposes the methods and properties of an underlying `GtkRadioButtonClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RadioButtonClass`.
/// Alternatively, use `RadioButtonClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol RadioButtonClassProtocol {
        /// Untyped pointer to the underlying `GtkRadioButtonClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkRadioButtonClass` instance.
    var _ptr: UnsafeMutablePointer<GtkRadioButtonClass>! { get }

    /// Required Initialiser for types conforming to `RadioButtonClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `RadioButtonClassRef` type acts as a lightweight Swift reference to an underlying `GtkRadioButtonClass` instance.
/// It exposes methods that can operate on this data type through `RadioButtonClassProtocol` conformance.
/// Use `RadioButtonClassRef` only as an `unowned` reference to an existing `GtkRadioButtonClass` instance.
///
public struct RadioButtonClassRef: RadioButtonClassProtocol {
        /// Untyped pointer to the underlying `GtkRadioButtonClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension RadioButtonClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkRadioButtonClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkRadioButtonClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkRadioButtonClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkRadioButtonClass>?) {
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

    /// Reference intialiser for a related type that implements `RadioButtonClassProtocol`
    @inlinable init<T: RadioButtonClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioButtonClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: RadioButtonClass Record: RadioButtonClassProtocol extension (methods and fields)
public extension RadioButtonClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRadioButtonClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkRadioButtonClass>! { return ptr?.assumingMemoryBound(to: GtkRadioButtonClass.self) }


    @inlinable var parentClass: GtkCheckButtonClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var groupChanged is unavailable because group_changed is void

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

}



/// Metatype/GType declaration for RadioMenuItemAccessible
public extension RadioMenuItemAccessibleClassRef {
    
    /// This getter returns the GLib type identifier registered for `RadioMenuItemAccessible`
    static var metatypeReference: GType { gtk_radio_menu_item_accessible_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkRadioMenuItemAccessibleClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkRadioMenuItemAccessibleClass.self) }
    
    static var metatype: GtkRadioMenuItemAccessibleClass? { metatypePointer?.pointee } 
    
    static var wrapper: RadioMenuItemAccessibleClassRef? { RadioMenuItemAccessibleClassRef(metatypePointer) }
    
    
}

// MARK: - RadioMenuItemAccessibleClass Record


///
/// The `RadioMenuItemAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkRadioMenuItemAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RadioMenuItemAccessibleClass`.
/// Alternatively, use `RadioMenuItemAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol RadioMenuItemAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkRadioMenuItemAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkRadioMenuItemAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkRadioMenuItemAccessibleClass>! { get }

    /// Required Initialiser for types conforming to `RadioMenuItemAccessibleClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `RadioMenuItemAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkRadioMenuItemAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `RadioMenuItemAccessibleClassProtocol` conformance.
/// Use `RadioMenuItemAccessibleClassRef` only as an `unowned` reference to an existing `GtkRadioMenuItemAccessibleClass` instance.
///
public struct RadioMenuItemAccessibleClassRef: RadioMenuItemAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkRadioMenuItemAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension RadioMenuItemAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkRadioMenuItemAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkRadioMenuItemAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkRadioMenuItemAccessibleClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkRadioMenuItemAccessibleClass>?) {
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

    /// Reference intialiser for a related type that implements `RadioMenuItemAccessibleClassProtocol`
    @inlinable init<T: RadioMenuItemAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemAccessibleClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemAccessibleClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemAccessibleClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemAccessibleClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemAccessibleClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: RadioMenuItemAccessibleClass Record: RadioMenuItemAccessibleClassProtocol extension (methods and fields)
public extension RadioMenuItemAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRadioMenuItemAccessibleClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkRadioMenuItemAccessibleClass>! { return ptr?.assumingMemoryBound(to: GtkRadioMenuItemAccessibleClass.self) }


    @inlinable var parentClass: GtkCheckMenuItemAccessibleClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for RadioMenuItem
public extension RadioMenuItemClassRef {
    
    /// This getter returns the GLib type identifier registered for `RadioMenuItem`
    static var metatypeReference: GType { gtk_radio_menu_item_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkRadioMenuItemClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkRadioMenuItemClass.self) }
    
    static var metatype: GtkRadioMenuItemClass? { metatypePointer?.pointee } 
    
    static var wrapper: RadioMenuItemClassRef? { RadioMenuItemClassRef(metatypePointer) }
    
    
}

// MARK: - RadioMenuItemClass Record


///
/// The `RadioMenuItemClassProtocol` protocol exposes the methods and properties of an underlying `GtkRadioMenuItemClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RadioMenuItemClass`.
/// Alternatively, use `RadioMenuItemClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol RadioMenuItemClassProtocol {
        /// Untyped pointer to the underlying `GtkRadioMenuItemClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkRadioMenuItemClass` instance.
    var _ptr: UnsafeMutablePointer<GtkRadioMenuItemClass>! { get }

    /// Required Initialiser for types conforming to `RadioMenuItemClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `RadioMenuItemClassRef` type acts as a lightweight Swift reference to an underlying `GtkRadioMenuItemClass` instance.
/// It exposes methods that can operate on this data type through `RadioMenuItemClassProtocol` conformance.
/// Use `RadioMenuItemClassRef` only as an `unowned` reference to an existing `GtkRadioMenuItemClass` instance.
///
public struct RadioMenuItemClassRef: RadioMenuItemClassProtocol {
        /// Untyped pointer to the underlying `GtkRadioMenuItemClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension RadioMenuItemClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkRadioMenuItemClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkRadioMenuItemClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkRadioMenuItemClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkRadioMenuItemClass>?) {
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

    /// Reference intialiser for a related type that implements `RadioMenuItemClassProtocol`
    @inlinable init<T: RadioMenuItemClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioMenuItemClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: RadioMenuItemClass Record: RadioMenuItemClassProtocol extension (methods and fields)
public extension RadioMenuItemClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRadioMenuItemClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkRadioMenuItemClass>! { return ptr?.assumingMemoryBound(to: GtkRadioMenuItemClass.self) }


    @inlinable var parentClass: GtkCheckMenuItemClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var groupChanged is unavailable because group_changed is void

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

}



/// Metatype/GType declaration for RadioToolButton
public extension RadioToolButtonClassRef {
    
    /// This getter returns the GLib type identifier registered for `RadioToolButton`
    static var metatypeReference: GType { gtk_radio_tool_button_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkRadioToolButtonClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkRadioToolButtonClass.self) }
    
    static var metatype: GtkRadioToolButtonClass? { metatypePointer?.pointee } 
    
    static var wrapper: RadioToolButtonClassRef? { RadioToolButtonClassRef(metatypePointer) }
    
    
}

// MARK: - RadioToolButtonClass Record


///
/// The `RadioToolButtonClassProtocol` protocol exposes the methods and properties of an underlying `GtkRadioToolButtonClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RadioToolButtonClass`.
/// Alternatively, use `RadioToolButtonClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol RadioToolButtonClassProtocol {
        /// Untyped pointer to the underlying `GtkRadioToolButtonClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkRadioToolButtonClass` instance.
    var _ptr: UnsafeMutablePointer<GtkRadioToolButtonClass>! { get }

    /// Required Initialiser for types conforming to `RadioToolButtonClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `RadioToolButtonClassRef` type acts as a lightweight Swift reference to an underlying `GtkRadioToolButtonClass` instance.
/// It exposes methods that can operate on this data type through `RadioToolButtonClassProtocol` conformance.
/// Use `RadioToolButtonClassRef` only as an `unowned` reference to an existing `GtkRadioToolButtonClass` instance.
///
public struct RadioToolButtonClassRef: RadioToolButtonClassProtocol {
        /// Untyped pointer to the underlying `GtkRadioToolButtonClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension RadioToolButtonClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkRadioToolButtonClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkRadioToolButtonClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkRadioToolButtonClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkRadioToolButtonClass>?) {
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

    /// Reference intialiser for a related type that implements `RadioToolButtonClassProtocol`
    @inlinable init<T: RadioToolButtonClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioToolButtonClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioToolButtonClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioToolButtonClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioToolButtonClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RadioToolButtonClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: RadioToolButtonClass Record: RadioToolButtonClassProtocol extension (methods and fields)
public extension RadioToolButtonClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRadioToolButtonClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkRadioToolButtonClass>! { return ptr?.assumingMemoryBound(to: GtkRadioToolButtonClass.self) }


    @inlinable var parentClass: GtkToggleToolButtonClass {
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



/// Metatype/GType declaration for RangeAccessible
public extension RangeAccessibleClassRef {
    
    /// This getter returns the GLib type identifier registered for `RangeAccessible`
    static var metatypeReference: GType { gtk_range_accessible_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkRangeAccessibleClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkRangeAccessibleClass.self) }
    
    static var metatype: GtkRangeAccessibleClass? { metatypePointer?.pointee } 
    
    static var wrapper: RangeAccessibleClassRef? { RangeAccessibleClassRef(metatypePointer) }
    
    
}

// MARK: - RangeAccessibleClass Record


///
/// The `RangeAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkRangeAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RangeAccessibleClass`.
/// Alternatively, use `RangeAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol RangeAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkRangeAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkRangeAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkRangeAccessibleClass>! { get }

    /// Required Initialiser for types conforming to `RangeAccessibleClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `RangeAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkRangeAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `RangeAccessibleClassProtocol` conformance.
/// Use `RangeAccessibleClassRef` only as an `unowned` reference to an existing `GtkRangeAccessibleClass` instance.
///
public struct RangeAccessibleClassRef: RangeAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkRangeAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension RangeAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkRangeAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkRangeAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkRangeAccessibleClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkRangeAccessibleClass>?) {
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

    /// Reference intialiser for a related type that implements `RangeAccessibleClassProtocol`
    @inlinable init<T: RangeAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeAccessibleClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeAccessibleClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeAccessibleClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeAccessibleClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeAccessibleClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: RangeAccessibleClass Record: RangeAccessibleClassProtocol extension (methods and fields)
public extension RangeAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRangeAccessibleClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkRangeAccessibleClass>! { return ptr?.assumingMemoryBound(to: GtkRangeAccessibleClass.self) }


    @inlinable var parentClass: GtkWidgetAccessibleClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for Range
public extension RangeClassRef {
    
    /// This getter returns the GLib type identifier registered for `Range`
    static var metatypeReference: GType { gtk_range_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkRangeClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkRangeClass.self) }
    
    static var metatype: GtkRangeClass? { metatypePointer?.pointee } 
    
    static var wrapper: RangeClassRef? { RangeClassRef(metatypePointer) }
    
    
}

// MARK: - RangeClass Record


///
/// The `RangeClassProtocol` protocol exposes the methods and properties of an underlying `GtkRangeClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RangeClass`.
/// Alternatively, use `RangeClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol RangeClassProtocol {
        /// Untyped pointer to the underlying `GtkRangeClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkRangeClass` instance.
    var _ptr: UnsafeMutablePointer<GtkRangeClass>! { get }

    /// Required Initialiser for types conforming to `RangeClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `RangeClassRef` type acts as a lightweight Swift reference to an underlying `GtkRangeClass` instance.
/// It exposes methods that can operate on this data type through `RangeClassProtocol` conformance.
/// Use `RangeClassRef` only as an `unowned` reference to an existing `GtkRangeClass` instance.
///
public struct RangeClassRef: RangeClassProtocol {
        /// Untyped pointer to the underlying `GtkRangeClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension RangeClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkRangeClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkRangeClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkRangeClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkRangeClass>?) {
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

    /// Reference intialiser for a related type that implements `RangeClassProtocol`
    @inlinable init<T: RangeClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RangeClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: RangeClass Record: RangeClassProtocol extension (methods and fields)
public extension RangeClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRangeClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkRangeClass>! { return ptr?.assumingMemoryBound(to: GtkRangeClass.self) }


    @inlinable var parentClass: GtkWidgetClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    @inlinable var sliderDetail: UnsafeMutablePointer<gchar>! {
        get {
            let rv = _ptr.pointee.slider_detail
            return rv
        }
    }

    @inlinable var stepperDetail: UnsafeMutablePointer<gchar>! {
        get {
            let rv = _ptr.pointee.stepper_detail
            return rv
        }
    }

    // var valueChanged is unavailable because value_changed is void

    // var adjustBounds is unavailable because adjust_bounds is void

    // var moveSlider is unavailable because move_slider is void

    // var getRangeBorder is unavailable because get_range_border is void

    // var changeValue is unavailable because change_value is void

    // var getRangeSizeRequest is unavailable because get_range_size_request is void

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

}



// MARK: - RcContext Record


///
/// The `RcContextProtocol` protocol exposes the methods and properties of an underlying `GtkRcContext` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RcContext`.
/// Alternatively, use `RcContextRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol RcContextProtocol {
        /// Untyped pointer to the underlying `GtkRcContext` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkRcContext` instance.
    var _ptr: UnsafeMutablePointer<GtkRcContext>! { get }

    /// Required Initialiser for types conforming to `RcContextProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `RcContextRef` type acts as a lightweight Swift reference to an underlying `GtkRcContext` instance.
/// It exposes methods that can operate on this data type through `RcContextProtocol` conformance.
/// Use `RcContextRef` only as an `unowned` reference to an existing `GtkRcContext` instance.
///
public struct RcContextRef: RcContextProtocol {
        /// Untyped pointer to the underlying `GtkRcContext` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension RcContextRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkRcContext>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkRcContext>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkRcContext>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkRcContext>?) {
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

    /// Reference intialiser for a related type that implements `RcContextProtocol`
    @inlinable init<T: RcContextProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RcContextProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RcContextProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RcContextProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RcContextProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RcContextProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }


///
/// The `RcContext` type acts as an owner of an underlying `GtkRcContext` instance.
/// It provides the methods that can operate on this data type through `RcContextProtocol` conformance.
/// Use `RcContext` as a strong reference or owner of a `GtkRcContext` instance.
///
open class RcContext: RcContextProtocol {
        /// Untyped pointer to the underlying `GtkRcContext` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RcContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkRcContext>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RcContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkRcContext>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RcContext` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RcContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RcContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkRcContext>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RcContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkRcContext>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GtkRcContext` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `RcContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkRcContext>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GtkRcContext, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `RcContextProtocol`
    /// `GtkRcContext` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `RcContextProtocol`
    @inlinable public init<T: RcContextProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GtkRcContext, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GtkRcContext`.
    deinit {
        // no reference counting for GtkRcContext, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RcContextProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RcContextProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GtkRcContext, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RcContextProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RcContextProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GtkRcContext, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RcContextProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RcContextProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GtkRcContext, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RcContextProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RcContextProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GtkRcContext, cannot ref(_ptr)
    }



}

// MARK: no RcContext properties

// MARK: no RcContext signals

// MARK: RcContext has no signals
// MARK: RcContext Record: RcContextProtocol extension (methods and fields)
public extension RcContextProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRcContext` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkRcContext>! { return ptr?.assumingMemoryBound(to: GtkRcContext.self) }



}



// MARK: - RcProperty Record

/// Deprecated
///
/// The `RcPropertyProtocol` protocol exposes the methods and properties of an underlying `GtkRcProperty` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RcProperty`.
/// Alternatively, use `RcPropertyRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol RcPropertyProtocol {
        /// Untyped pointer to the underlying `GtkRcProperty` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkRcProperty` instance.
    var _ptr: UnsafeMutablePointer<GtkRcProperty>! { get }

    /// Required Initialiser for types conforming to `RcPropertyProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// Deprecated
///
/// The `RcPropertyRef` type acts as a lightweight Swift reference to an underlying `GtkRcProperty` instance.
/// It exposes methods that can operate on this data type through `RcPropertyProtocol` conformance.
/// Use `RcPropertyRef` only as an `unowned` reference to an existing `GtkRcProperty` instance.
///
public struct RcPropertyRef: RcPropertyProtocol {
        /// Untyped pointer to the underlying `GtkRcProperty` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension RcPropertyRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkRcProperty>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkRcProperty>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkRcProperty>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkRcProperty>?) {
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

    /// Reference intialiser for a related type that implements `RcPropertyProtocol`
    @inlinable init<T: RcPropertyProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RcPropertyProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RcPropertyProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RcPropertyProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RcPropertyProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RcPropertyProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// Deprecated
///
/// The `RcProperty` type acts as an owner of an underlying `GtkRcProperty` instance.
/// It provides the methods that can operate on this data type through `RcPropertyProtocol` conformance.
/// Use `RcProperty` as a strong reference or owner of a `GtkRcProperty` instance.
///
open class RcProperty: RcPropertyProtocol {
        /// Untyped pointer to the underlying `GtkRcProperty` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RcProperty` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkRcProperty>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RcProperty` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkRcProperty>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RcProperty` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RcProperty` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RcProperty` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkRcProperty>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RcProperty` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkRcProperty>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GtkRcProperty` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `RcProperty` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkRcProperty>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GtkRcProperty, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `RcPropertyProtocol`
    /// `GtkRcProperty` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `RcPropertyProtocol`
    @inlinable public init<T: RcPropertyProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GtkRcProperty, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GtkRcProperty`.
    deinit {
        // no reference counting for GtkRcProperty, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RcPropertyProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RcPropertyProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GtkRcProperty, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RcPropertyProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RcPropertyProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GtkRcProperty, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RcPropertyProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RcPropertyProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GtkRcProperty, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RcPropertyProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RcPropertyProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GtkRcProperty, cannot ref(_ptr)
    }



}

// MARK: no RcProperty properties

// MARK: no RcProperty signals

// MARK: RcProperty has no signals
// MARK: RcProperty Record: RcPropertyProtocol extension (methods and fields)
public extension RcPropertyProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRcProperty` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkRcProperty>! { return ptr?.assumingMemoryBound(to: GtkRcProperty.self) }


    /// quark-ified type identifier
    @inlinable var typeName: GQuark {
        /// quark-ified type identifier
        get {
            let rv = _ptr.pointee.type_name
            return rv
        }
        /// quark-ified type identifier
         set {
            _ptr.pointee.type_name = newValue
        }
    }

    /// quark-ified property identifier like
    ///   “GtkScrollbar`spacing`”
    @inlinable var propertyName: GQuark {
        /// quark-ified property identifier like
        ///   “GtkScrollbar`spacing`”
        get {
            let rv = _ptr.pointee.property_name
            return rv
        }
        /// quark-ified property identifier like
        ///   “GtkScrollbar`spacing`”
         set {
            _ptr.pointee.property_name = newValue
        }
    }

    /// field similar to one found in `GtkSettingsValue`
    @inlinable var origin: UnsafeMutablePointer<gchar>! {
        /// field similar to one found in `GtkSettingsValue`
        get {
            let rv = _ptr.pointee.origin
            return rv
        }
        /// field similar to one found in `GtkSettingsValue`
         set {
            _ptr.pointee.origin = newValue
        }
    }

    /// field similar to one found in `GtkSettingsValue`
    @inlinable var value: GValue {
        /// field similar to one found in `GtkSettingsValue`
        get {
            let rv = _ptr.pointee.value
            return rv
        }
        /// field similar to one found in `GtkSettingsValue`
         set {
            _ptr.pointee.value = newValue
        }
    }

}



/// Metatype/GType declaration for RcStyle
public extension RcStyleClassRef {
    
    /// This getter returns the GLib type identifier registered for `RcStyle`
    static var metatypeReference: GType { gtk_rc_style_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkRcStyleClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkRcStyleClass.self) }
    
    static var metatype: GtkRcStyleClass? { metatypePointer?.pointee } 
    
    static var wrapper: RcStyleClassRef? { RcStyleClassRef(metatypePointer) }
    
    
}

// MARK: - RcStyleClass Record


///
/// The `RcStyleClassProtocol` protocol exposes the methods and properties of an underlying `GtkRcStyleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RcStyleClass`.
/// Alternatively, use `RcStyleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol RcStyleClassProtocol {
        /// Untyped pointer to the underlying `GtkRcStyleClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkRcStyleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkRcStyleClass>! { get }

    /// Required Initialiser for types conforming to `RcStyleClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `RcStyleClassRef` type acts as a lightweight Swift reference to an underlying `GtkRcStyleClass` instance.
/// It exposes methods that can operate on this data type through `RcStyleClassProtocol` conformance.
/// Use `RcStyleClassRef` only as an `unowned` reference to an existing `GtkRcStyleClass` instance.
///
public struct RcStyleClassRef: RcStyleClassProtocol {
        /// Untyped pointer to the underlying `GtkRcStyleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension RcStyleClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkRcStyleClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkRcStyleClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkRcStyleClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkRcStyleClass>?) {
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

    /// Reference intialiser for a related type that implements `RcStyleClassProtocol`
    @inlinable init<T: RcStyleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RcStyleClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RcStyleClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RcStyleClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RcStyleClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RcStyleClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: RcStyleClass Record: RcStyleClassProtocol extension (methods and fields)
public extension RcStyleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRcStyleClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkRcStyleClass>! { return ptr?.assumingMemoryBound(to: GtkRcStyleClass.self) }


    /// The parent class.
    @inlinable var parentClass: GObjectClass {
        /// The parent class.
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var createRcStyle is unavailable because create_rc_style is void

    // var parse is unavailable because parse is void

    // var merge is unavailable because merge is void

    // var createStyle is unavailable because create_style is void

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

}



/// Metatype/GType declaration for RecentAction
public extension RecentActionClassRef {
    
    /// This getter returns the GLib type identifier registered for `RecentAction`
    static var metatypeReference: GType { gtk_recent_action_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkRecentActionClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkRecentActionClass.self) }
    
    static var metatype: GtkRecentActionClass? { metatypePointer?.pointee } 
    
    static var wrapper: RecentActionClassRef? { RecentActionClassRef(metatypePointer) }
    
    
}

// MARK: - RecentActionClass Record


///
/// The `RecentActionClassProtocol` protocol exposes the methods and properties of an underlying `GtkRecentActionClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RecentActionClass`.
/// Alternatively, use `RecentActionClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol RecentActionClassProtocol {
        /// Untyped pointer to the underlying `GtkRecentActionClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkRecentActionClass` instance.
    var _ptr: UnsafeMutablePointer<GtkRecentActionClass>! { get }

    /// Required Initialiser for types conforming to `RecentActionClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `RecentActionClassRef` type acts as a lightweight Swift reference to an underlying `GtkRecentActionClass` instance.
/// It exposes methods that can operate on this data type through `RecentActionClassProtocol` conformance.
/// Use `RecentActionClassRef` only as an `unowned` reference to an existing `GtkRecentActionClass` instance.
///
public struct RecentActionClassRef: RecentActionClassProtocol {
        /// Untyped pointer to the underlying `GtkRecentActionClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension RecentActionClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkRecentActionClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkRecentActionClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkRecentActionClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkRecentActionClass>?) {
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

    /// Reference intialiser for a related type that implements `RecentActionClassProtocol`
    @inlinable init<T: RecentActionClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentActionClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentActionClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentActionClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentActionClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentActionClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: RecentActionClass Record: RecentActionClassProtocol extension (methods and fields)
public extension RecentActionClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRecentActionClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkRecentActionClass>! { return ptr?.assumingMemoryBound(to: GtkRecentActionClass.self) }


    @inlinable var parentClass: GtkActionClass {
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



/// Metatype/GType declaration for RecentChooserDialog
public extension RecentChooserDialogClassRef {
    
    /// This getter returns the GLib type identifier registered for `RecentChooserDialog`
    static var metatypeReference: GType { gtk_recent_chooser_dialog_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkRecentChooserDialogClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkRecentChooserDialogClass.self) }
    
    static var metatype: GtkRecentChooserDialogClass? { metatypePointer?.pointee } 
    
    static var wrapper: RecentChooserDialogClassRef? { RecentChooserDialogClassRef(metatypePointer) }
    
    
}

// MARK: - RecentChooserDialogClass Record


///
/// The `RecentChooserDialogClassProtocol` protocol exposes the methods and properties of an underlying `GtkRecentChooserDialogClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RecentChooserDialogClass`.
/// Alternatively, use `RecentChooserDialogClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol RecentChooserDialogClassProtocol {
        /// Untyped pointer to the underlying `GtkRecentChooserDialogClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkRecentChooserDialogClass` instance.
    var _ptr: UnsafeMutablePointer<GtkRecentChooserDialogClass>! { get }

    /// Required Initialiser for types conforming to `RecentChooserDialogClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `RecentChooserDialogClassRef` type acts as a lightweight Swift reference to an underlying `GtkRecentChooserDialogClass` instance.
/// It exposes methods that can operate on this data type through `RecentChooserDialogClassProtocol` conformance.
/// Use `RecentChooserDialogClassRef` only as an `unowned` reference to an existing `GtkRecentChooserDialogClass` instance.
///
public struct RecentChooserDialogClassRef: RecentChooserDialogClassProtocol {
        /// Untyped pointer to the underlying `GtkRecentChooserDialogClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension RecentChooserDialogClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkRecentChooserDialogClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkRecentChooserDialogClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkRecentChooserDialogClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkRecentChooserDialogClass>?) {
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

    /// Reference intialiser for a related type that implements `RecentChooserDialogClassProtocol`
    @inlinable init<T: RecentChooserDialogClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserDialogClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserDialogClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserDialogClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserDialogClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserDialogClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: RecentChooserDialogClass Record: RecentChooserDialogClassProtocol extension (methods and fields)
public extension RecentChooserDialogClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRecentChooserDialogClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkRecentChooserDialogClass>! { return ptr?.assumingMemoryBound(to: GtkRecentChooserDialogClass.self) }


    @inlinable var parentClass: GtkDialogClass {
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



/// Metatype/GType declaration for RecentChooser
public extension RecentChooserIfaceRef {
    
    /// This getter returns the GLib type identifier registered for `RecentChooser`
    static var metatypeReference: GType { gtk_recent_chooser_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkRecentChooserIface>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkRecentChooserIface.self) }
    
    static var metatype: GtkRecentChooserIface? { metatypePointer?.pointee } 
    
    static var wrapper: RecentChooserIfaceRef? { RecentChooserIfaceRef(metatypePointer) }
    
    
}

// MARK: - RecentChooserIface Record


///
/// The `RecentChooserIfaceProtocol` protocol exposes the methods and properties of an underlying `GtkRecentChooserIface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RecentChooserIface`.
/// Alternatively, use `RecentChooserIfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol RecentChooserIfaceProtocol {
        /// Untyped pointer to the underlying `GtkRecentChooserIface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkRecentChooserIface` instance.
    var _ptr: UnsafeMutablePointer<GtkRecentChooserIface>! { get }

    /// Required Initialiser for types conforming to `RecentChooserIfaceProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `RecentChooserIfaceRef` type acts as a lightweight Swift reference to an underlying `GtkRecentChooserIface` instance.
/// It exposes methods that can operate on this data type through `RecentChooserIfaceProtocol` conformance.
/// Use `RecentChooserIfaceRef` only as an `unowned` reference to an existing `GtkRecentChooserIface` instance.
///
public struct RecentChooserIfaceRef: RecentChooserIfaceProtocol {
        /// Untyped pointer to the underlying `GtkRecentChooserIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension RecentChooserIfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkRecentChooserIface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkRecentChooserIface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkRecentChooserIface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkRecentChooserIface>?) {
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

    /// Reference intialiser for a related type that implements `RecentChooserIfaceProtocol`
    @inlinable init<T: RecentChooserIfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserIfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserIfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserIfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserIfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserIfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: RecentChooserIface Record: RecentChooserIfaceProtocol extension (methods and fields)
public extension RecentChooserIfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRecentChooserIface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkRecentChooserIface>! { return ptr?.assumingMemoryBound(to: GtkRecentChooserIface.self) }


    // var baseIface is unavailable because base_iface is private

    // var setCurrentURI is unavailable because set_current_uri is void

    // var getCurrentURI is unavailable because get_current_uri is void

    // var selectURI is unavailable because select_uri is void

    // var unselectURI is unavailable because unselect_uri is void

    // var selectAll is unavailable because select_all is void

    // var unselectAll is unavailable because unselect_all is void

    // var getItems is unavailable because get_items is void

    // var getRecentManager is unavailable because get_recent_manager is void

    // var addFilter is unavailable because add_filter is void

    // var removeFilter is unavailable because remove_filter is void

    // var listFilters is unavailable because list_filters is void

    // var setSortFunc is unavailable because set_sort_func is void

    // var itemActivated is unavailable because item_activated is void

    // var selectionChanged is unavailable because selection_changed is void

}



/// Metatype/GType declaration for RecentChooserMenu
public extension RecentChooserMenuClassRef {
    
    /// This getter returns the GLib type identifier registered for `RecentChooserMenu`
    static var metatypeReference: GType { gtk_recent_chooser_menu_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkRecentChooserMenuClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkRecentChooserMenuClass.self) }
    
    static var metatype: GtkRecentChooserMenuClass? { metatypePointer?.pointee } 
    
    static var wrapper: RecentChooserMenuClassRef? { RecentChooserMenuClassRef(metatypePointer) }
    
    
}

// MARK: - RecentChooserMenuClass Record


///
/// The `RecentChooserMenuClassProtocol` protocol exposes the methods and properties of an underlying `GtkRecentChooserMenuClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RecentChooserMenuClass`.
/// Alternatively, use `RecentChooserMenuClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol RecentChooserMenuClassProtocol {
        /// Untyped pointer to the underlying `GtkRecentChooserMenuClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkRecentChooserMenuClass` instance.
    var _ptr: UnsafeMutablePointer<GtkRecentChooserMenuClass>! { get }

    /// Required Initialiser for types conforming to `RecentChooserMenuClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `RecentChooserMenuClassRef` type acts as a lightweight Swift reference to an underlying `GtkRecentChooserMenuClass` instance.
/// It exposes methods that can operate on this data type through `RecentChooserMenuClassProtocol` conformance.
/// Use `RecentChooserMenuClassRef` only as an `unowned` reference to an existing `GtkRecentChooserMenuClass` instance.
///
public struct RecentChooserMenuClassRef: RecentChooserMenuClassProtocol {
        /// Untyped pointer to the underlying `GtkRecentChooserMenuClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension RecentChooserMenuClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkRecentChooserMenuClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkRecentChooserMenuClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkRecentChooserMenuClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkRecentChooserMenuClass>?) {
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

    /// Reference intialiser for a related type that implements `RecentChooserMenuClassProtocol`
    @inlinable init<T: RecentChooserMenuClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserMenuClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserMenuClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserMenuClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserMenuClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserMenuClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: RecentChooserMenuClass Record: RecentChooserMenuClassProtocol extension (methods and fields)
public extension RecentChooserMenuClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRecentChooserMenuClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkRecentChooserMenuClass>! { return ptr?.assumingMemoryBound(to: GtkRecentChooserMenuClass.self) }


    @inlinable var parentClass: GtkMenuClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var gtkRecent1 is unavailable because gtk_recent1 is void

    // var gtkRecent2 is unavailable because gtk_recent2 is void

    // var gtkRecent3 is unavailable because gtk_recent3 is void

    // var gtkRecent4 is unavailable because gtk_recent4 is void

}



/// Metatype/GType declaration for RecentChooserWidget
public extension RecentChooserWidgetClassRef {
    
    /// This getter returns the GLib type identifier registered for `RecentChooserWidget`
    static var metatypeReference: GType { gtk_recent_chooser_widget_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkRecentChooserWidgetClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkRecentChooserWidgetClass.self) }
    
    static var metatype: GtkRecentChooserWidgetClass? { metatypePointer?.pointee } 
    
    static var wrapper: RecentChooserWidgetClassRef? { RecentChooserWidgetClassRef(metatypePointer) }
    
    
}

// MARK: - RecentChooserWidgetClass Record


///
/// The `RecentChooserWidgetClassProtocol` protocol exposes the methods and properties of an underlying `GtkRecentChooserWidgetClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RecentChooserWidgetClass`.
/// Alternatively, use `RecentChooserWidgetClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol RecentChooserWidgetClassProtocol {
        /// Untyped pointer to the underlying `GtkRecentChooserWidgetClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkRecentChooserWidgetClass` instance.
    var _ptr: UnsafeMutablePointer<GtkRecentChooserWidgetClass>! { get }

    /// Required Initialiser for types conforming to `RecentChooserWidgetClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `RecentChooserWidgetClassRef` type acts as a lightweight Swift reference to an underlying `GtkRecentChooserWidgetClass` instance.
/// It exposes methods that can operate on this data type through `RecentChooserWidgetClassProtocol` conformance.
/// Use `RecentChooserWidgetClassRef` only as an `unowned` reference to an existing `GtkRecentChooserWidgetClass` instance.
///
public struct RecentChooserWidgetClassRef: RecentChooserWidgetClassProtocol {
        /// Untyped pointer to the underlying `GtkRecentChooserWidgetClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension RecentChooserWidgetClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkRecentChooserWidgetClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkRecentChooserWidgetClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkRecentChooserWidgetClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkRecentChooserWidgetClass>?) {
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

    /// Reference intialiser for a related type that implements `RecentChooserWidgetClassProtocol`
    @inlinable init<T: RecentChooserWidgetClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserWidgetClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserWidgetClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserWidgetClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserWidgetClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentChooserWidgetClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: RecentChooserWidgetClass Record: RecentChooserWidgetClassProtocol extension (methods and fields)
public extension RecentChooserWidgetClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRecentChooserWidgetClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkRecentChooserWidgetClass>! { return ptr?.assumingMemoryBound(to: GtkRecentChooserWidgetClass.self) }


    @inlinable var parentClass: GtkBoxClass {
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



// MARK: - RecentData Record

/// Meta-data to be passed to `gtk_recent_manager_add_full()` when
/// registering a recently used resource.
///
/// The `RecentDataProtocol` protocol exposes the methods and properties of an underlying `GtkRecentData` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RecentData`.
/// Alternatively, use `RecentDataRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol RecentDataProtocol {
        /// Untyped pointer to the underlying `GtkRecentData` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkRecentData` instance.
    var _ptr: UnsafeMutablePointer<GtkRecentData>! { get }

    /// Required Initialiser for types conforming to `RecentDataProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// Meta-data to be passed to `gtk_recent_manager_add_full()` when
/// registering a recently used resource.
///
/// The `RecentDataRef` type acts as a lightweight Swift reference to an underlying `GtkRecentData` instance.
/// It exposes methods that can operate on this data type through `RecentDataProtocol` conformance.
/// Use `RecentDataRef` only as an `unowned` reference to an existing `GtkRecentData` instance.
///
public struct RecentDataRef: RecentDataProtocol {
        /// Untyped pointer to the underlying `GtkRecentData` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension RecentDataRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkRecentData>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkRecentData>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkRecentData>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkRecentData>?) {
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

    /// Reference intialiser for a related type that implements `RecentDataProtocol`
    @inlinable init<T: RecentDataProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentDataProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentDataProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentDataProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentDataProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentDataProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// Meta-data to be passed to `gtk_recent_manager_add_full()` when
/// registering a recently used resource.
///
/// The `RecentData` type acts as an owner of an underlying `GtkRecentData` instance.
/// It provides the methods that can operate on this data type through `RecentDataProtocol` conformance.
/// Use `RecentData` as a strong reference or owner of a `GtkRecentData` instance.
///
open class RecentData: RecentDataProtocol {
        /// Untyped pointer to the underlying `GtkRecentData` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RecentData` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkRecentData>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RecentData` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkRecentData>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RecentData` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RecentData` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RecentData` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkRecentData>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RecentData` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkRecentData>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GtkRecentData` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `RecentData` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkRecentData>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GtkRecentData, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `RecentDataProtocol`
    /// `GtkRecentData` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `RecentDataProtocol`
    @inlinable public init<T: RecentDataProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GtkRecentData, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GtkRecentData`.
    deinit {
        // no reference counting for GtkRecentData, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentDataProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentDataProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GtkRecentData, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentDataProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentDataProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GtkRecentData, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentDataProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentDataProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GtkRecentData, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentDataProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentDataProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GtkRecentData, cannot ref(_ptr)
    }



}

// MARK: no RecentData properties

// MARK: no RecentData signals

// MARK: RecentData has no signals
// MARK: RecentData Record: RecentDataProtocol extension (methods and fields)
public extension RecentDataProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRecentData` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkRecentData>! { return ptr?.assumingMemoryBound(to: GtkRecentData.self) }


    /// a UTF-8 encoded string, containing the name of the recently
    ///   used resource to be displayed, or `nil`;
    @inlinable var displayName: UnsafeMutablePointer<gchar>! {
        /// a UTF-8 encoded string, containing the name of the recently
        ///   used resource to be displayed, or `nil`;
        get {
            let rv = _ptr.pointee.display_name
            return rv
        }
        /// a UTF-8 encoded string, containing the name of the recently
        ///   used resource to be displayed, or `nil`;
         set {
            _ptr.pointee.display_name = newValue
        }
    }

    /// a UTF-8 encoded string, containing a short description of
    ///   the resource, or `nil`;
    @inlinable var description: UnsafeMutablePointer<gchar>! {
        /// a UTF-8 encoded string, containing a short description of
        ///   the resource, or `nil`;
        get {
            let rv = _ptr.pointee.description
            return rv
        }
        /// a UTF-8 encoded string, containing a short description of
        ///   the resource, or `nil`;
         set {
            _ptr.pointee.description = newValue
        }
    }

    /// the MIME type of the resource;
    @inlinable var mimeType: UnsafeMutablePointer<gchar>! {
        /// the MIME type of the resource;
        get {
            let rv = _ptr.pointee.mime_type
            return rv
        }
        /// the MIME type of the resource;
         set {
            _ptr.pointee.mime_type = newValue
        }
    }

    /// the name of the application that is registering this recently
    ///   used resource;
    @inlinable var appName: UnsafeMutablePointer<gchar>! {
        /// the name of the application that is registering this recently
        ///   used resource;
        get {
            let rv = _ptr.pointee.app_name
            return rv
        }
        /// the name of the application that is registering this recently
        ///   used resource;
         set {
            _ptr.pointee.app_name = newValue
        }
    }

    /// command line used to launch this resource; may contain the
    ///   “\`f`” and “\`u`” escape characters which will be expanded
    ///   to the resource file path and URI respectively when the command line
    ///   is retrieved;
    @inlinable var appExec: UnsafeMutablePointer<gchar>! {
        /// command line used to launch this resource; may contain the
        ///   “\`f`” and “\`u`” escape characters which will be expanded
        ///   to the resource file path and URI respectively when the command line
        ///   is retrieved;
        get {
            let rv = _ptr.pointee.app_exec
            return rv
        }
        /// command line used to launch this resource; may contain the
        ///   “\`f`” and “\`u`” escape characters which will be expanded
        ///   to the resource file path and URI respectively when the command line
        ///   is retrieved;
         set {
            _ptr.pointee.app_exec = newValue
        }
    }

    /// a vector of strings containing
    ///   groups names;
    @inlinable var groups: UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! {
        /// a vector of strings containing
        ///   groups names;
        get {
            let rv = _ptr.pointee.groups
            return rv
        }
        /// a vector of strings containing
        ///   groups names;
         set {
            _ptr.pointee.groups = newValue
        }
    }

    /// whether this resource should be displayed only by the
    ///   applications that have registered it or not.
    @inlinable var isPrivate: gboolean {
        /// whether this resource should be displayed only by the
        ///   applications that have registered it or not.
        get {
            let rv = _ptr.pointee.is_private
            return rv
        }
        /// whether this resource should be displayed only by the
        ///   applications that have registered it or not.
         set {
            _ptr.pointee.is_private = newValue
        }
    }

}



// MARK: - RecentFilterInfo Record

/// A GtkRecentFilterInfo struct is used
/// to pass information about the tested file to `gtk_recent_filter_filter()`.
///
/// The `RecentFilterInfoProtocol` protocol exposes the methods and properties of an underlying `GtkRecentFilterInfo` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RecentFilterInfo`.
/// Alternatively, use `RecentFilterInfoRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol RecentFilterInfoProtocol {
        /// Untyped pointer to the underlying `GtkRecentFilterInfo` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkRecentFilterInfo` instance.
    var _ptr: UnsafeMutablePointer<GtkRecentFilterInfo>! { get }

    /// Required Initialiser for types conforming to `RecentFilterInfoProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A GtkRecentFilterInfo struct is used
/// to pass information about the tested file to `gtk_recent_filter_filter()`.
///
/// The `RecentFilterInfoRef` type acts as a lightweight Swift reference to an underlying `GtkRecentFilterInfo` instance.
/// It exposes methods that can operate on this data type through `RecentFilterInfoProtocol` conformance.
/// Use `RecentFilterInfoRef` only as an `unowned` reference to an existing `GtkRecentFilterInfo` instance.
///
public struct RecentFilterInfoRef: RecentFilterInfoProtocol {
        /// Untyped pointer to the underlying `GtkRecentFilterInfo` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension RecentFilterInfoRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkRecentFilterInfo>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkRecentFilterInfo>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkRecentFilterInfo>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkRecentFilterInfo>?) {
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

    /// Reference intialiser for a related type that implements `RecentFilterInfoProtocol`
    @inlinable init<T: RecentFilterInfoProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentFilterInfoProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentFilterInfoProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentFilterInfoProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentFilterInfoProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentFilterInfoProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// A GtkRecentFilterInfo struct is used
/// to pass information about the tested file to `gtk_recent_filter_filter()`.
///
/// The `RecentFilterInfo` type acts as an owner of an underlying `GtkRecentFilterInfo` instance.
/// It provides the methods that can operate on this data type through `RecentFilterInfoProtocol` conformance.
/// Use `RecentFilterInfo` as a strong reference or owner of a `GtkRecentFilterInfo` instance.
///
open class RecentFilterInfo: RecentFilterInfoProtocol {
        /// Untyped pointer to the underlying `GtkRecentFilterInfo` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RecentFilterInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkRecentFilterInfo>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RecentFilterInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkRecentFilterInfo>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RecentFilterInfo` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RecentFilterInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RecentFilterInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkRecentFilterInfo>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RecentFilterInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkRecentFilterInfo>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GtkRecentFilterInfo` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `RecentFilterInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkRecentFilterInfo>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GtkRecentFilterInfo, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `RecentFilterInfoProtocol`
    /// `GtkRecentFilterInfo` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `RecentFilterInfoProtocol`
    @inlinable public init<T: RecentFilterInfoProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GtkRecentFilterInfo, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GtkRecentFilterInfo`.
    deinit {
        // no reference counting for GtkRecentFilterInfo, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentFilterInfoProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentFilterInfoProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GtkRecentFilterInfo, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentFilterInfoProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentFilterInfoProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GtkRecentFilterInfo, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentFilterInfoProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentFilterInfoProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GtkRecentFilterInfo, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentFilterInfoProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentFilterInfoProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GtkRecentFilterInfo, cannot ref(_ptr)
    }



}

// MARK: no RecentFilterInfo properties

// MARK: no RecentFilterInfo signals

// MARK: RecentFilterInfo has no signals
// MARK: RecentFilterInfo Record: RecentFilterInfoProtocol extension (methods and fields)
public extension RecentFilterInfoProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRecentFilterInfo` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkRecentFilterInfo>! { return ptr?.assumingMemoryBound(to: GtkRecentFilterInfo.self) }


    /// `GtkRecentFilterFlags` to indicate which fields are set.
    @inlinable var contains: RecentFilterFlags {
        /// `GtkRecentFilterFlags` to indicate which fields are set.
        get {
            let rv = RecentFilterFlags(_ptr.pointee.contains)
            return rv
        }
        /// `GtkRecentFilterFlags` to indicate which fields are set.
         set {
            _ptr.pointee.contains = newValue.value
        }
    }

    /// The URI of the file being tested.
    @inlinable var uri: UnsafePointer<gchar>! {
        /// The URI of the file being tested.
        get {
            let rv = _ptr.pointee.uri
            return rv
        }
        /// The URI of the file being tested.
         set {
            _ptr.pointee.uri = newValue
        }
    }

    /// The string that will be used to display
    ///    the file in the recent chooser.
    @inlinable var displayName: UnsafePointer<gchar>! {
        /// The string that will be used to display
        ///    the file in the recent chooser.
        get {
            let rv = _ptr.pointee.display_name
            return rv
        }
        /// The string that will be used to display
        ///    the file in the recent chooser.
         set {
            _ptr.pointee.display_name = newValue
        }
    }

    /// MIME type of the file.
    @inlinable var mimeType: UnsafePointer<gchar>! {
        /// MIME type of the file.
        get {
            let rv = _ptr.pointee.mime_type
            return rv
        }
        /// MIME type of the file.
         set {
            _ptr.pointee.mime_type = newValue
        }
    }

    /// The list of
    ///    applications that have registered the file.
    @inlinable var applications: UnsafeMutablePointer<UnsafePointer<gchar>?>! {
        /// The list of
        ///    applications that have registered the file.
        get {
            let rv = _ptr.pointee.applications
            return rv
        }
        /// The list of
        ///    applications that have registered the file.
         set {
            _ptr.pointee.applications = newValue
        }
    }

    /// The groups to which
    ///    the file belongs to.
    @inlinable var groups: UnsafeMutablePointer<UnsafePointer<gchar>?>! {
        /// The groups to which
        ///    the file belongs to.
        get {
            let rv = _ptr.pointee.groups
            return rv
        }
        /// The groups to which
        ///    the file belongs to.
         set {
            _ptr.pointee.groups = newValue
        }
    }

    /// The number of days elapsed since the file has been
    ///    registered.
    @inlinable var age: gint {
        /// The number of days elapsed since the file has been
        ///    registered.
        get {
            let rv = _ptr.pointee.age
            return rv
        }
        /// The number of days elapsed since the file has been
        ///    registered.
         set {
            _ptr.pointee.age = newValue
        }
    }

}



// MARK: - RecentInfo Record

/// `GtkRecentInfo-struct` contains private data only, and should
/// be accessed using the provided API.
/// 
/// `GtkRecentInfo` constains all the meta-data
/// associated with an entry in the recently used files list.
///
/// The `RecentInfoProtocol` protocol exposes the methods and properties of an underlying `GtkRecentInfo` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RecentInfo`.
/// Alternatively, use `RecentInfoRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol RecentInfoProtocol {
        /// Untyped pointer to the underlying `GtkRecentInfo` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkRecentInfo` instance.
    var recent_info_ptr: UnsafeMutablePointer<GtkRecentInfo>! { get }

    /// Required Initialiser for types conforming to `RecentInfoProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GtkRecentInfo-struct` contains private data only, and should
/// be accessed using the provided API.
/// 
/// `GtkRecentInfo` constains all the meta-data
/// associated with an entry in the recently used files list.
///
/// The `RecentInfoRef` type acts as a lightweight Swift reference to an underlying `GtkRecentInfo` instance.
/// It exposes methods that can operate on this data type through `RecentInfoProtocol` conformance.
/// Use `RecentInfoRef` only as an `unowned` reference to an existing `GtkRecentInfo` instance.
///
public struct RecentInfoRef: RecentInfoProtocol {
        /// Untyped pointer to the underlying `GtkRecentInfo` instance.
    /// For type-safe access, use the generated, typed pointer `recent_info_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension RecentInfoRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkRecentInfo>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkRecentInfo>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkRecentInfo>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkRecentInfo>?) {
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

    /// Reference intialiser for a related type that implements `RecentInfoProtocol`
    @inlinable init<T: RecentInfoProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentInfoProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentInfoProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentInfoProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentInfoProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentInfoProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// `GtkRecentInfo-struct` contains private data only, and should
/// be accessed using the provided API.
/// 
/// `GtkRecentInfo` constains all the meta-data
/// associated with an entry in the recently used files list.
///
/// The `RecentInfo` type acts as a reference-counted owner of an underlying `GtkRecentInfo` instance.
/// It provides the methods that can operate on this data type through `RecentInfoProtocol` conformance.
/// Use `RecentInfo` as a strong reference or owner of a `GtkRecentInfo` instance.
///
open class RecentInfo: RecentInfoProtocol {
        /// Untyped pointer to the underlying `GtkRecentInfo` instance.
    /// For type-safe access, use the generated, typed pointer `recent_info_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RecentInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkRecentInfo>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RecentInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkRecentInfo>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RecentInfo` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RecentInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RecentInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkRecentInfo>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RecentInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkRecentInfo>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkRecentInfo`.
    /// i.e., ownership is transferred to the `RecentInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkRecentInfo>) {
        ptr = UnsafeMutableRawPointer(op)
        gtk_recent_info_ref(ptr.assumingMemoryBound(to: GtkRecentInfo.self))
    }

    /// Reference intialiser for a related type that implements `RecentInfoProtocol`
    /// Will retain `GtkRecentInfo`.
    /// - Parameter other: an instance of a related type that implements `RecentInfoProtocol`
    @inlinable public init<T: RecentInfoProtocol>(_ other: T) {
        ptr = other.ptr
        gtk_recent_info_ref(ptr.assumingMemoryBound(to: GtkRecentInfo.self))
    }

    /// Releases the underlying `GtkRecentInfo` instance using `gtk_recent_info_unref`.
    deinit {
        gtk_recent_info_unref(ptr.assumingMemoryBound(to: GtkRecentInfo.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentInfoProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentInfoProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        gtk_recent_info_ref(ptr.assumingMemoryBound(to: GtkRecentInfo.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentInfoProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentInfoProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        gtk_recent_info_ref(ptr.assumingMemoryBound(to: GtkRecentInfo.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentInfoProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentInfoProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        gtk_recent_info_ref(ptr.assumingMemoryBound(to: GtkRecentInfo.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentInfoProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentInfoProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        gtk_recent_info_ref(ptr.assumingMemoryBound(to: GtkRecentInfo.self))
    }



}

// MARK: no RecentInfo properties

// MARK: no RecentInfo signals

// MARK: RecentInfo has no signals
// MARK: RecentInfo Record: RecentInfoProtocol extension (methods and fields)
public extension RecentInfoProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRecentInfo` instance.
    @inlinable var recent_info_ptr: UnsafeMutablePointer<GtkRecentInfo>! { return ptr?.assumingMemoryBound(to: GtkRecentInfo.self) }

    /// Creates a `GAppInfo` for the specified `GtkRecentInfo`
    @inlinable func createAppInfo(appName: UnsafePointer<gchar>? = nil) throws -> GIO.AppInfoRef! {
        var error: UnsafeMutablePointer<GError>?
        let rv = GIO.AppInfoRef(gtk_recent_info_create_app_info(recent_info_ptr, appName, &error))
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Checks whether the resource pointed by `info` still exists.
    /// At the moment this check is done only on resources pointing
    /// to local files.
    @inlinable func exists() -> Bool {
        let rv = ((gtk_recent_info_exists(recent_info_ptr)) != 0)
        return rv
    }

    /// Gets the timestamp (seconds from system’s Epoch) when the resource
    /// was added to the recently used resources list.
    @inlinable func getAdded() -> time_t {
        let rv = gtk_recent_info_get_added(recent_info_ptr)
        return rv
    }

    /// Gets the number of days elapsed since the last update
    /// of the resource pointed by `info`.
    @inlinable func getAge() -> Int {
        let rv = Int(gtk_recent_info_get_age(recent_info_ptr))
        return rv
    }

    /// Gets the data regarding the application that has registered the resource
    /// pointed by `info`.
    /// 
    /// If the command line contains any escape characters defined inside the
    /// storage specification, they will be expanded.
    @inlinable func getApplicationInfo(appName: UnsafePointer<gchar>!, appExec: UnsafeMutablePointer<UnsafePointer<gchar>?>!, count: UnsafeMutablePointer<guint>!, time: UnsafeMutablePointer<time_t>!) -> Bool {
        let rv = ((gtk_recent_info_get_application_info(recent_info_ptr, appName, appExec, count, time)) != 0)
        return rv
    }

    /// Retrieves the list of applications that have registered this resource.
    @inlinable func getApplications(length: UnsafeMutablePointer<gsize>! = nil) -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! {
        let rv = gtk_recent_info_get_applications(recent_info_ptr, length)
        return rv
    }

    /// Gets the (short) description of the resource.
    @inlinable func getDescription() -> String! {
        let rv = gtk_recent_info_get_description(recent_info_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the name of the resource. If none has been defined, the basename
    /// of the resource is obtained.
    @inlinable func getDisplayName() -> String! {
        let rv = gtk_recent_info_get_display_name(recent_info_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Retrieves the icon associated to the resource MIME type.
    @inlinable func getIcon() -> GIO.IconRef! {
        let rv = GIO.IconRef(gtk_recent_info_get_gicon(recent_info_ptr))
        return rv
    }

    /// Returns all groups registered for the recently used item `info`.
    /// The array of returned group names will be `nil` terminated, so
    /// length might optionally be `nil`.
    @inlinable func getGroups(length: UnsafeMutablePointer<gsize>! = nil) -> UnsafeMutablePointer<UnsafeMutablePointer<gchar>?>! {
        let rv = gtk_recent_info_get_groups(recent_info_ptr, length)
        return rv
    }

    /// Retrieves the icon of size `size` associated to the resource MIME type.
    @inlinable func getIcon(size: Int) -> PixbufRef! {
        let rv = PixbufRef(gconstpointer: gconstpointer(gtk_recent_info_get_icon(recent_info_ptr, gint(size))))
        return rv
    }

    /// Gets the MIME type of the resource.
    @inlinable func getMimeType() -> String! {
        let rv = gtk_recent_info_get_mime_type(recent_info_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the timestamp (seconds from system’s Epoch) when the meta-data
    /// for the resource was last modified.
    @inlinable func getModified() -> time_t {
        let rv = gtk_recent_info_get_modified(recent_info_ptr)
        return rv
    }

    /// Gets the value of the “private” flag. Resources in the recently used
    /// list that have this flag set to `true` should only be displayed by the
    /// applications that have registered them.
    @inlinable func getPrivateHint() -> Bool {
        let rv = ((gtk_recent_info_get_private_hint(recent_info_ptr)) != 0)
        return rv
    }

    /// Computes a valid UTF-8 string that can be used as the
    /// name of the item in a menu or list. For example, calling
    /// this function on an item that refers to
    /// “file:///foo/bar.txt” will yield “bar.txt”.
    @inlinable func getShortName() -> String! {
        let rv = gtk_recent_info_get_short_name(recent_info_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the URI of the resource.
    @inlinable func getURI() -> String! {
        let rv = gtk_recent_info_get_uri(recent_info_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets a displayable version of the resource’s URI. If the resource
    /// is local, it returns a local path; if the resource is not local,
    /// it returns the UTF-8 encoded content of `gtk_recent_info_get_uri()`.
    @inlinable func getURIDisplay() -> String! {
        let rv = gtk_recent_info_get_uri_display(recent_info_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the timestamp (seconds from system’s Epoch) when the meta-data
    /// for the resource was last visited.
    @inlinable func getVisited() -> time_t {
        let rv = gtk_recent_info_get_visited(recent_info_ptr)
        return rv
    }

    /// Checks whether an application registered this resource using `app_name`.
    @inlinable func hasApplication(appName: UnsafePointer<gchar>!) -> Bool {
        let rv = ((gtk_recent_info_has_application(recent_info_ptr, appName)) != 0)
        return rv
    }

    /// Checks whether `group_name` appears inside the groups
    /// registered for the recently used item `info`.
    @inlinable func hasGroup(groupName: UnsafePointer<gchar>!) -> Bool {
        let rv = ((gtk_recent_info_has_group(recent_info_ptr, groupName)) != 0)
        return rv
    }

    /// Gets the name of the last application that have registered the
    /// recently used resource represented by `info`.
    @inlinable func lastApplication() -> String! {
        let rv = gtk_recent_info_last_application(recent_info_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Checks whether two `GtkRecentInfo-struct` point to the same
    /// resource.
    @inlinable func match<RecentInfoT: RecentInfoProtocol>(infoB: RecentInfoT) -> Bool {
        let rv = ((gtk_recent_info_match(recent_info_ptr, infoB.recent_info_ptr)) != 0)
        return rv
    }

    /// Increases the reference count of `recent_info` by one.
    @discardableResult @inlinable func ref() -> RecentInfoRef! {
        guard let rv = RecentInfoRef(gconstpointer: gconstpointer(gtk_recent_info_ref(recent_info_ptr))) else { return nil }
        return rv
    }

    /// Decreases the reference count of `info` by one. If the reference
    /// count reaches zero, `info` is deallocated, and the memory freed.
    @inlinable func unref() {
        gtk_recent_info_unref(recent_info_ptr)
    
    }
    /// Gets the timestamp (seconds from system’s Epoch) when the resource
    /// was added to the recently used resources list.
    @inlinable var added: time_t {
        /// Gets the timestamp (seconds from system’s Epoch) when the resource
        /// was added to the recently used resources list.
        get {
            let rv = gtk_recent_info_get_added(recent_info_ptr)
            return rv
        }
    }

    /// Gets the number of days elapsed since the last update
    /// of the resource pointed by `info`.
    @inlinable var age: Int {
        /// Gets the number of days elapsed since the last update
        /// of the resource pointed by `info`.
        get {
            let rv = Int(gtk_recent_info_get_age(recent_info_ptr))
            return rv
        }
    }

    /// Gets the (short) description of the resource.
    @inlinable var description: String! {
        /// Gets the (short) description of the resource.
        get {
            let rv = gtk_recent_info_get_description(recent_info_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets the name of the resource. If none has been defined, the basename
    /// of the resource is obtained.
    @inlinable var displayName: String! {
        /// Gets the name of the resource. If none has been defined, the basename
        /// of the resource is obtained.
        get {
            let rv = gtk_recent_info_get_display_name(recent_info_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Retrieves the icon associated to the resource MIME type.
    @inlinable var gicon: GIO.IconRef! {
        /// Retrieves the icon associated to the resource MIME type.
        get {
            let rv = GIO.IconRef(gtk_recent_info_get_gicon(recent_info_ptr))
            return rv
        }
    }

    /// Checks whether the resource is local or not by looking at the
    /// scheme of its URI.
    @inlinable var isLocal: Bool {
        /// Checks whether the resource is local or not by looking at the
        /// scheme of its URI.
        get {
            let rv = ((gtk_recent_info_is_local(recent_info_ptr)) != 0)
            return rv
        }
    }

    /// Gets the MIME type of the resource.
    @inlinable var mimeType: String! {
        /// Gets the MIME type of the resource.
        get {
            let rv = gtk_recent_info_get_mime_type(recent_info_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets the timestamp (seconds from system’s Epoch) when the meta-data
    /// for the resource was last modified.
    @inlinable var modified: time_t {
        /// Gets the timestamp (seconds from system’s Epoch) when the meta-data
        /// for the resource was last modified.
        get {
            let rv = gtk_recent_info_get_modified(recent_info_ptr)
            return rv
        }
    }

    /// Gets the value of the “private” flag. Resources in the recently used
    /// list that have this flag set to `true` should only be displayed by the
    /// applications that have registered them.
    @inlinable var privateHint: Bool {
        /// Gets the value of the “private” flag. Resources in the recently used
        /// list that have this flag set to `true` should only be displayed by the
        /// applications that have registered them.
        get {
            let rv = ((gtk_recent_info_get_private_hint(recent_info_ptr)) != 0)
            return rv
        }
    }

    /// Computes a valid UTF-8 string that can be used as the
    /// name of the item in a menu or list. For example, calling
    /// this function on an item that refers to
    /// “file:///foo/bar.txt” will yield “bar.txt”.
    @inlinable var shortName: String! {
        /// Computes a valid UTF-8 string that can be used as the
        /// name of the item in a menu or list. For example, calling
        /// this function on an item that refers to
        /// “file:///foo/bar.txt” will yield “bar.txt”.
        get {
            let rv = gtk_recent_info_get_short_name(recent_info_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets the URI of the resource.
    @inlinable var uri: String! {
        /// Gets the URI of the resource.
        get {
            let rv = gtk_recent_info_get_uri(recent_info_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets a displayable version of the resource’s URI. If the resource
    /// is local, it returns a local path; if the resource is not local,
    /// it returns the UTF-8 encoded content of `gtk_recent_info_get_uri()`.
    @inlinable var uriDisplay: String! {
        /// Gets a displayable version of the resource’s URI. If the resource
        /// is local, it returns a local path; if the resource is not local,
        /// it returns the UTF-8 encoded content of `gtk_recent_info_get_uri()`.
        get {
            let rv = gtk_recent_info_get_uri_display(recent_info_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets the timestamp (seconds from system’s Epoch) when the meta-data
    /// for the resource was last visited.
    @inlinable var visited: time_t {
        /// Gets the timestamp (seconds from system’s Epoch) when the meta-data
        /// for the resource was last visited.
        get {
            let rv = gtk_recent_info_get_visited(recent_info_ptr)
            return rv
        }
    }


}



/// Metatype/GType declaration for RecentManager
public extension RecentManagerClassRef {
    
    /// This getter returns the GLib type identifier registered for `RecentManager`
    static var metatypeReference: GType { gtk_recent_manager_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkRecentManagerClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkRecentManagerClass.self) }
    
    static var metatype: GtkRecentManagerClass? { metatypePointer?.pointee } 
    
    static var wrapper: RecentManagerClassRef? { RecentManagerClassRef(metatypePointer) }
    
    
}

// MARK: - RecentManagerClass Record

/// `GtkRecentManagerClass` contains only private data.
///
/// The `RecentManagerClassProtocol` protocol exposes the methods and properties of an underlying `GtkRecentManagerClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RecentManagerClass`.
/// Alternatively, use `RecentManagerClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol RecentManagerClassProtocol {
        /// Untyped pointer to the underlying `GtkRecentManagerClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkRecentManagerClass` instance.
    var _ptr: UnsafeMutablePointer<GtkRecentManagerClass>! { get }

    /// Required Initialiser for types conforming to `RecentManagerClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GtkRecentManagerClass` contains only private data.
///
/// The `RecentManagerClassRef` type acts as a lightweight Swift reference to an underlying `GtkRecentManagerClass` instance.
/// It exposes methods that can operate on this data type through `RecentManagerClassProtocol` conformance.
/// Use `RecentManagerClassRef` only as an `unowned` reference to an existing `GtkRecentManagerClass` instance.
///
public struct RecentManagerClassRef: RecentManagerClassProtocol {
        /// Untyped pointer to the underlying `GtkRecentManagerClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension RecentManagerClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkRecentManagerClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkRecentManagerClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkRecentManagerClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkRecentManagerClass>?) {
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

    /// Reference intialiser for a related type that implements `RecentManagerClassProtocol`
    @inlinable init<T: RecentManagerClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentManagerClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentManagerClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentManagerClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentManagerClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RecentManagerClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: RecentManagerClass Record: RecentManagerClassProtocol extension (methods and fields)
public extension RecentManagerClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRecentManagerClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkRecentManagerClass>! { return ptr?.assumingMemoryBound(to: GtkRecentManagerClass.self) }


    // var parentClass is unavailable because parent_class is private

    // var changed is unavailable because changed is void

    // var GtkRecent1 is unavailable because _gtk_recent1 is void

    // var GtkRecent2 is unavailable because _gtk_recent2 is void

    // var GtkRecent3 is unavailable because _gtk_recent3 is void

    // var GtkRecent4 is unavailable because _gtk_recent4 is void

}



/// Metatype/GType declaration for RendererCellAccessible
public extension RendererCellAccessibleClassRef {
    
    /// This getter returns the GLib type identifier registered for `RendererCellAccessible`
    static var metatypeReference: GType { gtk_renderer_cell_accessible_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkRendererCellAccessibleClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkRendererCellAccessibleClass.self) }
    
    static var metatype: GtkRendererCellAccessibleClass? { metatypePointer?.pointee } 
    
    static var wrapper: RendererCellAccessibleClassRef? { RendererCellAccessibleClassRef(metatypePointer) }
    
    
}

// MARK: - RendererCellAccessibleClass Record


///
/// The `RendererCellAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkRendererCellAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RendererCellAccessibleClass`.
/// Alternatively, use `RendererCellAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol RendererCellAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkRendererCellAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkRendererCellAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkRendererCellAccessibleClass>! { get }

    /// Required Initialiser for types conforming to `RendererCellAccessibleClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `RendererCellAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkRendererCellAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `RendererCellAccessibleClassProtocol` conformance.
/// Use `RendererCellAccessibleClassRef` only as an `unowned` reference to an existing `GtkRendererCellAccessibleClass` instance.
///
public struct RendererCellAccessibleClassRef: RendererCellAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkRendererCellAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension RendererCellAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkRendererCellAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkRendererCellAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkRendererCellAccessibleClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkRendererCellAccessibleClass>?) {
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

    /// Reference intialiser for a related type that implements `RendererCellAccessibleClassProtocol`
    @inlinable init<T: RendererCellAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererCellAccessibleClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererCellAccessibleClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererCellAccessibleClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererCellAccessibleClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RendererCellAccessibleClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: RendererCellAccessibleClass Record: RendererCellAccessibleClassProtocol extension (methods and fields)
public extension RendererCellAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRendererCellAccessibleClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkRendererCellAccessibleClass>! { return ptr?.assumingMemoryBound(to: GtkRendererCellAccessibleClass.self) }


    @inlinable var parentClass: GtkCellAccessibleClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



// MARK: - RequestedSize Record

/// Represents a request of a screen object in a given orientation. These
/// are primarily used in container implementations when allocating a natural
/// size for children calling. See `gtk_distribute_natural_allocation()`.
///
/// The `RequestedSizeProtocol` protocol exposes the methods and properties of an underlying `GtkRequestedSize` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RequestedSize`.
/// Alternatively, use `RequestedSizeRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol RequestedSizeProtocol {
        /// Untyped pointer to the underlying `GtkRequestedSize` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkRequestedSize` instance.
    var _ptr: UnsafeMutablePointer<GtkRequestedSize>! { get }

    /// Required Initialiser for types conforming to `RequestedSizeProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// Represents a request of a screen object in a given orientation. These
/// are primarily used in container implementations when allocating a natural
/// size for children calling. See `gtk_distribute_natural_allocation()`.
///
/// The `RequestedSizeRef` type acts as a lightweight Swift reference to an underlying `GtkRequestedSize` instance.
/// It exposes methods that can operate on this data type through `RequestedSizeProtocol` conformance.
/// Use `RequestedSizeRef` only as an `unowned` reference to an existing `GtkRequestedSize` instance.
///
public struct RequestedSizeRef: RequestedSizeProtocol {
        /// Untyped pointer to the underlying `GtkRequestedSize` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension RequestedSizeRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkRequestedSize>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkRequestedSize>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkRequestedSize>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkRequestedSize>?) {
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

    /// Reference intialiser for a related type that implements `RequestedSizeProtocol`
    @inlinable init<T: RequestedSizeProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RequestedSizeProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RequestedSizeProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RequestedSizeProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RequestedSizeProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RequestedSizeProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// Represents a request of a screen object in a given orientation. These
/// are primarily used in container implementations when allocating a natural
/// size for children calling. See `gtk_distribute_natural_allocation()`.
///
/// The `RequestedSize` type acts as an owner of an underlying `GtkRequestedSize` instance.
/// It provides the methods that can operate on this data type through `RequestedSizeProtocol` conformance.
/// Use `RequestedSize` as a strong reference or owner of a `GtkRequestedSize` instance.
///
open class RequestedSize: RequestedSizeProtocol {
        /// Untyped pointer to the underlying `GtkRequestedSize` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RequestedSize` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkRequestedSize>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RequestedSize` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkRequestedSize>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RequestedSize` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RequestedSize` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RequestedSize` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkRequestedSize>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `RequestedSize` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkRequestedSize>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GtkRequestedSize` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `RequestedSize` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkRequestedSize>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GtkRequestedSize, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `RequestedSizeProtocol`
    /// `GtkRequestedSize` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `RequestedSizeProtocol`
    @inlinable public init<T: RequestedSizeProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GtkRequestedSize, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GtkRequestedSize`.
    deinit {
        // no reference counting for GtkRequestedSize, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RequestedSizeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RequestedSizeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GtkRequestedSize, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RequestedSizeProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RequestedSizeProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GtkRequestedSize, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RequestedSizeProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RequestedSizeProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GtkRequestedSize, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RequestedSizeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RequestedSizeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GtkRequestedSize, cannot ref(_ptr)
    }



}

// MARK: no RequestedSize properties

// MARK: no RequestedSize signals

// MARK: RequestedSize has no signals
// MARK: RequestedSize Record: RequestedSizeProtocol extension (methods and fields)
public extension RequestedSizeProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRequestedSize` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkRequestedSize>! { return ptr?.assumingMemoryBound(to: GtkRequestedSize.self) }

    /// Distributes `extra_space` to child `sizes` by bringing smaller
    /// children up to natural size first.
    /// 
    /// The remaining space will be added to the `minimum_size` member of the
    /// GtkRequestedSize struct. If all sizes reach their natural size then
    /// the remaining space is returned.
    @inlinable func distributeNaturalAllocation(extraSpace: Int, nRequestedSizes: Int) -> Int {
        let rv = Int(gtk_distribute_natural_allocation(gint(extraSpace), guint(nRequestedSizes), _ptr))
        return rv
    }

    /// A client pointer
    @inlinable var data: gpointer! {
        /// A client pointer
        get {
            let rv = _ptr.pointee.data
            return rv
        }
        /// A client pointer
         set {
            _ptr.pointee.data = newValue
        }
    }

    /// The minimum size needed for allocation in a given orientation
    @inlinable var minimumSize: gint {
        /// The minimum size needed for allocation in a given orientation
        get {
            let rv = _ptr.pointee.minimum_size
            return rv
        }
        /// The minimum size needed for allocation in a given orientation
         set {
            _ptr.pointee.minimum_size = newValue
        }
    }

    /// The natural size for allocation in a given orientation
    @inlinable var naturalSize: gint {
        /// The natural size for allocation in a given orientation
        get {
            let rv = _ptr.pointee.natural_size
            return rv
        }
        /// The natural size for allocation in a given orientation
         set {
            _ptr.pointee.natural_size = newValue
        }
    }

}



// MARK: - Requisition Record

/// A `GtkRequisition-struct` represents the desired size of a widget. See
/// [GtkWidget’s geometry management section](#geometry-management) for
/// more information.
///
/// The `RequisitionProtocol` protocol exposes the methods and properties of an underlying `GtkRequisition` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Requisition`.
/// Alternatively, use `RequisitionRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol RequisitionProtocol {
        /// Untyped pointer to the underlying `GtkRequisition` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkRequisition` instance.
    var requisition_ptr: UnsafeMutablePointer<GtkRequisition>! { get }

    /// Required Initialiser for types conforming to `RequisitionProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `GtkRequisition-struct` represents the desired size of a widget. See
/// [GtkWidget’s geometry management section](#geometry-management) for
/// more information.
///
/// The `RequisitionRef` type acts as a lightweight Swift reference to an underlying `GtkRequisition` instance.
/// It exposes methods that can operate on this data type through `RequisitionProtocol` conformance.
/// Use `RequisitionRef` only as an `unowned` reference to an existing `GtkRequisition` instance.
///
public struct RequisitionRef: RequisitionProtocol {
        /// Untyped pointer to the underlying `GtkRequisition` instance.
    /// For type-safe access, use the generated, typed pointer `requisition_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension RequisitionRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkRequisition>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkRequisition>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkRequisition>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkRequisition>?) {
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

    /// Reference intialiser for a related type that implements `RequisitionProtocol`
    @inlinable init<T: RequisitionProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RequisitionProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RequisitionProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RequisitionProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RequisitionProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RequisitionProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Allocates a new `GtkRequisition-struct` and initializes its elements to zero.
    @inlinable init() {
        let rv = gtk_requisition_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// A `GtkRequisition-struct` represents the desired size of a widget. See
/// [GtkWidget’s geometry management section](#geometry-management) for
/// more information.
///
/// The `Requisition` type acts as an owner of an underlying `GtkRequisition` instance.
/// It provides the methods that can operate on this data type through `RequisitionProtocol` conformance.
/// Use `Requisition` as a strong reference or owner of a `GtkRequisition` instance.
///
open class Requisition: RequisitionProtocol {
        /// Untyped pointer to the underlying `GtkRequisition` instance.
    /// For type-safe access, use the generated, typed pointer `requisition_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Requisition` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkRequisition>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Requisition` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkRequisition>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Requisition` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Requisition` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Requisition` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkRequisition>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Requisition` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkRequisition>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GtkRequisition` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Requisition` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkRequisition>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GtkRequisition, cannot ref(requisition_ptr)
    }

    /// Reference intialiser for a related type that implements `RequisitionProtocol`
    /// `GtkRequisition` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `RequisitionProtocol`
    @inlinable public init<T: RequisitionProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GtkRequisition, cannot ref(requisition_ptr)
    }

    /// Do-nothing destructor for `GtkRequisition`.
    deinit {
        // no reference counting for GtkRequisition, cannot unref(requisition_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RequisitionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RequisitionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GtkRequisition, cannot ref(requisition_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RequisitionProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RequisitionProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GtkRequisition, cannot ref(requisition_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RequisitionProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RequisitionProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GtkRequisition, cannot ref(requisition_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RequisitionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RequisitionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GtkRequisition, cannot ref(requisition_ptr)
    }

    /// Allocates a new `GtkRequisition-struct` and initializes its elements to zero.
    @inlinable public init() {
        let rv = gtk_requisition_new()
        ptr = UnsafeMutableRawPointer(rv)
    }


}

// MARK: no Requisition properties

// MARK: no Requisition signals

// MARK: Requisition has no signals
// MARK: Requisition Record: RequisitionProtocol extension (methods and fields)
public extension RequisitionProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRequisition` instance.
    @inlinable var requisition_ptr: UnsafeMutablePointer<GtkRequisition>! { return ptr?.assumingMemoryBound(to: GtkRequisition.self) }

    /// Copies a `GtkRequisition`.
    @inlinable func copy() -> RequisitionRef! {
        guard let rv = RequisitionRef(gconstpointer: gconstpointer(gtk_requisition_copy(requisition_ptr))) else { return nil }
        return rv
    }

    /// Frees a `GtkRequisition`.
    @inlinable func free() {
        gtk_requisition_free(requisition_ptr)
    
    }

    /// the widget’s desired width
    @inlinable var width: gint {
        /// the widget’s desired width
        get {
            let rv = requisition_ptr.pointee.width
            return rv
        }
        /// the widget’s desired width
         set {
            requisition_ptr.pointee.width = newValue
        }
    }

    /// the widget’s desired height
    @inlinable var height: gint {
        /// the widget’s desired height
        get {
            let rv = requisition_ptr.pointee.height
            return rv
        }
        /// the widget’s desired height
         set {
            requisition_ptr.pointee.height = newValue
        }
    }

}



/// Metatype/GType declaration for Revealer
public extension RevealerClassRef {
    
    /// This getter returns the GLib type identifier registered for `Revealer`
    static var metatypeReference: GType { gtk_revealer_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkRevealerClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkRevealerClass.self) }
    
    static var metatype: GtkRevealerClass? { metatypePointer?.pointee } 
    
    static var wrapper: RevealerClassRef? { RevealerClassRef(metatypePointer) }
    
    
}

// MARK: - RevealerClass Record


///
/// The `RevealerClassProtocol` protocol exposes the methods and properties of an underlying `GtkRevealerClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `RevealerClass`.
/// Alternatively, use `RevealerClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol RevealerClassProtocol {
        /// Untyped pointer to the underlying `GtkRevealerClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkRevealerClass` instance.
    var _ptr: UnsafeMutablePointer<GtkRevealerClass>! { get }

    /// Required Initialiser for types conforming to `RevealerClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `RevealerClassRef` type acts as a lightweight Swift reference to an underlying `GtkRevealerClass` instance.
/// It exposes methods that can operate on this data type through `RevealerClassProtocol` conformance.
/// Use `RevealerClassRef` only as an `unowned` reference to an existing `GtkRevealerClass` instance.
///
public struct RevealerClassRef: RevealerClassProtocol {
        /// Untyped pointer to the underlying `GtkRevealerClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension RevealerClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkRevealerClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkRevealerClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkRevealerClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkRevealerClass>?) {
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

    /// Reference intialiser for a related type that implements `RevealerClassProtocol`
    @inlinable init<T: RevealerClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RevealerClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RevealerClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RevealerClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RevealerClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `RevealerClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: RevealerClass Record: RevealerClassProtocol extension (methods and fields)
public extension RevealerClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkRevealerClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkRevealerClass>! { return ptr?.assumingMemoryBound(to: GtkRevealerClass.self) }


    /// The parent class.
    @inlinable var parentClass: GtkBinClass {
        /// The parent class.
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for ScaleAccessible
public extension ScaleAccessibleClassRef {
    
    /// This getter returns the GLib type identifier registered for `ScaleAccessible`
    static var metatypeReference: GType { gtk_scale_accessible_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkScaleAccessibleClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkScaleAccessibleClass.self) }
    
    static var metatype: GtkScaleAccessibleClass? { metatypePointer?.pointee } 
    
    static var wrapper: ScaleAccessibleClassRef? { ScaleAccessibleClassRef(metatypePointer) }
    
    
}

// MARK: - ScaleAccessibleClass Record


///
/// The `ScaleAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkScaleAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ScaleAccessibleClass`.
/// Alternatively, use `ScaleAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ScaleAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkScaleAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkScaleAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkScaleAccessibleClass>! { get }

    /// Required Initialiser for types conforming to `ScaleAccessibleClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `ScaleAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkScaleAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `ScaleAccessibleClassProtocol` conformance.
/// Use `ScaleAccessibleClassRef` only as an `unowned` reference to an existing `GtkScaleAccessibleClass` instance.
///
public struct ScaleAccessibleClassRef: ScaleAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkScaleAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ScaleAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkScaleAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkScaleAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkScaleAccessibleClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkScaleAccessibleClass>?) {
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

    /// Reference intialiser for a related type that implements `ScaleAccessibleClassProtocol`
    @inlinable init<T: ScaleAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleAccessibleClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleAccessibleClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleAccessibleClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleAccessibleClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleAccessibleClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ScaleAccessibleClass Record: ScaleAccessibleClassProtocol extension (methods and fields)
public extension ScaleAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkScaleAccessibleClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkScaleAccessibleClass>! { return ptr?.assumingMemoryBound(to: GtkScaleAccessibleClass.self) }


    @inlinable var parentClass: GtkRangeAccessibleClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



