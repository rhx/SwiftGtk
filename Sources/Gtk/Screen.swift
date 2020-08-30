//
//  Screen.swift
//  Gtk
//
//  Created by Rene Hexel on 28/4/17.
//  Copyright © 2017, 2018, 2019, 2020 Rene Hexel.  All rights reserved.
//
import CGdk
import CGtk
import Gdk

public extension ScreenProtocol {
    /// Convenience method to add a style provider to the current screen
    ///
    /// - Parameters:
    ///   - p: style provider to add
    ///   - priority: the priority of the provider (defaults to `STYLE_PROVIDER_PRIORITY_APPLICATION`)
    @inlinable func add<P: StyleProviderProtocol>(provider p: P, priority: Int32 = STYLE_PROVIDER_PRIORITY_APPLICATION) {
        screen_ptr.withMemoryRebound(to: GdkScreen.self, capacity: 1) { (s: UnsafeMutablePointer<GdkScreen>) -> Void in
            gtk_style_context_add_provider_for_screen(s, p.style_provider_ptr, guint(priority))
        }
    }

    /// Convenience method to add a CSS style provider to the current screen
    ///
    /// - Parameters:
    ///   - p: CSS style provider to add
    ///   - priority: the priority of the provider (defaults to `STYLE_PROVIDER_PRIORITY_APPLICATION`)
    @inlinable func add<P: CssProviderProtocol>(provider p: P, priority: Int32 = STYLE_PROVIDER_PRIORITY_APPLICATION) {
        screen_ptr.withMemoryRebound(to: GdkScreen.self, capacity: 1) { (s: UnsafeMutablePointer<GdkScreen>) -> Void in
            gtk_style_context_add_provider_for_screen(s, p.styleProvider.style_provider_ptr, guint(priority))
        }
    }
}
