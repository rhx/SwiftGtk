//
//  Window.swift
//  SwiftGtk
//
//  Created by Rene Hexel on 23/4/17.
//  Copyright © 2017, 2018, 2019 Rene Hexel.  All rights reserved.
//
import CGLib
import CGtk
import GLib
import GLibObject


/// Window convenience methods
public extension WindowProtocol {
    /// size of the window
    var size: (width: CInt, height: CInt) {
        var w = CInt(0), h = CInt(0)
        getSize(width: &w, height: &h)
        return (w, h)
    }
}


public extension ScrolledWindow {
    /// Convenience constructor
    /// - Parameters:
    ///   - vAdjustment: optional vertical adjustment
    convenience init(vAdjustment: AdjustmentProtocol? = nil) {
        let vadjust = vAdjustment.map { $0.adjustment_ptr.withMemoryRebound(to: GtkAdjustment.self, capacity: 1) { $0 } }
        let win = gtk_scrolled_window_new(nil, vadjust).withMemoryRebound(to: GtkScrolledWindow.self, capacity: 1) { $0 }
        self.init(win)
    }
}
