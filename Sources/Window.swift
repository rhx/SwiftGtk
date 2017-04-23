//
//  Window.swift
//  SwiftGtk
//
//  Created by Rene Hexel on 23/4/17.
//  Copyright © 2017 Rene Hexel.  All rights reserved.
//
import CGLib
import CGtk
import GLib
import GLibObject


/// Window convenience methods
public extension WindowProtocol {
    /// size of the window
    public var size: (width: CInt, height: CInt) {
        var w = CInt(0), h = CInt(0)
        getSize(width: &w, height: &h)
        return (w, h)
    }
}
