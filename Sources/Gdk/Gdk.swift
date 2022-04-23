//
//  Gdk.swift
//  SwiftGdk
//
//  Created by Rene Hexel on 3/6/16.
//  Copyright © 2016, 2018, 2021 Rene Hexel.  All rights reserved.
//
import CGdk
import GLib

/// A callback function or closure that runs on a different thread
public typealias ThreadCallback = () -> Bool

/// A closure holder for a thread callback
@usableFromInline typealias ThreadCallbackHolder = ClosureHolder<Void, Bool>

/// Adds a closure holder containing a closure or function
/// to be called whenever there are no higher priority events pending.
/// If the function returns false it is automatically removed
/// from the list of event sources and will not be called again.
/// - Parameters:
///   - p: The priority to run, such as `PRIORITY_HIGH_IDLE`
///   - data: the callback holder
///   - handler: The handler wrapping the closure holder
/// - Returns: The ID (greater than 0) of the event source.
@usableFromInline func _threadsAddIdle(priority p: Int32 = PRIORITY_DEFAULT_IDLE, data: ThreadCallbackHolder, handler: @convention(c) @escaping (gpointer) -> gboolean) -> Int {
    let opaqueHolder = Unmanaged.passRetained(data).toOpaque()
    let callback = unsafeBitCast(handler, to: GSourceFunc.self)
    let rv = threadsAddIdleFull(priority: Int(p), function: callback, data: opaqueHolder, notify: {
        if let swift = $0 {
            let holder = Unmanaged<ThreadCallbackHolder>.fromOpaque(swift)
            holder.release()
        }
    })
    return rv
}

/// Adds a closure or function to be called whenever there
/// are no higher priority events pending.
/// If the function returns false it is automatically removed
/// from the list of event sources and will not be called again.
/// - Parameters:
///   - p: The priority to run, such as `PRIORITY_HIGH_IDLE`
///   - callback: The callback function or closure to call
/// - Returns: The ID (greater than 0) of the event source.
@inlinable public func threadsAddIdle(priority p: Int32 = PRIORITY_DEFAULT_IDLE, callback: @escaping ThreadCallback) -> Int {
    let rv = _threadsAddIdle(data: ThreadCallbackHolder(callback)) {
        let holder = Unmanaged<ThreadCallbackHolder>.fromOpaque($0).takeUnretainedValue()
        let rv: gboolean = holder.call(()) ? 1 : 0
        return rv
    }
    return rv
}
