//
//  SwiftGIOConvenienceAdditions.swift
//  GIO
//
//  Created by Rene Hexel on 20/6/16.
//  Copyright © 2016, 2018, 2019, 2020 Rene Hexel.
//  All Rights Reserved
//
//

import CGLib
import GLib
import GLibObject

//#if os(Linux)
//public struct GNativeSocketAddress {}
//#endif

/// Convenience additions for Cancellables
public extension CancellableProtocol {
    /// Convenience function to connect to the #GCancellable::cancelled
    /// signal. Also handles the race condition that may happen
    /// if the cancellable is cancelled right before connecting.
    ///
    /// @data_destroy_func will be called when the handler is
    /// disconnected, or immediately if the cancellable is already
    /// cancelled.
    ///
    /// @callback is called at most once, either directly at the
    /// time of the connect if @cancellable is already cancelled,
    /// or when @cancellable is cancelled in some thread.
    ///
    /// See #GCancellable::cancelled for details on how to use this.
    ///
    /// Since GLib 2.40, the lock protecting @cancellable is not held when
    /// @callback is invoked.  This lifts a restriction in place for
    /// earlier GLib versions which now makes it easier to write cleanup
    /// code that unconditionally invokes e.g. g_cancellable_cancel().
    func connect<T>(data: UnsafePointer<T>? = nil, dataDestroyFunc: GLib.DestroyNotify? = nil, callback c: @escaping GLibObject.Callback) -> Int {
        let d = data.map { UnsafeMutableRawPointer(mutating: $0) } ?? UnsafeMutableRawPointer(ptr)
        let f = dataDestroyFunc ?? { _ in }
        return connect(callback: c, data: d, dataDestroyFunc: f)
    }
}
