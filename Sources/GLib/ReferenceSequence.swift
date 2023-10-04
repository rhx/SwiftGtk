//
//  ReferenceSequence.swift
//  GLib
//
//  Created by Rene Hexel on 5/1/21.
//  Copyright © 2021, 2022, 2023 Rene Hexel.  All rights reserved.
//
import CGLib

/// Protocol for a Reference `Sequence`, representing each element in a sequence.
///
/// The `ReferenceSequenceProtocol` protocol exposes the methods and properties of an underlying `GSequence` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ReferenceSequence`.
/// Alternatively, use `ReferenceSequenceRef` as a lighweight, `unowned` reference
/// if you already have an instance you just want to use.
/// - Note: This protocol is mainly for referencing GLib objects.  For  primitive types, use `TypedSequenceProtocol`.
public protocol ReferenceSequenceProtocol: SequenceProtocol, BidirectionalCollection, MutableCollection {
    /// The element contained in each `SList` node.
    associatedtype Element
}

public extension ReferenceSequenceProtocol {
    /// Return an iterator representing the start index of the sequence
    @inlinable var startIndex: SequenceIterRef { getBeginIter() }

    /// Return an iterator representing the start index of the sequence
    @inlinable var endIndex: SequenceIterRef { getEndIter() }

    /// Return the number of elements in the sequence
    @inlinable var count: Int { endIndex.position - startIndex.position }

    /// Returns the position immediately after the given index.
    /// - Parameter i: The original index
    /// - Returns: The index after the original index
    @inlinable func index(after i: SequenceIterRef) -> SequenceIterRef { i.move(delta: 1) }

    /// Returns the position immediately before the given index.
    /// - Parameter i: The original index
    /// - Returns: The index before the original index
    @inlinable func index(before i: SequenceIterRef) -> SequenceIterRef { i.move(delta: -1) }

    /// Returns a position relative to the given index
    /// - Parameters:
    ///   - i: The original index
    ///   - distance: The distance to add to the original index
    /// - Returns: The index that is the given distance away from the original index
    @inlinable public func index(_ i: SequenceIterRef, offsetBy distance: Int) -> SequenceIterRef {
        i.move(delta: distance)
    }

    /// Create an interator over a`ReferenceSequence`
    /// - Returns: a list iterator
    @inlinable func makeIterator() -> ReferenceSequenceIterator<Element> {
        ReferenceSequenceIterator(getBeginIter())
    }
    /// Get or set a pointer element at the given position
    ///
    /// - Parameter position: The position in the sequence to retrieve the element from
    ///
    /// This index requires that `Element` is pointer size and that
    /// the data type represented by `Element` wraps a pointer
    /// to an underlying `GLib` type (which typically is the case for
    /// `Ref` types).  Use the `pointeeAt:` subscript to always
    /// treat the node data as a pointer to the given element.
    @inlinable subscript(position: SequenceIterRef) -> Element {
        get {
            assert(MemoryLayout<Element>.size == MemoryLayout<gpointer>.size)
            guard var data = position.sequenceGet() else {
                fatalError("Invalid subscript index at \(position.position)")
            }
            return withUnsafeBytes(of: &data) {
                $0.baseAddress?.assumingMemoryBound(to: Element.self).pointee
            }!
        }
        set {
            assert(MemoryLayout<Element>.size == MemoryLayout<gpointer>.size)
            var pointerValue = newValue
            withUnsafeBytes(of: &pointerValue) {
#if swift(>=5.7)
                position.sequenceSet(data: $0.assumingMemoryBound(to: gpointer.self).baseAddress?.pointee)
#else
                position.sequenceSet(data: $0.baseAddress?.assumingMemoryBound(to: gpointer.self).pointee)
#endif
            }
        }
    }
    /// Returns `true` if the Reference sequence contains zero items.
    ///
    /// This function is functionally identical to checking the result of
    /// `g_sequence_get_length()` being equal to zero. However this function is
    /// implemented in `O(1)` running time.
    @inlinable public var isEmpty: Bool { g_sequence_is_empty(_ptr) != 0 }
}


/// The `ReferenceSequence` class acts as a Reference wrapper around `GSequence`,
/// with the associated `Element` representing the type of
/// the elements stored in the list.
/// - Note: This collection type is mainly for referencing GLib objects.  For  primitive types, use `TypedSequence`.
public class ReferenceSequence<Element>: Sequence, ReferenceSequenceProtocol, ExpressibleByArrayLiteral {
    /// Array literal initialiser
    ///
    /// This initialiser will always allocate memory for the given elements
    /// that will be freed upon deallocation.
    ///
    /// - Parameter elements: The elements to initialise the sequence with
    @inlinable required public init(arrayLiteral elements: Element...) {
        super.init(retaining: g_sequence_new(nil))
        for var element in elements {
            withUnsafeMutablePointer(to: &element) {
                $0.withMemoryRebound(to: gpointer.self, capacity: 1) {
                    append(data: $0.pointee)
                }
            }
        }
    }

    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    deinit {
        g_sequence_free(_ptr)
    }
}

/// The `ReferenceSequenceRef` struct acts as a lightweight, Reference wrapper around `GList`,
/// with the associated `Element` representing the type of
/// the elements stored in the list.
/// - Note: This collection type is mainly for referencing GLib objects.  For  primitive types, use `TypedSequenceRef`.
public struct ReferenceSequenceRef<Element>: ReferenceSequenceProtocol {
    /// UnReference reference to the underlying `GSequence`
    public var ptr: UnsafeMutableRawPointer!
}

public extension ReferenceSequenceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GSequence>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GSequence>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GSequence>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GSequence>?) {
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

    /// Reference intialiser for a related type that implements `SequenceProtocol`
    @inlinable init<T: SequenceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe Reference initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SequenceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe Reference initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SequenceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe unReference initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SequenceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe unReference initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SequenceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe unReference initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SequenceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

}

/// A lightweight iterator over a `Sequence`
public struct ReferenceSequenceIterator<Element>: IteratorProtocol {
    public var iterator: SequenceIterRef?

    /// Constructor for a `ReferenceSequenceIterator`
    /// - Parameter ptr: Optional `GSequenceIter` pointer
    @inlinable init(_ iter: SequenceIterRef?) {
        iterator = iter
    }

    /// Return the next element in the list
    /// - Returns: a pointer to the next element in the list or `nil` if the end of the list has been reached
    @inlinable public mutating func next() -> Element? {
        defer { iterator = iterator?.next() }
        guard var data = iterator?.sequenceGet() else { return nil }
        return withUnsafeBytes(of: &data) {
            $0.baseAddress?.assumingMemoryBound(to: Element.self).pointee
        }
    }
}

extension SequenceIterRef: Equatable {
    /// Compare two sequence iterators for equality
    /// - Parameters:
    ///   - lhs: left hand side sequence iterator to compare
    ///   - rhs: right hand side sequence iterator to compare
    /// - Returns: `true` iff the two iterators refer to the same element
    @inlinable public static func == (lhs: SequenceIterRef, rhs: SequenceIterRef) -> Bool {
        lhs.ptr == rhs.ptr
    }
}

extension SequenceIterRef: Comparable {
    /// Compare two sequence iterator positions
    /// - Parameters:
    ///   - lhs: left hand side sequence iterator to compare
    ///   - rhs: right hand side sequence iterator to compare
    /// - Returns: `true` iff the left hand side iterator is positioned before the right hand side iterator
    @inlinable public static func < (lhs: SequenceIterRef, rhs: SequenceIterRef) -> Bool {
        lhs.compare(b: rhs) < 0
    }
}
