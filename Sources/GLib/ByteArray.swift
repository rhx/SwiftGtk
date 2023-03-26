//
//  ByteArray.swift
//
//  Copyright © 2022 Rene Hexel.  All rights reserved.
//  Created by Rene Hexel on 9/10/2022.
//
import CGLib

/// Conform ByteArray to Collection
public extension ByteArrayProtocol {
    /// The element type for a `ByteArray`
    public typealias Element = UInt8
    /// The index type for a `ByteArray`
    public typealias Index = Int

    /// Start index
    @inlinable public var startIndex: Int { 0 }

    /// End index
    @inlinable public var endIndex: Int { Int(len) }

    /// Index after the given index
    @inlinable public func index(after i: Int) -> Int { i+1 }

    /// Index before the given index
    @inlinable public func index(before i: Int) -> Int { i-1 }

    /// Subscript
    @inlinable public subscript(position: Int) -> UInt8 {
        get { data[position] }
        set { data[position] = newValue }
    }

    /// Return the stored content interpreted as
    /// a C string.
    /// - note: This requires the content to be null-terminated.
    @inlinable public var stringValue: String {
        String(cString: data)
    }

    /// Compare two byte arrays for equality
    @inlinable static func ==<BArray: ByteArrayProtocol>(lhs: Self, rhs: BArray) -> Bool {
        lhs.ptr == rhs.ptr ||
        (lhs.len == rhs.len &&
         (lhs.len == 0 || memcmp(lhs.data, rhs.data, lhs.endIndex) == 0))
    }
}

extension ByteArrayBase: RandomAccessCollection, MutableCollection, Equatable {}
extension ByteArrayRef: RandomAccessCollection, MutableCollection, Equatable {}

/// A byte array class represented by an underlying `GByteArray`.
///
/// This class extends `ByteArrayBase` and makes it conform to
/// `ExpressibleByArrayLiteral`.
open class ByteArray: ByteArrayBase, ExpressibleByArrayLiteral, ExpressibleByStringLiteral {
    /// Designated initialiser for a byte array
    @inlinable public init() {
        super.init(g_byte_array_new())
    }
    /// Initialisa a byte array with a given capacity
    /// - Parameter capacity: The size to pre-allocat
    @inlinable public init(capacity: Int) {
        super.init(g_byte_array_sized_new(guint(capacity)))
    }
    /// Initialise a `ByteArray` from an array literal
    @inlinable public required convenience init(arrayLiteral elements: UInt8...) {
        self.init(capacity: elements.count)
        UnsafeMutableBufferPointer(start: data, count: elements.count).initialize(from: elements)
    }
    /// Initialise a `ByteArray` from a String
    ///
    /// This initialiser will convert the string to UTF-8 and
    /// store it in the byte array.
    ///
    /// - Parameter s: The string whose UTF-8 representation to use for initialisation.
    @inlinable public init(_ s: String) {
        super.init(g_byte_array_new_take(g_strdup(s), gsize(s.utf8.count + 1)))
    }
    /// Initialise a `ByteArray` from a string literal.
    ///
    /// This initialiser will store the UTF-8 representation
    /// of the provided string.
    ///
    /// - Parameter s: The string whose UTF-8 representation to use for initialisation.
    @inlinable public required convenience init(stringLiteral s: String) {
        self.init(s)
    }
    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ByteArrayProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }
    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ByteArray` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public override init(_ op: UnsafeMutablePointer<GByteArray>) {
        super.init(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ByteArray` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public override init(_ op: UnsafePointer<GByteArray>) {
        super.init(op)
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ByteArray` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public override init!(gpointer op: gpointer?) {
        super.init(gpointer: op)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ByteArray` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public override init!(gconstpointer op: gconstpointer?) {
        super.init(gconstpointer: op)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ByteArray` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public override init!(_ op: UnsafePointer<GByteArray>?) {
        super.init(op)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ByteArray` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public override init!(_ op: UnsafeMutablePointer<GByteArray>?) {
        super.init(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GByteArray`.
    /// i.e., ownership is transferred to the `ByteArray` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public override init(retaining op: UnsafeMutablePointer<GByteArray>) {
        super.init(retaining: op)
    }

    /// Reference intialiser for a related type that implements `ByteArrayProtocol`
    /// Will retain `GByteArray`.
    /// - Parameter other: an instance of a related type that implements `ByteArrayProtocol`
    @inlinable public override init<T: ByteArrayProtocol>(_ other: T) {
        super.init(other)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ByteArrayProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public override init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ByteArrayProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public override init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ByteArrayProtocol`.**
    @inlinable public override init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ByteArrayProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public override init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ByteArrayProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public override init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ByteArrayProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public override init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }
}
