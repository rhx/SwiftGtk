//
//  Widget.swift
//  SwiftGtk
//
//  Created by Rene Hexel on 23/4/17.
//  Copyright © 2017 Rene Hexel.  All rights reserved.
//
import CGLib
import CGtk
import GLib
import GLibObject
import GIO
import Cairo
import Gdk

/// A closure taking a reference to the current box and cairo_t as an argument
public typealias WidgetSignalHandler = (WidgetRef, Cairo.ContextRef) -> Bool

/// A closure taking a reference to the current box and cairo_t as an argument
public typealias DragSignalHandler = (WidgetRef, Gdk.DragContextRef) -> Void

/// A closure taking a reference to the current box and cairo_t as an argument
public typealias DragDataGetSignalHandler = (WidgetRef, Gdk.DragContextRef, UnsafeMutablePointer<GtkSelectionData>?, guint, guint) -> Void

/// A closure taking a reference to the current box and cairo_t as an argument
public typealias DragDataReceivedSignalHandler = (WidgetRef, Gdk.DragContextRef, gint, gint, UnsafeMutablePointer<GtkSelectionData>?, guint, guint32) -> Void

/// Internal type for Drawing SignalHandler closure holder
typealias WidgetSignalHandlerClosureHolder = DualClosureHolder<WidgetRef,Cairo.ContextRef, Bool>

/// Internal type for Dragging SignalHandler closure holder
typealias DragSignalHandlerClosureHolder = DualClosureHolder<WidgetRef, Gdk.DragContextRef, Void>

/// Internal type for Dragging SignalHandler closure holder
typealias DragDataGetSignalHandlerClosureHolder = Closure5Holder<WidgetRef, Gdk.DragContextRef, UnsafeMutablePointer<GtkSelectionData>?, guint, guint, Void>

/// Internal type for Dragging SignalHandler closure holder
typealias DragDataReceivedSignalHandlerClosureHolder = Closure7Holder<WidgetRef, Gdk.DragContextRef, gint, gint, UnsafeMutablePointer<GtkSelectionData>?, guint, guint32, Void>

/// Widget protocol convenience methods
public extension WidgetProtocol {
    /// Return a reference to the style context
    public var styleContextRef: StyleContextRef {
        return StyleContextRef(styleContext)
    }

    /// Connection helper function
    private func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: WidgetSignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer, gpointer) -> gboolean) -> CUnsignedLong {
        let opaqueHolder = Unmanaged.passRetained(data).toOpaque()
        let callback = unsafeBitCast(handler, to: Callback.self)
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
    private func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: DragSignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer, gpointer) -> Void) -> CUnsignedLong {
        let opaqueHolder = Unmanaged.passRetained(data).toOpaque()
        let callback = unsafeBitCast(handler, to: Callback.self)
        let rv = signalConnectData(detailedSignal: name, cHandler: callback, data: opaqueHolder, destroyData: {
            if let swift = $0 {
                let holder = Unmanaged<DragSignalHandlerClosureHolder>.fromOpaque(swift)
                holder.release()
            }
            let _ = $1
        }, connectFlags: flags)
        return rv
    }

    /// Connection helper function
    private func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: DragDataGetSignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer, gpointer, guint, guint, gpointer) -> Void) -> CUnsignedLong {
        let opaqueHolder = Unmanaged.passRetained(data).toOpaque()
        let callback = unsafeBitCast(handler, to: Callback.self)
        let rv = signalConnectData(detailedSignal: name, cHandler: callback, data: opaqueHolder, destroyData: {
            if let swift = $0 {
                let holder = Unmanaged<DragDataGetSignalHandlerClosureHolder>.fromOpaque(swift)
                holder.release()
            }
            let _ = $1
        }, connectFlags: flags)
        return rv
    }

    /// Connection helper function
    private func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: DragDataReceivedSignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer, gint, gint, gpointer, guint, guint32, gpointer) -> Void) -> CUnsignedLong {
        let opaqueHolder = Unmanaged.passRetained(data).toOpaque()
        let callback = unsafeBitCast(handler, to: Callback.self)
        let rv = signalConnectData(detailedSignal: name, cHandler: callback, data: opaqueHolder, destroyData: {
            if let swift = $0 {
                let holder = Unmanaged<DragDataReceivedSignalHandlerClosureHolder>.fromOpaque(swift)
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
    public func connectSignal(name: UnsafePointer<gchar>, flags f: ConnectFlags = ConnectFlags(0), handler: @escaping WidgetSignalHandler) -> CUnsignedLong {
        let rv = _connect(signal: name, flags: f, data: DualClosureHolder(handler)) {
            let holder = Unmanaged<WidgetSignalHandlerClosureHolder>.fromOpaque($2).takeUnretainedValue()
            let rv: gboolean = holder.call(WidgetRef(raw: $0), Cairo.ContextRef(raw: $1)) ? 1 : 0
            return rv
        }
        return rv
    }

    /// Connects a (WidgetRef,Gdk.DragContextRef) -> Void closure or function to a signal for
    /// the receiver object.  Similar to g_signal_connect(), but allows
    /// to provide a Swift closure that can capture its surrounding context.
    @discardableResult
    public func connectDrag(signal name: UnsafePointer<gchar>, flags f: ConnectFlags = ConnectFlags(0), handler: @escaping DragSignalHandler) -> CUnsignedLong {
        let rv = _connect(signal: name, flags: f, data: DualClosureHolder(handler)) {
            let holder = Unmanaged<DragSignalHandlerClosureHolder>.fromOpaque($2).takeUnretainedValue()
            holder.call(WidgetRef(raw: $0), Gdk.DragContextRef(raw: $1))
        }
        return rv
    }

    /// Connect a `(WidgetRef, Gdk.DragContextRef, UnsafeMutablePointer<GtkSelectionData>?, guint, guint) -> Void` closure or function to a widget signal for
    /// the receiver object.  Similar to g_signal_connect(), but allows
    /// to provide a Swift closure that can capture its surrounding context.
    @discardableResult
    public func connectDragDataGet(signal name: UnsafePointer<gchar>, flags f: ConnectFlags = ConnectFlags(0), handler: @escaping DragDataGetSignalHandler) -> CUnsignedLong {
        let rv = _connect(signal: name, flags: f, data: DragDataGetSignalHandlerClosureHolder(handler)) {
            let holder = Unmanaged<DragDataGetSignalHandlerClosureHolder>.fromOpaque($5).takeUnretainedValue()
            holder.call(WidgetRef(raw: $0), Gdk.DragContextRef(raw: $1), $2.assumingMemoryBound(to: GtkSelectionData.self), $3, $4)
        }
        return rv
    }

    /// Connect a `(WidgetRef, Gdk.DragContextRef, gint, gint, UnsafeMutablePointer<GtkSelectionData>?, guint, guint32) -> Void` closure or function to a widget signal for
    /// the receiver object.  Similar to g_signal_connect(), but allows
    /// to provide a Swift closure that can capture its surrounding context.
    @discardableResult
    public func connectDragDataReceived(signal name: UnsafePointer<gchar>, flags f: ConnectFlags = ConnectFlags(0), handler: @escaping DragDataReceivedSignalHandler) -> CUnsignedLong {
        let rv = _connect(signal: name, flags: f, data: DragDataReceivedSignalHandlerClosureHolder(handler)) {
            let holder = Unmanaged<DragDataReceivedSignalHandlerClosureHolder>.fromOpaque($7).takeUnretainedValue()
            holder.call(WidgetRef(raw: $0), Gdk.DragContextRef(raw: $1), $2, $3, $4.assumingMemoryBound(to: GtkSelectionData.self), $5, $6)
        }
        return rv
    }

    /// Connects a (WidgetRef,Cairo.Context)) -> Void closure or function to a box signal for
    /// the receiver object.  Similar to g_signal_connect(), but allows
    /// to provide a Swift closure that can capture its surrounding context.
    @discardableResult
    public func connect<T>(signal s: T, flags f: ConnectFlags = ConnectFlags(0), handler: @escaping WidgetSignalHandler) -> CUnsignedLong where T: SignalNameProtocol {
        return connectSignal(name: s.rawValue, flags: f, handler: handler)
    }

    /// Connects a (WidgetRef,Cairo.Context) -> Bool closure or function to a box signal for
    /// the receiver object.  Similar to g_signal_connect(), but allows
    /// to provide a Swift closure that can capture its surrounding context.
    @discardableResult
    public func connect(signal: WidgetSignalName, flags f: ConnectFlags = ConnectFlags(0), handler: @escaping WidgetSignalHandler) -> CUnsignedLong {
        return connectSignal(name: signal.rawValue, flags: f, handler: handler)
    }

    /// Connects a (WidgetRef,Cairo.Context) -> Bool closure or function to the "draw"
    /// signal of the receiver object.  Similar to g_signal_connect(), but allows
    /// to provide a Swift closure that can capture its surrounding context.
    @discardableResult
    public func onDraw(flags f: ConnectFlags = ConnectFlags(0), handler: @escaping WidgetSignalHandler) -> CUnsignedLong {
        return connectSignal(name: WidgetSignalName.draw.rawValue, flags: f, handler: handler)
    }

    /// Connect a `(WidgetRef, Gdk.DragContextRef) -> Void` closure or function to a widget signal for the receiver.
    ///
    /// - Parameters:
    ///   - f: connection flags (defaults to `0`)
    ///   - handler: signal handler
    /// - Returns: the corresponding return value of `g_signal_connect()`
    @discardableResult
    public func onDragBegin(flags f: ConnectFlags = ConnectFlags(0), handler: @escaping DragSignalHandler) -> CUnsignedLong {
        return connectDrag(signal: WidgetSignalName.dragBegin.rawValue, flags: f, handler: handler)
    }

    /// Connect a `(WidgetRef, Gdk.DragContextRef, UnsafeMutablePointer<GtkSelectionData>?, guint, guint) -> Void` closure or function to a widget signal for the receiver.
    ///
    /// - Parameters:
    ///   - f: connection flags (defaults to `0`)
    ///   - handler: signal handler
    /// - Returns: the corresponding return value of `g_signal_connect()`
    @discardableResult
    public func onDragDataGet(flags f: ConnectFlags = ConnectFlags(0), handler: @escaping DragDataGetSignalHandler) -> CUnsignedLong {
        return connectDragDataGet(signal: WidgetSignalName.dragDataGet.rawValue, flags: f, handler: handler)
    }

    /// Connect a `(WidgetRef, Gdk.DragContextRef, gint, gint, UnsafeMutablePointer<GtkSelectionData>?, guint, guint32) -> Void` closure or function to a widget signal for the receiver.
    ///
    /// - Parameters:
    ///   - f: connection flags (defaults to `0`)
    ///   - handler: signal handler
    /// - Returns: the corresponding return value of `g_signal_connect()`
    @discardableResult
    public func onDragDataReceived(flags f: ConnectFlags = ConnectFlags(0), handler: @escaping DragDataReceivedSignalHandler) -> CUnsignedLong {
        return connectDragDataReceived(signal: WidgetSignalName.dragDataReceived.rawValue, flags: f, handler: handler)
    }
}


/// Widget convenience methods
public extension Widget {
}

public extension WidgetRef {
    public init(_ object: UnsafeMutablePointer<GObject>) {
        ptr = UnsafeMutablePointer(object)
    }
}
