//
//  List.swift
//  GLib
//
//  Created by Rene Hexel on 5/1/21.
//  Copyright © 2021 Rene Hexel.  All rights reserved.
//
import CGLib

public extension ListProtocol {
    /// Create an interator over a`ListRef`
    /// - Returns: a list iterator
    @inlinable func makeIterator() -> ListIterator {
        ListIterator(_ptr)
    }
}

extension List: Swift.Sequence {}
extension ListRef: Swift.Sequence {}

/// A lightweight iterator over a `GList`
public struct ListIterator: IteratorProtocol {
    public var list: UnsafeMutablePointer<GList>?

    /// Constructor for a ListIterator
    /// - Parameter ptr: Optional `GList` pointer to iterate over
    @inlinable init(_ ptr: UnsafeMutablePointer<GList>?) {
        list = ptr
    }

    /// Return the next element in the list
    /// - Returns: a pointer to the next element in the list or `nil` if the end of the list has been reached
    @inlinable public mutating func next() -> gpointer? {
        defer { list = list?.pointee.next }
        return list?.pointee.data
    }
}
