//
//  Sequence.swift
//  GLib
//
//  Created by Rene Hexel on 5/1/21.
//  Copyright © 2021, 2022 Rene Hexel.  All rights reserved.
//
import CGLib

public extension SequenceProtocol {
    /// Return an iterator representing the start index of the sequence
    @inlinable var startIndex: Int { 0 }

    /// Return an iterator representing the start index of the sequence
    @inlinable var endIndex: Int { getEndIter()?.position ?? 0 }

    /// Return the number of elements in the sequence
    @inlinable var count: Int { endIndex - startIndex }

    /// Return an array of indices valid as subscripts into the sequence
    @inlinable var indices: [Int] {
        (startIndex..<endIndex).map { $0 }
    }

    /// Create an interator over a`Sequence`
    /// - Returns: a list iterator
    @inlinable func makeIterator() -> SequenceIterator {
        SequenceIterator(getBeginIter())
    }

    /// Get the element at the given position
    /// - Parameter position: The position in the sequence to retrieve the element from
    @inlinable subscript(position: Int) -> gpointer! {
        getIterAt(pos: position)!.sequenceGet()
    }

    /// Returns the position immediately after the given index.
    @inlinable func index(after i: Int) -> Int { i + 1 }

    /// Returns the position immediately before the given index.
    @inlinable func index(before i: Int) -> Int { i - 1 }
}

extension Sequence: Swift.Sequence {}
extension SequenceRef: Swift.Sequence {}

/// A lightweight iterator over a `Sequence`
public struct SequenceIterator: IteratorProtocol {
    public var iterator: SequenceIterRef?

    /// Constructor for a `SequenceIterator`
    /// - Parameter ptr: Optional `GSequenceIter` pointer
    @inlinable init(_ iter: SequenceIterRef?) {
        iterator = iter
    }

    /// Return the next element in the list
    /// - Returns: a pointer to the next element in the list or `nil` if the end of the list has been reached
    @inlinable public mutating func next() -> gpointer? {
        defer { iterator = iterator?.next() }
        return iterator?.sequenceGet()
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
