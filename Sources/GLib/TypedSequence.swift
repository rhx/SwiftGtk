//
//  Sequence.swift
//  GLib
//
//  Created by Rene Hexel on 5/1/21.
//  Copyright © 2021, 2022, 2023 Rene Hexel.  All rights reserved.
//
import CGLib

/// Protocol for a typed `Sequence`, representing each element in a sequence
/// with a pointer pointing to the element data.
///
/// The `TypedSequenceProtocol` protocol exposes the methods and properties of an underlying `GSequence` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TypedSequence`.
/// Alternatively, use `TypedSequenceRef` as a lighweight, `unowned` reference
/// if you already have an instance you just want to use.
/// - Note: This protocol is mainly for  primitive types.  For referencing GLib objects, use `ReferenceSequenceProtocol`.
public protocol TypedSequenceProtocol: SequenceProtocol, BidirectionalCollection, MutableCollection {
    /// The element contained in each `SList` node.
    associatedtype Element
}

public extension TypedSequenceProtocol {
    /// Return an iterator representing the start index of the sequence
    @inlinable var startIndex: SequenceIterRef { getBeginIter() }

    /// Return an iterator representing the start index of the sequence
    @inlinable var endIndex: SequenceIterRef { getEndIter() }

    /// Return the number of elements in the sequence
    @inlinable var count: Int { length }

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

    /// Create an interator over a`TypedSequence`
    /// - Returns: a list iterator
    @inlinable func makeIterator() -> TypedSequenceIterator<Element> {
        TypedSequenceIterator(getBeginIter())
    }
    /// Get or set an element pointer at the given position
    ///
    /// - Parameter position: The position in the sequence to retrieve the element from
    ///
    /// This subscript treats the node referenced by `position`
    /// as containing a pointer to `Element`.
    ///
    /// - note: The setter of this subscript will always allocate memory for
    /// the element being emplaced. This memory will need to be freed manually
    /// if a `DestroyNotify` function to deallocate memory has not been set
    /// (the corresponding pointer can be retrieved by calling
    /// `position.sequenceGet()`).
    @inlinable subscript(position: SequenceIterRef) -> Element {
        get {
            guard var data = position.sequenceGet() else {
                fatalError("Invalid subscript index at \(position)")
            }
#if swift(>=5.7)
            return data.withMemoryRebound(to: Element.self, capacity: 1) {
                $0.pointee
            }
#else
            return data.assumingMemoryBound(to: Element.self).pointee
#endif
        }
        set {
            let newElementPointer = UnsafeMutablePointer<Element>.allocate(capacity: 1)
            newElementPointer.initialize(to: newValue)
            position.sequenceSet(data: UnsafeMutableRawPointer(newElementPointer))
        }
    }
    /// Returns `true` if the typed sequence contains zero items.
    ///
    /// This function is functionally identical to checking the result of
    /// `g_sequence_get_length()` being equal to zero. However this function is
    /// implemented in `O(1)` running time.
    @inlinable public var isEmpty: Bool { g_sequence_is_empty(_ptr) != 0 }
}


/// The `TypedSequence` class acts as a typed wrapper around `GSequence`,
/// with the associated `Element` representing the type of
/// the elements stored in the list.
/// - Note: This collection type is mainly for primitive types.  For referencing GLib objects, use `ReferenceSequence`.
public class TypedSequence<Element>: Sequence, TypedSequenceProtocol, ExpressibleByArrayLiteral {
    /// Array literal initialiser
    ///
    /// This initialiser will always allocate memory for the given elements
    /// that will be freed upon deallocation.
    ///
    /// - Parameter elements: The elements to initialise the sequence with
    @inlinable required public init(arrayLiteral elements: Element...) {
        super.init(retaining: g_sequence_new({
            $0?.deallocate() }))
        for element in elements {
            let elementPointer = UnsafeMutablePointer<Element>.allocate(capacity: 1)
            elementPointer.initialize(to: element)
            append(data: gpointer(elementPointer))
        }
    }

    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    deinit {
        g_sequence_free(_ptr)
    }

    /// Create an interator over a`TypedSequence`
    /// - Returns: a list iterator
    @inlinable public func makeIterator() -> TypedSequenceIterator<Element> {
        TypedSequenceIterator(getBeginIter())
    }
}

/// The `TypedSequenceRef` struct acts as a lightweight, typed wrapper around `GList`,
/// with the associated `Element` representing the type of
/// the elements stored in the list.
/// - Note: This collection type is mainly for primitive types.  For referencing GLib objects, use `ReferenceSequenceRef`.
public struct TypedSequenceRef<Element>: TypedSequenceProtocol {
    /// Untyped reference to the underlying `GSequence`
    public var ptr: UnsafeMutableRawPointer!

    /// Create an interator over a`TypedSequenceRef`
    /// - Returns: a list iterator
    @inlinable public func makeIterator() -> TypedSequenceIterator<Element> {
        TypedSequenceIterator(getBeginIter())
    }
}

public extension TypedSequenceRef {
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

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SequenceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SequenceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SequenceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SequenceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SequenceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

}

/// A lightweight iterator over a `Sequence`
public struct TypedSequenceIterator<Element>: IteratorProtocol {
    public var iterator: SequenceIterRef?

    /// Constructor for a `TypedSequenceIterator`
    /// - Parameter ptr: Optional `GSequenceIter` pointer
    @inlinable init(_ iter: SequenceIterRef?) {
        iterator = iter
    }

    /// Return the next element in the list
    /// - Returns: a pointer to the next element in the list or `nil` if the end of the list has been reached
    @inlinable public mutating func next() -> Element? {
        defer { iterator = iterator?.next() }
        guard var data = iterator?.sequenceGet() else { return nil }
        if MemoryLayout<Element>.size == MemoryLayout<gpointer>.size {
            return withUnsafeBytes(of: &data) {
                $0.baseAddress?.assumingMemoryBound(to: Element.self).pointee
            }!
        } else {
#if swift(>=5.7)
            return data.withMemoryRebound(to: Element.self, capacity: 1) {
                $0.pointee
            }
#else
            return data.assumingMemoryBound(to: Element.self).pointee
#endif
        }
    }
}
