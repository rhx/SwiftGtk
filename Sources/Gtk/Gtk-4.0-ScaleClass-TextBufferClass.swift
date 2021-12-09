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

/// Metatype/GType declaration for Scale
public extension ScaleClassRef {
    
    /// This getter returns the GLib type identifier registered for `Scale`
    static var metatypeReference: GType { gtk_scale_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkScaleClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkScaleClass.self) }
    
    static var metatype: GtkScaleClass? { metatypePointer?.pointee } 
    
    static var wrapper: ScaleClassRef? { ScaleClassRef(metatypePointer) }
    
    
}

// MARK: - ScaleClass Record


///
/// The `ScaleClassProtocol` protocol exposes the methods and properties of an underlying `GtkScaleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ScaleClass`.
/// Alternatively, use `ScaleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ScaleClassProtocol {
        /// Untyped pointer to the underlying `GtkScaleClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkScaleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkScaleClass>! { get }

    /// Required Initialiser for types conforming to `ScaleClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `ScaleClassRef` type acts as a lightweight Swift reference to an underlying `GtkScaleClass` instance.
/// It exposes methods that can operate on this data type through `ScaleClassProtocol` conformance.
/// Use `ScaleClassRef` only as an `unowned` reference to an existing `GtkScaleClass` instance.
///
public struct ScaleClassRef: ScaleClassProtocol {
        /// Untyped pointer to the underlying `GtkScaleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ScaleClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkScaleClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkScaleClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkScaleClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkScaleClass>?) {
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

    /// Reference intialiser for a related type that implements `ScaleClassProtocol`
    @inlinable init<T: ScaleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScaleClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ScaleClass Record: ScaleClassProtocol extension (methods and fields)
public extension ScaleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkScaleClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkScaleClass>! { return ptr?.assumingMemoryBound(to: GtkScaleClass.self) }


    @inlinable var parentClass: GtkRangeClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var getLayoutOffsets is unavailable because get_layout_offsets is void

    // var padding is unavailable because padding is private

}



/// Metatype/GType declaration for Scrollable
public extension ScrollableInterfaceRef {
    
    /// This getter returns the GLib type identifier registered for `Scrollable`
    static var metatypeReference: GType { gtk_scrollable_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkScrollableInterface>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkScrollableInterface.self) }
    
    static var metatype: GtkScrollableInterface? { metatypePointer?.pointee } 
    
    static var wrapper: ScrollableInterfaceRef? { ScrollableInterfaceRef(metatypePointer) }
    
    
}

// MARK: - ScrollableInterface Record


///
/// The `ScrollableInterfaceProtocol` protocol exposes the methods and properties of an underlying `GtkScrollableInterface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ScrollableInterface`.
/// Alternatively, use `ScrollableInterfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ScrollableInterfaceProtocol {
        /// Untyped pointer to the underlying `GtkScrollableInterface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkScrollableInterface` instance.
    var _ptr: UnsafeMutablePointer<GtkScrollableInterface>! { get }

    /// Required Initialiser for types conforming to `ScrollableInterfaceProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `ScrollableInterfaceRef` type acts as a lightweight Swift reference to an underlying `GtkScrollableInterface` instance.
/// It exposes methods that can operate on this data type through `ScrollableInterfaceProtocol` conformance.
/// Use `ScrollableInterfaceRef` only as an `unowned` reference to an existing `GtkScrollableInterface` instance.
///
public struct ScrollableInterfaceRef: ScrollableInterfaceProtocol {
        /// Untyped pointer to the underlying `GtkScrollableInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ScrollableInterfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkScrollableInterface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkScrollableInterface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkScrollableInterface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkScrollableInterface>?) {
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

    /// Reference intialiser for a related type that implements `ScrollableInterfaceProtocol`
    @inlinable init<T: ScrollableInterfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrollableInterfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrollableInterfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrollableInterfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrollableInterfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ScrollableInterfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ScrollableInterface Record: ScrollableInterfaceProtocol extension (methods and fields)
public extension ScrollableInterfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkScrollableInterface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkScrollableInterface>! { return ptr?.assumingMemoryBound(to: GtkScrollableInterface.self) }


    @inlinable var baseIface: GTypeInterface {
        get {
            let rv = _ptr.pointee.base_iface
            return rv
        }
    }

    // var getBorder is unavailable because get_border is void

}



/// Metatype/GType declaration for SelectionFilterModel
public extension SelectionFilterModelClassRef {
    
    /// This getter returns the GLib type identifier registered for `SelectionFilterModel`
    static var metatypeReference: GType { gtk_selection_filter_model_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkSelectionFilterModelClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkSelectionFilterModelClass.self) }
    
    static var metatype: GtkSelectionFilterModelClass? { metatypePointer?.pointee } 
    
    static var wrapper: SelectionFilterModelClassRef? { SelectionFilterModelClassRef(metatypePointer) }
    
    
}

// MARK: - SelectionFilterModelClass Record


///
/// The `SelectionFilterModelClassProtocol` protocol exposes the methods and properties of an underlying `GtkSelectionFilterModelClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SelectionFilterModelClass`.
/// Alternatively, use `SelectionFilterModelClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol SelectionFilterModelClassProtocol {
        /// Untyped pointer to the underlying `GtkSelectionFilterModelClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkSelectionFilterModelClass` instance.
    var _ptr: UnsafeMutablePointer<GtkSelectionFilterModelClass>! { get }

    /// Required Initialiser for types conforming to `SelectionFilterModelClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `SelectionFilterModelClassRef` type acts as a lightweight Swift reference to an underlying `GtkSelectionFilterModelClass` instance.
/// It exposes methods that can operate on this data type through `SelectionFilterModelClassProtocol` conformance.
/// Use `SelectionFilterModelClassRef` only as an `unowned` reference to an existing `GtkSelectionFilterModelClass` instance.
///
public struct SelectionFilterModelClassRef: SelectionFilterModelClassProtocol {
        /// Untyped pointer to the underlying `GtkSelectionFilterModelClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension SelectionFilterModelClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkSelectionFilterModelClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkSelectionFilterModelClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkSelectionFilterModelClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkSelectionFilterModelClass>?) {
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

    /// Reference intialiser for a related type that implements `SelectionFilterModelClassProtocol`
    @inlinable init<T: SelectionFilterModelClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SelectionFilterModelClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SelectionFilterModelClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SelectionFilterModelClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SelectionFilterModelClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SelectionFilterModelClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: SelectionFilterModelClass Record: SelectionFilterModelClassProtocol extension (methods and fields)
public extension SelectionFilterModelClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkSelectionFilterModelClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkSelectionFilterModelClass>! { return ptr?.assumingMemoryBound(to: GtkSelectionFilterModelClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for SelectionModel
public extension SelectionModelInterfaceRef {
    
    /// This getter returns the GLib type identifier registered for `SelectionModel`
    static var metatypeReference: GType { gtk_selection_model_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkSelectionModelInterface>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkSelectionModelInterface.self) }
    
    static var metatype: GtkSelectionModelInterface? { metatypePointer?.pointee } 
    
    static var wrapper: SelectionModelInterfaceRef? { SelectionModelInterfaceRef(metatypePointer) }
    
    
}

// MARK: - SelectionModelInterface Record

/// The list of virtual functions for the `GtkSelectionModel` interface.
/// No function must be implemented, but unless `GtkSelectionModel`is_selected``()``
/// is implemented, it will not be possible to select items in the set.
/// 
/// The model does not need to implement any functions to support either
/// selecting or unselecting items. Of course, if the model does not do that,
/// it means that users cannot select or unselect items in a list widget
/// using the model.
/// 
/// All selection functions fall back to `GtkSelectionModel`set_selection``()``
/// so it is sufficient to implement just that function for full selection
/// support.
///
/// The `SelectionModelInterfaceProtocol` protocol exposes the methods and properties of an underlying `GtkSelectionModelInterface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SelectionModelInterface`.
/// Alternatively, use `SelectionModelInterfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol SelectionModelInterfaceProtocol {
        /// Untyped pointer to the underlying `GtkSelectionModelInterface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkSelectionModelInterface` instance.
    var _ptr: UnsafeMutablePointer<GtkSelectionModelInterface>! { get }

    /// Required Initialiser for types conforming to `SelectionModelInterfaceProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The list of virtual functions for the `GtkSelectionModel` interface.
/// No function must be implemented, but unless `GtkSelectionModel`is_selected``()``
/// is implemented, it will not be possible to select items in the set.
/// 
/// The model does not need to implement any functions to support either
/// selecting or unselecting items. Of course, if the model does not do that,
/// it means that users cannot select or unselect items in a list widget
/// using the model.
/// 
/// All selection functions fall back to `GtkSelectionModel`set_selection``()``
/// so it is sufficient to implement just that function for full selection
/// support.
///
/// The `SelectionModelInterfaceRef` type acts as a lightweight Swift reference to an underlying `GtkSelectionModelInterface` instance.
/// It exposes methods that can operate on this data type through `SelectionModelInterfaceProtocol` conformance.
/// Use `SelectionModelInterfaceRef` only as an `unowned` reference to an existing `GtkSelectionModelInterface` instance.
///
public struct SelectionModelInterfaceRef: SelectionModelInterfaceProtocol {
        /// Untyped pointer to the underlying `GtkSelectionModelInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension SelectionModelInterfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkSelectionModelInterface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkSelectionModelInterface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkSelectionModelInterface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkSelectionModelInterface>?) {
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

    /// Reference intialiser for a related type that implements `SelectionModelInterfaceProtocol`
    @inlinable init<T: SelectionModelInterfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SelectionModelInterfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SelectionModelInterfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SelectionModelInterfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SelectionModelInterfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SelectionModelInterfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: SelectionModelInterface Record: SelectionModelInterfaceProtocol extension (methods and fields)
public extension SelectionModelInterfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkSelectionModelInterface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkSelectionModelInterface>! { return ptr?.assumingMemoryBound(to: GtkSelectionModelInterface.self) }


    // var gIface is unavailable because g_iface is private

    // var isSelected is unavailable because is_selected is void

    // var getSelectionInRange is unavailable because get_selection_in_range is void

    // var selectItem is unavailable because select_item is void

    // var unselectItem is unavailable because unselect_item is void

    // var selectRange is unavailable because select_range is void

    // var unselectRange is unavailable because unselect_range is void

    // var selectAll is unavailable because select_all is void

    // var unselectAll is unavailable because unselect_all is void

    // var setSelection is unavailable because set_selection is void

}



/// Metatype/GType declaration for ShortcutAction
public extension ShortcutActionClassRef {
    
    /// This getter returns the GLib type identifier registered for `ShortcutAction`
    static var metatypeReference: GType { gtk_shortcut_action_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkShortcutActionClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkShortcutActionClass.self) }
    
    static var metatype: GtkShortcutActionClass? { metatypePointer?.pointee } 
    
    static var wrapper: ShortcutActionClassRef? { ShortcutActionClassRef(metatypePointer) }
    
    
}

// MARK: - ShortcutActionClass Record


///
/// The `ShortcutActionClassProtocol` protocol exposes the methods and properties of an underlying `GtkShortcutActionClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ShortcutActionClass`.
/// Alternatively, use `ShortcutActionClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ShortcutActionClassProtocol {
        /// Untyped pointer to the underlying `GtkShortcutActionClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkShortcutActionClass` instance.
    var _ptr: UnsafeMutablePointer<GtkShortcutActionClass>! { get }

    /// Required Initialiser for types conforming to `ShortcutActionClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `ShortcutActionClassRef` type acts as a lightweight Swift reference to an underlying `GtkShortcutActionClass` instance.
/// It exposes methods that can operate on this data type through `ShortcutActionClassProtocol` conformance.
/// Use `ShortcutActionClassRef` only as an `unowned` reference to an existing `GtkShortcutActionClass` instance.
///
public struct ShortcutActionClassRef: ShortcutActionClassProtocol {
        /// Untyped pointer to the underlying `GtkShortcutActionClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ShortcutActionClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkShortcutActionClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkShortcutActionClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkShortcutActionClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkShortcutActionClass>?) {
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

    /// Reference intialiser for a related type that implements `ShortcutActionClassProtocol`
    @inlinable init<T: ShortcutActionClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutActionClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutActionClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutActionClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutActionClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutActionClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ShortcutActionClass Record: ShortcutActionClassProtocol extension (methods and fields)
public extension ShortcutActionClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkShortcutActionClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkShortcutActionClass>! { return ptr?.assumingMemoryBound(to: GtkShortcutActionClass.self) }



}



/// Metatype/GType declaration for Shortcut
public extension ShortcutClassRef {
    
    /// This getter returns the GLib type identifier registered for `Shortcut`
    static var metatypeReference: GType { gtk_shortcut_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkShortcutClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkShortcutClass.self) }
    
    static var metatype: GtkShortcutClass? { metatypePointer?.pointee } 
    
    static var wrapper: ShortcutClassRef? { ShortcutClassRef(metatypePointer) }
    
    
}

// MARK: - ShortcutClass Record


///
/// The `ShortcutClassProtocol` protocol exposes the methods and properties of an underlying `GtkShortcutClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ShortcutClass`.
/// Alternatively, use `ShortcutClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ShortcutClassProtocol {
        /// Untyped pointer to the underlying `GtkShortcutClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkShortcutClass` instance.
    var _ptr: UnsafeMutablePointer<GtkShortcutClass>! { get }

    /// Required Initialiser for types conforming to `ShortcutClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `ShortcutClassRef` type acts as a lightweight Swift reference to an underlying `GtkShortcutClass` instance.
/// It exposes methods that can operate on this data type through `ShortcutClassProtocol` conformance.
/// Use `ShortcutClassRef` only as an `unowned` reference to an existing `GtkShortcutClass` instance.
///
public struct ShortcutClassRef: ShortcutClassProtocol {
        /// Untyped pointer to the underlying `GtkShortcutClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ShortcutClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkShortcutClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkShortcutClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkShortcutClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkShortcutClass>?) {
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

    /// Reference intialiser for a related type that implements `ShortcutClassProtocol`
    @inlinable init<T: ShortcutClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ShortcutClass Record: ShortcutClassProtocol extension (methods and fields)
public extension ShortcutClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkShortcutClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkShortcutClass>! { return ptr?.assumingMemoryBound(to: GtkShortcutClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for ShortcutController
public extension ShortcutControllerClassRef {
    
    /// This getter returns the GLib type identifier registered for `ShortcutController`
    static var metatypeReference: GType { gtk_shortcut_controller_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkShortcutControllerClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkShortcutControllerClass.self) }
    
    static var metatype: GtkShortcutControllerClass? { metatypePointer?.pointee } 
    
    static var wrapper: ShortcutControllerClassRef? { ShortcutControllerClassRef(metatypePointer) }
    
    
}

// MARK: - ShortcutControllerClass Record


///
/// The `ShortcutControllerClassProtocol` protocol exposes the methods and properties of an underlying `GtkShortcutControllerClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ShortcutControllerClass`.
/// Alternatively, use `ShortcutControllerClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ShortcutControllerClassProtocol {
        /// Untyped pointer to the underlying `GtkShortcutControllerClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkShortcutControllerClass` instance.
    var _ptr: UnsafeMutablePointer<GtkShortcutControllerClass>! { get }

    /// Required Initialiser for types conforming to `ShortcutControllerClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `ShortcutControllerClassRef` type acts as a lightweight Swift reference to an underlying `GtkShortcutControllerClass` instance.
/// It exposes methods that can operate on this data type through `ShortcutControllerClassProtocol` conformance.
/// Use `ShortcutControllerClassRef` only as an `unowned` reference to an existing `GtkShortcutControllerClass` instance.
///
public struct ShortcutControllerClassRef: ShortcutControllerClassProtocol {
        /// Untyped pointer to the underlying `GtkShortcutControllerClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ShortcutControllerClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkShortcutControllerClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkShortcutControllerClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkShortcutControllerClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkShortcutControllerClass>?) {
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

    /// Reference intialiser for a related type that implements `ShortcutControllerClassProtocol`
    @inlinable init<T: ShortcutControllerClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutControllerClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutControllerClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutControllerClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutControllerClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutControllerClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ShortcutControllerClass Record: ShortcutControllerClassProtocol extension (methods and fields)
public extension ShortcutControllerClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkShortcutControllerClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkShortcutControllerClass>! { return ptr?.assumingMemoryBound(to: GtkShortcutControllerClass.self) }



}



/// Metatype/GType declaration for ShortcutLabel
public extension ShortcutLabelClassRef {
    
    /// This getter returns the GLib type identifier registered for `ShortcutLabel`
    static var metatypeReference: GType { gtk_shortcut_label_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkShortcutLabelClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkShortcutLabelClass.self) }
    
    static var metatype: GtkShortcutLabelClass? { metatypePointer?.pointee } 
    
    static var wrapper: ShortcutLabelClassRef? { ShortcutLabelClassRef(metatypePointer) }
    
    
}

// MARK: - ShortcutLabelClass Record


///
/// The `ShortcutLabelClassProtocol` protocol exposes the methods and properties of an underlying `GtkShortcutLabelClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ShortcutLabelClass`.
/// Alternatively, use `ShortcutLabelClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ShortcutLabelClassProtocol {
        /// Untyped pointer to the underlying `GtkShortcutLabelClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkShortcutLabelClass` instance.
    var _ptr: UnsafeMutablePointer<GtkShortcutLabelClass>! { get }

    /// Required Initialiser for types conforming to `ShortcutLabelClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `ShortcutLabelClassRef` type acts as a lightweight Swift reference to an underlying `GtkShortcutLabelClass` instance.
/// It exposes methods that can operate on this data type through `ShortcutLabelClassProtocol` conformance.
/// Use `ShortcutLabelClassRef` only as an `unowned` reference to an existing `GtkShortcutLabelClass` instance.
///
public struct ShortcutLabelClassRef: ShortcutLabelClassProtocol {
        /// Untyped pointer to the underlying `GtkShortcutLabelClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ShortcutLabelClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkShortcutLabelClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkShortcutLabelClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkShortcutLabelClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkShortcutLabelClass>?) {
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

    /// Reference intialiser for a related type that implements `ShortcutLabelClassProtocol`
    @inlinable init<T: ShortcutLabelClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutLabelClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutLabelClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutLabelClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutLabelClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutLabelClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ShortcutLabelClass Record: ShortcutLabelClassProtocol extension (methods and fields)
public extension ShortcutLabelClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkShortcutLabelClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkShortcutLabelClass>! { return ptr?.assumingMemoryBound(to: GtkShortcutLabelClass.self) }



}



/// Metatype/GType declaration for ShortcutManager
public extension ShortcutManagerInterfaceRef {
    
    /// This getter returns the GLib type identifier registered for `ShortcutManager`
    static var metatypeReference: GType { gtk_shortcut_manager_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkShortcutManagerInterface>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkShortcutManagerInterface.self) }
    
    static var metatype: GtkShortcutManagerInterface? { metatypePointer?.pointee } 
    
    static var wrapper: ShortcutManagerInterfaceRef? { ShortcutManagerInterfaceRef(metatypePointer) }
    
    
}

// MARK: - ShortcutManagerInterface Record

/// The list of functions that can be implemented for the `GtkShortcutManager`
/// interface.
/// 
/// Note that no function is mandatory to implement, the default implementation
/// will work fine.
///
/// The `ShortcutManagerInterfaceProtocol` protocol exposes the methods and properties of an underlying `GtkShortcutManagerInterface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ShortcutManagerInterface`.
/// Alternatively, use `ShortcutManagerInterfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ShortcutManagerInterfaceProtocol {
        /// Untyped pointer to the underlying `GtkShortcutManagerInterface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkShortcutManagerInterface` instance.
    var _ptr: UnsafeMutablePointer<GtkShortcutManagerInterface>! { get }

    /// Required Initialiser for types conforming to `ShortcutManagerInterfaceProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The list of functions that can be implemented for the `GtkShortcutManager`
/// interface.
/// 
/// Note that no function is mandatory to implement, the default implementation
/// will work fine.
///
/// The `ShortcutManagerInterfaceRef` type acts as a lightweight Swift reference to an underlying `GtkShortcutManagerInterface` instance.
/// It exposes methods that can operate on this data type through `ShortcutManagerInterfaceProtocol` conformance.
/// Use `ShortcutManagerInterfaceRef` only as an `unowned` reference to an existing `GtkShortcutManagerInterface` instance.
///
public struct ShortcutManagerInterfaceRef: ShortcutManagerInterfaceProtocol {
        /// Untyped pointer to the underlying `GtkShortcutManagerInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ShortcutManagerInterfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkShortcutManagerInterface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkShortcutManagerInterface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkShortcutManagerInterface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkShortcutManagerInterface>?) {
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

    /// Reference intialiser for a related type that implements `ShortcutManagerInterfaceProtocol`
    @inlinable init<T: ShortcutManagerInterfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutManagerInterfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutManagerInterfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutManagerInterfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutManagerInterfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutManagerInterfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ShortcutManagerInterface Record: ShortcutManagerInterfaceProtocol extension (methods and fields)
public extension ShortcutManagerInterfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkShortcutManagerInterface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkShortcutManagerInterface>! { return ptr?.assumingMemoryBound(to: GtkShortcutManagerInterface.self) }


    // var gIface is unavailable because g_iface is private

    // var addController is unavailable because add_controller is void

    // var removeController is unavailable because remove_controller is void

}



/// Metatype/GType declaration for ShortcutTrigger
public extension ShortcutTriggerClassRef {
    
    /// This getter returns the GLib type identifier registered for `ShortcutTrigger`
    static var metatypeReference: GType { gtk_shortcut_trigger_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkShortcutTriggerClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkShortcutTriggerClass.self) }
    
    static var metatype: GtkShortcutTriggerClass? { metatypePointer?.pointee } 
    
    static var wrapper: ShortcutTriggerClassRef? { ShortcutTriggerClassRef(metatypePointer) }
    
    
}

// MARK: - ShortcutTriggerClass Record


///
/// The `ShortcutTriggerClassProtocol` protocol exposes the methods and properties of an underlying `GtkShortcutTriggerClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ShortcutTriggerClass`.
/// Alternatively, use `ShortcutTriggerClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ShortcutTriggerClassProtocol {
        /// Untyped pointer to the underlying `GtkShortcutTriggerClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkShortcutTriggerClass` instance.
    var _ptr: UnsafeMutablePointer<GtkShortcutTriggerClass>! { get }

    /// Required Initialiser for types conforming to `ShortcutTriggerClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `ShortcutTriggerClassRef` type acts as a lightweight Swift reference to an underlying `GtkShortcutTriggerClass` instance.
/// It exposes methods that can operate on this data type through `ShortcutTriggerClassProtocol` conformance.
/// Use `ShortcutTriggerClassRef` only as an `unowned` reference to an existing `GtkShortcutTriggerClass` instance.
///
public struct ShortcutTriggerClassRef: ShortcutTriggerClassProtocol {
        /// Untyped pointer to the underlying `GtkShortcutTriggerClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ShortcutTriggerClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkShortcutTriggerClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkShortcutTriggerClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkShortcutTriggerClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkShortcutTriggerClass>?) {
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

    /// Reference intialiser for a related type that implements `ShortcutTriggerClassProtocol`
    @inlinable init<T: ShortcutTriggerClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutTriggerClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutTriggerClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutTriggerClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutTriggerClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutTriggerClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ShortcutTriggerClass Record: ShortcutTriggerClassProtocol extension (methods and fields)
public extension ShortcutTriggerClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkShortcutTriggerClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkShortcutTriggerClass>! { return ptr?.assumingMemoryBound(to: GtkShortcutTriggerClass.self) }



}



/// Metatype/GType declaration for ShortcutsGroup
public extension ShortcutsGroupClassRef {
    
    /// This getter returns the GLib type identifier registered for `ShortcutsGroup`
    static var metatypeReference: GType { gtk_shortcuts_group_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkShortcutsGroupClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkShortcutsGroupClass.self) }
    
    static var metatype: GtkShortcutsGroupClass? { metatypePointer?.pointee } 
    
    static var wrapper: ShortcutsGroupClassRef? { ShortcutsGroupClassRef(metatypePointer) }
    
    
}

// MARK: - ShortcutsGroupClass Record


///
/// The `ShortcutsGroupClassProtocol` protocol exposes the methods and properties of an underlying `GtkShortcutsGroupClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ShortcutsGroupClass`.
/// Alternatively, use `ShortcutsGroupClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ShortcutsGroupClassProtocol {
        /// Untyped pointer to the underlying `GtkShortcutsGroupClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkShortcutsGroupClass` instance.
    var _ptr: UnsafeMutablePointer<GtkShortcutsGroupClass>! { get }

    /// Required Initialiser for types conforming to `ShortcutsGroupClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `ShortcutsGroupClassRef` type acts as a lightweight Swift reference to an underlying `GtkShortcutsGroupClass` instance.
/// It exposes methods that can operate on this data type through `ShortcutsGroupClassProtocol` conformance.
/// Use `ShortcutsGroupClassRef` only as an `unowned` reference to an existing `GtkShortcutsGroupClass` instance.
///
public struct ShortcutsGroupClassRef: ShortcutsGroupClassProtocol {
        /// Untyped pointer to the underlying `GtkShortcutsGroupClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ShortcutsGroupClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkShortcutsGroupClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkShortcutsGroupClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkShortcutsGroupClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkShortcutsGroupClass>?) {
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

    /// Reference intialiser for a related type that implements `ShortcutsGroupClassProtocol`
    @inlinable init<T: ShortcutsGroupClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutsGroupClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutsGroupClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutsGroupClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutsGroupClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutsGroupClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ShortcutsGroupClass Record: ShortcutsGroupClassProtocol extension (methods and fields)
public extension ShortcutsGroupClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkShortcutsGroupClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkShortcutsGroupClass>! { return ptr?.assumingMemoryBound(to: GtkShortcutsGroupClass.self) }



}



/// Metatype/GType declaration for ShortcutsSection
public extension ShortcutsSectionClassRef {
    
    /// This getter returns the GLib type identifier registered for `ShortcutsSection`
    static var metatypeReference: GType { gtk_shortcuts_section_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkShortcutsSectionClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkShortcutsSectionClass.self) }
    
    static var metatype: GtkShortcutsSectionClass? { metatypePointer?.pointee } 
    
    static var wrapper: ShortcutsSectionClassRef? { ShortcutsSectionClassRef(metatypePointer) }
    
    
}

// MARK: - ShortcutsSectionClass Record


///
/// The `ShortcutsSectionClassProtocol` protocol exposes the methods and properties of an underlying `GtkShortcutsSectionClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ShortcutsSectionClass`.
/// Alternatively, use `ShortcutsSectionClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ShortcutsSectionClassProtocol {
        /// Untyped pointer to the underlying `GtkShortcutsSectionClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkShortcutsSectionClass` instance.
    var _ptr: UnsafeMutablePointer<GtkShortcutsSectionClass>! { get }

    /// Required Initialiser for types conforming to `ShortcutsSectionClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `ShortcutsSectionClassRef` type acts as a lightweight Swift reference to an underlying `GtkShortcutsSectionClass` instance.
/// It exposes methods that can operate on this data type through `ShortcutsSectionClassProtocol` conformance.
/// Use `ShortcutsSectionClassRef` only as an `unowned` reference to an existing `GtkShortcutsSectionClass` instance.
///
public struct ShortcutsSectionClassRef: ShortcutsSectionClassProtocol {
        /// Untyped pointer to the underlying `GtkShortcutsSectionClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ShortcutsSectionClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkShortcutsSectionClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkShortcutsSectionClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkShortcutsSectionClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkShortcutsSectionClass>?) {
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

    /// Reference intialiser for a related type that implements `ShortcutsSectionClassProtocol`
    @inlinable init<T: ShortcutsSectionClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutsSectionClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutsSectionClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutsSectionClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutsSectionClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutsSectionClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ShortcutsSectionClass Record: ShortcutsSectionClassProtocol extension (methods and fields)
public extension ShortcutsSectionClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkShortcutsSectionClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkShortcutsSectionClass>! { return ptr?.assumingMemoryBound(to: GtkShortcutsSectionClass.self) }



}



/// Metatype/GType declaration for ShortcutsShortcut
public extension ShortcutsShortcutClassRef {
    
    /// This getter returns the GLib type identifier registered for `ShortcutsShortcut`
    static var metatypeReference: GType { gtk_shortcuts_shortcut_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkShortcutsShortcutClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkShortcutsShortcutClass.self) }
    
    static var metatype: GtkShortcutsShortcutClass? { metatypePointer?.pointee } 
    
    static var wrapper: ShortcutsShortcutClassRef? { ShortcutsShortcutClassRef(metatypePointer) }
    
    
}

// MARK: - ShortcutsShortcutClass Record


///
/// The `ShortcutsShortcutClassProtocol` protocol exposes the methods and properties of an underlying `GtkShortcutsShortcutClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ShortcutsShortcutClass`.
/// Alternatively, use `ShortcutsShortcutClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ShortcutsShortcutClassProtocol {
        /// Untyped pointer to the underlying `GtkShortcutsShortcutClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkShortcutsShortcutClass` instance.
    var _ptr: UnsafeMutablePointer<GtkShortcutsShortcutClass>! { get }

    /// Required Initialiser for types conforming to `ShortcutsShortcutClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `ShortcutsShortcutClassRef` type acts as a lightweight Swift reference to an underlying `GtkShortcutsShortcutClass` instance.
/// It exposes methods that can operate on this data type through `ShortcutsShortcutClassProtocol` conformance.
/// Use `ShortcutsShortcutClassRef` only as an `unowned` reference to an existing `GtkShortcutsShortcutClass` instance.
///
public struct ShortcutsShortcutClassRef: ShortcutsShortcutClassProtocol {
        /// Untyped pointer to the underlying `GtkShortcutsShortcutClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ShortcutsShortcutClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkShortcutsShortcutClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkShortcutsShortcutClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkShortcutsShortcutClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkShortcutsShortcutClass>?) {
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

    /// Reference intialiser for a related type that implements `ShortcutsShortcutClassProtocol`
    @inlinable init<T: ShortcutsShortcutClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutsShortcutClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutsShortcutClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutsShortcutClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutsShortcutClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ShortcutsShortcutClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ShortcutsShortcutClass Record: ShortcutsShortcutClassProtocol extension (methods and fields)
public extension ShortcutsShortcutClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkShortcutsShortcutClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkShortcutsShortcutClass>! { return ptr?.assumingMemoryBound(to: GtkShortcutsShortcutClass.self) }



}



/// Metatype/GType declaration for SignalAction
public extension SignalActionClassRef {
    
    /// This getter returns the GLib type identifier registered for `SignalAction`
    static var metatypeReference: GType { gtk_signal_action_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkSignalActionClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkSignalActionClass.self) }
    
    static var metatype: GtkSignalActionClass? { metatypePointer?.pointee } 
    
    static var wrapper: SignalActionClassRef? { SignalActionClassRef(metatypePointer) }
    
    
}

// MARK: - SignalActionClass Record


///
/// The `SignalActionClassProtocol` protocol exposes the methods and properties of an underlying `GtkSignalActionClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SignalActionClass`.
/// Alternatively, use `SignalActionClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol SignalActionClassProtocol {
        /// Untyped pointer to the underlying `GtkSignalActionClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkSignalActionClass` instance.
    var _ptr: UnsafeMutablePointer<GtkSignalActionClass>! { get }

    /// Required Initialiser for types conforming to `SignalActionClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `SignalActionClassRef` type acts as a lightweight Swift reference to an underlying `GtkSignalActionClass` instance.
/// It exposes methods that can operate on this data type through `SignalActionClassProtocol` conformance.
/// Use `SignalActionClassRef` only as an `unowned` reference to an existing `GtkSignalActionClass` instance.
///
public struct SignalActionClassRef: SignalActionClassProtocol {
        /// Untyped pointer to the underlying `GtkSignalActionClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension SignalActionClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkSignalActionClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkSignalActionClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkSignalActionClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkSignalActionClass>?) {
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

    /// Reference intialiser for a related type that implements `SignalActionClassProtocol`
    @inlinable init<T: SignalActionClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SignalActionClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SignalActionClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SignalActionClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SignalActionClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SignalActionClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: SignalActionClass Record: SignalActionClassProtocol extension (methods and fields)
public extension SignalActionClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkSignalActionClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkSignalActionClass>! { return ptr?.assumingMemoryBound(to: GtkSignalActionClass.self) }



}



/// Metatype/GType declaration for SignalListItemFactory
public extension SignalListItemFactoryClassRef {
    
    /// This getter returns the GLib type identifier registered for `SignalListItemFactory`
    static var metatypeReference: GType { gtk_signal_list_item_factory_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkSignalListItemFactoryClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkSignalListItemFactoryClass.self) }
    
    static var metatype: GtkSignalListItemFactoryClass? { metatypePointer?.pointee } 
    
    static var wrapper: SignalListItemFactoryClassRef? { SignalListItemFactoryClassRef(metatypePointer) }
    
    
}

// MARK: - SignalListItemFactoryClass Record


///
/// The `SignalListItemFactoryClassProtocol` protocol exposes the methods and properties of an underlying `GtkSignalListItemFactoryClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SignalListItemFactoryClass`.
/// Alternatively, use `SignalListItemFactoryClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol SignalListItemFactoryClassProtocol {
        /// Untyped pointer to the underlying `GtkSignalListItemFactoryClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkSignalListItemFactoryClass` instance.
    var _ptr: UnsafeMutablePointer<GtkSignalListItemFactoryClass>! { get }

    /// Required Initialiser for types conforming to `SignalListItemFactoryClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `SignalListItemFactoryClassRef` type acts as a lightweight Swift reference to an underlying `GtkSignalListItemFactoryClass` instance.
/// It exposes methods that can operate on this data type through `SignalListItemFactoryClassProtocol` conformance.
/// Use `SignalListItemFactoryClassRef` only as an `unowned` reference to an existing `GtkSignalListItemFactoryClass` instance.
///
public struct SignalListItemFactoryClassRef: SignalListItemFactoryClassProtocol {
        /// Untyped pointer to the underlying `GtkSignalListItemFactoryClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension SignalListItemFactoryClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkSignalListItemFactoryClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkSignalListItemFactoryClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkSignalListItemFactoryClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkSignalListItemFactoryClass>?) {
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

    /// Reference intialiser for a related type that implements `SignalListItemFactoryClassProtocol`
    @inlinable init<T: SignalListItemFactoryClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SignalListItemFactoryClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SignalListItemFactoryClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SignalListItemFactoryClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SignalListItemFactoryClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SignalListItemFactoryClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: SignalListItemFactoryClass Record: SignalListItemFactoryClassProtocol extension (methods and fields)
public extension SignalListItemFactoryClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkSignalListItemFactoryClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkSignalListItemFactoryClass>! { return ptr?.assumingMemoryBound(to: GtkSignalListItemFactoryClass.self) }



}



/// Metatype/GType declaration for SingleSelection
public extension SingleSelectionClassRef {
    
    /// This getter returns the GLib type identifier registered for `SingleSelection`
    static var metatypeReference: GType { gtk_single_selection_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkSingleSelectionClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkSingleSelectionClass.self) }
    
    static var metatype: GtkSingleSelectionClass? { metatypePointer?.pointee } 
    
    static var wrapper: SingleSelectionClassRef? { SingleSelectionClassRef(metatypePointer) }
    
    
}

// MARK: - SingleSelectionClass Record


///
/// The `SingleSelectionClassProtocol` protocol exposes the methods and properties of an underlying `GtkSingleSelectionClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SingleSelectionClass`.
/// Alternatively, use `SingleSelectionClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol SingleSelectionClassProtocol {
        /// Untyped pointer to the underlying `GtkSingleSelectionClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkSingleSelectionClass` instance.
    var _ptr: UnsafeMutablePointer<GtkSingleSelectionClass>! { get }

    /// Required Initialiser for types conforming to `SingleSelectionClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `SingleSelectionClassRef` type acts as a lightweight Swift reference to an underlying `GtkSingleSelectionClass` instance.
/// It exposes methods that can operate on this data type through `SingleSelectionClassProtocol` conformance.
/// Use `SingleSelectionClassRef` only as an `unowned` reference to an existing `GtkSingleSelectionClass` instance.
///
public struct SingleSelectionClassRef: SingleSelectionClassProtocol {
        /// Untyped pointer to the underlying `GtkSingleSelectionClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension SingleSelectionClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkSingleSelectionClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkSingleSelectionClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkSingleSelectionClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkSingleSelectionClass>?) {
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

    /// Reference intialiser for a related type that implements `SingleSelectionClassProtocol`
    @inlinable init<T: SingleSelectionClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SingleSelectionClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SingleSelectionClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SingleSelectionClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SingleSelectionClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SingleSelectionClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: SingleSelectionClass Record: SingleSelectionClassProtocol extension (methods and fields)
public extension SingleSelectionClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkSingleSelectionClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkSingleSelectionClass>! { return ptr?.assumingMemoryBound(to: GtkSingleSelectionClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for SliceListModel
public extension SliceListModelClassRef {
    
    /// This getter returns the GLib type identifier registered for `SliceListModel`
    static var metatypeReference: GType { gtk_slice_list_model_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkSliceListModelClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkSliceListModelClass.self) }
    
    static var metatype: GtkSliceListModelClass? { metatypePointer?.pointee } 
    
    static var wrapper: SliceListModelClassRef? { SliceListModelClassRef(metatypePointer) }
    
    
}

// MARK: - SliceListModelClass Record


///
/// The `SliceListModelClassProtocol` protocol exposes the methods and properties of an underlying `GtkSliceListModelClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SliceListModelClass`.
/// Alternatively, use `SliceListModelClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol SliceListModelClassProtocol {
        /// Untyped pointer to the underlying `GtkSliceListModelClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkSliceListModelClass` instance.
    var _ptr: UnsafeMutablePointer<GtkSliceListModelClass>! { get }

    /// Required Initialiser for types conforming to `SliceListModelClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `SliceListModelClassRef` type acts as a lightweight Swift reference to an underlying `GtkSliceListModelClass` instance.
/// It exposes methods that can operate on this data type through `SliceListModelClassProtocol` conformance.
/// Use `SliceListModelClassRef` only as an `unowned` reference to an existing `GtkSliceListModelClass` instance.
///
public struct SliceListModelClassRef: SliceListModelClassProtocol {
        /// Untyped pointer to the underlying `GtkSliceListModelClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension SliceListModelClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkSliceListModelClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkSliceListModelClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkSliceListModelClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkSliceListModelClass>?) {
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

    /// Reference intialiser for a related type that implements `SliceListModelClassProtocol`
    @inlinable init<T: SliceListModelClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SliceListModelClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SliceListModelClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SliceListModelClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SliceListModelClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SliceListModelClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: SliceListModelClass Record: SliceListModelClassProtocol extension (methods and fields)
public extension SliceListModelClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkSliceListModelClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkSliceListModelClass>! { return ptr?.assumingMemoryBound(to: GtkSliceListModelClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for Snapshot
public extension SnapshotClassRef {
    
    /// This getter returns the GLib type identifier registered for `Snapshot`
    static var metatypeReference: GType { gtk_snapshot_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkSnapshotClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkSnapshotClass.self) }
    
    static var metatype: GtkSnapshotClass? { metatypePointer?.pointee } 
    
    static var wrapper: SnapshotClassRef? { SnapshotClassRef(metatypePointer) }
    
    
}

// MARK: - SnapshotClass Record


///
/// The `SnapshotClassProtocol` protocol exposes the methods and properties of an underlying `GtkSnapshotClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SnapshotClass`.
/// Alternatively, use `SnapshotClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol SnapshotClassProtocol {
        /// Untyped pointer to the underlying `GtkSnapshotClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkSnapshotClass` instance.
    var _ptr: UnsafeMutablePointer<GtkSnapshotClass>! { get }

    /// Required Initialiser for types conforming to `SnapshotClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `SnapshotClassRef` type acts as a lightweight Swift reference to an underlying `GtkSnapshotClass` instance.
/// It exposes methods that can operate on this data type through `SnapshotClassProtocol` conformance.
/// Use `SnapshotClassRef` only as an `unowned` reference to an existing `GtkSnapshotClass` instance.
///
public struct SnapshotClassRef: SnapshotClassProtocol {
        /// Untyped pointer to the underlying `GtkSnapshotClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension SnapshotClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkSnapshotClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkSnapshotClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkSnapshotClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkSnapshotClass>?) {
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

    /// Reference intialiser for a related type that implements `SnapshotClassProtocol`
    @inlinable init<T: SnapshotClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SnapshotClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SnapshotClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SnapshotClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SnapshotClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SnapshotClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: SnapshotClass Record: SnapshotClassProtocol extension (methods and fields)
public extension SnapshotClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkSnapshotClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkSnapshotClass>! { return ptr?.assumingMemoryBound(to: GtkSnapshotClass.self) }



}



/// Metatype/GType declaration for SortListModel
public extension SortListModelClassRef {
    
    /// This getter returns the GLib type identifier registered for `SortListModel`
    static var metatypeReference: GType { gtk_sort_list_model_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkSortListModelClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkSortListModelClass.self) }
    
    static var metatype: GtkSortListModelClass? { metatypePointer?.pointee } 
    
    static var wrapper: SortListModelClassRef? { SortListModelClassRef(metatypePointer) }
    
    
}

// MARK: - SortListModelClass Record


///
/// The `SortListModelClassProtocol` protocol exposes the methods and properties of an underlying `GtkSortListModelClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SortListModelClass`.
/// Alternatively, use `SortListModelClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol SortListModelClassProtocol {
        /// Untyped pointer to the underlying `GtkSortListModelClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkSortListModelClass` instance.
    var _ptr: UnsafeMutablePointer<GtkSortListModelClass>! { get }

    /// Required Initialiser for types conforming to `SortListModelClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `SortListModelClassRef` type acts as a lightweight Swift reference to an underlying `GtkSortListModelClass` instance.
/// It exposes methods that can operate on this data type through `SortListModelClassProtocol` conformance.
/// Use `SortListModelClassRef` only as an `unowned` reference to an existing `GtkSortListModelClass` instance.
///
public struct SortListModelClassRef: SortListModelClassProtocol {
        /// Untyped pointer to the underlying `GtkSortListModelClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension SortListModelClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkSortListModelClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkSortListModelClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkSortListModelClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkSortListModelClass>?) {
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

    /// Reference intialiser for a related type that implements `SortListModelClassProtocol`
    @inlinable init<T: SortListModelClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SortListModelClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SortListModelClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SortListModelClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SortListModelClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SortListModelClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: SortListModelClass Record: SortListModelClassProtocol extension (methods and fields)
public extension SortListModelClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkSortListModelClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkSortListModelClass>! { return ptr?.assumingMemoryBound(to: GtkSortListModelClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for Sorter
public extension SorterClassRef {
    
    /// This getter returns the GLib type identifier registered for `Sorter`
    static var metatypeReference: GType { gtk_sorter_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkSorterClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkSorterClass.self) }
    
    static var metatype: GtkSorterClass? { metatypePointer?.pointee } 
    
    static var wrapper: SorterClassRef? { SorterClassRef(metatypePointer) }
    
    
}

// MARK: - SorterClass Record

/// The virtual table for `GtkSorter`.
///
/// The `SorterClassProtocol` protocol exposes the methods and properties of an underlying `GtkSorterClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SorterClass`.
/// Alternatively, use `SorterClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol SorterClassProtocol {
        /// Untyped pointer to the underlying `GtkSorterClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkSorterClass` instance.
    var _ptr: UnsafeMutablePointer<GtkSorterClass>! { get }

    /// Required Initialiser for types conforming to `SorterClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The virtual table for `GtkSorter`.
///
/// The `SorterClassRef` type acts as a lightweight Swift reference to an underlying `GtkSorterClass` instance.
/// It exposes methods that can operate on this data type through `SorterClassProtocol` conformance.
/// Use `SorterClassRef` only as an `unowned` reference to an existing `GtkSorterClass` instance.
///
public struct SorterClassRef: SorterClassProtocol {
        /// Untyped pointer to the underlying `GtkSorterClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension SorterClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkSorterClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkSorterClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkSorterClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkSorterClass>?) {
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

    /// Reference intialiser for a related type that implements `SorterClassProtocol`
    @inlinable init<T: SorterClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SorterClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SorterClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SorterClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SorterClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SorterClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: SorterClass Record: SorterClassProtocol extension (methods and fields)
public extension SorterClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkSorterClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkSorterClass>! { return ptr?.assumingMemoryBound(to: GtkSorterClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var compare is unavailable because compare is void

    // var getOrder is unavailable because get_order is void

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

    // var GtkReserved5 is unavailable because _gtk_reserved5 is void

    // var GtkReserved6 is unavailable because _gtk_reserved6 is void

    // var GtkReserved7 is unavailable because _gtk_reserved7 is void

    // var GtkReserved8 is unavailable because _gtk_reserved8 is void

}



/// Metatype/GType declaration for StringFilter
public extension StringFilterClassRef {
    
    /// This getter returns the GLib type identifier registered for `StringFilter`
    static var metatypeReference: GType { gtk_string_filter_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkStringFilterClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkStringFilterClass.self) }
    
    static var metatype: GtkStringFilterClass? { metatypePointer?.pointee } 
    
    static var wrapper: StringFilterClassRef? { StringFilterClassRef(metatypePointer) }
    
    
}

// MARK: - StringFilterClass Record


///
/// The `StringFilterClassProtocol` protocol exposes the methods and properties of an underlying `GtkStringFilterClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `StringFilterClass`.
/// Alternatively, use `StringFilterClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol StringFilterClassProtocol {
        /// Untyped pointer to the underlying `GtkStringFilterClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkStringFilterClass` instance.
    var _ptr: UnsafeMutablePointer<GtkStringFilterClass>! { get }

    /// Required Initialiser for types conforming to `StringFilterClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `StringFilterClassRef` type acts as a lightweight Swift reference to an underlying `GtkStringFilterClass` instance.
/// It exposes methods that can operate on this data type through `StringFilterClassProtocol` conformance.
/// Use `StringFilterClassRef` only as an `unowned` reference to an existing `GtkStringFilterClass` instance.
///
public struct StringFilterClassRef: StringFilterClassProtocol {
        /// Untyped pointer to the underlying `GtkStringFilterClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension StringFilterClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkStringFilterClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkStringFilterClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkStringFilterClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkStringFilterClass>?) {
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

    /// Reference intialiser for a related type that implements `StringFilterClassProtocol`
    @inlinable init<T: StringFilterClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringFilterClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringFilterClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringFilterClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringFilterClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringFilterClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: StringFilterClass Record: StringFilterClassProtocol extension (methods and fields)
public extension StringFilterClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkStringFilterClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkStringFilterClass>! { return ptr?.assumingMemoryBound(to: GtkStringFilterClass.self) }


    @inlinable var parentClass: GtkFilterClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for StringList
public extension StringListClassRef {
    
    /// This getter returns the GLib type identifier registered for `StringList`
    static var metatypeReference: GType { gtk_string_list_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkStringListClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkStringListClass.self) }
    
    static var metatype: GtkStringListClass? { metatypePointer?.pointee } 
    
    static var wrapper: StringListClassRef? { StringListClassRef(metatypePointer) }
    
    
}

// MARK: - StringListClass Record


///
/// The `StringListClassProtocol` protocol exposes the methods and properties of an underlying `GtkStringListClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `StringListClass`.
/// Alternatively, use `StringListClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol StringListClassProtocol {
        /// Untyped pointer to the underlying `GtkStringListClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkStringListClass` instance.
    var _ptr: UnsafeMutablePointer<GtkStringListClass>! { get }

    /// Required Initialiser for types conforming to `StringListClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `StringListClassRef` type acts as a lightweight Swift reference to an underlying `GtkStringListClass` instance.
/// It exposes methods that can operate on this data type through `StringListClassProtocol` conformance.
/// Use `StringListClassRef` only as an `unowned` reference to an existing `GtkStringListClass` instance.
///
public struct StringListClassRef: StringListClassProtocol {
        /// Untyped pointer to the underlying `GtkStringListClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension StringListClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkStringListClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkStringListClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkStringListClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkStringListClass>?) {
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

    /// Reference intialiser for a related type that implements `StringListClassProtocol`
    @inlinable init<T: StringListClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringListClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringListClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringListClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringListClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringListClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: StringListClass Record: StringListClassProtocol extension (methods and fields)
public extension StringListClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkStringListClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkStringListClass>! { return ptr?.assumingMemoryBound(to: GtkStringListClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for StringObject
public extension StringObjectClassRef {
    
    /// This getter returns the GLib type identifier registered for `StringObject`
    static var metatypeReference: GType { gtk_string_object_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkStringObjectClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkStringObjectClass.self) }
    
    static var metatype: GtkStringObjectClass? { metatypePointer?.pointee } 
    
    static var wrapper: StringObjectClassRef? { StringObjectClassRef(metatypePointer) }
    
    
}

// MARK: - StringObjectClass Record


///
/// The `StringObjectClassProtocol` protocol exposes the methods and properties of an underlying `GtkStringObjectClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `StringObjectClass`.
/// Alternatively, use `StringObjectClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol StringObjectClassProtocol {
        /// Untyped pointer to the underlying `GtkStringObjectClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkStringObjectClass` instance.
    var _ptr: UnsafeMutablePointer<GtkStringObjectClass>! { get }

    /// Required Initialiser for types conforming to `StringObjectClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `StringObjectClassRef` type acts as a lightweight Swift reference to an underlying `GtkStringObjectClass` instance.
/// It exposes methods that can operate on this data type through `StringObjectClassProtocol` conformance.
/// Use `StringObjectClassRef` only as an `unowned` reference to an existing `GtkStringObjectClass` instance.
///
public struct StringObjectClassRef: StringObjectClassProtocol {
        /// Untyped pointer to the underlying `GtkStringObjectClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension StringObjectClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkStringObjectClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkStringObjectClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkStringObjectClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkStringObjectClass>?) {
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

    /// Reference intialiser for a related type that implements `StringObjectClassProtocol`
    @inlinable init<T: StringObjectClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringObjectClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringObjectClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringObjectClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringObjectClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringObjectClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: StringObjectClass Record: StringObjectClassProtocol extension (methods and fields)
public extension StringObjectClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkStringObjectClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkStringObjectClass>! { return ptr?.assumingMemoryBound(to: GtkStringObjectClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for StringSorter
public extension StringSorterClassRef {
    
    /// This getter returns the GLib type identifier registered for `StringSorter`
    static var metatypeReference: GType { gtk_string_sorter_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkStringSorterClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkStringSorterClass.self) }
    
    static var metatype: GtkStringSorterClass? { metatypePointer?.pointee } 
    
    static var wrapper: StringSorterClassRef? { StringSorterClassRef(metatypePointer) }
    
    
}

// MARK: - StringSorterClass Record


///
/// The `StringSorterClassProtocol` protocol exposes the methods and properties of an underlying `GtkStringSorterClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `StringSorterClass`.
/// Alternatively, use `StringSorterClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol StringSorterClassProtocol {
        /// Untyped pointer to the underlying `GtkStringSorterClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkStringSorterClass` instance.
    var _ptr: UnsafeMutablePointer<GtkStringSorterClass>! { get }

    /// Required Initialiser for types conforming to `StringSorterClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `StringSorterClassRef` type acts as a lightweight Swift reference to an underlying `GtkStringSorterClass` instance.
/// It exposes methods that can operate on this data type through `StringSorterClassProtocol` conformance.
/// Use `StringSorterClassRef` only as an `unowned` reference to an existing `GtkStringSorterClass` instance.
///
public struct StringSorterClassRef: StringSorterClassProtocol {
        /// Untyped pointer to the underlying `GtkStringSorterClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension StringSorterClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkStringSorterClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkStringSorterClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkStringSorterClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkStringSorterClass>?) {
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

    /// Reference intialiser for a related type that implements `StringSorterClassProtocol`
    @inlinable init<T: StringSorterClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringSorterClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringSorterClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringSorterClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringSorterClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringSorterClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: StringSorterClass Record: StringSorterClassProtocol extension (methods and fields)
public extension StringSorterClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkStringSorterClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkStringSorterClass>! { return ptr?.assumingMemoryBound(to: GtkStringSorterClass.self) }


    @inlinable var parentClass: GtkSorterClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for StyleContext
public extension StyleContextClassRef {
    
    /// This getter returns the GLib type identifier registered for `StyleContext`
    static var metatypeReference: GType { gtk_style_context_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkStyleContextClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkStyleContextClass.self) }
    
    static var metatype: GtkStyleContextClass? { metatypePointer?.pointee } 
    
    static var wrapper: StyleContextClassRef? { StyleContextClassRef(metatypePointer) }
    
    
}

// MARK: - StyleContextClass Record


///
/// The `StyleContextClassProtocol` protocol exposes the methods and properties of an underlying `GtkStyleContextClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `StyleContextClass`.
/// Alternatively, use `StyleContextClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol StyleContextClassProtocol {
        /// Untyped pointer to the underlying `GtkStyleContextClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkStyleContextClass` instance.
    var _ptr: UnsafeMutablePointer<GtkStyleContextClass>! { get }

    /// Required Initialiser for types conforming to `StyleContextClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `StyleContextClassRef` type acts as a lightweight Swift reference to an underlying `GtkStyleContextClass` instance.
/// It exposes methods that can operate on this data type through `StyleContextClassProtocol` conformance.
/// Use `StyleContextClassRef` only as an `unowned` reference to an existing `GtkStyleContextClass` instance.
///
public struct StyleContextClassRef: StyleContextClassProtocol {
        /// Untyped pointer to the underlying `GtkStyleContextClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension StyleContextClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkStyleContextClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkStyleContextClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkStyleContextClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkStyleContextClass>?) {
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

    /// Reference intialiser for a related type that implements `StyleContextClassProtocol`
    @inlinable init<T: StyleContextClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StyleContextClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StyleContextClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StyleContextClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StyleContextClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StyleContextClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: StyleContextClass Record: StyleContextClassProtocol extension (methods and fields)
public extension StyleContextClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkStyleContextClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkStyleContextClass>! { return ptr?.assumingMemoryBound(to: GtkStyleContextClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var changed is unavailable because changed is void

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

}



/// Metatype/GType declaration for TextBuffer
public extension TextBufferClassRef {
    
    /// This getter returns the GLib type identifier registered for `TextBuffer`
    static var metatypeReference: GType { gtk_text_buffer_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkTextBufferClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkTextBufferClass.self) }
    
    static var metatype: GtkTextBufferClass? { metatypePointer?.pointee } 
    
    static var wrapper: TextBufferClassRef? { TextBufferClassRef(metatypePointer) }
    
    
}

// MARK: - TextBufferClass Record

/// The class structure for `GtkTextBuffer`.
///
/// The `TextBufferClassProtocol` protocol exposes the methods and properties of an underlying `GtkTextBufferClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TextBufferClass`.
/// Alternatively, use `TextBufferClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol TextBufferClassProtocol {
        /// Untyped pointer to the underlying `GtkTextBufferClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkTextBufferClass` instance.
    var _ptr: UnsafeMutablePointer<GtkTextBufferClass>! { get }

    /// Required Initialiser for types conforming to `TextBufferClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The class structure for `GtkTextBuffer`.
///
/// The `TextBufferClassRef` type acts as a lightweight Swift reference to an underlying `GtkTextBufferClass` instance.
/// It exposes methods that can operate on this data type through `TextBufferClassProtocol` conformance.
/// Use `TextBufferClassRef` only as an `unowned` reference to an existing `GtkTextBufferClass` instance.
///
public struct TextBufferClassRef: TextBufferClassProtocol {
        /// Untyped pointer to the underlying `GtkTextBufferClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TextBufferClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkTextBufferClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkTextBufferClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkTextBufferClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkTextBufferClass>?) {
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

    /// Reference intialiser for a related type that implements `TextBufferClassProtocol`
    @inlinable init<T: TextBufferClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextBufferClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextBufferClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextBufferClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextBufferClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TextBufferClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: TextBufferClass Record: TextBufferClassProtocol extension (methods and fields)
public extension TextBufferClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTextBufferClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkTextBufferClass>! { return ptr?.assumingMemoryBound(to: GtkTextBufferClass.self) }


    /// The object class structure needs to be the first.
    @inlinable var parentClass: GObjectClass {
        /// The object class structure needs to be the first.
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var insertText is unavailable because insert_text is void

    // var insertPaintable is unavailable because insert_paintable is void

    // var insertChildAnchor is unavailable because insert_child_anchor is void

    // var deleteRange is unavailable because delete_range is void

    // var changed is unavailable because changed is void

    // var modifiedChanged is unavailable because modified_changed is void

    // var markSet is unavailable because mark_set is void

    // var markDeleted is unavailable because mark_deleted is void

    // var applyTag is unavailable because apply_tag is void

    // var removeTag is unavailable because remove_tag is void

    // var beginUserAction is unavailable because begin_user_action is void

    // var endUserAction is unavailable because end_user_action is void

    // var pasteDone is unavailable because paste_done is void

    // var undo is unavailable because undo is void

    // var redo is unavailable because redo is void

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

}



