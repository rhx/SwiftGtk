//
//  MainLoop.swift
//  GLib
//
//  Created by Rene Hexel on 27/04/2017.
//  Copyright © 2017, 2018, 2019, 2020 Rene Hexel.  All rights reserved.
//
import CGLib

/// Convenience extension for MainContextRef
public extension MainContextRef {
    /// Return a MainContext reference to the default context singleton.
    ///
    /// This is a convenience factory method that returns the global default
    /// main context, i.e. the main context used for main loop functions
    /// when a main loop is not explicitly specified, and corresponds to
    /// the "main" main loop. See also g_main_context_get_thread_default().
    @inlinable static func defaultContext() -> MainContextRef {
        return MainContextRef(g_main_context_default()!)
    }

    /// Return a MainContext that references the default context singleton.
    ///
    /// This is a convenience factory method that returns the global default
    /// main context, i.e. the main context used for main loop functions
    /// when a main loop is not explicitly specified, and corresponds to
    /// the "main" main loop. See also g_main_context_get_thread_default().
    @inlinable static var `default`: MainContextRef { defaultContext() }
}


/// Convenience extension for MainContext
public extension MainContext {
    /// Return a MainContext that references the default context singleton.
    ///
    /// This is a convenience factory method that returns the global default
    /// main context, i.e. the main context used for main loop functions
    /// when a main loop is not explicitly specified, and corresponds to
    /// the "main" main loop. See also g_main_context_get_thread_default().
    @inlinable static func defaultContext() -> MainContext {
        let context = MainContext(g_main_context_ref(g_main_context_default())!)
        return context
    }

    /// Return a MainContext that references the default context singleton.
    ///
    /// This is a convenience factory method that returns the global default
    /// main context, i.e. the main context used for main loop functions
    /// when a main loop is not explicitly specified, and corresponds to
    /// the "main" main loop. See also g_main_context_get_thread_default().
    @inlinable static var `default`: MainContext { defaultContext() }
}


/// Convenience extension for MainLoopRef
public extension MainLoopRef {
    /// Convenience initialiser that returns a retained reference to the
    /// default main loop.  See also g_main_loop_unref()
    @inlinable init() {
        ptr = UnsafeMutableRawPointer(g_main_loop_new(g_main_context_default()!, 0)!)
    }
}


/// Convenience extension for MainLoop
public extension MainLoop {
    /// Convenience initialiser that creates and returns the
    /// default main loop.
    @inlinable convenience init() {
        self.init(g_main_loop_new(g_main_context_default()!, 0))
    }
}
