//
//  SList.swift
//  GLib
//
//  Created by Rene Hexel on 5/1/21.
//  Copyright © 2021 Rene Hexel.  All rights reserved.
//
import CGLib

public extension SListProtocol {
    /// Create an interator over a`ListRef`
    /// - Returns: a list iterator
    @inlinable func makeIterator() -> SListIterator {
        SListIterator(_ptr)
    }
}

extension SList: Swift.Sequence {}
extension SListRef: Swift.Sequence {}

/// A lightweight iterator over a `GSList`
public struct SListIterator: IteratorProtocol {
    public var list: UnsafeMutablePointer<GSList>?

    /// Constructor for an SListIterator
    /// - Parameter ptr: Optional `GList` pointer to iterate over
    @inlinable init(_ ptr: UnsafeMutablePointer<GSList>?) {
        list = ptr
    }

    /// Return the next element in the list
    /// - Returns: a pointer to the next element in the list or `nil` if the end of the list has been reached
    @inlinable public mutating func next() -> gpointer? {
        defer { list = list?.pointee.next }
        return list?.pointee.data
    }
}
