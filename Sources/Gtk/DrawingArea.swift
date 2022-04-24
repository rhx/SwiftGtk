//
//  DrawingArea.swift
//  SwiftGtk
//
//  Created by Rene Hexel on 3/1/21.
//  Copyright © 2021 Rene Hexel.  All rights reserved.
//
import CGtk
import Cairo

public extension DrawingAreaProtocol {
    /// Set the drawing function for this drawing area
    /// - Parameter drawFunction: a function or closure that takes a reference to this drawing area, a Cairo context reference, the width, and the height of the area for drawing
    @inlinable func setDrawFunc(_ drawFunction: @escaping (DrawingAreaRef, Cairo.ContextRef, Int, Int) -> Void) {
        _connect(drawFunc: DrawFuncClosureHolder(drawFunction)) {
            guard let drawingArea = $0,
                  let cr = $1,
                  let holderPtr = $4 else { return }
            let holder = Unmanaged<DrawFuncClosureHolder>.fromOpaque(holderPtr).takeUnretainedValue()
            holder.call(DrawingAreaRef(drawingArea), Cairo.ContextRef(cr), Int($2), Int($3))

        }
    }

    /// Connection helper function
    @usableFromInline internal func _connect(drawFunc: DrawFuncClosureHolder, handler: @convention(c) @escaping (UnsafeMutablePointer<GtkDrawingArea>?, UnsafeMutablePointer<cairo_t>?, Int32, Int32, gpointer?) -> Void) {
        let opaqueHolder = Unmanaged.passRetained(drawFunc).toOpaque()
        set(drawFunc: handler, userData: opaqueHolder, destroy: {
            if let swift = $0 {
                let holder = Unmanaged<DrawFuncClosureHolder>.fromOpaque(swift)
                holder.release()
            }
        })
    }
}
