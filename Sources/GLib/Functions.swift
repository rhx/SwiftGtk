//
//  Functions.swift
//  GLib
//
//  Created by Rene Hexel on 15/8/20.
//  Copyright © 2020 Rene Hexel.  All rights reserved.
//
import Foundation
import CGLib

/// Decode a sequence of Base-64 encoded text into binary data.
@inlinable public func base64Decode(_ text: UnsafePointer<CChar>) -> Foundation.Data! {
    var size = gsize(0)
    guard let ptr = g_base64_decode(text, &size) else { return nil }
    defer { g_free(ptr) }
    return Foundation.Data(bytes: UnsafeRawPointer(ptr), count: Int(size))
}


/// Decode a sequence of Base-64 encoded text into binary data
/// by overwriting the input data.
@discardableResult @inlinable public func base64DecodeInPlace(_ text: UnsafeMutablePointer<CChar>, deallocator: Foundation.Data.Deallocator = .none) -> Foundation.Data! {
    var size = gsize(0)
    guard let ptr = g_base64_decode_inplace(text, &size) else { return nil }
    return Foundation.Data(bytesNoCopy: UnsafeMutableRawPointer(ptr), count: Int(size), deallocator: deallocator)
}
