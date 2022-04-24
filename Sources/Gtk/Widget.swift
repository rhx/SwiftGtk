//
//  Widget.swift
//  SwiftGtk
//
//  Created by Rene Hexel on 23/4/17.
//  Copyright © 2017, 2018, 2019, 2020, 2021 Rene Hexel.  All rights reserved.
//
import CGLib
import CGdk
import CGtk
import GLib
import GLibObject
import GIO
import Cairo
import Gdk

/// A closure taking a reference to the current widget and cairo_t as an argument
public typealias WidgetSignalHandler = (WidgetRef, Cairo.ContextRef) -> Bool

/// A closure taking a reference to the current widget and `Gdk.EventKeyRef` as an argument
public typealias KeySignalHandler = (WidgetRef, EventRef) -> Void

/// A closure taking a reference to the current widget and `Gdk.EventButtonRef` as an argument
public typealias ButtonSignalHandler = (WidgetRef, EventRef) -> Void

/// A closure taking a reference to the current widget and `Gdk.EventMotionRef` as an argument
public typealias MotionSignalHandler = (WidgetRef, EventRef) -> Void

/// Internal type for Drawing SignalHandler closure holder
@usableFromInline typealias WidgetSignalHandlerClosureHolder = DualClosureHolder<WidgetRef,Cairo.ContextRef, Bool>

/// Internal type for key event SignalHandler closure holder
@usableFromInline typealias KeySignalHandlerClosureHolder = DualClosureHolder<WidgetRef, EventRef, Void>

/// Internal type for button event SignalHandler closure holder
@usableFromInline typealias ButtonSignalHandlerClosureHolder = DualClosureHolder<WidgetRef, EventRef, Void>

/// Internal type for a pointer motion SignalHandler closure holder
@usableFromInline typealias MotionSignalHandlerClosureHolder = DualClosureHolder<WidgetRef, EventRef, Void>

/// Internal type for Dragging SignalHandler closure holder
@usableFromInline typealias DragSignalHandlerClosureHolder = DualClosureHolder<WidgetRef, EventRef, Void>

/// Widget protocol convenience methods
public extension WidgetProtocol {
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
