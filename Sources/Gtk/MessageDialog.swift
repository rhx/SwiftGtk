//
//  MessageDialog.swift
//  SwiftGtk
//
//  Created by Rene Hexel on 4/8/19.
//  Copyright © 2019, 2020 Rene Hexel.  All rights reserved.
//
import CGtk
import GtkCHelpers

public extension MessageDialog {
    /// Creates a new message dialog,
    /// which is a simple dialog with some text the user may want to see.
    /// When the user clicks a button a “response” signal is emitted
    /// with response IDs from `GtkResponseType` corresponding to the buttons.
    /// See `Dialog` for more details.
    /// - Parameter title: Title of the dialog
    /// - Parameter flags: flags to use such as `.modal` (default) or `.destroy_with_parent`
    /// - Parameter type: dialog type such as `.info`, `.warning`, `.error`, etc.
    /// - Parameter buttons: buttons to display, e.g. `.ok_cancel`, `.yes_no`, `.ok`
    /// - Parameter text: text to display in the dialog box
    /// - Parameter secondaryText: optional secondary text to display
    @inlinable convenience init(flags: DialogFlags = .modal, type: MessageType = .info, buttons: ButtonsType = .ok, text: String, secondaryText: String? = nil) {
        self.init(retainingCPointer: gtk_c_helper_message_dialog_new_with_button(nil, flags.value, type, buttons, text))
        guard let secondaryText = secondaryText else { return }
        gtk_c_helper_message_dialog_set_secondary_text(self.message_dialog_ptr, secondaryText)
    }

    /// Creates a new message dialog,
    /// which is a simple dialog with some text the user may want to see.
    /// When the user clicks a button a “response” signal is emitted
    /// with response IDs from `GtkResponseType` corresponding to the buttons.
    /// See `Dialog` for more details.
    /// - Parameter parent: parent window
    /// - Parameter flags: flags to use such as `.modal` (default) or `.destroy_with_parent`
    /// - Parameter type: dialog type such as `.info`, `.warning`, `.error`, etc.
    /// - Parameter buttons: buttons to display, e.g. `.ok_cancel`, `.yes_no`, `.ok`
    /// - Parameter text: text to display in the dialog box
    /// - Parameter secondaryText: optional secondary text to display
    @inlinable convenience init<W: WindowProtocol>(parent: W, flags: DialogFlags = .modal, type: MessageType = .info, buttons: ButtonsType = .ok, text: String, secondaryText: String? = nil) {
        let dialog = parent.window_ptr.withMemoryRebound(to: GtkWindow.self, capacity: 1) {
            gtk_c_helper_message_dialog_new_with_button($0, flags.value, type, buttons, text)!
        }
        self.init(retainingCPointer: dialog)
        guard let secondaryText = secondaryText else { return }
        gtk_c_helper_message_dialog_set_secondary_text(self.message_dialog_ptr, secondaryText)
    }

    /// Creates a new message dialog,
    /// which is a simple dialog with some markup the user may want to see.
    /// When the user clicks a button a “response” signal is emitted
    /// with response IDs from `GtkResponseType` corresponding to the buttons.
    /// See `Dialog` for more details.
    /// - Parameter title: Title of the dialog
    /// - Parameter flags: flags to use such as `.modal` (default) or `.destroy_with_parent`
    /// - Parameter type: dialog type such as `.info`, `.warning`, `.error`, etc.
    /// - Parameter buttons: buttons to display, e.g. `.ok_cancel`, `.yes_no`, `.ok`
    /// - Parameter markup: markup text to display in the dialog box
    /// - Parameter secondaryMarkup: optional secondary markup to display
    @inlinable convenience init(flags: DialogFlags = .modal, type: MessageType = .info, buttons: ButtonsType = .ok, markup: String, secondaryMarkup: String? = nil) {
        self.init(retainingCPointer: gtk_c_helper_message_dialog_new_with_button(nil, flags.value, type, buttons, markup))
        guard let markup = secondaryMarkup else { return }
        gtk_c_helper_message_dialog_set_secondary_markup(self.message_dialog_ptr, markup)
    }

    /// Creates a new message dialog,
    /// which is a simple dialog with some text the user may want to see.
    /// When the user clicks a button a “response” signal is emitted
    /// with response IDs from `GtkResponseType` corresponding to the buttons.
    /// See `Dialog` for more details.
    /// - Parameter title: Title of the dialog
    /// - Parameter parent: parent window
    /// - Parameter flags: flags to use such as `.modal` (default) or `.destroy_with_parent`
    /// - Parameter type: dialog type such as `.info`, `.warning`, `.error`, etc.
    /// - Parameter buttons: buttons to display, e.g. `.ok_cancel`, `.yes_no`, `.ok`
    /// - Parameter markup: markup text to display in the dialog box
    /// - Parameter secondaryMarkup: optional secondary text to display
    @inlinable convenience init<W: WindowProtocol>(parent: W, flags: DialogFlags = .modal, type: MessageType = .info, buttons: ButtonsType = .ok, markup: String, secondaryMarkup: String? = nil) {
        let dialog = parent.window_ptr.withMemoryRebound(to: GtkWindow.self, capacity: 1) {
            gtk_c_helper_message_dialog_new_with_button($0, flags.value, type, buttons, markup)!
        }
        self.init(retainingCPointer: dialog)
        guard let markup = secondaryMarkup else { return }
        gtk_c_helper_message_dialog_set_secondary_markup(self.message_dialog_ptr, markup)
    }
}

public extension MessageDialogProtocol {
    /// Convenience method to set the secondary text of a message dialog
    /// - Parameter secondaryText: string to set the secondary text to
    @inlinable func set(secondaryText: String) {
        gtk_c_helper_message_dialog_set_secondary_text(self.message_dialog_ptr, secondaryText)
    }

    /// Convenience method to set markup for the secondary text of of a message dialog
    /// - Parameter secondaryText: string to set the secondary text to
    @inlinable func set(secondaryMarkup: String) {
        gtk_c_helper_message_dialog_set_secondary_markup(self.message_dialog_ptr, secondaryMarkup)
    }
}
