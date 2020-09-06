//
//  CellRendererText.swift
//  SwiftGtk
//
//  Created by Carl Lusty on 14/7/17.
//  Copyright © 2017 Carl Lusty.  All rights reserved.
//  Copyright © 2017, 2018, 2020 Rene Hexel.  All rights reserved.
//
import CGLib
import CGtk
import GLib
import GLibObject
import GIO
import Cairo
import Gdk

/// A closure taking a reference to the current cell renderer text, the path identifying the edited cell and the new text as an argument
public typealias EditedSignalHandler = (CellRendererTextRef, String, String) -> Void

/// Internal type for Edited SignalHandler closure holder
@usableFromInline typealias EditedSignalHandlerClosureHolder = Closure3Holder<CellRendererTextRef, String, String, Void>

/// CellRendererText protocol convenience methods
public extension CellRendererTextProtocol {
    /// Connection helper function
    @usableFromInline internal func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: EditedSignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> Void) -> Int {
        let opaqueHolder = Unmanaged.passRetained(data).toOpaque()
        let callback = unsafeBitCast(handler, to: GCallback.self)
        let rv = signalConnectData(detailedSignal: name, cHandler: callback, data: opaqueHolder, destroyData: {
            if let swift = $0 {
                let holder = Unmanaged<EditedSignalHandlerClosureHolder>.fromOpaque(swift)
                holder.release()
            }
            let _ = $1
        }, connectFlags: flags)
        return rv
    }

    /// Connects a (CellRendererTextRef, UnsafeMutablePointer<gchar>, UnsafeMutablePointer<gchar>, Void) -> Void closure or function to a signal for
    /// the receiver object.  Similar to g_signal_connect(), but allows
    /// to provide a Swift closure that can capture its surrounding context.
    @discardableResult
    @inlinable func connectEdited(signal name: UnsafePointer<gchar>, flags f: ConnectFlags = ConnectFlags(0), handler: @escaping EditedSignalHandler) -> Int {
        let rv = _connect(signal: name, flags: f, data: EditedSignalHandlerClosureHolder(handler)) {
            let holder = Unmanaged<EditedSignalHandlerClosureHolder>.fromOpaque($3).takeUnretainedValue()
            holder.call(CellRendererTextRef(raw: $0), String(cString: $1.assumingMemoryBound(to: UInt8.self)), String(cString: $2.assumingMemoryBound(to: UInt8.self)))
        }
        return rv
    }

    /// Connects a (CellRendererTextRef, UnsafeMutablePointer<gchar>, UnsafeMutablePointer<gchar>, Void) -> Void closure or function to the "edited"
    /// signal of the receiver object.  Similar to g_signal_connect(), but allows
    /// to provide a Swift closure that can capture its surrounding context.
    @discardableResult
    @inlinable func onEdited(flags f: ConnectFlags = ConnectFlags(0), handler: @escaping EditedSignalHandler) -> Int {
        return connectEdited(signal: CellRendererTextSignalName.edited.rawValue, flags: f, handler: handler)
    }
}
