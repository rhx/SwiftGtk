//
//  SwiftGIOConvenienceAdditions.swift
//  GIO
//
//  Created by Rene Hexel on 20/6/16.
//  Copyright © 2016, 2018, 2019, 2020, 2024 Rene Hexel.
//  All Rights Reserved
//
//

import CGLib
import GLib
import GLibObject

/// Convenience additions for Cancellables
public extension CancellableProtocol {
    /// Convenience method to connect to the ``cancelledSignal``.
    ///
    /// This method also handles the race condition that may happen
    /// if the cancellable is cancelled right before connecting.
    ///
    /// The `dataDestroyFunc` will be called when the handler is
    /// disconnected, or immediately if the cancellable is already
    /// cancelled.
    ///
    /// `callback` is called at most once, either directly at the
    /// time of the connect if the ``Cancellable`` is already cancelled,
    /// or when the ``Cancellable`` is cancelled in some thread.
    ///
    /// See ``isCancelled`` for details on how to use this.
    ///
    /// Since GLib 2.40, the lock protecting the ``Cancellable`` is not held when
    /// `callback` is invoked.  This lifts a restriction in place for
    /// earlier GLib versions, which now makes it easier to write cleanup
    /// code that unconditionally invokes e.g. ``cancel()``.
    /// - Parameters:
    ///   - data: Pointer to the data to pass to the callback
    ///   - dataDestroyFunc: Function to call to free the data.
    ///   - callback: Callback to call when the cancellable is cancelled.
    /// - Returns: The handler ID (always greater than 0).
    @inlinable
    func connect<T>(data: UnsafePointer<T>? = nil, dataDestroyFunc: GLib.DestroyNotify? = nil, callback: @escaping GLibObject.Callback) -> Int {
        let d = data.map { UnsafeMutableRawPointer(mutating: $0) } ?? UnsafeMutableRawPointer(ptr)
        let f = dataDestroyFunc ?? { _ in }
        return connect(callback: callback, data: d, dataDestroyFunc: f)
    }
}
