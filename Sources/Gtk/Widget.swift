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

    /// Connection helper function
    @usableFromInline internal func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: WidgetSignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer, gpointer) -> gboolean) -> Int {
        let opaqueHolder = Unmanaged.passRetained(data).toOpaque()
        let callback = unsafeBitCast(handler, to: GCallback.self)
        let rv = signalConnectData(detailedSignal: name, cHandler: callback, data: opaqueHolder, destroyData: {
            if let swift = $0 {
                let holder = Unmanaged<WidgetSignalHandlerClosureHolder>.fromOpaque(swift)
                holder.release()
            }
            let _ = $1
        }, connectFlags: flags)
        return rv
    }

    /// Connection helper function
    @usableFromInline internal func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: KeySignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer, gpointer) -> Void) -> Int {
        let opaqueHolder = Unmanaged.passRetained(data).toOpaque()
        let callback = unsafeBitCast(handler, to: GCallback.self)
        let rv = signalConnectData(detailedSignal: name, cHandler: callback, data: opaqueHolder, destroyData: {
            if let swift = $0 {
                let holder = Unmanaged<KeySignalHandlerClosureHolder>.fromOpaque(swift)
                holder.release()
            }
            let _ = $1
        }, connectFlags: flags)
        return rv
    }

    /// Connects a (WidgetRef,Cairo.Context) -> Bool closure or function to a signal for
    /// the receiver object.  Similar to g_signal_connect(), but allows
    /// to provide a Swift closure that can capture its surrounding context.
    @discardableResult
    @inlinable func connectSignal(name: UnsafePointer<gchar>, flags f: ConnectFlags = ConnectFlags(0), handler: @escaping WidgetSignalHandler) -> Int {
        let rv = _connect(signal: name, flags: f, data: DualClosureHolder(handler)) {
            let holder = Unmanaged<WidgetSignalHandlerClosureHolder>.fromOpaque($2).takeUnretainedValue()
            let rv: gboolean = holder.call(WidgetRef(raw: $0), Cairo.ContextRef(raw: $1)) ? 1 : 0
            return rv
        }
        return rv
    }

    /// Connects a (WidgetRef,Gdk.EventKeyRef) -> Void closure or function to a signal for
    /// the receiver object.  Similar to g_signal_connect(), but allows
    /// to provide a Swift closure that can capture its surrounding context.
    @discardableResult
    @inlinable func connectKey(signal name: UnsafePointer<gchar>, flags f: ConnectFlags = ConnectFlags(0), handler: @escaping KeySignalHandler) -> Int {
        let rv = _connect(signal: name, flags: f, data: DualClosureHolder(handler)) {
            let holder = Unmanaged<KeySignalHandlerClosureHolder>.fromOpaque($2).takeUnretainedValue()
            holder.call(WidgetRef(raw: $0), EventRef(raw: $1))
        }
        return rv
    }

    /// Connects a (WidgetRef,Gdk.EventButtonRef) -> Void closure or function to a signal for
    /// the receiver object.  Similar to g_signal_connect(), but allows
    /// to provide a Swift closure that can capture its surrounding context.
    @discardableResult
    @inlinable func connectButton(signal name: UnsafePointer<gchar>, flags f: ConnectFlags = ConnectFlags(0), handler: @escaping ButtonSignalHandler) -> Int {
        let rv = _connect(signal: name, flags: f, data: DualClosureHolder(handler)) {
            let holder = Unmanaged<ButtonSignalHandlerClosureHolder>.fromOpaque($2).takeUnretainedValue()
            holder.call(WidgetRef(raw: $0), EventRef(raw: $1))
        }
        return rv
    }

    /// Connects a (WidgetRef,Gdk.EventMotionRef) -> Void closure or function to a signal for
    /// the receiver object.  Similar to g_signal_connect(), but allows
    /// to provide a Swift closure that can capture its surrounding context.
    @discardableResult
    @inlinable func connectMotion(signal name: UnsafePointer<gchar>, flags f: ConnectFlags = ConnectFlags(0), handler: @escaping MotionSignalHandler) -> Int {
        let rv = _connect(signal: name, flags: f, data: DualClosureHolder(handler)) {
            let holder = Unmanaged<MotionSignalHandlerClosureHolder>.fromOpaque($2).takeUnretainedValue()
            holder.call(WidgetRef(raw: $0), EventRef(raw: $1))
        }
        return rv
    }

    /// Connects a (WidgetRef,Cairo.Context)) -> Void closure or function to a box signal for
    /// the receiver object.  Similar to g_signal_connect(), but allows
    /// to provide a Swift closure that can capture its surrounding context.
    @discardableResult
    @inlinable func connect<T>(signal s: T, flags f: ConnectFlags = ConnectFlags(0), handler: @escaping WidgetSignalHandler) -> Int where T: SignalNameProtocol {
        return connectSignal(name: s.rawValue, flags: f, handler: handler)
    }

    /// Connects a (WidgetRef,Cairo.Context) -> Bool closure or function to a box signal for
    /// the receiver object.  Similar to g_signal_connect(), but allows
    /// to provide a Swift closure that can capture its surrounding context.
    @discardableResult
    @inlinable func connect(signal: WidgetSignalName, flags f: ConnectFlags = ConnectFlags(0), handler: @escaping WidgetSignalHandler) -> Int {
        return connectSignal(name: signal.rawValue, flags: f, handler: handler)
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
