//
//  Memory.swift
//  GLib
//
//  Created by Rene Hexel on 27/04/2017.
//  Copyright © 2017 Rene Hexel.  All rights reserved.
//
import CGLib

/// Convenience conversion from a constant pointer to a mutable pointer.
///
/// This function is provided for convenience as many glib types and functions
/// declare a non-const pointer even in cases where the original data are not
/// modified.
///
/// USE WITH EXTREME CARE!
///
/// - Parameter p: original pointer
/// - Returns: mutating pointer
@inlinable public func mutate<T>(_ s: UnsafePointer<T>) -> UnsafeMutablePointer<T> {
    return UnsafeMutablePointer(mutating: s)
}

/// Allocate zero-initialised memory for a given type T
///
/// - Returns: pointer to allocated memory for T
@inlinable public func g_slice_new0<T>() -> UnsafeMutablePointer<T>! {
    return g_slice_alloc0(gsize(MemoryLayout<T>.size)).assumingMemoryBound(to: T.self)
}

/// Allocate uninitialised memory for a given type T
///
/// - Returns: pointer to allocated memory for T
@inlinable public func g_slice_new<T>() -> UnsafeMutablePointer<T>! {
    return g_slice_alloc(gsize(MemoryLayout<T>.size)).assumingMemoryBound(to: T.self)
}

/// Free a slice of memory based on its type T
///
/// - Parameter mem_block: memory block of a given type T
@inlinable public func g_slice_free<T>(_ mem_block: UnsafePointer<T>!) {
    g_slice_free1(gsize(MemoryLayout<T>.size), UnsafeMutableRawPointer(UnsafeMutablePointer<T>(mutating: mem_block)))
}
