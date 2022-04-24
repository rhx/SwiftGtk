//
//  Window.swift
//  SwiftGtk
//
//  Created by Rene Hexel on 23/4/17.
//  Copyright © 2017, 2018, 2019, 2020 Rene Hexel.  All rights reserved.
//
import CGLib
import CGtk
import GLib
import GLibObject


/// Window convenience methods
public extension WindowProtocol {
    /// size of the window
    @inlinable var size: (width: Int, height: Int) {
        return (width, height)
    }
}


public extension ScrolledWindow {
    /// Convenience constructor
    /// - Parameters:
    ///   - vAdjustment: optional vertical adjustment
    @inlinable convenience init<T: AdjustmentProtocol>(vAdjustment: T!) {
        let win = gtk_scrolled_window_new()
        self.init(cPointer: win!)
        set(vadjustment: vAdjustment)
        _ = refSink()
    }

    /// Convenience constructor with a nil adjustment
    /// - Parameters:
    ///   - vAdjustment: optional vertical adjustment
    @inlinable convenience init(vAdjustment: AdjustmentRef? = nil) {
        let win = gtk_scrolled_window_new()
        self.init(cPointer: win!)
        if let v = vAdjustment { set(vadjustment: v) }
        _ = refSink()
    }
}
