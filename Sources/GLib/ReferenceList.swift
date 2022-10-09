//  ReferenceList.swift
//  GLib
//
//  Created by Rene Hexel on 5/1/21.
//  Copyright © 2021, 2022 Rene Hexel.  All rights reserved.
//
import CGLib

/// Protocol for a reference `GList`, where each node represents a reference
/// type pointing to an underlying object.
///
/// The `ReferenceListProtocol` protocol exposes the methods and properties of an underlying `GList` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ReferenceList`.
/// Alternatively, use `ReferenceListRef` as a lighweight, `unowned` reference
/// if you already have an instance you just want to use.
///
public protocol ReferenceListProtocol: ListProtocol, Swift.Sequence {
    /// The element contained in each `GList` node.
    associatedtype Element
}

public extension ReferenceListProtocol {
    /// Create an interator over a`ListRef`
    /// - Returns: a list iterator returning the Reference elements of the list
    @inlinable func makeIterator() -> ReferenceListIterator<Element> {
        ReferenceListIterator(_ptr)
    }
    
    /// Return the Reference data pointed to by the current element
    ///
    /// `Element` needs to be pointer size and a data type
    /// that wraps a pointer to an underlying `GLib` type
    /// (which typically is the case for `Ref` types).
    @inlinable var element: Element! {
        assert(MemoryLayout<Element>.size == MemoryLayout<gpointer>.size)
        guard var data = data else { return nil }
        return withUnsafeBytes(of: &data) {
            $0.baseAddress?.assumingMemoryBound(to: Element.self).pointee
        }
    }
}

/// The `ReferenceList` class acts as a Reference wrapper around `GList`,
/// with the associated `Element` representing the type of
/// the elements stored in the list.
public class ReferenceList<Element>: List, ReferenceListProtocol, ExpressibleByArrayLiteral {
    /// `true` to deallocate the associated list nodes on deinit.
    public var freeNodes = false
    /// `true` to deallocate the associated elements on deinit.
    public var freeElements = false
    /// Array literal initialiser
    ///
    /// This initialiser will always allocate memory for the given elements
    /// that will be freed upon deallocation.
    ///
    /// - Parameter elements: The elements to initialise the sequence with
    @inlinable required public init(arrayLiteral elements: Element...) {
        var last: UnsafeMutablePointer<GList>! = nil
        freeNodes = true
        for var element in elements.reversed() {
            withUnsafeMutableBytes(of: &element) {
                $0.withMemoryRebound(to: gpointer.self) {
                    last = g_list_prepend(last, $0.baseAddress?.pointee)
                }
            }
        }
        super.init(last)
    }
    
    /// Designated Initialiser.
    ///
    /// By default, the nodes associated with the passed-in list
    /// will not be deallocated.  This behaviour can be changed
    /// by setting `freeNodes` to `true`.
    ///
    /// - Parameter p: Pointer to a list node representing the list
    ///
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    deinit {
        guard freeNodes || freeElements else { return }
        var nextNode = self._ptr
        while let node = nextNode {
            nextNode = node.pointee.next
            if freeElements { node.pointee.data.deallocate() }
            if freeNodes { g_list_free_1(node) }
        }
    }
}

/// The `ReferenceListRef` struct acts as a lightweight, Reference wrapper around `GList`,
/// with the associated `Element` representing the type of
/// the elements stored in the list.
public struct ReferenceListRef<Element>: ReferenceListProtocol {
    public var ptr: UnsafeMutableRawPointer!
}

public extension ReferenceListRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GList>) {
        ptr = UnsafeMutableRawPointer(p)
    }
    
    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GList>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }
    
    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GList>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }
    
    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GList>?) {
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
    
    /// Reference intialiser for a related type that implements `ReferenceListProtocol`
    @inlinable init<T: ListProtocol>(_ other: T) {
        ptr = other.ptr
    }
    
    /// Unsafe Reference initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }
    
    /// Unsafe Reference initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }
    
    /// Unsafe unReference initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }
    
    /// Unsafe unReference initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }
    
    /// Unsafe unReference initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }
}

/// A lightweight, Reference iterator over a `GList`
public struct ReferenceListIterator<Element>: IteratorProtocol {
    public var list: UnsafeMutablePointer<GList>?
    
    /// Constructor for a ReferenceListIterator
    /// - Parameter ptr: Optional `GList` pointer to iterate over
    @inlinable init(_ ptr: UnsafeMutablePointer<GList>?) {
        list = ptr
    }
    
    /// Return the next element in the list
    /// - Returns: a pointer to the next element in the list or `nil` if the end of the list has been reached
    @inlinable public mutating func next() -> Element? {
        defer { list = list?.pointee.next }
        return list.flatMap { ReferenceListRef($0).element }
    }
}
