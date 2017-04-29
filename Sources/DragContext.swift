//
//  DragContext.swift
//  SwiftGtk
//
//  Created by Rene Hexel on 29/4/17.
//  Copyright © 2017 Rene Hexel.  All rights reserved.
//
import CCairo
import CGtk
import Cairo
import Gdk

public extension DragContextProtocol {
    /// Set the given surface as the icon for the drag context
    ///
    /// - Parameters:
    ///   - surface: Cairo surface to act as the icon
    public func set<S: SurfaceProtocol>(icon surface: S) {
        ptr.withMemoryRebound(to: GdkDragContext.self, capacity: 1) {
            gtk_drag_set_icon_surface($0, surface.ptr)
        }
    }
}
