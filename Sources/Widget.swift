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

/// Widget protocol convenience methods
public extension WidgetProtocol {
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

    /// Connects a (WidgetRef,Cairo.Context) -> Void closure or function to a signal for
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
}


/// Widget convenience methods
public extension Widget {
}

public extension WidgetRef {
    public init(_ object: UnsafeMutablePointer<GObject>) {
        ptr = UnsafeMutablePointer(object)
    }
}

