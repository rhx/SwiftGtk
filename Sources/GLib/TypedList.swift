//
//  TypedList.swift
//  GLib
//
//  Created by Rene Hexel on 5/1/21.
//  Copyright © 2021, 2022, 2023, 2024 Rene Hexel.  All rights reserved.
//
import CGLib

/// Protocol for a typed `GList`, representing each element
/// through a node pointing to the element in a doubly-linked list.
///
/// The `TypedListProtocol` protocol exposes the methods
/// and properties of an underlying `GList` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TypedList`.
/// Alternatively, use `TypedListRef` as a lighweight, `unowned` reference
/// if you already have an instance you just want to use.
///
/// - Note: This colection type is mainly for primitive types.  For referencing GLib objects, use `ReferenceListProtocol`.
public protocol TypedListProtocol: ListProtocol, Swift.Sequence {
    /// The element contained in each `GList` node.
    associatedtype Element
}

public extension TypedListProtocol {
    /// Create an interator over a`ListRef`
    /// - Returns: a list iterator returning the typed elements of the list
    @inlinable func makeIterator() -> TypedListIterator<Element> {
        TypedListIterator(_ptr)
    }

    /// Return the typed data pointed to by the current element
    ///
    /// If `Element` is pointer size, this assumes that
    /// the data type represented by `Element` wraps a pointer
    /// to an underlying `GLib` type (which typically is the case for
    /// `Ref` types).
    ///
    /// If `Element` is not pointer size, the list
    /// node pointer is treated as pointing to `Element`
    @inlinable var element: Element! {
        data?.withMemoryRebound(to: Element.self, capacity: 1) {
            $0.pointee
        }
    }
}

/// The `TypedList` class acts as a typed wrapper around `GList`,
/// with the associated `Element` representing the type of
/// the elements stored in the list.
/// - Note: This collection type is mainly for  primitive types.  For referencing GLib objects, use `ReferenceList`.
public class TypedList<Element>: List, TypedListProtocol, ExpressibleByArrayLiteral {
    /// `true` to deallocate the associated list nodes on deinit.
    public var freeNodes = true
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
        freeElements = true
        for element in elements.reversed() {
            let elementPointer = UnsafeMutablePointer<Element>.allocate(capacity: 1)
            elementPointer.initialize(to: element)
            last = g_list_prepend(last, gpointer(elementPointer))
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
        freeNodes = false
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

/// The `TypedListRef` struct acts as a lightweight, typed wrapper around `GList`,
/// with the associated `Element` representing the type of
/// the elements stored in the list.
/// - Note: This collection type is mainly for  primitive types.  For referencing GLib objects, use `ReferenceListRef`.
public struct TypedListRef<Element>: TypedListProtocol {
    public var ptr: UnsafeMutableRawPointer!
}

public extension TypedListRef {
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

    /// Reference intialiser for a related type that implements `TypedListProtocol`
    @inlinable init<T: ListProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ListProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }
}

/// A lightweight, typed iterator over a `GList`
public struct TypedListIterator<Element>: IteratorProtocol {
    public var list: UnsafeMutablePointer<GList>?

    /// Constructor for a TypedListIterator
    /// - Parameter ptr: Optional `GList` pointer to iterate over
    @inlinable init(_ ptr: UnsafeMutablePointer<GList>?) {
        list = ptr
    }

    /// Return the next element in the list
    /// - Returns: a pointer to the next element in the list or `nil` if the end of the list has been reached
    @inlinable public mutating func next() -> Element? {
        defer { list = list?.pointee.next }
        return list.flatMap { TypedListRef($0).element }
    }
}
