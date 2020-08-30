//
//  Dialog.swift
//  Gtk
//
//  Created by Rene Hexel on 4/8/19.
//  Copyright © 2019, 2020 Rene Hexel.  All rights reserved.
//
import CGtk
import GtkCHelpers

public extension Dialog {
    /// Convenience constructor to create a dialog with a single button.
    /// This creates a new GtkDialog with title `title` (or `NULL` for the default title; see gtk_window_set_title()).
    /// The `flags` argument can be used to make the dialog modal (GTK_DIALOG_MODAL)
    /// and/or to have it destroyed along with its transient parent (GTK_DIALOG_DESTROY_WITH_PARENT).
    /// After `flags`, the button text and response ID pairs should be listed.
    /// The button text can be an arbitrary text.
    /// If the user clicks the dialog button, `GtkDialog` will emit the "response" signal
    /// with the corresponding response ID.
    /// If a GtkDialog receives the “delete-event” signal, it will emit ::response
    /// with a response ID of `GTK_RESPONSE_DELETE_EVENT`.
    /// However, destroying a dialog does not emit the ::response signal;
    /// so be careful relying on ::response when using the `GTK_DIALOG_DESTROY_WITH_PARENT` flag.
    /// Buttons are from left to right, so the first button in the list will be the leftmost button in the dialog.
    /// @param title Title of the dialog
    /// @param parent parent window
    /// @param flags flags to use such as `GTK_DIALOG_MODAL`
    /// @param first_button_text text to display for the button
    /// @param response_type any positive number, or one of the values in the `GtkResponseType` enumeration.
    /// - Parameter title: Title of the dialog
    /// - Parameter flags: flags to use such as `.modal` (default) or `.destroy_with_parent`
    /// - Parameter text: title of the  button
    /// - Parameter responseType: response type for the button (default: `.accept`)
    @inlinable convenience init(title: UnsafePointer<gchar>! = nil, flags: DialogFlags = .modal, text: String, responseType: ResponseType = .ok) {
        self.init(retainingCPointer: gtk_c_helper_dialog_new_with_button(title, nil, flags.value, text, responseType))
    }

    /// Convenience constructor to create a dialog with a single button.
    /// This creates a new GtkDialog with title `title` (or `NULL` for the default title; see gtk_window_set_title())
    /// and transient parent parent.
    /// The `flags` argument can be used to make the dialog modal (GTK_DIALOG_MODAL)
    /// and/or to have it destroyed along with its transient parent (GTK_DIALOG_DESTROY_WITH_PARENT).
    /// After `flags`, the button text and response ID pairs should be listed.
    /// The button text can be an arbitrary text.
    /// If the user clicks the dialog button, `GtkDialog` will emit the "response" signal
    /// with the corresponding response ID.
    /// If a GtkDialog receives the “delete-event” signal, it will emit ::response
    /// with a response ID of `GTK_RESPONSE_DELETE_EVENT`.
    /// However, destroying a dialog does not emit the ::response signal;
    /// so be careful relying on ::response when using the `GTK_DIALOG_DESTROY_WITH_PARENT` flag.
    /// Buttons are from left to right, so the first button in the list will be the leftmost button in the dialog.
    /// @param title
    /// @param parent
    /// @param flags flags to use such as `GTK_DIALOG_MODAL`
    /// @param first_button_text text to display for the button
    /// @param response_type any positive number, or one of the values in the `GtkResponseType` enumeration.
    /// - Parameter title: Title of the dialog
    /// - Parameter parent: parent window
    /// - Parameter flags: flags to use such as `.modal` (default) or `.destroy_with_parent`
    /// - Parameter text: title of the  button
    /// - Parameter responseType: response type for the button
    @inlinable convenience init<W: WindowProtocol>(title: UnsafePointer<gchar>! = nil, parent: W, flags: DialogFlags = .modal, text: String, responseType: ResponseType = .ok) {
        let dialog = parent.window_ptr.withMemoryRebound(to: GtkWindow.self, capacity: 1) {
            gtk_c_helper_dialog_new_with_button(title, $0, flags.value, text, responseType)!
        }
        self.init(retainingCPointer: dialog)
    }

    /// Convenience constructor to create a dialog with two buttons.
    /// This creates a new GtkDialog with title `title` (or NULL for the default title; see gtk_window_set_title())
    /// and transient parent parent.
    /// The `flags` argument can be used to make the dialog modal (GTK_DIALOG_MODAL)
    /// and/or to have it destroyed along with its transient parent (GTK_DIALOG_DESTROY_WITH_PARENT).
    /// After `flags`, the button text and response ID pairs should be listed.
    /// Each button text can be an arbitrary text.
    /// If the user clicks the dialog button, `GtkDialog` will emit the "response" signal
    /// with the corresponding response ID.
    /// If a GtkDialog receives the “delete-event” signal, it will emit ::response
    /// with a response ID of `GTK_RESPONSE_DELETE_EVENT`.
    /// However, destroying a dialog does not emit the ::response signal;
    /// so be careful relying on ::response when using the `GTK_DIALOG_DESTROY_WITH_PARENT` flag.
    /// Buttons are from left to right, so the first button in the list will be the leftmost button in the dialog.
    /// - Parameter title: Title of the dialog
    /// - Parameter flags: flags to use such as `.modal` (default) or `.destroy_with_parent`
    /// - Parameter firstText: title of the first button
    /// - Parameter firstResponseType: response type for the first button
    /// - Parameter secondText: title of the second button
    /// - Parameter secondResponseType: response type for the second button
    @inlinable convenience init(title: UnsafePointer<gchar>! = nil, flags: DialogFlags = .modal, firstText: String, firstResponseType: ResponseType = .cancel, secondText: String, secondResponseType: ResponseType = .ok) {
        self.init(retainingCPointer: gtk_c_helper_dialog_new_with_two_buttons(title, nil, flags.value, firstText, firstResponseType, secondText, secondResponseType))
    }

    /// Convenience constructor to create a dialog with two buttons.
    /// This creates a new GtkDialog with title `title` (or NULL for the default title; see gtk_window_set_title())
    /// and transient parent parent.
    /// The `flags` argument can be used to make the dialog modal (GTK_DIALOG_MODAL)
    /// and/or to have it destroyed along with its transient parent (GTK_DIALOG_DESTROY_WITH_PARENT).
    /// After `flags`, the button text and response ID pairs should be listed.
    /// Each button text can be an arbitrary text.
    /// If the user clicks the dialog button, `GtkDialog` will emit the "response" signal
    /// with the corresponding response ID.
    /// If a GtkDialog receives the “delete-event” signal, it will emit ::response
    /// with a response ID of `GTK_RESPONSE_DELETE_EVENT`.
    /// However, destroying a dialog does not emit the ::response signal;
    /// so be careful relying on ::response when using the `GTK_DIALOG_DESTROY_WITH_PARENT` flag.
    /// Buttons are from left to right, so the first button in the list will be the leftmost button in the dialog.
    /// - Parameter title: Title of the dialog
    /// - Parameter parent: parent window
    /// - Parameter flags: flags to use such as `.modal` (default) or `.destroy_with_parent`
    /// - Parameter firstText: title of the first button
    /// - Parameter firstResponseType: response type for the first button
    /// - Parameter secondText: title of the second button
    /// - Parameter secondResponseType: response type for the second button
    @inlinable convenience init<W: WindowProtocol>(title: UnsafePointer<gchar>! = nil, parent: W, flags: DialogFlags = .modal, firstText: String, firstResponseType: ResponseType = .cancel, secondText: String, secondResponseType: ResponseType = .ok) {
        let dialog = parent.window_ptr.withMemoryRebound(to: GtkWindow.self, capacity: 1) {
            gtk_c_helper_dialog_new_with_two_buttons(title, $0, flags.value, firstText, firstResponseType, secondText, secondResponseType)!
        }
        self.init(retainingCPointer: dialog)
    }

    /// Convenience constructor to create a dialog with three buttons.
    /// This creates a new GtkDialog with title `title` (or NULL for the default title; see gtk_window_set_title())
    /// and transient parent parent.
    /// The `flags` argument can be used to make the dialog modal (GTK_DIALOG_MODAL)
    /// and/or to have it destroyed along with its transient parent (GTK_DIALOG_DESTROY_WITH_PARENT).
    /// After `flags`, the button text and response ID pairs should be listed.
    /// Each button text can be an arbitrary text.
    /// If the user clicks the dialog button, `GtkDialog` will emit the "response" signal
    /// with the corresponding response ID.
    /// If a GtkDialog receives the “delete-event” signal, it will emit ::response
    /// with a response ID of `GTK_RESPONSE_DELETE_EVENT`.
    /// However, destroying a dialog does not emit the ::response signal;
    /// so be careful relying on ::response when using the `GTK_DIALOG_DESTROY_WITH_PARENT` flag.
    /// Buttons are from left to right, so the first button in the list will be the leftmost button in the dialog.
    /// - Parameter title: Title of the dialog
    /// - Parameter flags: flags to use such as `.modal` (default) or `.destroy_with_parent`
    /// - Parameter firstText: title of the first button
    /// - Parameter firstResponseType: response type for the first button
    /// - Parameter secondText: title of the second button
    /// - Parameter secondResponseType: response type for the second button
    /// - Parameter thirdText: title of the third button
    /// - Parameter thirdResponseType: response type for the third button
    @inlinable convenience init(title: UnsafePointer<gchar>! = nil, flags: DialogFlags = .modal, firstText: String, firstResponseType: ResponseType = .help, secondText: String, secondResponseType: ResponseType = .cancel, thirdText: String, thirdResponseType: ResponseType = .ok) {
        self.init(retainingCPointer: gtk_c_helper_dialog_new_with_three_buttons(title, nil, flags.value, firstText, firstResponseType, secondText, secondResponseType, thirdText, thirdResponseType))
    }

    /// Convenience constructor to create a dialog with three buttons.
    /// This creates a new GtkDialog with title `title` (or NULL for the default title; see gtk_window_set_title())
    /// and transient parent parent.
    /// The `flags` argument can be used to make the dialog modal (GTK_DIALOG_MODAL)
    /// and/or to have it destroyed along with its transient parent (GTK_DIALOG_DESTROY_WITH_PARENT).
    /// After `flags`, the button text and response ID pairs should be listed.
    /// Each button text can be an arbitrary text.
    /// If the user clicks the dialog button, `GtkDialog` will emit the "response" signal
    /// with the corresponding response ID.
    /// If a GtkDialog receives the “delete-event” signal, it will emit ::response
    /// with a response ID of `GTK_RESPONSE_DELETE_EVENT`.
    /// However, destroying a dialog does not emit the ::response signal;
    /// so be careful relying on ::response when using the `GTK_DIALOG_DESTROY_WITH_PARENT` flag.
    /// Buttons are from left to right, so the first button in the list will be the leftmost button in the dialog.
    /// - Parameter title: Title of the dialog
    /// - Parameter parent: parent window
    /// - Parameter flags: flags to use such as `.modal` (default) or `.destroy_with_parent`
    /// - Parameter firstText: title of the first button
    /// - Parameter firstResponseType: response type for the first button
    /// - Parameter secondText: title of the second button
    /// - Parameter secondResponseType: response type for the second button
    /// - Parameter thirdText: title of the third button
    /// - Parameter thirdResponseType: response type for the third button
    @inlinable convenience init<W: WindowProtocol>(title: UnsafePointer<gchar>! = nil, parent: W, flags: DialogFlags = .modal, firstText: String, firstResponseType: ResponseType = .help, secondText: String, secondResponseType: ResponseType = .cancel, thirdText: String, thirdResponseType: ResponseType = .ok) {
        let dialog = parent.window_ptr.withMemoryRebound(to: GtkWindow.self, capacity: 1) {
            gtk_c_helper_dialog_new_with_three_buttons(title, $0, flags.value, firstText, firstResponseType, secondText, secondResponseType, thirdText, thirdResponseType)!
        }
        self.init(retainingCPointer: dialog)
    }
}
