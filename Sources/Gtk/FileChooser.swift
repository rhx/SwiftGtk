//
//  FileChooser.swift
//  SwiftGtk
//
//  Created by Rene Hexel on 4/8/19.
//  Copyright © 2019, 2020 Rene Hexel.  All rights reserved.
//
import CGtk
import GtkCHelpers
import GLib
import GLibObject
import GIO

public extension FileChooserDialog {
    /// Convenience constructor to create a file chooser dialog with two buttons.
    /// - Parameter title: Title of the dialog
    /// - Parameter action: file chooser action kind, such as `.open`, `.save`, `.selectFolder`
    /// - Parameter firstText: title of the first button
    /// - Parameter firstResponseType: response type of the first button
    /// - Parameter secondText: title of the second button
    /// - Parameter secondResponseType: response type of the second button
    @inlinable convenience init(title: UnsafePointer<gchar>! = nil, action: FileChooserAction = .open, firstText: String, firstResponseType: ResponseType = .cancel, secondText: String, secondResponseType: ResponseType = .ok) {
        self.init(retainingCPointer: gtk_c_helper_file_chooser_dialog_new_with_two_buttons(title, nil, action, firstText, firstResponseType, secondText, secondResponseType))
    }

    /// Convenience constructor to create a file chooser dialog with two buttons.
    /// - Parameter title: Title of the dialog
    /// - Parameter parent: parent window
    /// - Parameter action: file chooser action kind, such as `.open`, `.save`, `.selectFolder`
    /// - Parameter firstText: title of the first button
    /// - Parameter firstResponseType: response type of the first button
    /// - Parameter secondText: title of the second button
    /// - Parameter secondResponseType: response type of the second button
    @inlinable convenience init<W: WindowProtocol>(title: UnsafePointer<gchar>! = nil, parent: W, action: FileChooserAction = .open, firstText: String, firstResponseType: ResponseType = .cancel, secondText: String, secondResponseType: ResponseType = .ok) {
        let dialog = parent.window_ptr.withMemoryRebound(to: GtkWindow.self, capacity: 1) {
            gtk_c_helper_file_chooser_dialog_new_with_two_buttons(title, $0, action, firstText, firstResponseType, secondText, secondResponseType)!
        }
        self.init(retainingCPointer: dialog)
    }
}
