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

/// Metatype/GType declaration for ATContext
public extension ATContextClassRef {
    
    /// This getter returns the GLib type identifier registered for `ATContext`
    static var metatypeReference: GType { gtk_at_context_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkATContextClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkATContextClass.self) }
    
    static var metatype: GtkATContextClass? { metatypePointer?.pointee } 
    
    static var wrapper: ATContextClassRef? { ATContextClassRef(metatypePointer) }
    
    
}

// MARK: - ATContextClass Record


///
/// The `ATContextClassProtocol` protocol exposes the methods and properties of an underlying `GtkATContextClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ATContextClass`.
/// Alternatively, use `ATContextClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ATContextClassProtocol {
        /// Untyped pointer to the underlying `GtkATContextClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkATContextClass` instance.
    var _ptr: UnsafeMutablePointer<GtkATContextClass>! { get }

    /// Required Initialiser for types conforming to `ATContextClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `ATContextClassRef` type acts as a lightweight Swift reference to an underlying `GtkATContextClass` instance.
/// It exposes methods that can operate on this data type through `ATContextClassProtocol` conformance.
/// Use `ATContextClassRef` only as an `unowned` reference to an existing `GtkATContextClass` instance.
///
public struct ATContextClassRef: ATContextClassProtocol {
        /// Untyped pointer to the underlying `GtkATContextClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ATContextClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkATContextClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkATContextClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkATContextClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkATContextClass>?) {
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

    /// Reference intialiser for a related type that implements `ATContextClassProtocol`
    @inlinable init<T: ATContextClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ATContextClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ATContextClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ATContextClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ATContextClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ATContextClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ATContextClass Record: ATContextClassProtocol extension (methods and fields)
public extension ATContextClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkATContextClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkATContextClass>! { return ptr?.assumingMemoryBound(to: GtkATContextClass.self) }



}



/// Metatype/GType declaration for Accessible
public extension AccessibleInterfaceRef {
    
    /// This getter returns the GLib type identifier registered for `Accessible`
    static var metatypeReference: GType { gtk_accessible_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkAccessibleInterface>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkAccessibleInterface.self) }
    
    static var metatype: GtkAccessibleInterface? { metatypePointer?.pointee } 
    
    static var wrapper: AccessibleInterfaceRef? { AccessibleInterfaceRef(metatypePointer) }
    
    
}

// MARK: - AccessibleInterface Record


///
/// The `AccessibleInterfaceProtocol` protocol exposes the methods and properties of an underlying `GtkAccessibleInterface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AccessibleInterface`.
/// Alternatively, use `AccessibleInterfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol AccessibleInterfaceProtocol {
        /// Untyped pointer to the underlying `GtkAccessibleInterface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkAccessibleInterface` instance.
    var _ptr: UnsafeMutablePointer<GtkAccessibleInterface>! { get }

    /// Required Initialiser for types conforming to `AccessibleInterfaceProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `AccessibleInterfaceRef` type acts as a lightweight Swift reference to an underlying `GtkAccessibleInterface` instance.
/// It exposes methods that can operate on this data type through `AccessibleInterfaceProtocol` conformance.
/// Use `AccessibleInterfaceRef` only as an `unowned` reference to an existing `GtkAccessibleInterface` instance.
///
public struct AccessibleInterfaceRef: AccessibleInterfaceProtocol {
        /// Untyped pointer to the underlying `GtkAccessibleInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension AccessibleInterfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkAccessibleInterface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkAccessibleInterface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkAccessibleInterface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkAccessibleInterface>?) {
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

    /// Reference intialiser for a related type that implements `AccessibleInterfaceProtocol`
    @inlinable init<T: AccessibleInterfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccessibleInterfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccessibleInterfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccessibleInterfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccessibleInterfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AccessibleInterfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: AccessibleInterface Record: AccessibleInterfaceProtocol extension (methods and fields)
public extension AccessibleInterfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkAccessibleInterface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkAccessibleInterface>! { return ptr?.assumingMemoryBound(to: GtkAccessibleInterface.self) }



}



/// Metatype/GType declaration for Actionable
public extension ActionableInterfaceRef {
    
    /// This getter returns the GLib type identifier registered for `Actionable`
    static var metatypeReference: GType { gtk_actionable_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkActionableInterface>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkActionableInterface.self) }
    
    static var metatype: GtkActionableInterface? { metatypePointer?.pointee } 
    
    static var wrapper: ActionableInterfaceRef? { ActionableInterfaceRef(metatypePointer) }
    
    
}

// MARK: - ActionableInterface Record

/// The interface vtable for `GtkActionable`.
///
/// The `ActionableInterfaceProtocol` protocol exposes the methods and properties of an underlying `GtkActionableInterface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ActionableInterface`.
/// Alternatively, use `ActionableInterfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ActionableInterfaceProtocol {
        /// Untyped pointer to the underlying `GtkActionableInterface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkActionableInterface` instance.
    var _ptr: UnsafeMutablePointer<GtkActionableInterface>! { get }

    /// Required Initialiser for types conforming to `ActionableInterfaceProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The interface vtable for `GtkActionable`.
///
/// The `ActionableInterfaceRef` type acts as a lightweight Swift reference to an underlying `GtkActionableInterface` instance.
/// It exposes methods that can operate on this data type through `ActionableInterfaceProtocol` conformance.
/// Use `ActionableInterfaceRef` only as an `unowned` reference to an existing `GtkActionableInterface` instance.
///
public struct ActionableInterfaceRef: ActionableInterfaceProtocol {
        /// Untyped pointer to the underlying `GtkActionableInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ActionableInterfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkActionableInterface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkActionableInterface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkActionableInterface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkActionableInterface>?) {
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

    /// Reference intialiser for a related type that implements `ActionableInterfaceProtocol`
    @inlinable init<T: ActionableInterfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionableInterfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionableInterfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionableInterfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionableInterfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActionableInterfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ActionableInterface Record: ActionableInterfaceProtocol extension (methods and fields)
public extension ActionableInterfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkActionableInterface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkActionableInterface>! { return ptr?.assumingMemoryBound(to: GtkActionableInterface.self) }


    // var gIface is unavailable because g_iface is private

    // var getActionName is unavailable because get_action_name is void

    // var setActionName is unavailable because set_action_name is void

    // var getActionTargetValue is unavailable because get_action_target_value is void

    // var setActionTargetValue is unavailable because set_action_target_value is void

}



/// Metatype/GType declaration for ActivateAction
public extension ActivateActionClassRef {
    
    /// This getter returns the GLib type identifier registered for `ActivateAction`
    static var metatypeReference: GType { gtk_activate_action_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkActivateActionClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkActivateActionClass.self) }
    
    static var metatype: GtkActivateActionClass? { metatypePointer?.pointee } 
    
    static var wrapper: ActivateActionClassRef? { ActivateActionClassRef(metatypePointer) }
    
    
}

// MARK: - ActivateActionClass Record


///
/// The `ActivateActionClassProtocol` protocol exposes the methods and properties of an underlying `GtkActivateActionClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ActivateActionClass`.
/// Alternatively, use `ActivateActionClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ActivateActionClassProtocol {
        /// Untyped pointer to the underlying `GtkActivateActionClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkActivateActionClass` instance.
    var _ptr: UnsafeMutablePointer<GtkActivateActionClass>! { get }

    /// Required Initialiser for types conforming to `ActivateActionClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `ActivateActionClassRef` type acts as a lightweight Swift reference to an underlying `GtkActivateActionClass` instance.
/// It exposes methods that can operate on this data type through `ActivateActionClassProtocol` conformance.
/// Use `ActivateActionClassRef` only as an `unowned` reference to an existing `GtkActivateActionClass` instance.
///
public struct ActivateActionClassRef: ActivateActionClassProtocol {
        /// Untyped pointer to the underlying `GtkActivateActionClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ActivateActionClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkActivateActionClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkActivateActionClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkActivateActionClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkActivateActionClass>?) {
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

    /// Reference intialiser for a related type that implements `ActivateActionClassProtocol`
    @inlinable init<T: ActivateActionClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActivateActionClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActivateActionClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActivateActionClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActivateActionClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ActivateActionClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ActivateActionClass Record: ActivateActionClassProtocol extension (methods and fields)
public extension ActivateActionClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkActivateActionClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkActivateActionClass>! { return ptr?.assumingMemoryBound(to: GtkActivateActionClass.self) }



}



/// Metatype/GType declaration for Adjustment
public extension AdjustmentClassRef {
    
    /// This getter returns the GLib type identifier registered for `Adjustment`
    static var metatypeReference: GType { gtk_adjustment_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkAdjustmentClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkAdjustmentClass.self) }
    
    static var metatype: GtkAdjustmentClass? { metatypePointer?.pointee } 
    
    static var wrapper: AdjustmentClassRef? { AdjustmentClassRef(metatypePointer) }
    
    
}

// MARK: - AdjustmentClass Record


///
/// The `AdjustmentClassProtocol` protocol exposes the methods and properties of an underlying `GtkAdjustmentClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AdjustmentClass`.
/// Alternatively, use `AdjustmentClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol AdjustmentClassProtocol {
        /// Untyped pointer to the underlying `GtkAdjustmentClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkAdjustmentClass` instance.
    var _ptr: UnsafeMutablePointer<GtkAdjustmentClass>! { get }

    /// Required Initialiser for types conforming to `AdjustmentClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `AdjustmentClassRef` type acts as a lightweight Swift reference to an underlying `GtkAdjustmentClass` instance.
/// It exposes methods that can operate on this data type through `AdjustmentClassProtocol` conformance.
/// Use `AdjustmentClassRef` only as an `unowned` reference to an existing `GtkAdjustmentClass` instance.
///
public struct AdjustmentClassRef: AdjustmentClassProtocol {
        /// Untyped pointer to the underlying `GtkAdjustmentClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension AdjustmentClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkAdjustmentClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkAdjustmentClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkAdjustmentClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkAdjustmentClass>?) {
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

    /// Reference intialiser for a related type that implements `AdjustmentClassProtocol`
    @inlinable init<T: AdjustmentClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AdjustmentClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AdjustmentClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AdjustmentClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AdjustmentClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AdjustmentClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: AdjustmentClass Record: AdjustmentClassProtocol extension (methods and fields)
public extension AdjustmentClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkAdjustmentClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkAdjustmentClass>! { return ptr?.assumingMemoryBound(to: GtkAdjustmentClass.self) }


    @inlinable var parentClass: GInitiallyUnownedClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var changed is unavailable because changed is void

    // var valueChanged is unavailable because value_changed is void

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

}



/// Metatype/GType declaration for AlternativeTrigger
public extension AlternativeTriggerClassRef {
    
    /// This getter returns the GLib type identifier registered for `AlternativeTrigger`
    static var metatypeReference: GType { gtk_alternative_trigger_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkAlternativeTriggerClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkAlternativeTriggerClass.self) }
    
    static var metatype: GtkAlternativeTriggerClass? { metatypePointer?.pointee } 
    
    static var wrapper: AlternativeTriggerClassRef? { AlternativeTriggerClassRef(metatypePointer) }
    
    
}

// MARK: - AlternativeTriggerClass Record


///
/// The `AlternativeTriggerClassProtocol` protocol exposes the methods and properties of an underlying `GtkAlternativeTriggerClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AlternativeTriggerClass`.
/// Alternatively, use `AlternativeTriggerClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol AlternativeTriggerClassProtocol {
        /// Untyped pointer to the underlying `GtkAlternativeTriggerClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkAlternativeTriggerClass` instance.
    var _ptr: UnsafeMutablePointer<GtkAlternativeTriggerClass>! { get }

    /// Required Initialiser for types conforming to `AlternativeTriggerClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `AlternativeTriggerClassRef` type acts as a lightweight Swift reference to an underlying `GtkAlternativeTriggerClass` instance.
/// It exposes methods that can operate on this data type through `AlternativeTriggerClassProtocol` conformance.
/// Use `AlternativeTriggerClassRef` only as an `unowned` reference to an existing `GtkAlternativeTriggerClass` instance.
///
public struct AlternativeTriggerClassRef: AlternativeTriggerClassProtocol {
        /// Untyped pointer to the underlying `GtkAlternativeTriggerClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension AlternativeTriggerClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkAlternativeTriggerClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkAlternativeTriggerClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkAlternativeTriggerClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkAlternativeTriggerClass>?) {
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

    /// Reference intialiser for a related type that implements `AlternativeTriggerClassProtocol`
    @inlinable init<T: AlternativeTriggerClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AlternativeTriggerClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AlternativeTriggerClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AlternativeTriggerClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AlternativeTriggerClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AlternativeTriggerClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: AlternativeTriggerClass Record: AlternativeTriggerClassProtocol extension (methods and fields)
public extension AlternativeTriggerClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkAlternativeTriggerClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkAlternativeTriggerClass>! { return ptr?.assumingMemoryBound(to: GtkAlternativeTriggerClass.self) }



}



/// Metatype/GType declaration for AnyFilter
public extension AnyFilterClassRef {
    
    /// This getter returns the GLib type identifier registered for `AnyFilter`
    static var metatypeReference: GType { gtk_any_filter_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkAnyFilterClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkAnyFilterClass.self) }
    
    static var metatype: GtkAnyFilterClass? { metatypePointer?.pointee } 
    
    static var wrapper: AnyFilterClassRef? { AnyFilterClassRef(metatypePointer) }
    
    
}

// MARK: - AnyFilterClass Record


///
/// The `AnyFilterClassProtocol` protocol exposes the methods and properties of an underlying `GtkAnyFilterClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `AnyFilterClass`.
/// Alternatively, use `AnyFilterClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol AnyFilterClassProtocol {
        /// Untyped pointer to the underlying `GtkAnyFilterClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkAnyFilterClass` instance.
    var _ptr: UnsafeMutablePointer<GtkAnyFilterClass>! { get }

    /// Required Initialiser for types conforming to `AnyFilterClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `AnyFilterClassRef` type acts as a lightweight Swift reference to an underlying `GtkAnyFilterClass` instance.
/// It exposes methods that can operate on this data type through `AnyFilterClassProtocol` conformance.
/// Use `AnyFilterClassRef` only as an `unowned` reference to an existing `GtkAnyFilterClass` instance.
///
public struct AnyFilterClassRef: AnyFilterClassProtocol {
        /// Untyped pointer to the underlying `GtkAnyFilterClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension AnyFilterClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkAnyFilterClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkAnyFilterClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkAnyFilterClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkAnyFilterClass>?) {
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

    /// Reference intialiser for a related type that implements `AnyFilterClassProtocol`
    @inlinable init<T: AnyFilterClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AnyFilterClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AnyFilterClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AnyFilterClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AnyFilterClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `AnyFilterClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: AnyFilterClass Record: AnyFilterClassProtocol extension (methods and fields)
public extension AnyFilterClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkAnyFilterClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkAnyFilterClass>! { return ptr?.assumingMemoryBound(to: GtkAnyFilterClass.self) }



}



/// Metatype/GType declaration for Application
public extension ApplicationClassRef {
    
    /// This getter returns the GLib type identifier registered for `Application`
    static var metatypeReference: GType { gtk_application_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkApplicationClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkApplicationClass.self) }
    
    static var metatype: GtkApplicationClass? { metatypePointer?.pointee } 
    
    static var wrapper: ApplicationClassRef? { ApplicationClassRef(metatypePointer) }
    
    
}

// MARK: - ApplicationClass Record


///
/// The `ApplicationClassProtocol` protocol exposes the methods and properties of an underlying `GtkApplicationClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ApplicationClass`.
/// Alternatively, use `ApplicationClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ApplicationClassProtocol {
        /// Untyped pointer to the underlying `GtkApplicationClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkApplicationClass` instance.
    var _ptr: UnsafeMutablePointer<GtkApplicationClass>! { get }

    /// Required Initialiser for types conforming to `ApplicationClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `ApplicationClassRef` type acts as a lightweight Swift reference to an underlying `GtkApplicationClass` instance.
/// It exposes methods that can operate on this data type through `ApplicationClassProtocol` conformance.
/// Use `ApplicationClassRef` only as an `unowned` reference to an existing `GtkApplicationClass` instance.
///
public struct ApplicationClassRef: ApplicationClassProtocol {
        /// Untyped pointer to the underlying `GtkApplicationClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ApplicationClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkApplicationClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkApplicationClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkApplicationClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkApplicationClass>?) {
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

    /// Reference intialiser for a related type that implements `ApplicationClassProtocol`
    @inlinable init<T: ApplicationClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ApplicationClass Record: ApplicationClassProtocol extension (methods and fields)
public extension ApplicationClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkApplicationClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkApplicationClass>! { return ptr?.assumingMemoryBound(to: GtkApplicationClass.self) }


    /// The parent class.
    @inlinable var parentClass: GApplicationClass {
        /// The parent class.
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var windowAdded is unavailable because window_added is void

    // var windowRemoved is unavailable because window_removed is void

    // var padding is unavailable because padding is private

}



/// Metatype/GType declaration for ApplicationWindow
public extension ApplicationWindowClassRef {
    
    /// This getter returns the GLib type identifier registered for `ApplicationWindow`
    static var metatypeReference: GType { gtk_application_window_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkApplicationWindowClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkApplicationWindowClass.self) }
    
    static var metatype: GtkApplicationWindowClass? { metatypePointer?.pointee } 
    
    static var wrapper: ApplicationWindowClassRef? { ApplicationWindowClassRef(metatypePointer) }
    
    
}

// MARK: - ApplicationWindowClass Record


///
/// The `ApplicationWindowClassProtocol` protocol exposes the methods and properties of an underlying `GtkApplicationWindowClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ApplicationWindowClass`.
/// Alternatively, use `ApplicationWindowClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ApplicationWindowClassProtocol {
        /// Untyped pointer to the underlying `GtkApplicationWindowClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkApplicationWindowClass` instance.
    var _ptr: UnsafeMutablePointer<GtkApplicationWindowClass>! { get }

    /// Required Initialiser for types conforming to `ApplicationWindowClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `ApplicationWindowClassRef` type acts as a lightweight Swift reference to an underlying `GtkApplicationWindowClass` instance.
/// It exposes methods that can operate on this data type through `ApplicationWindowClassProtocol` conformance.
/// Use `ApplicationWindowClassRef` only as an `unowned` reference to an existing `GtkApplicationWindowClass` instance.
///
public struct ApplicationWindowClassRef: ApplicationWindowClassProtocol {
        /// Untyped pointer to the underlying `GtkApplicationWindowClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ApplicationWindowClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkApplicationWindowClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkApplicationWindowClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkApplicationWindowClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkApplicationWindowClass>?) {
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

    /// Reference intialiser for a related type that implements `ApplicationWindowClassProtocol`
    @inlinable init<T: ApplicationWindowClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationWindowClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationWindowClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationWindowClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationWindowClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ApplicationWindowClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ApplicationWindowClass Record: ApplicationWindowClassProtocol extension (methods and fields)
public extension ApplicationWindowClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkApplicationWindowClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkApplicationWindowClass>! { return ptr?.assumingMemoryBound(to: GtkApplicationWindowClass.self) }


    /// The parent class.
    @inlinable var parentClass: GtkWindowClass {
        /// The parent class.
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var padding is unavailable because padding is private

}



/// Metatype/GType declaration for BinLayout
public extension BinLayoutClassRef {
    
    /// This getter returns the GLib type identifier registered for `BinLayout`
    static var metatypeReference: GType { gtk_bin_layout_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkBinLayoutClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkBinLayoutClass.self) }
    
    static var metatype: GtkBinLayoutClass? { metatypePointer?.pointee } 
    
    static var wrapper: BinLayoutClassRef? { BinLayoutClassRef(metatypePointer) }
    
    
}

// MARK: - BinLayoutClass Record


///
/// The `BinLayoutClassProtocol` protocol exposes the methods and properties of an underlying `GtkBinLayoutClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `BinLayoutClass`.
/// Alternatively, use `BinLayoutClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol BinLayoutClassProtocol {
        /// Untyped pointer to the underlying `GtkBinLayoutClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkBinLayoutClass` instance.
    var _ptr: UnsafeMutablePointer<GtkBinLayoutClass>! { get }

    /// Required Initialiser for types conforming to `BinLayoutClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `BinLayoutClassRef` type acts as a lightweight Swift reference to an underlying `GtkBinLayoutClass` instance.
/// It exposes methods that can operate on this data type through `BinLayoutClassProtocol` conformance.
/// Use `BinLayoutClassRef` only as an `unowned` reference to an existing `GtkBinLayoutClass` instance.
///
public struct BinLayoutClassRef: BinLayoutClassProtocol {
        /// Untyped pointer to the underlying `GtkBinLayoutClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension BinLayoutClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkBinLayoutClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkBinLayoutClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkBinLayoutClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkBinLayoutClass>?) {
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

    /// Reference intialiser for a related type that implements `BinLayoutClassProtocol`
    @inlinable init<T: BinLayoutClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BinLayoutClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BinLayoutClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BinLayoutClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BinLayoutClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BinLayoutClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: BinLayoutClass Record: BinLayoutClassProtocol extension (methods and fields)
public extension BinLayoutClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkBinLayoutClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkBinLayoutClass>! { return ptr?.assumingMemoryBound(to: GtkBinLayoutClass.self) }


    @inlinable var parentClass: GtkLayoutManagerClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



