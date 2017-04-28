//
//  Screen.swift
//  Gtk
//
//  Created by Rene Hexel on 28/4/17.
//  Copyright © 2017 Rene Hexel.  All rights reserved.
//
import CGtk
import Gdk

public extension ScreenProtocol {
    /// return the screen as a style context
    public var styleContext: StyleContextRef { return StyleContextRef(cPointer: ptr) }

    /// Convenience method to add a style provider to the current screen
    ///
    /// - Parameters:
    ///   - p: style provider to add
    ///   - priority: the priority of the provider (defaults to `STYLE_PROVIDER_PRIORITY_APPLICATION`)
    public func add<P: StyleProviderProtocol>(provider p: P, priority: Int32 = STYLE_PROVIDER_PRIORITY_APPLICATION) {
        return styleContext.add(provider: p, priority: CUnsignedInt(priority))
    }

    /// Convenience method to add a CSS style provider to the current screen
    ///
    /// - Parameters:
    ///   - p: CSS style provider to add
    ///   - priority: the priority of the provider (defaults to `STYLE_PROVIDER_PRIORITY_APPLICATION`)
    public func add<P: CssProviderProtocol>(provider p: P, priority: Int32 = STYLE_PROVIDER_PRIORITY_APPLICATION) {
        return styleContext.add(provider: p.styleProvider, priority: CUnsignedInt(priority))
    }
}

