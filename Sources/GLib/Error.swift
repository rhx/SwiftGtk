//
//  Error.swift
//  GLib
//
//  Created by Rene Hexel on 27/04/2017.
//  Copyright © 2017, 2019, 2020 Rene Hexel.  All rights reserved.
//
#if os(Linux)
    import Glibc
#else
    import Darwin
#endif

import CGLib

/// Alias for a reference wrapping a `GError` pointer
public typealias GLibErrorRef = ErrorRef

/// Alias for a reference wrapping a `GError` pointer
public typealias GLibErrorProtocol = ErrorProtocol

/// CustomStringConvertible extension for GError GLibError
public extension GLibErrorProtocol {
    /// The error message associated with the receiver.
    @inlinable var description: String {
        return String(cString: error_ptr.pointee.message)
    }

    /// The error domain, code, and message associated with the receiver.
    @inlinable var debugDescription: String {
        return String("\(quarkToString(quark: error_ptr.pointee.domain) ?? "-") error \(error_ptr.pointee.code): \(String(cString: error_ptr.pointee.message) )")
    }
}

public extension GLibError {
    /// Initialise from a raw Integer value
    /// - Parameter rawValue: value to initalise from
    @inlinable convenience init(rawValue: Int32) {
        let quark = g_quark_from_string("Error \(rawValue)")
        let error: UnsafeMutablePointer<GError> = g_error_new_literal(quark, rawValue, g_quark_to_string(quark))
        self.init(cPointer: error)
    }

    /// Raw error code
    @inlinable var rawValue: Int32 {
        get { Int32(error_ptr.pointee.code) }
        set { error_ptr.pointee.code = gint(newValue) }
    }
}

extension GLibError: CustomStringConvertible {}
extension GLibError: CustomDebugStringConvertible {}
extension GLibErrorRef: CustomStringConvertible {}
extension GLibErrorRef: CustomDebugStringConvertible {}
