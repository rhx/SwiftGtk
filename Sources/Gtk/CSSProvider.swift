//
//  CSSProvider.swift
//  SwiftGtk
//
//  Created by Rene Hexel on 25/4/17.
//  Copyright © 2017, 2018, 2019 Rene Hexel.  All rights reserved.
//
import Foundation
import CGtk

@usableFromInline func with<T>(gString: UnsafePointer<CChar>, perform: (UnsafeMutablePointer<gchar>) throws -> T) throws -> T {
    return try perform(UnsafeMutablePointer(mutating: gString))
}

/// CSS Provider reference
public typealias CSSProviderRef = CssProvider
/// CSS Provider class
public typealias CSSProvider = CssProvider

public extension CssProviderProtocol {
    /// Return the CSS provider as a style provider
    @inlinable var styleProvider: StyleProviderRef {
        return StyleProviderRef(cPointer: css_provider_ptr.withMemoryRebound(to: GTypeInstance.self, capacity: 1) {
            g_type_check_instance_cast($0, gtk_style_provider_get_type())
        })
    }

    /// Loads the data provided in the given string into the CSS Provider
    ///
    /// - Parameter data: the CSS data represented as a String
    /// - Throws: an `ErrorType` if there is an issue with the CSS
    @inlinable func load(from data: String) {
        return load(from: data, length: -1)
    }
}

public extension CSSProvider {
    /// Convenience initialiser from a given string
    ///
    /// - Parameter data: String providing the CSS data
    @inlinable convenience init(from data: String) {
        self.init()
        _ = refSink()
        load(from: data)
    }
}
