//
//  TypedArray.swift
//
//  Created by Rene Hexel on 7/10/2022.
//  Copyright © 2022, 2023 Rene Hexel.  All rights reserved.
//
import CGLib

/// Protocol for a typed `Array`, representing each element in a sequence.
///
/// The `TypedArrayProtocol` protocol exposes the methods and properties of an underlying `GArray` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TypedArray`.
/// Alternatively, use `TypedArrayRef` as a lighweight, `unowned` reference
/// if you already have an instance you just want to use.
public protocol TypedArrayProtocol: ArrayProtocol, RandomAccessCollection, MutableCollection {
    /// The element contained at each index
    associatedtype Element
}

public extension TypedArrayProtocol {
    /// Return an iterator representing the start index of the sequence
    @inlinable var startIndex: Int { 0 }

    /// Return an iterator representing the start index of the sequence
    @inlinable var endIndex: Int { count }

    /// Return the number of elements in the sequence
    @inlinable var count: Int { Int(len) / MemoryLayout<Element>.stride }

    /// Get the element at the given position
    /// - Parameter position: The position in the sequence to retrieve the element from
    @inlinable subscript(position: Int) -> Element {
        get {
            data.withMemoryRebound(to: Element.self, capacity: count) {
                $0[position]
            }
        }
        set(newValue) {
            data.withMemoryRebound(to: Element.self, capacity: count) {
                $0[position] = newValue
            }
        }
    }
}

/// The `TypedArray` class acts as a typed wrapper around `GArray`,
/// with the associated `Element` representing the type of
/// the elements stored in the list.
public class TypedArray<Element>: ArrayType, TypedArrayProtocol, ExpressibleByArrayLiteral {
    /// Array literal initialiser
    /// - Parameter elements: The elements to initialise the array with
    @inlinable required public init(arrayLiteral elements: Element...) {
        super.init(retaining: g_array_sized_new(0, 0, guint(MemoryLayout<Element>.stride), guint(elements.count)))
        elements.withUnsafeBytes {
            appendVals(data: $0.baseAddress, len: $0.count)
        }
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrayProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    deinit {
        g_array_free(array_ptr, 0)
    }
}

/// The `TypedArrayRef` struct acts as a lightweight, typed wrapper aroundptr `GList`,
/// with the associated `Element` representing the type of
/// the elements stored in the list.
public struct TypedArrayRef<Element>: TypedArrayProtocol {
    /// Untyped reference to the underlying `GArray`
    public var ptr: UnsafeMutableRawPointer!
}

public extension TypedArrayRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GArray>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GArray>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GArray>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GArray>?) {
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

    /// Reference intialiser for a related type that implements `ArrayProtocol`
    @inlinable init<T: ArrayProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrayProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrayProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrayProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrayProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ArrayProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

}
