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

// MARK: - Bitset Record

/// The `BitsetProtocol` protocol exposes the methods and properties of an underlying `GtkBitset` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Bitset`.
/// Alternatively, use `BitsetRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GtkBitset` represents a set of unsigned integers.
/// 
/// Another name for this data structure is "bitmap".
/// 
/// The current implementation is based on [roaring bitmaps](https://roaringbitmap.org/).
/// 
/// A bitset allows adding a set of integers and provides support for set operations
/// like unions, intersections and checks for equality or if a value is contained
/// in the set. `GtkBitset` also contains various functions to query metadata about
/// the bitset, such as the minimum or maximum values or its size.
/// 
/// The fastest way to iterate values in a bitset is [struct`Gtk.BitsetIter`].
/// 
/// The main use case for `GtkBitset` is implementing complex selections for
/// [iface`Gtk.SelectionModel`].
public protocol BitsetProtocol {
        /// Untyped pointer to the underlying `GtkBitset` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkBitset` instance.
    var bitset_ptr: UnsafeMutablePointer<GtkBitset>! { get }

    /// Required Initialiser for types conforming to `BitsetProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `BitsetRef` type acts as a lightweight Swift reference to an underlying `GtkBitset` instance.
/// It exposes methods that can operate on this data type through `BitsetProtocol` conformance.
/// Use `BitsetRef` only as an `unowned` reference to an existing `GtkBitset` instance.
///
/// A `GtkBitset` represents a set of unsigned integers.
/// 
/// Another name for this data structure is "bitmap".
/// 
/// The current implementation is based on [roaring bitmaps](https://roaringbitmap.org/).
/// 
/// A bitset allows adding a set of integers and provides support for set operations
/// like unions, intersections and checks for equality or if a value is contained
/// in the set. `GtkBitset` also contains various functions to query metadata about
/// the bitset, such as the minimum or maximum values or its size.
/// 
/// The fastest way to iterate values in a bitset is [struct`Gtk.BitsetIter`].
/// 
/// The main use case for `GtkBitset` is implementing complex selections for
/// [iface`Gtk.SelectionModel`].
public struct BitsetRef: BitsetProtocol {
        /// Untyped pointer to the underlying `GtkBitset` instance.
    /// For type-safe access, use the generated, typed pointer `bitset_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension BitsetRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkBitset>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkBitset>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkBitset>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkBitset>?) {
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

    /// Reference intialiser for a related type that implements `BitsetProtocol`
    @inlinable init<T: BitsetProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BitsetProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BitsetProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BitsetProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BitsetProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BitsetProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a bitset with the given range set.
    @inlinable init(range start: Int, nItems: Int) {
        let rv = gtk_bitset_new_range(guint(start), guint(nItems))
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a new empty bitset.
    @inlinable static func newEmpty() -> BitsetRef! {
        guard let rv = BitsetRef(gconstpointer: gconstpointer(gtk_bitset_new_empty())) else { return nil }
        return rv
    }

    /// Creates a bitset with the given range set.
    @inlinable static func new(range start: Int, nItems: Int) -> BitsetRef! {
        guard let rv = BitsetRef(gconstpointer: gconstpointer(gtk_bitset_new_range(guint(start), guint(nItems)))) else { return nil }
        return rv
    }
}

/// The `Bitset` type acts as a reference-counted owner of an underlying `GtkBitset` instance.
/// It provides the methods that can operate on this data type through `BitsetProtocol` conformance.
/// Use `Bitset` as a strong reference or owner of a `GtkBitset` instance.
///
/// A `GtkBitset` represents a set of unsigned integers.
/// 
/// Another name for this data structure is "bitmap".
/// 
/// The current implementation is based on [roaring bitmaps](https://roaringbitmap.org/).
/// 
/// A bitset allows adding a set of integers and provides support for set operations
/// like unions, intersections and checks for equality or if a value is contained
/// in the set. `GtkBitset` also contains various functions to query metadata about
/// the bitset, such as the minimum or maximum values or its size.
/// 
/// The fastest way to iterate values in a bitset is [struct`Gtk.BitsetIter`].
/// 
/// The main use case for `GtkBitset` is implementing complex selections for
/// [iface`Gtk.SelectionModel`].
open class Bitset: BitsetProtocol {
        /// Untyped pointer to the underlying `GtkBitset` instance.
    /// For type-safe access, use the generated, typed pointer `bitset_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Bitset` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkBitset>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Bitset` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkBitset>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Bitset` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Bitset` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Bitset` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkBitset>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Bitset` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkBitset>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkBitset`.
    /// i.e., ownership is transferred to the `Bitset` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkBitset>) {
        ptr = UnsafeMutableRawPointer(op)
        gtk_bitset_ref(ptr.assumingMemoryBound(to: GtkBitset.self))
    }

    /// Reference intialiser for a related type that implements `BitsetProtocol`
    /// Will retain `GtkBitset`.
    /// - Parameter other: an instance of a related type that implements `BitsetProtocol`
    @inlinable public init<T: BitsetProtocol>(_ other: T) {
        ptr = other.ptr
        gtk_bitset_ref(ptr.assumingMemoryBound(to: GtkBitset.self))
    }

    /// Releases the underlying `GtkBitset` instance using `gtk_bitset_unref`.
    deinit {
        gtk_bitset_unref(ptr.assumingMemoryBound(to: GtkBitset.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BitsetProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BitsetProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        gtk_bitset_ref(ptr.assumingMemoryBound(to: GtkBitset.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BitsetProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BitsetProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        gtk_bitset_ref(ptr.assumingMemoryBound(to: GtkBitset.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BitsetProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BitsetProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        gtk_bitset_ref(ptr.assumingMemoryBound(to: GtkBitset.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BitsetProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BitsetProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        gtk_bitset_ref(ptr.assumingMemoryBound(to: GtkBitset.self))
    }

    /// Creates a bitset with the given range set.
    @inlinable public init(range start: Int, nItems: Int) {
        let rv = gtk_bitset_new_range(guint(start), guint(nItems))
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new empty bitset.
    @inlinable public static func newEmpty() -> Bitset! {
        guard let rv = Bitset(gconstpointer: gconstpointer(gtk_bitset_new_empty())) else { return nil }
        return rv
    }

    /// Creates a bitset with the given range set.
    @inlinable public static func new(range start: Int, nItems: Int) -> Bitset! {
        guard let rv = Bitset(gconstpointer: gconstpointer(gtk_bitset_new_range(guint(start), guint(nItems)))) else { return nil }
        return rv
    }

}

// MARK: no Bitset properties

// MARK: no Bitset signals

// MARK: Bitset has no signals
// MARK: Bitset Record: BitsetProtocol extension (methods and fields)
public extension BitsetProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkBitset` instance.
    @inlinable var bitset_ptr: UnsafeMutablePointer<GtkBitset>! { return ptr?.assumingMemoryBound(to: GtkBitset.self) }

    /// Adds `value` to `self` if it wasn't part of it before.
    @inlinable func add(value: Int) -> Bool {
        let rv = ((gtk_bitset_add(bitset_ptr, guint(value))) != 0)
        return rv
    }

    /// Adds all values from `start` (inclusive) to `start` + `n_items`
    /// (exclusive) in `self`.
    @inlinable func addRange(start: Int, nItems: Int) {
        gtk_bitset_add_range(bitset_ptr, guint(start), guint(nItems))
    
    }

    /// Adds the closed range [`first`, `last`], so `first`, `last` and all
    /// values in between. `first` must be smaller than `last`.
    @inlinable func addRangeClosed(first: Int, last: Int) {
        gtk_bitset_add_range_closed(bitset_ptr, guint(first), guint(last))
    
    }

    /// Interprets the values as a 2-dimensional boolean grid with the given `stride`
    /// and inside that grid, adds a rectangle with the given `width` and `height`.
    @inlinable func addRectangle(start: Int, width: Int, height: Int, stride: Int) {
        gtk_bitset_add_rectangle(bitset_ptr, guint(start), guint(width), guint(height), guint(stride))
    
    }

    /// Checks if the given `value` has been added to `self`
    @inlinable func contains(value: Int) -> Bool {
        let rv = ((gtk_bitset_contains(bitset_ptr, guint(value))) != 0)
        return rv
    }

    /// Creates a copy of `self`.
    @inlinable func copy() -> BitsetRef! {
        guard let rv = BitsetRef(gconstpointer: gconstpointer(gtk_bitset_copy(bitset_ptr))) else { return nil }
        return rv
    }

    /// Sets `self` to be the symmetric difference of `self` and `other`.
    /// 
    /// The symmetric difference is set `self` to contain all values that
    /// were either contained in `self` or in `other`, but not in both.
    /// This operation is also called an XOR.
    /// 
    /// It is allowed for `self` and `other` to be the same bitset. The bitset
    /// will be emptied in that case.
    @inlinable func difference<BitsetT: BitsetProtocol>(other: BitsetT) {
        gtk_bitset_difference(bitset_ptr, other.bitset_ptr)
    
    }

    /// Returns `true` if `self` and `other` contain the same values.
    @inlinable func equals<BitsetT: BitsetProtocol>(other: BitsetT) -> Bool {
        let rv = ((gtk_bitset_equals(bitset_ptr, other.bitset_ptr)) != 0)
        return rv
    }

    /// Returns the largest value in `self`.
    /// 
    /// If `self` is empty, 0 is returned.
    @inlinable func getMaximum() -> Int {
        let rv = Int(gtk_bitset_get_maximum(bitset_ptr))
        return rv
    }

    /// Returns the smallest value in `self`.
    /// 
    /// If `self` is empty, `G_MAXUINT` is returned.
    @inlinable func getMinimum() -> Int {
        let rv = Int(gtk_bitset_get_minimum(bitset_ptr))
        return rv
    }

    /// Returns the value of the `nth` item in self.
    /// 
    /// If `nth` is &gt;= the size of `self`, 0 is returned.
    @inlinable func get(nth: Int) -> Int {
        let rv = Int(gtk_bitset_get_nth(bitset_ptr, guint(nth)))
        return rv
    }

    /// Gets the number of values that were added to the set.
    /// 
    /// For example, if the set is empty, 0 is returned.
    /// 
    /// Note that this function returns a `guint64`, because when all
    /// values are set, the return value is `G_MAXUINT + 1`. Unless you
    /// are sure this cannot happen (it can't with `GListModel`), be sure
    /// to use a 64bit type.
    @inlinable func getSize() -> guint64 {
        let rv = gtk_bitset_get_size(bitset_ptr)
        return rv
    }

    /// Gets the number of values that are part of the set from `first` to `last`
    /// (inclusive).
    /// 
    /// Note that this function returns a `guint64`, because when all values are
    /// set, the return value is `G_MAXUINT + 1`. Unless you are sure this cannot
    /// happen (it can't with `GListModel`), be sure to use a 64bit type.
    @inlinable func getSizeInRange(first: Int, last: Int) -> guint64 {
        let rv = gtk_bitset_get_size_in_range(bitset_ptr, guint(first), guint(last))
        return rv
    }

    /// Sets `self` to be the intersection of `self` and `other`.
    /// 
    /// In other words, remove all values from `self` that are not part of `other`.
    /// 
    /// It is allowed for `self` and `other` to be the same bitset. Nothing will
    /// happen in that case.
    @inlinable func intersect<BitsetT: BitsetProtocol>(other: BitsetT) {
        gtk_bitset_intersect(bitset_ptr, other.bitset_ptr)
    
    }

    /// Acquires a reference on the given `GtkBitset`.
    @discardableResult @inlinable func ref() -> BitsetRef! {
        guard let rv = BitsetRef(gconstpointer: gconstpointer(gtk_bitset_ref(bitset_ptr))) else { return nil }
        return rv
    }

    /// Removes `value` from `self` if it was part of it before.
    @inlinable func remove(value: Int) -> Bool {
        let rv = ((gtk_bitset_remove(bitset_ptr, guint(value))) != 0)
        return rv
    }

    /// Removes all values from the bitset so that it is empty again.
    @inlinable func removeAll() {
        gtk_bitset_remove_all(bitset_ptr)
    
    }

    /// Removes all values from `start` (inclusive) to `start` + `n_items` (exclusive)
    /// in `self`.
    @inlinable func removeRange(start: Int, nItems: Int) {
        gtk_bitset_remove_range(bitset_ptr, guint(start), guint(nItems))
    
    }

    /// Removes the closed range [`first`, `last`], so `first`, `last` and all
    /// values in between. `first` must be smaller than `last`.
    @inlinable func removeRangeClosed(first: Int, last: Int) {
        gtk_bitset_remove_range_closed(bitset_ptr, guint(first), guint(last))
    
    }

    /// Interprets the values as a 2-dimensional boolean grid with the given `stride`
    /// and inside that grid, removes a rectangle with the given `width` and `height`.
    @inlinable func removeRectangle(start: Int, width: Int, height: Int, stride: Int) {
        gtk_bitset_remove_rectangle(bitset_ptr, guint(start), guint(width), guint(height), guint(stride))
    
    }

    /// Shifts all values in `self` to the left by `amount`.
    /// 
    /// Values smaller than `amount` are discarded.
    @inlinable func shiftLeft(amount: Int) {
        gtk_bitset_shift_left(bitset_ptr, guint(amount))
    
    }

    /// Shifts all values in `self` to the right by `amount`.
    /// 
    /// Values that end up too large to be held in a `guint` are discarded.
    @inlinable func shiftRight(amount: Int) {
        gtk_bitset_shift_right(bitset_ptr, guint(amount))
    
    }

    /// This is a support function for `GListModel` handling, by mirroring
    /// the `GlistModel`items-changed`` signal.
    /// 
    /// First, it "cuts" the values from `position` to `removed` from
    /// the bitset. That is, it removes all those values and shifts
    /// all larger values to the left by `removed` places.
    /// 
    /// Then, it "pastes" new room into the bitset by shifting all values
    /// larger than `position` by `added` spaces to the right. This frees
    /// up space that can then be filled.
    @inlinable func splice(position: Int, removed: Int, added: Int) {
        gtk_bitset_splice(bitset_ptr, guint(position), guint(removed), guint(added))
    
    }

    /// Sets `self` to be the subtraction of `other` from `self`.
    /// 
    /// In other words, remove all values from `self` that are part of `other`.
    /// 
    /// It is allowed for `self` and `other` to be the same bitset. The bitset
    /// will be emptied in that case.
    @inlinable func subtract<BitsetT: BitsetProtocol>(other: BitsetT) {
        gtk_bitset_subtract(bitset_ptr, other.bitset_ptr)
    
    }

    /// Sets `self` to be the union of `self` and `other`.
    /// 
    /// That is, add all values from `other` into `self` that weren't part of it.
    /// 
    /// It is allowed for `self` and `other` to be the same bitset. Nothing will
    /// happen in that case.
    @inlinable func union<BitsetT: BitsetProtocol>(other: BitsetT) {
        gtk_bitset_union(bitset_ptr, other.bitset_ptr)
    
    }

    /// Releases a reference on the given `GtkBitset`.
    /// 
    /// If the reference was the last, the resources associated to the `self` are
    /// freed.
    @inlinable func unref() {
        gtk_bitset_unref(bitset_ptr)
    
    }

    /// Initializes `iter` to point to `target`.
    /// 
    /// If `target` is not found, finds the next value after it.
    /// If no value &gt;= `target` exists in `set`, this function returns `false`.
    @inlinable func bitsetIterInitAt<BitsetIterT: BitsetIterProtocol>(iter: BitsetIterT, target: Int, value: UnsafeMutablePointer<guint>! = nil) -> Bool {
        let rv = ((gtk_bitset_iter_init_at(iter._ptr, bitset_ptr, guint(target), value)) != 0)
        return rv
    }

    /// Initializes an iterator for `set` and points it to the first
    /// value in `set`.
    /// 
    /// If `set` is empty, `false` is returned and `value` is set to `G_MAXUINT`.
    @inlinable func bitsetIterInitFirst<BitsetIterT: BitsetIterProtocol>(iter: BitsetIterT, value: UnsafeMutablePointer<guint>! = nil) -> Bool {
        let rv = ((gtk_bitset_iter_init_first(iter._ptr, bitset_ptr, value)) != 0)
        return rv
    }

    /// Initializes an iterator for `set` and points it to the last
    /// value in `set`.
    /// 
    /// If `set` is empty, `false` is returned.
    @inlinable func bitsetIterInitLast<BitsetIterT: BitsetIterProtocol>(iter: BitsetIterT, value: UnsafeMutablePointer<guint>! = nil) -> Bool {
        let rv = ((gtk_bitset_iter_init_last(iter._ptr, bitset_ptr, value)) != 0)
        return rv
    }
    /// Check if no value is contained in bitset.
    @inlinable var isEmpty: Bool {
        /// Check if no value is contained in bitset.
        get {
            let rv = ((gtk_bitset_is_empty(bitset_ptr)) != 0)
            return rv
        }
    }

    /// Returns the largest value in `self`.
    /// 
    /// If `self` is empty, 0 is returned.
    @inlinable var maximum: Int {
        /// Returns the largest value in `self`.
        /// 
        /// If `self` is empty, 0 is returned.
        get {
            let rv = Int(gtk_bitset_get_maximum(bitset_ptr))
            return rv
        }
    }

    /// Returns the smallest value in `self`.
    /// 
    /// If `self` is empty, `G_MAXUINT` is returned.
    @inlinable var minimum: Int {
        /// Returns the smallest value in `self`.
        /// 
        /// If `self` is empty, `G_MAXUINT` is returned.
        get {
            let rv = Int(gtk_bitset_get_minimum(bitset_ptr))
            return rv
        }
    }

    /// Gets the number of values that were added to the set.
    /// 
    /// For example, if the set is empty, 0 is returned.
    /// 
    /// Note that this function returns a `guint64`, because when all
    /// values are set, the return value is `G_MAXUINT + 1`. Unless you
    /// are sure this cannot happen (it can't with `GListModel`), be sure
    /// to use a 64bit type.
    @inlinable var size: guint64 {
        /// Gets the number of values that were added to the set.
        /// 
        /// For example, if the set is empty, 0 is returned.
        /// 
        /// Note that this function returns a `guint64`, because when all
        /// values are set, the return value is `G_MAXUINT + 1`. Unless you
        /// are sure this cannot happen (it can't with `GListModel`), be sure
        /// to use a 64bit type.
        get {
            let rv = gtk_bitset_get_size(bitset_ptr)
            return rv
        }
    }


}



// MARK: - BitsetIter Record

/// The `BitsetIterProtocol` protocol exposes the methods and properties of an underlying `GtkBitsetIter` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `BitsetIter`.
/// Alternatively, use `BitsetIterRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// An opaque, stack-allocated struct for iterating
/// over the elements of a `GtkBitset`.
/// 
/// Before a `GtkBitsetIter` can be used, it needs to be initialized with
/// [func`Gtk.BitsetIter.init_first`], [func`Gtk.BitsetIter.init_last`]
/// or [func`Gtk.BitsetIter.init_at`].
public protocol BitsetIterProtocol {
        /// Untyped pointer to the underlying `GtkBitsetIter` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkBitsetIter` instance.
    var _ptr: UnsafeMutablePointer<GtkBitsetIter>! { get }

    /// Required Initialiser for types conforming to `BitsetIterProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `BitsetIterRef` type acts as a lightweight Swift reference to an underlying `GtkBitsetIter` instance.
/// It exposes methods that can operate on this data type through `BitsetIterProtocol` conformance.
/// Use `BitsetIterRef` only as an `unowned` reference to an existing `GtkBitsetIter` instance.
///
/// An opaque, stack-allocated struct for iterating
/// over the elements of a `GtkBitset`.
/// 
/// Before a `GtkBitsetIter` can be used, it needs to be initialized with
/// [func`Gtk.BitsetIter.init_first`], [func`Gtk.BitsetIter.init_last`]
/// or [func`Gtk.BitsetIter.init_at`].
public struct BitsetIterRef: BitsetIterProtocol {
        /// Untyped pointer to the underlying `GtkBitsetIter` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension BitsetIterRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkBitsetIter>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkBitsetIter>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkBitsetIter>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkBitsetIter>?) {
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

    /// Reference intialiser for a related type that implements `BitsetIterProtocol`
    @inlinable init<T: BitsetIterProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BitsetIterProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BitsetIterProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BitsetIterProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BitsetIterProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BitsetIterProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `BitsetIter` type acts as an owner of an underlying `GtkBitsetIter` instance.
/// It provides the methods that can operate on this data type through `BitsetIterProtocol` conformance.
/// Use `BitsetIter` as a strong reference or owner of a `GtkBitsetIter` instance.
///
/// An opaque, stack-allocated struct for iterating
/// over the elements of a `GtkBitset`.
/// 
/// Before a `GtkBitsetIter` can be used, it needs to be initialized with
/// [func`Gtk.BitsetIter.init_first`], [func`Gtk.BitsetIter.init_last`]
/// or [func`Gtk.BitsetIter.init_at`].
open class BitsetIter: BitsetIterProtocol {
        /// Untyped pointer to the underlying `GtkBitsetIter` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BitsetIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkBitsetIter>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BitsetIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkBitsetIter>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BitsetIter` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BitsetIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BitsetIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkBitsetIter>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BitsetIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkBitsetIter>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GtkBitsetIter` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `BitsetIter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkBitsetIter>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GtkBitsetIter, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `BitsetIterProtocol`
    /// `GtkBitsetIter` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `BitsetIterProtocol`
    @inlinable public init<T: BitsetIterProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GtkBitsetIter, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GtkBitsetIter`.
    deinit {
        // no reference counting for GtkBitsetIter, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BitsetIterProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BitsetIterProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GtkBitsetIter, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BitsetIterProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BitsetIterProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GtkBitsetIter, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BitsetIterProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BitsetIterProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GtkBitsetIter, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BitsetIterProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BitsetIterProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GtkBitsetIter, cannot ref(_ptr)
    }



}

// MARK: no BitsetIter properties

// MARK: no BitsetIter signals

// MARK: BitsetIter has no signals
// MARK: BitsetIter Record: BitsetIterProtocol extension (methods and fields)
public extension BitsetIterProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkBitsetIter` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkBitsetIter>! { return ptr?.assumingMemoryBound(to: GtkBitsetIter.self) }

    /// Gets the current value that `iter` points to.
    /// 
    /// If `iter` is not valid and [method`Gtk.BitsetIter.is_valid`]
    /// returns `false`, this function returns 0.
    @inlinable func getValue() -> Int {
        let rv = Int(gtk_bitset_iter_get_value(_ptr))
        return rv
    }

    /// Moves `iter` to the next value in the set.
    /// 
    /// If it was already pointing to the last value in the set,
    /// `false` is returned and `iter` is invalidated.
    @inlinable func next(value: UnsafeMutablePointer<guint>! = nil) -> Bool {
        let rv = ((gtk_bitset_iter_next(_ptr, value)) != 0)
        return rv
    }

    /// Moves `iter` to the previous value in the set.
    /// 
    /// If it was already pointing to the first value in the set,
    /// `false` is returned and `iter` is invalidated.
    @inlinable func previous(value: UnsafeMutablePointer<guint>! = nil) -> Bool {
        let rv = ((gtk_bitset_iter_previous(_ptr, value)) != 0)
        return rv
    }

    /// Initializes `iter` to point to `target`.
    /// 
    /// If `target` is not found, finds the next value after it.
    /// If no value &gt;= `target` exists in `set`, this function returns `false`.
    @inlinable func initAt<BitsetT: BitsetProtocol>(set: BitsetT, target: Int, value: UnsafeMutablePointer<guint>! = nil) -> Bool {
        let rv = ((gtk_bitset_iter_init_at(_ptr, set.bitset_ptr, guint(target), value)) != 0)
        return rv
    }

    /// Initializes an iterator for `set` and points it to the first
    /// value in `set`.
    /// 
    /// If `set` is empty, `false` is returned and `value` is set to `G_MAXUINT`.
    @inlinable func initFirst<BitsetT: BitsetProtocol>(set: BitsetT, value: UnsafeMutablePointer<guint>! = nil) -> Bool {
        let rv = ((gtk_bitset_iter_init_first(_ptr, set.bitset_ptr, value)) != 0)
        return rv
    }

    /// Initializes an iterator for `set` and points it to the last
    /// value in `set`.
    /// 
    /// If `set` is empty, `false` is returned.
    @inlinable func initLast<BitsetT: BitsetProtocol>(set: BitsetT, value: UnsafeMutablePointer<guint>! = nil) -> Bool {
        let rv = ((gtk_bitset_iter_init_last(_ptr, set.bitset_ptr, value)) != 0)
        return rv
    }

    /// Initializes `iter` to point to `target`.
    /// 
    /// If `target` is not found, finds the next value after it.
    /// If no value &gt;= `target` exists in `set`, this function returns `false`.
    @inlinable func bitsetIterInitAt<BitsetT: BitsetProtocol>(set: BitsetT, target: Int, value: UnsafeMutablePointer<guint>! = nil) -> Bool {
        let rv = ((gtk_bitset_iter_init_at(_ptr, set.bitset_ptr, guint(target), value)) != 0)
        return rv
    }

    /// Initializes an iterator for `set` and points it to the first
    /// value in `set`.
    /// 
    /// If `set` is empty, `false` is returned and `value` is set to `G_MAXUINT`.
    @inlinable func bitsetIterInitFirst<BitsetT: BitsetProtocol>(set: BitsetT, value: UnsafeMutablePointer<guint>! = nil) -> Bool {
        let rv = ((gtk_bitset_iter_init_first(_ptr, set.bitset_ptr, value)) != 0)
        return rv
    }

    /// Initializes an iterator for `set` and points it to the last
    /// value in `set`.
    /// 
    /// If `set` is empty, `false` is returned.
    @inlinable func bitsetIterInitLast<BitsetT: BitsetProtocol>(set: BitsetT, value: UnsafeMutablePointer<guint>! = nil) -> Bool {
        let rv = ((gtk_bitset_iter_init_last(_ptr, set.bitset_ptr, value)) != 0)
        return rv
    }
    /// Checks if `iter` points to a valid value.
    @inlinable var isValid: Bool {
        /// Checks if `iter` points to a valid value.
        get {
            let rv = ((gtk_bitset_iter_is_valid(_ptr)) != 0)
            return rv
        }
    }

    /// Gets the current value that `iter` points to.
    /// 
    /// If `iter` is not valid and [method`Gtk.BitsetIter.is_valid`]
    /// returns `false`, this function returns 0.
    @inlinable var value: Int {
        /// Gets the current value that `iter` points to.
        /// 
        /// If `iter` is not valid and [method`Gtk.BitsetIter.is_valid`]
        /// returns `false`, this function returns 0.
        get {
            let rv = Int(gtk_bitset_iter_get_value(_ptr))
            return rv
        }
    }

    // var privateData is unavailable because private_data is private

}



/// Metatype/GType declaration for BookmarkList
public extension BookmarkListClassRef {
    
    /// This getter returns the GLib type identifier registered for `BookmarkList`
    static var metatypeReference: GType { gtk_bookmark_list_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkBookmarkListClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkBookmarkListClass.self) }
    
    static var metatype: GtkBookmarkListClass? { metatypePointer?.pointee } 
    
    static var wrapper: BookmarkListClassRef? { BookmarkListClassRef(metatypePointer) }
    
    
}

// MARK: - BookmarkListClass Record

/// The `BookmarkListClassProtocol` protocol exposes the methods and properties of an underlying `GtkBookmarkListClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `BookmarkListClass`.
/// Alternatively, use `BookmarkListClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol BookmarkListClassProtocol {
        /// Untyped pointer to the underlying `GtkBookmarkListClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkBookmarkListClass` instance.
    var _ptr: UnsafeMutablePointer<GtkBookmarkListClass>! { get }

    /// Required Initialiser for types conforming to `BookmarkListClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `BookmarkListClassRef` type acts as a lightweight Swift reference to an underlying `GtkBookmarkListClass` instance.
/// It exposes methods that can operate on this data type through `BookmarkListClassProtocol` conformance.
/// Use `BookmarkListClassRef` only as an `unowned` reference to an existing `GtkBookmarkListClass` instance.
///

public struct BookmarkListClassRef: BookmarkListClassProtocol {
        /// Untyped pointer to the underlying `GtkBookmarkListClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension BookmarkListClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkBookmarkListClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkBookmarkListClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkBookmarkListClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkBookmarkListClass>?) {
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

    /// Reference intialiser for a related type that implements `BookmarkListClassProtocol`
    @inlinable init<T: BookmarkListClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BookmarkListClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BookmarkListClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BookmarkListClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BookmarkListClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BookmarkListClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: BookmarkListClass Record: BookmarkListClassProtocol extension (methods and fields)
public extension BookmarkListClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkBookmarkListClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkBookmarkListClass>! { return ptr?.assumingMemoryBound(to: GtkBookmarkListClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for BoolFilter
public extension BoolFilterClassRef {
    
    /// This getter returns the GLib type identifier registered for `BoolFilter`
    static var metatypeReference: GType { gtk_bool_filter_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkBoolFilterClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkBoolFilterClass.self) }
    
    static var metatype: GtkBoolFilterClass? { metatypePointer?.pointee } 
    
    static var wrapper: BoolFilterClassRef? { BoolFilterClassRef(metatypePointer) }
    
    
}

// MARK: - BoolFilterClass Record

/// The `BoolFilterClassProtocol` protocol exposes the methods and properties of an underlying `GtkBoolFilterClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `BoolFilterClass`.
/// Alternatively, use `BoolFilterClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol BoolFilterClassProtocol {
        /// Untyped pointer to the underlying `GtkBoolFilterClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkBoolFilterClass` instance.
    var _ptr: UnsafeMutablePointer<GtkBoolFilterClass>! { get }

    /// Required Initialiser for types conforming to `BoolFilterClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `BoolFilterClassRef` type acts as a lightweight Swift reference to an underlying `GtkBoolFilterClass` instance.
/// It exposes methods that can operate on this data type through `BoolFilterClassProtocol` conformance.
/// Use `BoolFilterClassRef` only as an `unowned` reference to an existing `GtkBoolFilterClass` instance.
///

public struct BoolFilterClassRef: BoolFilterClassProtocol {
        /// Untyped pointer to the underlying `GtkBoolFilterClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension BoolFilterClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkBoolFilterClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkBoolFilterClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkBoolFilterClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkBoolFilterClass>?) {
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

    /// Reference intialiser for a related type that implements `BoolFilterClassProtocol`
    @inlinable init<T: BoolFilterClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoolFilterClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoolFilterClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoolFilterClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoolFilterClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoolFilterClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: BoolFilterClass Record: BoolFilterClassProtocol extension (methods and fields)
public extension BoolFilterClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkBoolFilterClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkBoolFilterClass>! { return ptr?.assumingMemoryBound(to: GtkBoolFilterClass.self) }


    @inlinable var parentClass: GtkFilterClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



// MARK: - Border Record

/// The `BorderProtocol` protocol exposes the methods and properties of an underlying `GtkBorder` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Border`.
/// Alternatively, use `BorderRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A struct that specifies a border around a rectangular area.
/// 
/// Each side can have different width.
public protocol BorderProtocol {
        /// Untyped pointer to the underlying `GtkBorder` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkBorder` instance.
    var border_ptr: UnsafeMutablePointer<GtkBorder>! { get }

    /// Required Initialiser for types conforming to `BorderProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `BorderRef` type acts as a lightweight Swift reference to an underlying `GtkBorder` instance.
/// It exposes methods that can operate on this data type through `BorderProtocol` conformance.
/// Use `BorderRef` only as an `unowned` reference to an existing `GtkBorder` instance.
///
/// A struct that specifies a border around a rectangular area.
/// 
/// Each side can have different width.
public struct BorderRef: BorderProtocol {
        /// Untyped pointer to the underlying `GtkBorder` instance.
    /// For type-safe access, use the generated, typed pointer `border_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension BorderRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkBorder>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkBorder>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkBorder>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkBorder>?) {
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

    /// Reference intialiser for a related type that implements `BorderProtocol`
    @inlinable init<T: BorderProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BorderProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BorderProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BorderProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BorderProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BorderProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Allocates a new `GtkBorder-struct` and initializes its elements to zero.
    @inlinable init() {
        let rv = gtk_border_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `Border` type acts as an owner of an underlying `GtkBorder` instance.
/// It provides the methods that can operate on this data type through `BorderProtocol` conformance.
/// Use `Border` as a strong reference or owner of a `GtkBorder` instance.
///
/// A struct that specifies a border around a rectangular area.
/// 
/// Each side can have different width.
open class Border: BorderProtocol {
        /// Untyped pointer to the underlying `GtkBorder` instance.
    /// For type-safe access, use the generated, typed pointer `border_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Border` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkBorder>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Border` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkBorder>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Border` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Border` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Border` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkBorder>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Border` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkBorder>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GtkBorder` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Border` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkBorder>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GtkBorder, cannot ref(border_ptr)
    }

    /// Reference intialiser for a related type that implements `BorderProtocol`
    /// `GtkBorder` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `BorderProtocol`
    @inlinable public init<T: BorderProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GtkBorder, cannot ref(border_ptr)
    }

    /// Do-nothing destructor for `GtkBorder`.
    deinit {
        // no reference counting for GtkBorder, cannot unref(border_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BorderProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BorderProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GtkBorder, cannot ref(border_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BorderProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BorderProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GtkBorder, cannot ref(border_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BorderProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BorderProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GtkBorder, cannot ref(border_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BorderProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BorderProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GtkBorder, cannot ref(border_ptr)
    }

    /// Allocates a new `GtkBorder-struct` and initializes its elements to zero.
    @inlinable public init() {
        let rv = gtk_border_new()
        ptr = UnsafeMutableRawPointer(rv)
    }


}

// MARK: no Border properties

// MARK: no Border signals

// MARK: Border has no signals
// MARK: Border Record: BorderProtocol extension (methods and fields)
public extension BorderProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkBorder` instance.
    @inlinable var border_ptr: UnsafeMutablePointer<GtkBorder>! { return ptr?.assumingMemoryBound(to: GtkBorder.self) }

    /// Copies a `GtkBorder-struct`.
    @inlinable func copy() -> BorderRef! {
        guard let rv = BorderRef(gconstpointer: gconstpointer(gtk_border_copy(border_ptr))) else { return nil }
        return rv
    }

    /// Frees a `GtkBorder-struct`.
    @inlinable func free() {
        gtk_border_free(border_ptr)
    
    }

    /// The width of the left border
    @inlinable var `left`: gint16 {
        /// The width of the left border
        get {
            let rv = border_ptr.pointee.left
            return rv
        }
        /// The width of the left border
         set {
            border_ptr.pointee.left = newValue
        }
    }

    /// The width of the right border
    @inlinable var `right`: gint16 {
        /// The width of the right border
        get {
            let rv = border_ptr.pointee.right
            return rv
        }
        /// The width of the right border
         set {
            border_ptr.pointee.right = newValue
        }
    }

    /// The width of the top border
    @inlinable var top: gint16 {
        /// The width of the top border
        get {
            let rv = border_ptr.pointee.top
            return rv
        }
        /// The width of the top border
         set {
            border_ptr.pointee.top = newValue
        }
    }

    /// The width of the bottom border
    @inlinable var bottom: gint16 {
        /// The width of the bottom border
        get {
            let rv = border_ptr.pointee.bottom
            return rv
        }
        /// The width of the bottom border
         set {
            border_ptr.pointee.bottom = newValue
        }
    }

}



/// Metatype/GType declaration for Box
public extension BoxClassRef {
    
    /// This getter returns the GLib type identifier registered for `Box`
    static var metatypeReference: GType { gtk_box_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkBoxClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkBoxClass.self) }
    
    static var metatype: GtkBoxClass? { metatypePointer?.pointee } 
    
    static var wrapper: BoxClassRef? { BoxClassRef(metatypePointer) }
    
    
}

// MARK: - BoxClass Record

/// The `BoxClassProtocol` protocol exposes the methods and properties of an underlying `GtkBoxClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `BoxClass`.
/// Alternatively, use `BoxClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol BoxClassProtocol {
        /// Untyped pointer to the underlying `GtkBoxClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkBoxClass` instance.
    var _ptr: UnsafeMutablePointer<GtkBoxClass>! { get }

    /// Required Initialiser for types conforming to `BoxClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `BoxClassRef` type acts as a lightweight Swift reference to an underlying `GtkBoxClass` instance.
/// It exposes methods that can operate on this data type through `BoxClassProtocol` conformance.
/// Use `BoxClassRef` only as an `unowned` reference to an existing `GtkBoxClass` instance.
///

public struct BoxClassRef: BoxClassProtocol {
        /// Untyped pointer to the underlying `GtkBoxClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension BoxClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkBoxClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkBoxClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkBoxClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkBoxClass>?) {
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

    /// Reference intialiser for a related type that implements `BoxClassProtocol`
    @inlinable init<T: BoxClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoxClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoxClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoxClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoxClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoxClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: BoxClass Record: BoxClassProtocol extension (methods and fields)
public extension BoxClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkBoxClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkBoxClass>! { return ptr?.assumingMemoryBound(to: GtkBoxClass.self) }


    /// The parent class.
    @inlinable var parentClass: GtkWidgetClass {
        /// The parent class.
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var padding is unavailable because padding is private

}



/// Metatype/GType declaration for BoxLayout
public extension BoxLayoutClassRef {
    
    /// This getter returns the GLib type identifier registered for `BoxLayout`
    static var metatypeReference: GType { gtk_box_layout_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkBoxLayoutClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkBoxLayoutClass.self) }
    
    static var metatype: GtkBoxLayoutClass? { metatypePointer?.pointee } 
    
    static var wrapper: BoxLayoutClassRef? { BoxLayoutClassRef(metatypePointer) }
    
    
}

// MARK: - BoxLayoutClass Record

/// The `BoxLayoutClassProtocol` protocol exposes the methods and properties of an underlying `GtkBoxLayoutClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `BoxLayoutClass`.
/// Alternatively, use `BoxLayoutClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol BoxLayoutClassProtocol {
        /// Untyped pointer to the underlying `GtkBoxLayoutClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkBoxLayoutClass` instance.
    var _ptr: UnsafeMutablePointer<GtkBoxLayoutClass>! { get }

    /// Required Initialiser for types conforming to `BoxLayoutClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `BoxLayoutClassRef` type acts as a lightweight Swift reference to an underlying `GtkBoxLayoutClass` instance.
/// It exposes methods that can operate on this data type through `BoxLayoutClassProtocol` conformance.
/// Use `BoxLayoutClassRef` only as an `unowned` reference to an existing `GtkBoxLayoutClass` instance.
///

public struct BoxLayoutClassRef: BoxLayoutClassProtocol {
        /// Untyped pointer to the underlying `GtkBoxLayoutClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension BoxLayoutClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkBoxLayoutClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkBoxLayoutClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkBoxLayoutClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkBoxLayoutClass>?) {
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

    /// Reference intialiser for a related type that implements `BoxLayoutClassProtocol`
    @inlinable init<T: BoxLayoutClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoxLayoutClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoxLayoutClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoxLayoutClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoxLayoutClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BoxLayoutClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: BoxLayoutClass Record: BoxLayoutClassProtocol extension (methods and fields)
public extension BoxLayoutClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkBoxLayoutClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkBoxLayoutClass>! { return ptr?.assumingMemoryBound(to: GtkBoxLayoutClass.self) }


    @inlinable var parentClass: GtkLayoutManagerClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for Buildable
public extension BuildableIfaceRef {
    
    /// This getter returns the GLib type identifier registered for `Buildable`
    static var metatypeReference: GType { gtk_buildable_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkBuildableIface>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkBuildableIface.self) }
    
    static var metatype: GtkBuildableIface? { metatypePointer?.pointee } 
    
    static var wrapper: BuildableIfaceRef? { BuildableIfaceRef(metatypePointer) }
    
    
}

// MARK: - BuildableIface Record

/// The `BuildableIfaceProtocol` protocol exposes the methods and properties of an underlying `GtkBuildableIface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `BuildableIface`.
/// Alternatively, use `BuildableIfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GtkBuildableIface` interface contains methods that are
/// necessary to allow `GtkBuilder` to construct an object from
/// a `GtkBuilder` UI definition.
public protocol BuildableIfaceProtocol {
        /// Untyped pointer to the underlying `GtkBuildableIface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkBuildableIface` instance.
    var _ptr: UnsafeMutablePointer<GtkBuildableIface>! { get }

    /// Required Initialiser for types conforming to `BuildableIfaceProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `BuildableIfaceRef` type acts as a lightweight Swift reference to an underlying `GtkBuildableIface` instance.
/// It exposes methods that can operate on this data type through `BuildableIfaceProtocol` conformance.
/// Use `BuildableIfaceRef` only as an `unowned` reference to an existing `GtkBuildableIface` instance.
///
/// The `GtkBuildableIface` interface contains methods that are
/// necessary to allow `GtkBuilder` to construct an object from
/// a `GtkBuilder` UI definition.
public struct BuildableIfaceRef: BuildableIfaceProtocol {
        /// Untyped pointer to the underlying `GtkBuildableIface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension BuildableIfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkBuildableIface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkBuildableIface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkBuildableIface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkBuildableIface>?) {
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

    /// Reference intialiser for a related type that implements `BuildableIfaceProtocol`
    @inlinable init<T: BuildableIfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuildableIfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuildableIfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuildableIfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuildableIfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuildableIfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: BuildableIface Record: BuildableIfaceProtocol extension (methods and fields)
public extension BuildableIfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkBuildableIface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkBuildableIface>! { return ptr?.assumingMemoryBound(to: GtkBuildableIface.self) }


    /// the parent class
    @inlinable var gIface: GTypeInterface {
        /// the parent class
        get {
            let rv = _ptr.pointee.g_iface
            return rv
        }
    }

    // var setId is unavailable because set_id is void

    // var getId is unavailable because get_id is void

    // var addChild is unavailable because add_child is void

    // var setBuildableProperty is unavailable because set_buildable_property is void

    // var constructChild is unavailable because construct_child is void

    // var customTagStart is unavailable because custom_tag_start is void

    // var customTagEnd is unavailable because custom_tag_end is void

    // var customFinished is unavailable because custom_finished is void

    // var parserFinished is unavailable because parser_finished is void

    // var getInternalChild is unavailable because get_internal_child is void

}



// MARK: - BuildableParseContext Record

/// The `BuildableParseContextProtocol` protocol exposes the methods and properties of an underlying `GtkBuildableParseContext` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `BuildableParseContext`.
/// Alternatively, use `BuildableParseContextRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// An opaque context struct for `GtkBuildableParser`.
public protocol BuildableParseContextProtocol {
        /// Untyped pointer to the underlying `GtkBuildableParseContext` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkBuildableParseContext` instance.
    var _ptr: UnsafeMutablePointer<GtkBuildableParseContext>! { get }

    /// Required Initialiser for types conforming to `BuildableParseContextProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `BuildableParseContextRef` type acts as a lightweight Swift reference to an underlying `GtkBuildableParseContext` instance.
/// It exposes methods that can operate on this data type through `BuildableParseContextProtocol` conformance.
/// Use `BuildableParseContextRef` only as an `unowned` reference to an existing `GtkBuildableParseContext` instance.
///
/// An opaque context struct for `GtkBuildableParser`.
public struct BuildableParseContextRef: BuildableParseContextProtocol {
        /// Untyped pointer to the underlying `GtkBuildableParseContext` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension BuildableParseContextRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkBuildableParseContext>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkBuildableParseContext>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkBuildableParseContext>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkBuildableParseContext>?) {
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

    /// Reference intialiser for a related type that implements `BuildableParseContextProtocol`
    @inlinable init<T: BuildableParseContextProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuildableParseContextProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuildableParseContextProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuildableParseContextProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuildableParseContextProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuildableParseContextProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `BuildableParseContext` type acts as an owner of an underlying `GtkBuildableParseContext` instance.
/// It provides the methods that can operate on this data type through `BuildableParseContextProtocol` conformance.
/// Use `BuildableParseContext` as a strong reference or owner of a `GtkBuildableParseContext` instance.
///
/// An opaque context struct for `GtkBuildableParser`.
open class BuildableParseContext: BuildableParseContextProtocol {
        /// Untyped pointer to the underlying `GtkBuildableParseContext` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BuildableParseContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkBuildableParseContext>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BuildableParseContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkBuildableParseContext>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BuildableParseContext` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BuildableParseContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BuildableParseContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkBuildableParseContext>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BuildableParseContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkBuildableParseContext>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GtkBuildableParseContext` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `BuildableParseContext` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkBuildableParseContext>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GtkBuildableParseContext, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `BuildableParseContextProtocol`
    /// `GtkBuildableParseContext` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `BuildableParseContextProtocol`
    @inlinable public init<T: BuildableParseContextProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GtkBuildableParseContext, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GtkBuildableParseContext`.
    deinit {
        // no reference counting for GtkBuildableParseContext, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuildableParseContextProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuildableParseContextProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GtkBuildableParseContext, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuildableParseContextProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuildableParseContextProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GtkBuildableParseContext, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuildableParseContextProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuildableParseContextProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GtkBuildableParseContext, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuildableParseContextProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuildableParseContextProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GtkBuildableParseContext, cannot ref(_ptr)
    }



}

// MARK: no BuildableParseContext properties

// MARK: no BuildableParseContext signals

// MARK: BuildableParseContext has no signals
// MARK: BuildableParseContext Record: BuildableParseContextProtocol extension (methods and fields)
public extension BuildableParseContextProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkBuildableParseContext` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkBuildableParseContext>! { return ptr?.assumingMemoryBound(to: GtkBuildableParseContext.self) }

    /// Retrieves the name of the currently open element.
    /// 
    /// If called from the start_element or end_element handlers this will
    /// give the element_name as passed to those functions. For the parent
    /// elements, see `gtk_buildable_parse_context_get_element_stack()`.
    @inlinable func getElement() -> String! {
        let rv = gtk_buildable_parse_context_get_element(_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Retrieves the element stack from the internal state of the parser.
    /// 
    /// The returned `GPtrArray` is an array of strings where the last item is
    /// the currently open tag (as would be returned by
    /// `gtk_buildable_parse_context_get_element()`) and the previous item is its
    /// immediate parent.
    /// 
    /// This function is intended to be used in the start_element and
    /// end_element handlers where `gtk_buildable_parse_context_get_element()`
    /// would merely return the name of the element that is being
    /// processed.
    @inlinable func getElementStack() -> GLib.PtrArrayRef! {
        let rv = GLib.PtrArrayRef(gtk_buildable_parse_context_get_element_stack(_ptr))
        return rv
    }

    /// Retrieves the current line number and the number of the character on
    /// that line. Intended for use in error messages; there are no strict
    /// semantics for what constitutes the "current" line number other than
    /// "the best number we could come up with for error messages."
    @inlinable func getPosition(lineNumber: UnsafeMutablePointer<gint>! = nil, charNumber: UnsafeMutablePointer<gint>! = nil) {
        gtk_buildable_parse_context_get_position(_ptr, lineNumber, charNumber)
    
    }

    /// Completes the process of a temporary sub-parser redirection.
    /// 
    /// This function exists to collect the user_data allocated by a
    /// matching call to `gtk_buildable_parse_context_push()`. It must be called
    /// in the end_element handler corresponding to the start_element
    /// handler during which `gtk_buildable_parse_context_push()` was called.
    /// You must not call this function from the error callback -- the
    /// `user_data` is provided directly to the callback in that case.
    /// 
    /// This function is not intended to be directly called by users
    /// interested in invoking subparsers. Instead, it is intended to
    /// be used by the subparsers themselves to implement a higher-level
    /// interface.
    @inlinable func pop() -> gpointer! {
        let rv = gtk_buildable_parse_context_pop(_ptr)
        return rv
    }

    /// Temporarily redirects markup data to a sub-parser.
    /// 
    /// This function may only be called from the start_element handler of
    /// a `GtkBuildableParser`. It must be matched with a corresponding call to
    /// `gtk_buildable_parse_context_pop()` in the matching end_element handler
    /// (except in the case that the parser aborts due to an error).
    /// 
    /// All tags, text and other data between the matching tags is
    /// redirected to the subparser given by `parser`. `user_data` is used
    /// as the user_data for that parser. `user_data` is also passed to the
    /// error callback in the event that an error occurs. This includes
    /// errors that occur in subparsers of the subparser.
    /// 
    /// The end tag matching the start tag for which this call was made is
    /// handled by the previous parser (which is given its own user_data)
    /// which is why `gtk_buildable_parse_context_pop()` is provided to allow "one
    /// last access" to the `user_data` provided to this function. In the
    /// case of error, the `user_data` provided here is passed directly to
    /// the error callback of the subparser and `gtk_buildable_parse_context_pop()`
    /// should not be called. In either case, if `user_data` was allocated
    /// then it ought to be freed from both of these locations.
    /// 
    /// This function is not intended to be directly called by users
    /// interested in invoking subparsers. Instead, it is intended to be
    /// used by the subparsers themselves to implement a higher-level
    /// interface.
    /// 
    /// For an example of how to use this, see `g_markup_parse_context_push()` which
    /// has the same kind of API.
    @inlinable func push<BuildableParserT: BuildableParserProtocol>(parser: BuildableParserT, userData: gpointer! = nil) {
        gtk_buildable_parse_context_push(_ptr, parser._ptr, userData)
    
    }
    /// Retrieves the name of the currently open element.
    /// 
    /// If called from the start_element or end_element handlers this will
    /// give the element_name as passed to those functions. For the parent
    /// elements, see `gtk_buildable_parse_context_get_element_stack()`.
    @inlinable var element: String! {
        /// Retrieves the name of the currently open element.
        /// 
        /// If called from the start_element or end_element handlers this will
        /// give the element_name as passed to those functions. For the parent
        /// elements, see `gtk_buildable_parse_context_get_element_stack()`.
        get {
            let rv = gtk_buildable_parse_context_get_element(_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Retrieves the element stack from the internal state of the parser.
    /// 
    /// The returned `GPtrArray` is an array of strings where the last item is
    /// the currently open tag (as would be returned by
    /// `gtk_buildable_parse_context_get_element()`) and the previous item is its
    /// immediate parent.
    /// 
    /// This function is intended to be used in the start_element and
    /// end_element handlers where `gtk_buildable_parse_context_get_element()`
    /// would merely return the name of the element that is being
    /// processed.
    @inlinable var elementStack: GLib.PtrArrayRef! {
        /// Retrieves the element stack from the internal state of the parser.
        /// 
        /// The returned `GPtrArray` is an array of strings where the last item is
        /// the currently open tag (as would be returned by
        /// `gtk_buildable_parse_context_get_element()`) and the previous item is its
        /// immediate parent.
        /// 
        /// This function is intended to be used in the start_element and
        /// end_element handlers where `gtk_buildable_parse_context_get_element()`
        /// would merely return the name of the element that is being
        /// processed.
        get {
            let rv = GLib.PtrArrayRef(gtk_buildable_parse_context_get_element_stack(_ptr))
            return rv
        }
    }


}



// MARK: - BuildableParser Record

/// The `BuildableParserProtocol` protocol exposes the methods and properties of an underlying `GtkBuildableParser` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `BuildableParser`.
/// Alternatively, use `BuildableParserRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A sub-parser for `GtkBuildable` implementations.
public protocol BuildableParserProtocol {
        /// Untyped pointer to the underlying `GtkBuildableParser` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkBuildableParser` instance.
    var _ptr: UnsafeMutablePointer<GtkBuildableParser>! { get }

    /// Required Initialiser for types conforming to `BuildableParserProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `BuildableParserRef` type acts as a lightweight Swift reference to an underlying `GtkBuildableParser` instance.
/// It exposes methods that can operate on this data type through `BuildableParserProtocol` conformance.
/// Use `BuildableParserRef` only as an `unowned` reference to an existing `GtkBuildableParser` instance.
///
/// A sub-parser for `GtkBuildable` implementations.
public struct BuildableParserRef: BuildableParserProtocol {
        /// Untyped pointer to the underlying `GtkBuildableParser` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension BuildableParserRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkBuildableParser>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkBuildableParser>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkBuildableParser>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkBuildableParser>?) {
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

    /// Reference intialiser for a related type that implements `BuildableParserProtocol`
    @inlinable init<T: BuildableParserProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuildableParserProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuildableParserProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuildableParserProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuildableParserProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuildableParserProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `BuildableParser` type acts as an owner of an underlying `GtkBuildableParser` instance.
/// It provides the methods that can operate on this data type through `BuildableParserProtocol` conformance.
/// Use `BuildableParser` as a strong reference or owner of a `GtkBuildableParser` instance.
///
/// A sub-parser for `GtkBuildable` implementations.
open class BuildableParser: BuildableParserProtocol {
        /// Untyped pointer to the underlying `GtkBuildableParser` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BuildableParser` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkBuildableParser>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BuildableParser` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkBuildableParser>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BuildableParser` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BuildableParser` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BuildableParser` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkBuildableParser>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `BuildableParser` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkBuildableParser>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GtkBuildableParser` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `BuildableParser` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkBuildableParser>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GtkBuildableParser, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `BuildableParserProtocol`
    /// `GtkBuildableParser` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `BuildableParserProtocol`
    @inlinable public init<T: BuildableParserProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GtkBuildableParser, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GtkBuildableParser`.
    deinit {
        // no reference counting for GtkBuildableParser, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuildableParserProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuildableParserProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GtkBuildableParser, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuildableParserProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuildableParserProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GtkBuildableParser, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuildableParserProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuildableParserProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GtkBuildableParser, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuildableParserProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuildableParserProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GtkBuildableParser, cannot ref(_ptr)
    }



}

// MARK: no BuildableParser properties

// MARK: no BuildableParser signals

// MARK: BuildableParser has no signals
// MARK: BuildableParser Record: BuildableParserProtocol extension (methods and fields)
public extension BuildableParserProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkBuildableParser` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkBuildableParser>! { return ptr?.assumingMemoryBound(to: GtkBuildableParser.self) }


    // var startElement is unavailable because start_element is void

    // var endElement is unavailable because end_element is void

    // var text is unavailable because text is void

    // var error is unavailable because error is void

    // var padding is unavailable because padding is private

}



/// Metatype/GType declaration for BuilderCScope
public extension BuilderCScopeClassRef {
    
    /// This getter returns the GLib type identifier registered for `BuilderCScope`
    static var metatypeReference: GType { gtk_builder_cscope_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkBuilderCScopeClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkBuilderCScopeClass.self) }
    
    static var metatype: GtkBuilderCScopeClass? { metatypePointer?.pointee } 
    
    static var wrapper: BuilderCScopeClassRef? { BuilderCScopeClassRef(metatypePointer) }
    
    
}

// MARK: - BuilderCScopeClass Record

/// The `BuilderCScopeClassProtocol` protocol exposes the methods and properties of an underlying `GtkBuilderCScopeClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `BuilderCScopeClass`.
/// Alternatively, use `BuilderCScopeClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol BuilderCScopeClassProtocol {
        /// Untyped pointer to the underlying `GtkBuilderCScopeClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkBuilderCScopeClass` instance.
    var _ptr: UnsafeMutablePointer<GtkBuilderCScopeClass>! { get }

    /// Required Initialiser for types conforming to `BuilderCScopeClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `BuilderCScopeClassRef` type acts as a lightweight Swift reference to an underlying `GtkBuilderCScopeClass` instance.
/// It exposes methods that can operate on this data type through `BuilderCScopeClassProtocol` conformance.
/// Use `BuilderCScopeClassRef` only as an `unowned` reference to an existing `GtkBuilderCScopeClass` instance.
///

public struct BuilderCScopeClassRef: BuilderCScopeClassProtocol {
        /// Untyped pointer to the underlying `GtkBuilderCScopeClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension BuilderCScopeClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkBuilderCScopeClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkBuilderCScopeClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkBuilderCScopeClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkBuilderCScopeClass>?) {
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

    /// Reference intialiser for a related type that implements `BuilderCScopeClassProtocol`
    @inlinable init<T: BuilderCScopeClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderCScopeClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderCScopeClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderCScopeClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderCScopeClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderCScopeClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: BuilderCScopeClass Record: BuilderCScopeClassProtocol extension (methods and fields)
public extension BuilderCScopeClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkBuilderCScopeClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkBuilderCScopeClass>! { return ptr?.assumingMemoryBound(to: GtkBuilderCScopeClass.self) }


    @inlinable var parentClass: GObjectClass {
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

}



/// Metatype/GType declaration for Builder
public extension BuilderClassRef {
    
    /// This getter returns the GLib type identifier registered for `Builder`
    static var metatypeReference: GType { gtk_builder_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkBuilderClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkBuilderClass.self) }
    
    static var metatype: GtkBuilderClass? { metatypePointer?.pointee } 
    
    static var wrapper: BuilderClassRef? { BuilderClassRef(metatypePointer) }
    
    
}

// MARK: - BuilderClass Record

/// The `BuilderClassProtocol` protocol exposes the methods and properties of an underlying `GtkBuilderClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `BuilderClass`.
/// Alternatively, use `BuilderClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol BuilderClassProtocol {
        /// Untyped pointer to the underlying `GtkBuilderClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkBuilderClass` instance.
    var _ptr: UnsafeMutablePointer<GtkBuilderClass>! { get }

    /// Required Initialiser for types conforming to `BuilderClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `BuilderClassRef` type acts as a lightweight Swift reference to an underlying `GtkBuilderClass` instance.
/// It exposes methods that can operate on this data type through `BuilderClassProtocol` conformance.
/// Use `BuilderClassRef` only as an `unowned` reference to an existing `GtkBuilderClass` instance.
///

public struct BuilderClassRef: BuilderClassProtocol {
        /// Untyped pointer to the underlying `GtkBuilderClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension BuilderClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkBuilderClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkBuilderClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkBuilderClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkBuilderClass>?) {
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

    /// Reference intialiser for a related type that implements `BuilderClassProtocol`
    @inlinable init<T: BuilderClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: BuilderClass Record: BuilderClassProtocol extension (methods and fields)
public extension BuilderClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkBuilderClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkBuilderClass>! { return ptr?.assumingMemoryBound(to: GtkBuilderClass.self) }



}



/// Metatype/GType declaration for BuilderListItemFactory
public extension BuilderListItemFactoryClassRef {
    
    /// This getter returns the GLib type identifier registered for `BuilderListItemFactory`
    static var metatypeReference: GType { gtk_builder_list_item_factory_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkBuilderListItemFactoryClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkBuilderListItemFactoryClass.self) }
    
    static var metatype: GtkBuilderListItemFactoryClass? { metatypePointer?.pointee } 
    
    static var wrapper: BuilderListItemFactoryClassRef? { BuilderListItemFactoryClassRef(metatypePointer) }
    
    
}

// MARK: - BuilderListItemFactoryClass Record

/// The `BuilderListItemFactoryClassProtocol` protocol exposes the methods and properties of an underlying `GtkBuilderListItemFactoryClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `BuilderListItemFactoryClass`.
/// Alternatively, use `BuilderListItemFactoryClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol BuilderListItemFactoryClassProtocol {
        /// Untyped pointer to the underlying `GtkBuilderListItemFactoryClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkBuilderListItemFactoryClass` instance.
    var _ptr: UnsafeMutablePointer<GtkBuilderListItemFactoryClass>! { get }

    /// Required Initialiser for types conforming to `BuilderListItemFactoryClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `BuilderListItemFactoryClassRef` type acts as a lightweight Swift reference to an underlying `GtkBuilderListItemFactoryClass` instance.
/// It exposes methods that can operate on this data type through `BuilderListItemFactoryClassProtocol` conformance.
/// Use `BuilderListItemFactoryClassRef` only as an `unowned` reference to an existing `GtkBuilderListItemFactoryClass` instance.
///

public struct BuilderListItemFactoryClassRef: BuilderListItemFactoryClassProtocol {
        /// Untyped pointer to the underlying `GtkBuilderListItemFactoryClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension BuilderListItemFactoryClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkBuilderListItemFactoryClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkBuilderListItemFactoryClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkBuilderListItemFactoryClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkBuilderListItemFactoryClass>?) {
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

    /// Reference intialiser for a related type that implements `BuilderListItemFactoryClassProtocol`
    @inlinable init<T: BuilderListItemFactoryClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderListItemFactoryClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderListItemFactoryClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderListItemFactoryClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderListItemFactoryClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderListItemFactoryClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: BuilderListItemFactoryClass Record: BuilderListItemFactoryClassProtocol extension (methods and fields)
public extension BuilderListItemFactoryClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkBuilderListItemFactoryClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkBuilderListItemFactoryClass>! { return ptr?.assumingMemoryBound(to: GtkBuilderListItemFactoryClass.self) }



}



/// Metatype/GType declaration for BuilderScope
public extension BuilderScopeInterfaceRef {
    
    /// This getter returns the GLib type identifier registered for `BuilderScope`
    static var metatypeReference: GType { gtk_builder_scope_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkBuilderScopeInterface>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkBuilderScopeInterface.self) }
    
    static var metatype: GtkBuilderScopeInterface? { metatypePointer?.pointee } 
    
    static var wrapper: BuilderScopeInterfaceRef? { BuilderScopeInterfaceRef(metatypePointer) }
    
    
}

// MARK: - BuilderScopeInterface Record

/// The `BuilderScopeInterfaceProtocol` protocol exposes the methods and properties of an underlying `GtkBuilderScopeInterface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `BuilderScopeInterface`.
/// Alternatively, use `BuilderScopeInterfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The virtual function table to implement for `GtkBuilderScope` implementations.
/// Default implementations for each function do exist, but they usually just fail,
/// so it is suggested that implementations implement all of them.
public protocol BuilderScopeInterfaceProtocol {
        /// Untyped pointer to the underlying `GtkBuilderScopeInterface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkBuilderScopeInterface` instance.
    var _ptr: UnsafeMutablePointer<GtkBuilderScopeInterface>! { get }

    /// Required Initialiser for types conforming to `BuilderScopeInterfaceProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `BuilderScopeInterfaceRef` type acts as a lightweight Swift reference to an underlying `GtkBuilderScopeInterface` instance.
/// It exposes methods that can operate on this data type through `BuilderScopeInterfaceProtocol` conformance.
/// Use `BuilderScopeInterfaceRef` only as an `unowned` reference to an existing `GtkBuilderScopeInterface` instance.
///
/// The virtual function table to implement for `GtkBuilderScope` implementations.
/// Default implementations for each function do exist, but they usually just fail,
/// so it is suggested that implementations implement all of them.
public struct BuilderScopeInterfaceRef: BuilderScopeInterfaceProtocol {
        /// Untyped pointer to the underlying `GtkBuilderScopeInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension BuilderScopeInterfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkBuilderScopeInterface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkBuilderScopeInterface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkBuilderScopeInterface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkBuilderScopeInterface>?) {
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

    /// Reference intialiser for a related type that implements `BuilderScopeInterfaceProtocol`
    @inlinable init<T: BuilderScopeInterfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderScopeInterfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderScopeInterfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderScopeInterfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderScopeInterfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BuilderScopeInterfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: BuilderScopeInterface Record: BuilderScopeInterfaceProtocol extension (methods and fields)
public extension BuilderScopeInterfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkBuilderScopeInterface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkBuilderScopeInterface>! { return ptr?.assumingMemoryBound(to: GtkBuilderScopeInterface.self) }


    // var gIface is unavailable because g_iface is private

    // var getTypeFromName is unavailable because get_type_from_name is void

    // var getTypeFromFunction is unavailable because get_type_from_function is void

    // var createClosure is unavailable because create_closure is void

}



/// Metatype/GType declaration for Button
public extension ButtonClassRef {
    
    /// This getter returns the GLib type identifier registered for `Button`
    static var metatypeReference: GType { gtk_button_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkButtonClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkButtonClass.self) }
    
    static var metatype: GtkButtonClass? { metatypePointer?.pointee } 
    
    static var wrapper: ButtonClassRef? { ButtonClassRef(metatypePointer) }
    
    
}

// MARK: - ButtonClass Record

/// The `ButtonClassProtocol` protocol exposes the methods and properties of an underlying `GtkButtonClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ButtonClass`.
/// Alternatively, use `ButtonClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ButtonClassProtocol {
        /// Untyped pointer to the underlying `GtkButtonClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkButtonClass` instance.
    var _ptr: UnsafeMutablePointer<GtkButtonClass>! { get }

    /// Required Initialiser for types conforming to `ButtonClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `ButtonClassRef` type acts as a lightweight Swift reference to an underlying `GtkButtonClass` instance.
/// It exposes methods that can operate on this data type through `ButtonClassProtocol` conformance.
/// Use `ButtonClassRef` only as an `unowned` reference to an existing `GtkButtonClass` instance.
///

public struct ButtonClassRef: ButtonClassProtocol {
        /// Untyped pointer to the underlying `GtkButtonClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ButtonClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkButtonClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkButtonClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkButtonClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkButtonClass>?) {
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

    /// Reference intialiser for a related type that implements `ButtonClassProtocol`
    @inlinable init<T: ButtonClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ButtonClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ButtonClass Record: ButtonClassProtocol extension (methods and fields)
public extension ButtonClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkButtonClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkButtonClass>! { return ptr?.assumingMemoryBound(to: GtkButtonClass.self) }


    /// The parent class.
    @inlinable var parentClass: GtkWidgetClass {
        /// The parent class.
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var clicked is unavailable because clicked is void

    // var activate is unavailable because activate is void

    // var padding is unavailable because padding is private

}



/// Metatype/GType declaration for CallbackAction
public extension CallbackActionClassRef {
    
    /// This getter returns the GLib type identifier registered for `CallbackAction`
    static var metatypeReference: GType { gtk_callback_action_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GtkCallbackActionClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GtkCallbackActionClass.self) }
    
    static var metatype: GtkCallbackActionClass? { metatypePointer?.pointee } 
    
    static var wrapper: CallbackActionClassRef? { CallbackActionClassRef(metatypePointer) }
    
    
}

// MARK: - CallbackActionClass Record

/// The `CallbackActionClassProtocol` protocol exposes the methods and properties of an underlying `GtkCallbackActionClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CallbackActionClass`.
/// Alternatively, use `CallbackActionClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol CallbackActionClassProtocol {
        /// Untyped pointer to the underlying `GtkCallbackActionClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkCallbackActionClass` instance.
    var _ptr: UnsafeMutablePointer<GtkCallbackActionClass>! { get }

    /// Required Initialiser for types conforming to `CallbackActionClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `CallbackActionClassRef` type acts as a lightweight Swift reference to an underlying `GtkCallbackActionClass` instance.
/// It exposes methods that can operate on this data type through `CallbackActionClassProtocol` conformance.
/// Use `CallbackActionClassRef` only as an `unowned` reference to an existing `GtkCallbackActionClass` instance.
///

public struct CallbackActionClassRef: CallbackActionClassProtocol {
        /// Untyped pointer to the underlying `GtkCallbackActionClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension CallbackActionClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkCallbackActionClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkCallbackActionClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkCallbackActionClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkCallbackActionClass>?) {
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

    /// Reference intialiser for a related type that implements `CallbackActionClassProtocol`
    @inlinable init<T: CallbackActionClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CallbackActionClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CallbackActionClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CallbackActionClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CallbackActionClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CallbackActionClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: CallbackActionClass Record: CallbackActionClassProtocol extension (methods and fields)
public extension CallbackActionClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkCallbackActionClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GtkCallbackActionClass>! { return ptr?.assumingMemoryBound(to: GtkCallbackActionClass.self) }



}



