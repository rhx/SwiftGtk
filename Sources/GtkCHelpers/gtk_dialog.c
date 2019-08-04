#include "gtk_dialog.h"

/// Convenience function to create a dialog with a single button.
/// This creates a new GtkDialog with title `title` (or `NULL` for the default title; see gtk_window_set_title())
/// and transient parent parent (or NULL for none; see gtk_window_set_transient_for()).
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
GtkWidget *gtk_c_helper_dialog_new_with_button(const gchar *title, GtkWindow *parent, GtkDialogFlags flags, const gchar *first_button_text, GtkResponseType response_type)
{
    return gtk_dialog_new_with_buttons(title, parent, flags, first_button_text, response_type, NULL);
}

/// Convenience function to create a dialog with two buttons.
/// This creates a new GtkDialog with title `title` (or NULL for the default title; see gtk_window_set_title())
/// and transient parent parent (or NULL for none; see gtk_window_set_transient_for()).
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
/// @param title Title of the dialog
/// @param parent parent window
/// @param flags flags to use such as `GTK_DIALOG_MODAL`
/// @param first_button_text text to display for the first button
/// @param first_response_type any positive number, or one of the values in the `GtkResponseType` enumeration.
/// @param second_button_text text to display for the second button
/// @param second_response_type any positive number, or one of the values in the `GtkResponseType` enumeration.
GtkWidget *gtk_c_helper_dialog_new_with_two_buttons(const gchar *title, GtkWindow *parent, GtkDialogFlags flags, const gchar *first_button_text, GtkResponseType first_response_type, const gchar *second_button_text, GtkResponseType second_response_type)
{
    return gtk_dialog_new_with_buttons(title, parent, flags, first_button_text, first_response_type, second_button_text, second_response_type, NULL);
}

/// Convenience function to create a dialog with three buttons.
/// This creates a new GtkDialog with title `title` (or NULL for the default title; see gtk_window_set_title())
/// and transient parent parent (or NULL for none; see gtk_window_set_transient_for()).
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
/// @param title Title of the dialog
/// @param parent parent window
/// @param flags flags to use such as `GTK_DIALOG_MODAL`
/// @param first_button_text text to display for the first button
/// @param first_response_type any positive number, or one of the values in the `GtkResponseType` enumeration.
/// @param second_button_text text to display for the second button
/// @param second_response_type any positive number, or one of the values in the `GtkResponseType` enumeration.
/// @param third_button_text text to display for the second button
/// @param third_response_type any positive number, or one of the values in the `GtkResponseType` enumeration.
GtkWidget *gtk_c_helper_dialog_new_with_three_buttons(const gchar *title, GtkWindow *parent, GtkDialogFlags flags, const gchar *first_button_text, GtkResponseType first_response_type, const gchar *second_button_text, GtkResponseType second_response_type, const gchar *third_button_text, GtkResponseType third_response_type)
{
    return gtk_dialog_new_with_buttons(title, parent, flags, first_button_text, first_response_type, second_button_text, second_response_type, third_button_text, third_response_type, NULL);
}

/// Creates a new message dialog,
/// which is a simple dialog with some text the user may want to see.
/// When the user clicks a button a “response” signal is emitted
/// with response IDs from `GtkResponseType` corresponding to the buttons.
/// See GtkDialog for more details.
/// @param parent parent window or `nil`
/// @param flags flags to use such as `GTK_DIALOG_MODAL`
/// @param type message type such as `GTK_MESSAGE_INFO`
/// @param buttons button types, such as `GTK_BUTTONS_OK_CANCEL`
/// @param text content text
GtkWidget *gtk_c_helper_message_dialog_new_with_button(GtkWindow *parent, GtkDialogFlags flags, GtkMessageType type, GtkButtonsType buttons, const gchar *text)
{
    return gtk_message_dialog_new(parent, flags, type, buttons, "%s", text);
}

/// Creates a new message dialog,
/// which is a simple dialog with some Pango markup the user may want to see.
/// When the user clicks a button a “response” signal is emitted
/// with response IDs from `GtkResponseType` corresponding to the buttons.
/// See GtkDialog for more details.
/// @param parent parent window or `nil`
/// @param flags flags to use such as `GTK_DIALOG_MODAL`
/// @param type message type such as `GTK_MESSAGE_INFO`
/// @param buttons button types, such as `GTK_BUTTONS_OK_CANCEL`
/// @param markup content markup
GtkWidget *gtk_c_helper_message_dialog_new_markup_with_button(GtkWindow *parent, GtkDialogFlags flags, GtkMessageType type, GtkButtonsType buttons, const gchar *markup)
{
    return gtk_message_dialog_new_with_markup(parent, flags, type, buttons, "%s", markup);
}

/// Convenience function to set the secondary text for a message dialog.
/// @param message_dialog  message dialog to set the secondary text for
/// @param text secondary text to display
void gtk_c_helper_message_dialog_set_secondary_text(GtkMessageDialog *message_dialog, const gchar *text) {
    gtk_message_dialog_format_secondary_text(message_dialog, "%s", text);
}

/// Convenience function to set the secondary markup for a message dialog.
/// @param message_dialog  message dialog to set the secondary text for
/// @param text secondary text to display
void gtk_c_helper_message_dialog_set_secondary_markup(GtkMessageDialog *message_dialog, const gchar *text) {
    gtk_message_dialog_format_secondary_markup(message_dialog, "%s", text);
}

/// Convenience method to create a file chooser dialog with two buttons.
/// @param title title of the dialog
/// @param parent parent window or `nil`
/// @param action file chooser action such as `GTK_FILE_CHOOSER_ACTION_OPEN`
/// @param first_button_text title of the first button
/// @param first_response_type any positive number, or one of the values in the `GtkResponseType` enumeration.
/// @param second_button_text title of the second button
/// @param second_response_type any positive number, or one of the values in the `GtkResponseType` enumeration.
GtkWidget *gtk_c_helper_file_chooser_dialog_new_with_two_buttons(const gchar *title, GtkWindow *parent, GtkFileChooserAction action, const gchar *first_button_text, GtkResponseType first_response_type, const gchar *second_button_text, GtkResponseType second_response_type)
{
    return gtk_file_chooser_dialog_new(title, parent, action, first_button_text, first_response_type, second_button_text, second_response_type, NULL);
}
