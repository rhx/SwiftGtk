//
//  DragContext.swift
//  SwiftGtk
//
//  Created by Rene Hexel on 29/4/17.
//  Copyright © 2017, 2018, 2020 Rene Hexel.  All rights reserved.
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
    @inlinable func set<S: SurfaceProtocol>(icon surface: S) {
        drag_context_ptr.withMemoryRebound(to: GdkDragContext.self, capacity: 1) {
            gtk_drag_set_icon_surface($0, surface._ptr)
        }
    }
}


public extension WidgetProtocol {
    /// Set a drag source
    ///
    /// - Parameters:
    ///   - startButton: button to start dragging from (defaults to `.button1Mask`)
    ///   - action: drag action to perform (defaults to `.copy`)
    ///   - targets: array of targets to target
    @inlinable func dragSourceSet(startButton: Gdk.ModifierType = .button1Mask, action: Gdk.DragAction = .copy, targets: [String]) {
        var t = targets.map { GtkTargetEntry(target: $0) }
        dragSourceSet(startButtonMask: startButton, targets: &t, nTargets: t.count, actions: action)
    }
    /// Set a drag source
    ///
    /// - Parameters:
    ///   - startButton: button to start dragging from (defaults to `.button1Mask`)
    ///   - action: drag action to perform (defaults to `.copy`)
    ///   - targets: array of targets to target
    @inlinable func dragSourceSet(startButton: Gdk.ModifierType = .button1Mask, action: Gdk.DragAction = .copy, targets: [GtkTargetEntry]) {
        var t = targets
        t.withUnsafeMutableBufferPointer {
            dragSourceSet(startButtonMask: startButton, targets: $0.baseAddress!, nTargets: $0.count, actions: action)
        }
    }
    /// Set a drag source
    ///
    /// - Parameters:
    ///   - startButton: button to start dragging from (defaults to `.button1Mask`)
    ///   - action: drag action to perform (defaults to `.copy`)
    ///   - targets: list of targets to target
    @inlinable func dragSourceSet(startButton b: Gdk.ModifierType = .button1Mask, action a: Gdk.DragAction = .copy, targets t: String...) {
        dragSourceSet(startButton: b, action: a, targets: t)
    }
    /// Set a drag source
    ///
    /// - Parameters:
    ///   - startButton: button to start dragging from (defaults to `.button1Mask`)
    ///   - action: drag action to perform (defaults to `.copy`)
    ///   - targets: list of targets to target
    @inlinable func dragSourceSet(startButton b: Gdk.ModifierType = .button1Mask, action a: Gdk.DragAction = .copy, targets t: GtkTargetEntry...) {
        dragSourceSet(startButton: b, action: a, targets: t)
    }

    /// Set a drag destination
    ///
    /// - Parameters:
    ///   - flags: destination defaults (defaults to `.all`)
    ///   - action: drag action to perform (defaults to `.copy`)
    ///   - targets: array of targets to target
    @inlinable func dragDestSet(flags f: DestDefaults = .all, action a: Gdk.DragAction = .copy, targets: [String]) {
        var t = targets.map { GtkTargetEntry(target: $0) }
        dragDestSet(flags: f, targets: &t, nTargets: t.count, actions: a)
    }
    /// Set a drag destination
    ///
    /// - Parameters:
    ///   - flags: destination defaults (defaults to `.all`)
    ///   - action: drag action to perform (defaults to `.copy`)
    ///   - targets: array of targets to target
    @inlinable func dragDestSet(flags f: DestDefaults = .all, action a: Gdk.DragAction = .copy, targets: [GtkTargetEntry]) {
        var t = targets
        dragDestSet(flags: f, targets: &t, nTargets: t.count, actions: a)
    }
    /// Set a drag destination
    ///
    /// - Parameters:
    ///   - flags: destination defaults (defaults to `.all`)
    ///   - action: drag action to perform (defaults to `.copy`)
    ///   - targets: list of targets to target
    @inlinable func dragDestSet(flags f: DestDefaults = .all, action a: Gdk.DragAction = .copy, targets t: String...) {
        dragDestSet(flags: f, action: a, targets: t)
    }
    /// Set a drag destination
    ///
    /// - Parameters:
    ///   - flags: destination defaults (defaults to `.all`)
    ///   - action: drag action to perform (defaults to `.copy`)
    ///   - targets: list of targets to target
    @inlinable func dragDestSet(flags f: DestDefaults = .all, action a: Gdk.DragAction = .copy, targets t: GtkTargetEntry...) {
        dragDestSet(flags: f, action: a, targets: t)
    }
}
