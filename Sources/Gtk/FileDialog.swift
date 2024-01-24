//
//  FileDialog.swift
//
//  Created by Rene Hexel on 24/1/2024.
//  Copyright © 2024 Rene Hexel.  All rights reserved.
//
import CGtk
import GtkCHelpers
import GLib
import GLibObject
import GIO

public extension FileDialogProtocol {
    /// Open the file dialog.
    ///
    /// This method initiates an asynchronous file selection operation,
    /// showing the dialog to the user.  The callback provided will be
    /// called when the user has selected a file name, or has cancelled
    /// the operation.
    ///
    /// - Parameters:
    ///   - parentWindow: The parent ``Window`` to attach the dialog to.
    ///   - cancellable: The ``Cancellable`` to cancel the operation.
    ///   - callback: The function or closure to call when interaction has completed.
    @inlinable
    public func open<W: WindowProtocol, C: CancellableProtocol>(parentWindow: W, cancellable: C, callback: @escaping (FileDialogRef, Result<FileRef, any Error>) -> Void) {
        open(parentWindowRef: WindowRef(parentWindow), cancellableRef: GIO.CancellableRef(cancellable), callback: callback)
    }

    /// Open the file dialog.
    ///
    /// This method initiates an asynchronous file selection operation,
    /// showing the dialog to the user.  The callback provided will be
    /// called when the user has selected a file name, or has cancelled
    /// the operation.
    ///
    /// - Parameters:
    ///   - parentWindow: The parent ``Window`` to attach the dialog to.
    ///   - callback: The function or closure to call when interaction has completed.
    @inlinable
    public func open<W: WindowProtocol>(parentWindow: W, callback: @escaping (FileDialogRef, Result<FileRef, any Error>) -> Void) {
        open(parentWindowRef: WindowRef(parentWindow), cancellableRef: nil, callback: callback)
    }

    /// Open the file dialog.
    ///
    /// This method initiates an asynchronous file selection operation,
    /// showing the dialog to the user.  The callback provided will be
    /// called when the user has selected a file name, or has cancelled
    /// the operation.
    ///
    /// - Parameters:
    ///   - callback: The function or closure to call when interaction has completed.
    @inlinable
    public func open(callback: @escaping (FileDialogRef, Result<FileRef, any Error>) -> Void) {
        open(parentWindowRef: nil, cancellableRef: nil, callback: callback)
    }

    /// Open the file dialog.
    ///
    /// This method initiates an asynchronous file selection operation,
    /// showing the dialog to the user.  The callback provided will be
    /// called when the user has selected a file name, or has cancelled
    /// the operation.
    /// - Parameters:
    ///   - parentWindowRef: A reference to the parent ``Window``.
    ///   - cancellableRef: A reference to a ``Cancellable`` to cancel the operation.
    ///   - callback: The closure to call when interaction has completed.
    @inlinable
    public func open(parentWindowRef: WindowRef?, cancellableRef: GIO.CancellableRef?, callback: @escaping (FileDialogRef, Result<FileRef, any Error>) -> Void) {
        let callbackHolder = ClosureHolder<(FileDialogRef, Result<FileRef, any Error>), Void> { callback($0.0, $0.1) }
        let asyncReadyCallbackHolder = unsafeBitCast(Unmanaged.passRetained(callbackHolder).toOpaque(), to: gpointer.self)
        open(parent: parentWindowRef, cancellable: cancellableRef, callback: {
            (dialogPtr, result, userData) in
            let callbackHolder = Unmanaged<ClosureHolder<(FileDialogRef, Result<FileRef, any Error>), Void>>.fromOpaque(userData!).takeRetainedValue()
            let dialogRef = FileDialogRef(gpointer: dialogPtr)!
            let dialogResult = Result {
                try dialogRef.openFinish(result: GIO.AsyncResultRef(result))!
            }
            callbackHolder.call((dialogRef, dialogResult))
        }, userData: asyncReadyCallbackHolder)
    }
}

// MARK: - async methods

public extension FileDialogProtocol {
    /// Asynchronously opens the file dialog.
    ///
    /// This method initiates an asynchronous file selection operation,
    /// showing the dialog to the user.  The returned result will contain
    /// the file the user has selected, or an errof if the operation was cancelled.
    /// - Returns: The result of the file dialog interaction.
    @available(macOS 10.15, *)
    @inlinable
    func open() async -> Result<FileRef, any Error> {
        await withCheckedContinuation { continuation in
            open {
                continuation.resume(returning: $1)
            }
        }
    }

    /// Asynchronously opens the file dialog.
    ///
    /// This method initiates an asynchronous file selection operation,
    /// showing the dialog to the user.  The returned result will contain
    /// the file the user has selected, or an errof if the operation was cancelled.
    /// - Parameter parentWindow: The parent ``Window`` to attach the dialog to.
    /// - Returns: The result of the file dialog interaction.
    @available(macOS 10.15, *)
    @inlinable
    func open<W: WindowProtocol>(parentWindow: W) async -> Result<FileRef, any Error> {
        await withCheckedContinuation { continuation in
            open(parentWindow: parentWindow) {
                continuation.resume(returning: $1)
            }
        }
    }

    /// Asynchronously opens the file dialog.
    ///
    /// This method initiates an asynchronous file selection operation,
    /// showing the dialog to the user.  The returned result will contain
    /// the file the user has selected, or an errof if the operation was cancelled.
    /// - Returns: The result of the file operation
    /// - Parameters:
    ///   - parentWindow: The parent ``Window`` to attach the dialog to.
    ///   - cancellable: The ``Cancellable`` to cancel the operation.
    @available(macOS 10.15, *)
    @inlinable
    func open<W: WindowProtocol, C: CancellableProtocol>(parentWindow: W, cancellable: C) async -> Result<FileRef, any Error> {
        await withCheckedContinuation { continuation in
            open(parentWindow: parentWindow, cancellable: cancellable) {
                continuation.resume(returning: $1)
            }
        }
    }

}
