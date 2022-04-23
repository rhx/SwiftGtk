//
//  String.swift
//  GLib
//
//  Created by Rene Hexel on 27/04/2017.
//  Copyright © 2017, 2018, 2019 Rene Hexel.  All rights reserved.
//
import CGLib

/// Allow Swift strings to interact with GLib strings
public extension String {
    /// Convert a C string to a Swift String, freeing the original buffer
    /// - Parameter s: The C string buffer to convert and free
    /// - Returns: The corresponding Swift string or `nil` if `s` was `nil`
    @inlinable static func freeing(_ s: UnsafePointer<CChar>?) -> String! {
        defer { g_free(UnsafeMutableRawPointer(mutating: s)) }
        return s.map { String(cString: $0) }
    }

    /// Convert a C string to a Swift String, freeing the original buffer
    /// - Parameter s: The C string buffer to convert and free
    /// - Returns: The corresponding Swift string or `nil` if `s` was `nil`
    @inlinable static func freeing(_ s: UnsafePointer<CUnsignedChar>?) -> String! {
        defer { g_free(UnsafeMutableRawPointer(mutating: s)) }
        return s.map { String(cString: $0) }
    }

    /// Return a GString corresponding to the given swift string.
    /// The returned string pointer needs to be freed using g_string_free(*, true)
    @inlinable var gstring_ptr: UnsafeMutablePointer<GString> { return g_string_new(self) }
}

/// Allow StringRefs to be initialised from Swift strings
public extension StringRef {
    /// Construct a StringRef from a Swift string.
    /// The returned string needs to be freed using free(free_segment: true)
    @inlinable init(_ s: String) { ptr = UnsafeMutableRawPointer(s.gstring_ptr) }
}

/// A subclass of StringType that represents unique ownership of the underlying
/// GString pointer and frees its content upon release
public class StringClass: StringType {
    /// Initialise from a copy of the given GString
    @inlinable override public init(_ op: UnsafeMutablePointer<GString>) {
        super.init(UnsafeMutablePointer(g_string_new(op.pointee.str)))
    }

    /// Initialise from a swift string
    @inlinable public init(_ s: String) {
        super.init(s.gstring_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable required public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// free the contained string upon release
    @inlinable deinit {
        g_string_free(gstring_ptr, 1)
    }
}

/// Swift string extension to generate GLib strings
public extension String {
    /// Return a GString reference that needs to be manually freed
    /// using free(free_segment: true)
    @inlinable var g_string_ref: StringRef { return StringRef(self) }

    /// Return a memory-managed StringType that will be freed using ARC.
    @inlinable var g_string: StringClass { return StringClass(self) }
}
