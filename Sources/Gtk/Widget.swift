//
//  Widget.swift
//  SwiftGtk
//
//  Created by Rene Hexel on 23/4/17.
//  Copyright © 2017, 2018, 2019, 2020 Rene Hexel.  All rights reserved.
//
import CGLib
import CGdk
import CGtk
import GLib
import GLibObject
import GIO
import Cairo
import Gdk

/// Widget protocol convenience methods
public extension WidgetProtocol {
    /// Adds the events in the `events` OptionSet to the event mask for
    /// `widget`. See `gtk_widget_set_events()` and the
    /// [input handling overview](#event-masks) for details.
    @inlinable func add(events: EventMask) {
        gtk_widget_add_events(widget_ptr, events.int)
    }

    /// Return a reference to the style context
    @inlinable var styleContextRef: StyleContextRef {
        return StyleContextRef(styleContext)
    }

}

public extension WidgetRef {
    /// Object pointer widget constructor.
    /// - Note: use with caution, only when you know that the object actually is a widget
    /// - Parameter object: Pointer to a widget typed as a `GObject`
    @inlinable init(_ object: UnsafeMutablePointer<GObject>) {
        ptr = UnsafeMutableRawPointer(object)
    }
}
