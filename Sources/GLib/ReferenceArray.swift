//
//  ReferenceArray.swift
//
//  Created by Rene Hexel on 9/10/2022.
//  Copyright © 2022, 2023 Rene Hexel.  All rights reserved.
//
import CGLib

/// Protocol for a reference `PtrArray`, where each element represents a reference
/// type pointing to an underlying object.
///
/// The `ReferenceArrayProtocol` protocol exposes the methods and properties of an underlying `GPtrArray` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ReferenceArray`.
/// Alternatively, use `ReferenceArrayRef` as a lighweight, `unowned` reference
/// if you already have an instance you just want to use.
/// - Note: This colection type is mainly for referencing GLib objects.  For referencing primitive types, use `TypedArrayProtocol`.
public protocol ReferenceArrayProtocol: PtrArrayProtocol, RandomAccessCollection, MutableCollection {
    /// The element contained at each index
    associatedtype Element
}

public extension ReferenceArrayProtocol {
    /// Return an iterator representing the start index of the sequence
    @inlinable var startIndex: Int { 0 }

    /// Return an iterator representing the start index of the sequence
    @inlinable var endIndex: Int { count }

    /// Return the number of elements in the sequence
    @inlinable var count: Int { Int(len) }

    /// Get the element at the given position
    /// - Parameter position: The position in the sequence to retrieve the element from
    @inlinable subscript(position: Int) -> Element {
        get {
            precondition(position < count)
            assert(MemoryLayout<Element>.size == MemoryLayout<gpointer>.size)
            return pdata.withMemoryRebound(to: Element.self, capacity: count) {
                $0[position]
            }
        }
        set(newValue) {
            precondition(position < count)
            assert(MemoryLayout<Element>.size == MemoryLayout<gpointer>.size)
            pdata.withMemoryRebound(to: Element.self, capacity: count) {
                $0[position] = newValue
            }
        }
    }
}

/// The `ReferenceArray` class acts as a typed wrapper around `GPtrArray`,
/// with the associated `Element` representing the type of
/// the elements stored in the list.
/// - Note: This colection type is mainly for referencing GLib objects.  For referencing primitive types, use `TypedArray`.
public class ReferenceArray<Element>: PtrArray, ReferenceArrayProtocol, ExpressibleByArrayLiteral {
    /// `true` to deallocate the block of associated elements on deinit.
    public var freeElements = false

    /// Array literal initialiser
    /// - Parameter elements: The elements to initialise the array with
    @inlinable required public init(arrayLiteral elements: Element...) {
        assert(MemoryLayout<Element>.size == MemoryLayout<gpointer>.size)
        let n = elements.count
        freeElements = true
        super.init(retaining: g_ptr_array_sized_new(guint(n)))
        pdata.withMemoryRebound(to: Element.self, capacity: n) {
            UnsafeMutableBufferPointer(start: $0, count: n).initialize(from: elements)
        }
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `PtrArrayProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    deinit {
        g_ptr_array_free(ptr_array_ptr, freeElements ? 1 : 0)
    }
}

/// The `ReferenceArrayRef` struct acts as a lightweight, typed wrapper around `GList`,
/// with the associated `Element` representing the type of
/// the elements stored in the list.
/// - Note: This colection type is mainly for referencing GLib objects.  For referencing primitive types, use `TypedArray`.
public struct ReferenceArrayRef<Element>: ReferenceArrayProtocol {
    /// Untyped reference to the underlying `GPtrArray`
    public var ptr: UnsafeMutableRawPointer!
}

public extension ReferenceArrayRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GPtrArray>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GPtrArray>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GPtrArray>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GPtrArray>?) {
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
