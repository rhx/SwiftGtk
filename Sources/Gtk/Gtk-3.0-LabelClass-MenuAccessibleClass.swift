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

/// Metatype/GType declaration for Label
public extension LabelClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_label_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkLabelClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkLabelClass.self) }
    
    static var metatype: GtkLabelClass? { metatypePointer?.pointee } 
    
    static var wrapper: LabelClassRef? { LabelClassRef(metatypePointer) }
    
    
}

// MARK: - LabelClass Record

/// The `LabelClassProtocol` protocol exposes the methods and properties of an underlying `GtkLabelClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `LabelClass`.
/// Alternatively, use `LabelClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol LabelClassProtocol {
        /// Untyped pointer to the underlying `GtkLabelClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkLabelClass` instance.
    var _ptr: UnsafeMutablePointer<GtkLabelClass>! { get }

}

/// The `LabelClassRef` type acts as a lightweight Swift reference to an underlying `GtkLabelClass` instance.
/// It exposes methods that can operate on this data type through `LabelClassProtocol` conformance.
/// Use `LabelClassRef` only as an `unowned` reference to an existing `GtkLabelClass` instance.
///

public struct LabelClassRef: LabelClassProtocol {
        /// Untyped pointer to the underlying `GtkLabelClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension LabelClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkLabelClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkLabelClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkLabelClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkLabelClass>?) {
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

    /// Reference intialiser for a related type that implements `LabelClassProtocol`
    @inlinable init<T: LabelClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: LabelClass Record: LabelClassProtocol extension (methods and fields)
public extension LabelClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkLabelClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkLabelClass>! { return ptr?.assumingMemoryBound(to: GtkLabelClass.self) }


    @inlinable var parentClass: GtkMiscClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var moveCursor is unavailable because move_cursor is void

    // var copyClipboard is unavailable because copy_clipboard is void

    // var populatePopup is unavailable because populate_popup is void

    // var activateLink is unavailable because activate_link is void

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

    // var GtkReserved4 is unavailable because _gtk_reserved4 is void

    // var GtkReserved5 is unavailable because _gtk_reserved5 is void

    // var GtkReserved6 is unavailable because _gtk_reserved6 is void

    // var GtkReserved7 is unavailable because _gtk_reserved7 is void

    // var GtkReserved8 is unavailable because _gtk_reserved8 is void

}



// MARK: - LabelSelectionInfo Record

/// The `LabelSelectionInfoProtocol` protocol exposes the methods and properties of an underlying `GtkLabelSelectionInfo` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `LabelSelectionInfo`.
/// Alternatively, use `LabelSelectionInfoRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol LabelSelectionInfoProtocol {
        /// Untyped pointer to the underlying `GtkLabelSelectionInfo` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkLabelSelectionInfo` instance.
    var _ptr: UnsafeMutablePointer<GtkLabelSelectionInfo>! { get }

}

/// The `LabelSelectionInfoRef` type acts as a lightweight Swift reference to an underlying `GtkLabelSelectionInfo` instance.
/// It exposes methods that can operate on this data type through `LabelSelectionInfoProtocol` conformance.
/// Use `LabelSelectionInfoRef` only as an `unowned` reference to an existing `GtkLabelSelectionInfo` instance.
///

public struct LabelSelectionInfoRef: LabelSelectionInfoProtocol {
        /// Untyped pointer to the underlying `GtkLabelSelectionInfo` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension LabelSelectionInfoRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkLabelSelectionInfo>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkLabelSelectionInfo>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkLabelSelectionInfo>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkLabelSelectionInfo>?) {
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

    /// Reference intialiser for a related type that implements `LabelSelectionInfoProtocol`
    @inlinable init<T: LabelSelectionInfoProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelSelectionInfoProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelSelectionInfoProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelSelectionInfoProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelSelectionInfoProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelSelectionInfoProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `LabelSelectionInfo` type acts as an owner of an underlying `GtkLabelSelectionInfo` instance.
/// It provides the methods that can operate on this data type through `LabelSelectionInfoProtocol` conformance.
/// Use `LabelSelectionInfo` as a strong reference or owner of a `GtkLabelSelectionInfo` instance.
///

open class LabelSelectionInfo: LabelSelectionInfoProtocol {
        /// Untyped pointer to the underlying `GtkLabelSelectionInfo` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LabelSelectionInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkLabelSelectionInfo>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LabelSelectionInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkLabelSelectionInfo>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LabelSelectionInfo` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LabelSelectionInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LabelSelectionInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkLabelSelectionInfo>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `LabelSelectionInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkLabelSelectionInfo>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GtkLabelSelectionInfo` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `LabelSelectionInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkLabelSelectionInfo>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GtkLabelSelectionInfo, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `LabelSelectionInfoProtocol`
    /// `GtkLabelSelectionInfo` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `LabelSelectionInfoProtocol`
    @inlinable public init<T: LabelSelectionInfoProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GtkLabelSelectionInfo, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GtkLabelSelectionInfo`.
    deinit {
        // no reference counting for GtkLabelSelectionInfo, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelSelectionInfoProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelSelectionInfoProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GtkLabelSelectionInfo, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelSelectionInfoProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelSelectionInfoProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GtkLabelSelectionInfo, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelSelectionInfoProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelSelectionInfoProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GtkLabelSelectionInfo, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelSelectionInfoProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LabelSelectionInfoProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GtkLabelSelectionInfo, cannot ref(_ptr)
    }



}

// MARK: no LabelSelectionInfo properties

// MARK: LabelSelectionInfo has no signals// MARK: LabelSelectionInfo Record: LabelSelectionInfoProtocol extension (methods and fields)
public extension LabelSelectionInfoProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkLabelSelectionInfo` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkLabelSelectionInfo>! { return ptr?.assumingMemoryBound(to: GtkLabelSelectionInfo.self) }



}



/// Metatype/GType declaration for Layout
public extension LayoutClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_layout_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkLayoutClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkLayoutClass.self) }
    
    static var metatype: GtkLayoutClass? { metatypePointer?.pointee } 
    
    static var wrapper: LayoutClassRef? { LayoutClassRef(metatypePointer) }
    
    
}

// MARK: - LayoutClass Record

/// The `LayoutClassProtocol` protocol exposes the methods and properties of an underlying `GtkLayoutClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `LayoutClass`.
/// Alternatively, use `LayoutClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol LayoutClassProtocol {
        /// Untyped pointer to the underlying `GtkLayoutClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkLayoutClass` instance.
    var _ptr: UnsafeMutablePointer<GtkLayoutClass>! { get }

}

/// The `LayoutClassRef` type acts as a lightweight Swift reference to an underlying `GtkLayoutClass` instance.
/// It exposes methods that can operate on this data type through `LayoutClassProtocol` conformance.
/// Use `LayoutClassRef` only as an `unowned` reference to an existing `GtkLayoutClass` instance.
///

public struct LayoutClassRef: LayoutClassProtocol {
        /// Untyped pointer to the underlying `GtkLayoutClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension LayoutClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkLayoutClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkLayoutClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkLayoutClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkLayoutClass>?) {
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

    /// Reference intialiser for a related type that implements `LayoutClassProtocol`
    @inlinable init<T: LayoutClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LayoutClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: LayoutClass Record: LayoutClassProtocol extension (methods and fields)
public extension LayoutClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkLayoutClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkLayoutClass>! { return ptr?.assumingMemoryBound(to: GtkLayoutClass.self) }


    @inlinable var parentClass: GtkContainerClass {
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



/// Metatype/GType declaration for LevelBarAccessible
public extension LevelBarAccessibleClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_level_bar_accessible_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkLevelBarAccessibleClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkLevelBarAccessibleClass.self) }
    
    static var metatype: GtkLevelBarAccessibleClass? { metatypePointer?.pointee } 
    
    static var wrapper: LevelBarAccessibleClassRef? { LevelBarAccessibleClassRef(metatypePointer) }
    
    
}

// MARK: - LevelBarAccessibleClass Record

/// The `LevelBarAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkLevelBarAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `LevelBarAccessibleClass`.
/// Alternatively, use `LevelBarAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol LevelBarAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkLevelBarAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkLevelBarAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkLevelBarAccessibleClass>! { get }

}

/// The `LevelBarAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkLevelBarAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `LevelBarAccessibleClassProtocol` conformance.
/// Use `LevelBarAccessibleClassRef` only as an `unowned` reference to an existing `GtkLevelBarAccessibleClass` instance.
///

public struct LevelBarAccessibleClassRef: LevelBarAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkLevelBarAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension LevelBarAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkLevelBarAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkLevelBarAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkLevelBarAccessibleClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkLevelBarAccessibleClass>?) {
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

    /// Reference intialiser for a related type that implements `LevelBarAccessibleClassProtocol`
    @inlinable init<T: LevelBarAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarAccessibleClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarAccessibleClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarAccessibleClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarAccessibleClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarAccessibleClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: LevelBarAccessibleClass Record: LevelBarAccessibleClassProtocol extension (methods and fields)
public extension LevelBarAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkLevelBarAccessibleClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkLevelBarAccessibleClass>! { return ptr?.assumingMemoryBound(to: GtkLevelBarAccessibleClass.self) }


    @inlinable var parentClass: GtkWidgetAccessibleClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for LevelBar
public extension LevelBarClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_level_bar_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkLevelBarClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkLevelBarClass.self) }
    
    static var metatype: GtkLevelBarClass? { metatypePointer?.pointee } 
    
    static var wrapper: LevelBarClassRef? { LevelBarClassRef(metatypePointer) }
    
    
}

// MARK: - LevelBarClass Record

/// The `LevelBarClassProtocol` protocol exposes the methods and properties of an underlying `GtkLevelBarClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `LevelBarClass`.
/// Alternatively, use `LevelBarClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol LevelBarClassProtocol {
        /// Untyped pointer to the underlying `GtkLevelBarClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkLevelBarClass` instance.
    var _ptr: UnsafeMutablePointer<GtkLevelBarClass>! { get }

}

/// The `LevelBarClassRef` type acts as a lightweight Swift reference to an underlying `GtkLevelBarClass` instance.
/// It exposes methods that can operate on this data type through `LevelBarClassProtocol` conformance.
/// Use `LevelBarClassRef` only as an `unowned` reference to an existing `GtkLevelBarClass` instance.
///

public struct LevelBarClassRef: LevelBarClassProtocol {
        /// Untyped pointer to the underlying `GtkLevelBarClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension LevelBarClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkLevelBarClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkLevelBarClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkLevelBarClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkLevelBarClass>?) {
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

    /// Reference intialiser for a related type that implements `LevelBarClassProtocol`
    @inlinable init<T: LevelBarClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LevelBarClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: LevelBarClass Record: LevelBarClassProtocol extension (methods and fields)
public extension LevelBarClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkLevelBarClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkLevelBarClass>! { return ptr?.assumingMemoryBound(to: GtkLevelBarClass.self) }


    // var parentClass is unavailable because parent_class is private

    // var offsetChanged is unavailable because offset_changed is void

    // var padding is unavailable because padding is private

}



/// Metatype/GType declaration for LinkButtonAccessible
public extension LinkButtonAccessibleClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_link_button_accessible_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkLinkButtonAccessibleClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkLinkButtonAccessibleClass.self) }
    
    static var metatype: GtkLinkButtonAccessibleClass? { metatypePointer?.pointee } 
    
    static var wrapper: LinkButtonAccessibleClassRef? { LinkButtonAccessibleClassRef(metatypePointer) }
    
    
}

// MARK: - LinkButtonAccessibleClass Record

/// The `LinkButtonAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkLinkButtonAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `LinkButtonAccessibleClass`.
/// Alternatively, use `LinkButtonAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol LinkButtonAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkLinkButtonAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkLinkButtonAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkLinkButtonAccessibleClass>! { get }

}

/// The `LinkButtonAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkLinkButtonAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `LinkButtonAccessibleClassProtocol` conformance.
/// Use `LinkButtonAccessibleClassRef` only as an `unowned` reference to an existing `GtkLinkButtonAccessibleClass` instance.
///

public struct LinkButtonAccessibleClassRef: LinkButtonAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkLinkButtonAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension LinkButtonAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkLinkButtonAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkLinkButtonAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkLinkButtonAccessibleClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkLinkButtonAccessibleClass>?) {
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

    /// Reference intialiser for a related type that implements `LinkButtonAccessibleClassProtocol`
    @inlinable init<T: LinkButtonAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonAccessibleClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonAccessibleClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonAccessibleClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonAccessibleClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonAccessibleClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: LinkButtonAccessibleClass Record: LinkButtonAccessibleClassProtocol extension (methods and fields)
public extension LinkButtonAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkLinkButtonAccessibleClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkLinkButtonAccessibleClass>! { return ptr?.assumingMemoryBound(to: GtkLinkButtonAccessibleClass.self) }


    @inlinable var parentClass: GtkButtonAccessibleClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for LinkButton
public extension LinkButtonClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_link_button_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkLinkButtonClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkLinkButtonClass.self) }
    
    static var metatype: GtkLinkButtonClass? { metatypePointer?.pointee } 
    
    static var wrapper: LinkButtonClassRef? { LinkButtonClassRef(metatypePointer) }
    
    
}

// MARK: - LinkButtonClass Record

/// The `LinkButtonClassProtocol` protocol exposes the methods and properties of an underlying `GtkLinkButtonClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `LinkButtonClass`.
/// Alternatively, use `LinkButtonClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GtkLinkButtonClass` contains only
/// private data.
public protocol LinkButtonClassProtocol {
        /// Untyped pointer to the underlying `GtkLinkButtonClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkLinkButtonClass` instance.
    var _ptr: UnsafeMutablePointer<GtkLinkButtonClass>! { get }

}

/// The `LinkButtonClassRef` type acts as a lightweight Swift reference to an underlying `GtkLinkButtonClass` instance.
/// It exposes methods that can operate on this data type through `LinkButtonClassProtocol` conformance.
/// Use `LinkButtonClassRef` only as an `unowned` reference to an existing `GtkLinkButtonClass` instance.
///
/// The `GtkLinkButtonClass` contains only
/// private data.
public struct LinkButtonClassRef: LinkButtonClassProtocol {
        /// Untyped pointer to the underlying `GtkLinkButtonClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension LinkButtonClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkLinkButtonClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkLinkButtonClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkLinkButtonClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkLinkButtonClass>?) {
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

    /// Reference intialiser for a related type that implements `LinkButtonClassProtocol`
    @inlinable init<T: LinkButtonClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LinkButtonClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: LinkButtonClass Record: LinkButtonClassProtocol extension (methods and fields)
public extension LinkButtonClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkLinkButtonClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkLinkButtonClass>! { return ptr?.assumingMemoryBound(to: GtkLinkButtonClass.self) }


    // var parentClass is unavailable because parent_class is private

    // var activateLink is unavailable because activate_link is void

    // var GtkPadding1 is unavailable because _gtk_padding1 is void

    // var GtkPadding2 is unavailable because _gtk_padding2 is void

    // var GtkPadding3 is unavailable because _gtk_padding3 is void

    // var GtkPadding4 is unavailable because _gtk_padding4 is void

}



/// Metatype/GType declaration for ListBoxAccessible
public extension ListBoxAccessibleClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_list_box_accessible_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkListBoxAccessibleClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkListBoxAccessibleClass.self) }
    
    static var metatype: GtkListBoxAccessibleClass? { metatypePointer?.pointee } 
    
    static var wrapper: ListBoxAccessibleClassRef? { ListBoxAccessibleClassRef(metatypePointer) }
    
    
}

// MARK: - ListBoxAccessibleClass Record

/// The `ListBoxAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkListBoxAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ListBoxAccessibleClass`.
/// Alternatively, use `ListBoxAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ListBoxAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkListBoxAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkListBoxAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkListBoxAccessibleClass>! { get }

}

/// The `ListBoxAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkListBoxAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `ListBoxAccessibleClassProtocol` conformance.
/// Use `ListBoxAccessibleClassRef` only as an `unowned` reference to an existing `GtkListBoxAccessibleClass` instance.
///

public struct ListBoxAccessibleClassRef: ListBoxAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkListBoxAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ListBoxAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkListBoxAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkListBoxAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkListBoxAccessibleClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkListBoxAccessibleClass>?) {
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

    /// Reference intialiser for a related type that implements `ListBoxAccessibleClassProtocol`
    @inlinable init<T: ListBoxAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxAccessibleClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxAccessibleClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxAccessibleClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxAccessibleClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxAccessibleClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ListBoxAccessibleClass Record: ListBoxAccessibleClassProtocol extension (methods and fields)
public extension ListBoxAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkListBoxAccessibleClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkListBoxAccessibleClass>! { return ptr?.assumingMemoryBound(to: GtkListBoxAccessibleClass.self) }


    @inlinable var parentClass: GtkContainerAccessibleClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for ListBox
public extension ListBoxClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_list_box_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkListBoxClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkListBoxClass.self) }
    
    static var metatype: GtkListBoxClass? { metatypePointer?.pointee } 
    
    static var wrapper: ListBoxClassRef? { ListBoxClassRef(metatypePointer) }
    
    
}

// MARK: - ListBoxClass Record

/// The `ListBoxClassProtocol` protocol exposes the methods and properties of an underlying `GtkListBoxClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ListBoxClass`.
/// Alternatively, use `ListBoxClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ListBoxClassProtocol {
        /// Untyped pointer to the underlying `GtkListBoxClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkListBoxClass` instance.
    var _ptr: UnsafeMutablePointer<GtkListBoxClass>! { get }

}

/// The `ListBoxClassRef` type acts as a lightweight Swift reference to an underlying `GtkListBoxClass` instance.
/// It exposes methods that can operate on this data type through `ListBoxClassProtocol` conformance.
/// Use `ListBoxClassRef` only as an `unowned` reference to an existing `GtkListBoxClass` instance.
///

public struct ListBoxClassRef: ListBoxClassProtocol {
        /// Untyped pointer to the underlying `GtkListBoxClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ListBoxClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkListBoxClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkListBoxClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkListBoxClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkListBoxClass>?) {
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

    /// Reference intialiser for a related type that implements `ListBoxClassProtocol`
    @inlinable init<T: ListBoxClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ListBoxClass Record: ListBoxClassProtocol extension (methods and fields)
public extension ListBoxClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkListBoxClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkListBoxClass>! { return ptr?.assumingMemoryBound(to: GtkListBoxClass.self) }


    /// The parent class.
    @inlinable var parentClass: GtkContainerClass {
        /// The parent class.
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var rowSelected is unavailable because row_selected is void

    // var rowActivated is unavailable because row_activated is void

    // var activateCursorRow is unavailable because activate_cursor_row is void

    // var toggleCursorRow is unavailable because toggle_cursor_row is void

    // var moveCursor is unavailable because move_cursor is void

    // var selectedRowsChanged is unavailable because selected_rows_changed is void

    // var selectAll is unavailable because select_all is void

    // var unselectAll is unavailable because unselect_all is void

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

    // var GtkReserved3 is unavailable because _gtk_reserved3 is void

}



/// Metatype/GType declaration for ListBoxRowAccessible
public extension ListBoxRowAccessibleClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_list_box_row_accessible_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkListBoxRowAccessibleClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkListBoxRowAccessibleClass.self) }
    
    static var metatype: GtkListBoxRowAccessibleClass? { metatypePointer?.pointee } 
    
    static var wrapper: ListBoxRowAccessibleClassRef? { ListBoxRowAccessibleClassRef(metatypePointer) }
    
    
}

// MARK: - ListBoxRowAccessibleClass Record

/// The `ListBoxRowAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkListBoxRowAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ListBoxRowAccessibleClass`.
/// Alternatively, use `ListBoxRowAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ListBoxRowAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkListBoxRowAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkListBoxRowAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkListBoxRowAccessibleClass>! { get }

}

/// The `ListBoxRowAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkListBoxRowAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `ListBoxRowAccessibleClassProtocol` conformance.
/// Use `ListBoxRowAccessibleClassRef` only as an `unowned` reference to an existing `GtkListBoxRowAccessibleClass` instance.
///

public struct ListBoxRowAccessibleClassRef: ListBoxRowAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkListBoxRowAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ListBoxRowAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkListBoxRowAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkListBoxRowAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkListBoxRowAccessibleClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkListBoxRowAccessibleClass>?) {
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

    /// Reference intialiser for a related type that implements `ListBoxRowAccessibleClassProtocol`
    @inlinable init<T: ListBoxRowAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowAccessibleClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowAccessibleClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowAccessibleClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowAccessibleClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowAccessibleClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ListBoxRowAccessibleClass Record: ListBoxRowAccessibleClassProtocol extension (methods and fields)
public extension ListBoxRowAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkListBoxRowAccessibleClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkListBoxRowAccessibleClass>! { return ptr?.assumingMemoryBound(to: GtkListBoxRowAccessibleClass.self) }


    @inlinable var parentClass: GtkContainerAccessibleClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for ListBoxRow
public extension ListBoxRowClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_list_box_row_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkListBoxRowClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkListBoxRowClass.self) }
    
    static var metatype: GtkListBoxRowClass? { metatypePointer?.pointee } 
    
    static var wrapper: ListBoxRowClassRef? { ListBoxRowClassRef(metatypePointer) }
    
    
}

// MARK: - ListBoxRowClass Record

/// The `ListBoxRowClassProtocol` protocol exposes the methods and properties of an underlying `GtkListBoxRowClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ListBoxRowClass`.
/// Alternatively, use `ListBoxRowClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ListBoxRowClassProtocol {
        /// Untyped pointer to the underlying `GtkListBoxRowClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkListBoxRowClass` instance.
    var _ptr: UnsafeMutablePointer<GtkListBoxRowClass>! { get }

}

/// The `ListBoxRowClassRef` type acts as a lightweight Swift reference to an underlying `GtkListBoxRowClass` instance.
/// It exposes methods that can operate on this data type through `ListBoxRowClassProtocol` conformance.
/// Use `ListBoxRowClassRef` only as an `unowned` reference to an existing `GtkListBoxRowClass` instance.
///

public struct ListBoxRowClassRef: ListBoxRowClassProtocol {
        /// Untyped pointer to the underlying `GtkListBoxRowClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ListBoxRowClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkListBoxRowClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkListBoxRowClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkListBoxRowClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkListBoxRowClass>?) {
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

    /// Reference intialiser for a related type that implements `ListBoxRowClassProtocol`
    @inlinable init<T: ListBoxRowClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListBoxRowClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ListBoxRowClass Record: ListBoxRowClassProtocol extension (methods and fields)
public extension ListBoxRowClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkListBoxRowClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkListBoxRowClass>! { return ptr?.assumingMemoryBound(to: GtkListBoxRowClass.self) }


    /// The parent class.
    @inlinable var parentClass: GtkBinClass {
        /// The parent class.
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var activate is unavailable because activate is void

    // var GtkReserved1 is unavailable because _gtk_reserved1 is void

    // var GtkReserved2 is unavailable because _gtk_reserved2 is void

}



/// Metatype/GType declaration for ListStore
public extension ListStoreClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_list_store_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkListStoreClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkListStoreClass.self) }
    
    static var metatype: GtkListStoreClass? { metatypePointer?.pointee } 
    
    static var wrapper: ListStoreClassRef? { ListStoreClassRef(metatypePointer) }
    
    
}

// MARK: - ListStoreClass Record

/// The `ListStoreClassProtocol` protocol exposes the methods and properties of an underlying `GtkListStoreClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ListStoreClass`.
/// Alternatively, use `ListStoreClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ListStoreClassProtocol {
        /// Untyped pointer to the underlying `GtkListStoreClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkListStoreClass` instance.
    var _ptr: UnsafeMutablePointer<GtkListStoreClass>! { get }

}

/// The `ListStoreClassRef` type acts as a lightweight Swift reference to an underlying `GtkListStoreClass` instance.
/// It exposes methods that can operate on this data type through `ListStoreClassProtocol` conformance.
/// Use `ListStoreClassRef` only as an `unowned` reference to an existing `GtkListStoreClass` instance.
///

public struct ListStoreClassRef: ListStoreClassProtocol {
        /// Untyped pointer to the underlying `GtkListStoreClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ListStoreClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkListStoreClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkListStoreClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkListStoreClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkListStoreClass>?) {
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

    /// Reference intialiser for a related type that implements `ListStoreClassProtocol`
    @inlinable init<T: ListStoreClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListStoreClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ListStoreClass Record: ListStoreClassProtocol extension (methods and fields)
public extension ListStoreClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkListStoreClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkListStoreClass>! { return ptr?.assumingMemoryBound(to: GtkListStoreClass.self) }


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



/// Metatype/GType declaration for LockButtonAccessible
public extension LockButtonAccessibleClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_lock_button_accessible_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkLockButtonAccessibleClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkLockButtonAccessibleClass.self) }
    
    static var metatype: GtkLockButtonAccessibleClass? { metatypePointer?.pointee } 
    
    static var wrapper: LockButtonAccessibleClassRef? { LockButtonAccessibleClassRef(metatypePointer) }
    
    
}

// MARK: - LockButtonAccessibleClass Record

/// The `LockButtonAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkLockButtonAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `LockButtonAccessibleClass`.
/// Alternatively, use `LockButtonAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol LockButtonAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkLockButtonAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkLockButtonAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkLockButtonAccessibleClass>! { get }

}

/// The `LockButtonAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkLockButtonAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `LockButtonAccessibleClassProtocol` conformance.
/// Use `LockButtonAccessibleClassRef` only as an `unowned` reference to an existing `GtkLockButtonAccessibleClass` instance.
///

public struct LockButtonAccessibleClassRef: LockButtonAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkLockButtonAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension LockButtonAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkLockButtonAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkLockButtonAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkLockButtonAccessibleClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkLockButtonAccessibleClass>?) {
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

    /// Reference intialiser for a related type that implements `LockButtonAccessibleClassProtocol`
    @inlinable init<T: LockButtonAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonAccessibleClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonAccessibleClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonAccessibleClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonAccessibleClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonAccessibleClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: LockButtonAccessibleClass Record: LockButtonAccessibleClassProtocol extension (methods and fields)
public extension LockButtonAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkLockButtonAccessibleClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkLockButtonAccessibleClass>! { return ptr?.assumingMemoryBound(to: GtkLockButtonAccessibleClass.self) }


    @inlinable var parentClass: GtkButtonAccessibleClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for LockButton
public extension LockButtonClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_lock_button_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkLockButtonClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkLockButtonClass.self) }
    
    static var metatype: GtkLockButtonClass? { metatypePointer?.pointee } 
    
    static var wrapper: LockButtonClassRef? { LockButtonClassRef(metatypePointer) }
    
    
}

// MARK: - LockButtonClass Record

/// The `LockButtonClassProtocol` protocol exposes the methods and properties of an underlying `GtkLockButtonClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `LockButtonClass`.
/// Alternatively, use `LockButtonClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol LockButtonClassProtocol {
        /// Untyped pointer to the underlying `GtkLockButtonClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkLockButtonClass` instance.
    var _ptr: UnsafeMutablePointer<GtkLockButtonClass>! { get }

}

/// The `LockButtonClassRef` type acts as a lightweight Swift reference to an underlying `GtkLockButtonClass` instance.
/// It exposes methods that can operate on this data type through `LockButtonClassProtocol` conformance.
/// Use `LockButtonClassRef` only as an `unowned` reference to an existing `GtkLockButtonClass` instance.
///

public struct LockButtonClassRef: LockButtonClassProtocol {
        /// Untyped pointer to the underlying `GtkLockButtonClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension LockButtonClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkLockButtonClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkLockButtonClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkLockButtonClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkLockButtonClass>?) {
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

    /// Reference intialiser for a related type that implements `LockButtonClassProtocol`
    @inlinable init<T: LockButtonClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `LockButtonClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: LockButtonClass Record: LockButtonClassProtocol extension (methods and fields)
public extension LockButtonClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkLockButtonClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkLockButtonClass>! { return ptr?.assumingMemoryBound(to: GtkLockButtonClass.self) }


    /// The parent class.
    @inlinable var parentClass: GtkButtonClass {
        /// The parent class.
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var reserved0 is unavailable because reserved0 is void

    // var reserved1 is unavailable because reserved1 is void

    // var reserved2 is unavailable because reserved2 is void

    // var reserved3 is unavailable because reserved3 is void

    // var reserved4 is unavailable because reserved4 is void

    // var reserved5 is unavailable because reserved5 is void

    // var reserved6 is unavailable because reserved6 is void

    // var reserved7 is unavailable because reserved7 is void

}



/// Metatype/GType declaration for MenuAccessible
public extension MenuAccessibleClassRef {
    
    /// This getter returns type identifier in the GLib type system registry
    static var metatypeReference: GType { gtk_menu_accessible_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkMenuAccessibleClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkMenuAccessibleClass.self) }
    
    static var metatype: GtkMenuAccessibleClass? { metatypePointer?.pointee } 
    
    static var wrapper: MenuAccessibleClassRef? { MenuAccessibleClassRef(metatypePointer) }
    
    
}

// MARK: - MenuAccessibleClass Record

/// The `MenuAccessibleClassProtocol` protocol exposes the methods and properties of an underlying `GtkMenuAccessibleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `MenuAccessibleClass`.
/// Alternatively, use `MenuAccessibleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol MenuAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkMenuAccessibleClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkMenuAccessibleClass` instance.
    var _ptr: UnsafeMutablePointer<GtkMenuAccessibleClass>! { get }

}

/// The `MenuAccessibleClassRef` type acts as a lightweight Swift reference to an underlying `GtkMenuAccessibleClass` instance.
/// It exposes methods that can operate on this data type through `MenuAccessibleClassProtocol` conformance.
/// Use `MenuAccessibleClassRef` only as an `unowned` reference to an existing `GtkMenuAccessibleClass` instance.
///

public struct MenuAccessibleClassRef: MenuAccessibleClassProtocol {
        /// Untyped pointer to the underlying `GtkMenuAccessibleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension MenuAccessibleClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkMenuAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkMenuAccessibleClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkMenuAccessibleClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkMenuAccessibleClass>?) {
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

    /// Reference intialiser for a related type that implements `MenuAccessibleClassProtocol`
    @inlinable init<T: MenuAccessibleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAccessibleClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAccessibleClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAccessibleClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAccessibleClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `MenuAccessibleClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: MenuAccessibleClass Record: MenuAccessibleClassProtocol extension (methods and fields)
public extension MenuAccessibleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkMenuAccessibleClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkMenuAccessibleClass>! { return ptr?.assumingMemoryBound(to: GtkMenuAccessibleClass.self) }


    @inlinable var parentClass: GtkMenuShellAccessibleClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



