//
//  Mutex.swift
//  GLib
//
//  Created by Rene Hexel on 18/6/20.
//  Copyright © 2020 Rene Hexel.  All rights reserved.
//
import CGLib

/// Convenience extension for Mutex
public extension Mutex {
    /// Convenience initialiser that creates and initialises a `GMutex`
    @inlinable convenience init() {
        let m = UnsafeMutablePointer<GMutex>.allocate(capacity: 1)
        self.init(m)
        init_()
    }
}
