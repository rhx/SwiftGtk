//
//  FileChooser.swift
//  SwiftGtk
//
//  Created by Rene Hexel on 4/8/19.
//  Copyright © 2019 Rene Hexel.  All rights reserved.
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
    convenience init(title: UnsafePointer<gchar>? = nil, action: FileChooserAction = .open, firstText: String, firstResponseType: ResponseType = .cancel, secondText: String, secondResponseType: ResponseType = .ok) {
        self.init(cPointer: gtk_c_helper_file_chooser_dialog_new_with_two_buttons(title, nil, action, firstText, firstResponseType, secondText, secondResponseType))
    }

    /// Convenience constructor to create a file chooser dialog with two buttons.
    /// - Parameter title: Title of the dialog
    /// - Parameter parent: parent window
    /// - Parameter action: file chooser action kind, such as `.open`, `.save`, `.selectFolder`
    /// - Parameter firstText: title of the first button
    /// - Parameter firstResponseType: response type of the first button
    /// - Parameter secondText: title of the second button
    /// - Parameter secondResponseType: response type of the second button
    convenience init<W: WindowProtocol>(title: UnsafePointer<gchar>? = nil, parent: W, action: FileChooserAction = .open, firstText: String, firstResponseType: ResponseType = .cancel, secondText: String, secondResponseType: ResponseType = .ok) {
        let dialog = parent.ptr.withMemoryRebound(to: GtkWindow.self, capacity: 1) {
            gtk_c_helper_file_chooser_dialog_new_with_two_buttons(title, $0, action, firstText, firstResponseType, secondText, secondResponseType)!
        }
        self.init(cPointer: dialog)
    }
}

public extension FileChooserAction {
    /// convenience alias for `.select_folder`
    static let selectFolder = FileChooserAction.select_folder
    /// convenience alias for `.create_folder`
    static let createFolder = FileChooserAction.create_folder
}

//
// FileChooser members implemented by FileChooserDialog
//
public extension FileChooserDialogProtocol {
        /// Adds a 'choice' to the file chooser. This is typically implemented
        /// as a combobox or, for boolean choices, as a checkbutton. You can select
        /// a value using gtk_file_chooser_set_choice() before the dialog is shown,
        /// and you can obtain the user-selected value in the ::response signal handler
        /// using gtk_file_chooser_get_choice().
        ///
        /// Compare gtk_file_chooser_set_extra_widget().
        func addChoice(id: UnsafePointer<CChar>, label: UnsafePointer<CChar>, options: UnsafePointer<UnsafePointer<CChar>>, optionLabels option_labels: UnsafePointer<UnsafePointer<CChar>>) {
            gtk_file_chooser_add_choice(cast(ptr), id, label, cast(options), cast(option_labels))
        
        }

        /// Adds @filter to the list of filters that the user can select between.
        /// When a filter is selected, only files that are passed by that
        /// filter are displayed.
        ///
        /// Note that the @chooser takes ownership of the filter, so you have to
        /// ref and sink it if you want to keep a reference.
        func add(filter: FileFilterProtocol) {
            gtk_file_chooser_add_filter(cast(ptr), cast(filter.ptr))
        
        }

        /// Adds a folder to be displayed with the shortcut folders in a file chooser.
        /// Note that shortcut folders do not get saved, as they are provided by the
        /// application.  For example, you can use this to add a
        /// “/usr/share/mydrawprogram/Clipart” folder to the volume list.
        func addShortcut(folder: UnsafePointer<CChar>) throws -> Bool {
            var error: Optional<UnsafeMutablePointer<GError>> = nil
            let rv = gtk_file_chooser_add_shortcut_folder(cast(ptr), folder, &error)
            if let error = error {
                    throw ErrorType(error)
            }
            return Bool(rv != 0)
        }

        /// Adds a folder URI to be displayed with the shortcut folders in a file
        /// chooser.  Note that shortcut folders do not get saved, as they are provided
        /// by the application.  For example, you can use this to add a
        /// “file:///usr/share/mydrawprogram/Clipart” folder to the volume list.
        func addShortcutFolder(uri: UnsafePointer<CChar>) throws -> Bool {
            var error: Optional<UnsafeMutablePointer<GError>> = nil
            let rv = gtk_file_chooser_add_shortcut_folder_uri(cast(ptr), uri, &error)
            if let error = error {
                    throw ErrorType(error)
            }
            return Bool(rv != 0)
        }

        /// Gets the type of operation that the file chooser is performing; see
        /// gtk_file_chooser_set_action().
        func getAction() -> GtkFileChooserAction {
            let rv = gtk_file_chooser_get_action(cast(ptr))
            return rv
        }

        /// Gets the currently selected option in the 'choice' with the given ID.
        func getChoice(id: UnsafePointer<CChar>) -> String! {
            let rv = gtk_file_chooser_get_choice(cast(ptr), id)
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }

        /// Gets whether file choser will offer to create new folders.
        /// See gtk_file_chooser_set_create_folders().
        func getCreateFolders() -> Bool {
            let rv = gtk_file_chooser_get_create_folders(cast(ptr))
            return Bool(rv != 0)
        }

        /// Gets the current folder of @chooser as a local filename.
        /// See gtk_file_chooser_set_current_folder().
        ///
        /// Note that this is the folder that the file chooser is currently displaying
        /// (e.g. "/home/username/Documents"), which is not the same
        /// as the currently-selected folder if the chooser is in
        /// %GTK_FILE_CHOOSER_ACTION_SELECT_FOLDER mode
        /// (e.g. "/home/username/Documents/selected-folder/".  To get the
        /// currently-selected folder in that mode, use gtk_file_chooser_get_uri() as the
        /// usual way to get the selection.
        func getCurrentFolder() -> String! {
            let rv = gtk_file_chooser_get_current_folder(cast(ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }

        /// Gets the current folder of @chooser as #GFile.
        /// See gtk_file_chooser_get_current_folder_uri().
        func getCurrentFolderFile() -> UnsafeMutablePointer<GFile>! {
            let rv = gtk_file_chooser_get_current_folder_file(cast(ptr))
            return cast(rv)
        }

        /// Gets the current folder of @chooser as an URI.
        /// See gtk_file_chooser_set_current_folder_uri().
        ///
        /// Note that this is the folder that the file chooser is currently displaying
        /// (e.g. "file:///home/username/Documents"), which is not the same
        /// as the currently-selected folder if the chooser is in
        /// %GTK_FILE_CHOOSER_ACTION_SELECT_FOLDER mode
        /// (e.g. "file:///home/username/Documents/selected-folder/".  To get the
        /// currently-selected folder in that mode, use gtk_file_chooser_get_uri() as the
        /// usual way to get the selection.
        func getCurrentFolderURI() -> String! {
            let rv = gtk_file_chooser_get_current_folder_uri(cast(ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }

        /// Gets the current name in the file selector, as entered by the user in the
        /// text entry for “Name”.
        ///
        /// This is meant to be used in save dialogs, to get the currently typed filename
        /// when the file itself does not exist yet.  For example, an application that
        /// adds a custom extra widget to the file chooser for “file format” may want to
        /// change the extension of the typed filename based on the chosen format, say,
        /// from “.jpg” to “.png”.
        func getCurrentName() -> String! {
            let rv = gtk_file_chooser_get_current_name(cast(ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }

        /// Queries whether a file chooser is set to confirm for overwriting when the user
        /// types a file name that already exists.
        func getDoOverwriteConfirmation() -> Bool {
            let rv = gtk_file_chooser_get_do_overwrite_confirmation(cast(ptr))
            return Bool(rv != 0)
        }

        /// Gets the current extra widget; see
        /// gtk_file_chooser_set_extra_widget().
        func getExtraWidget() -> UnsafeMutablePointer<GtkWidget>! {
            let rv = gtk_file_chooser_get_extra_widget(cast(ptr))
            return cast(rv)
        }

        /// Gets the #GFile for the currently selected file in
        /// the file selector. If multiple files are selected,
        /// one of the files will be returned at random.
        ///
        /// If the file chooser is in folder mode, this function returns the selected
        /// folder.
        func getFile() -> UnsafeMutablePointer<GFile>! {
            let rv = gtk_file_chooser_get_file(cast(ptr))
            return cast(rv)
        }

        /// Gets the filename for the currently selected file in
        /// the file selector. The filename is returned as an absolute path. If
        /// multiple files are selected, one of the filenames will be returned at
        /// random.
        ///
        /// If the file chooser is in folder mode, this function returns the selected
        /// folder.
        func getFilename() -> String! {
            let rv = gtk_file_chooser_get_filename(cast(ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }

        /// Lists all the selected files and subfolders in the current folder of
        /// @chooser. The returned names are full absolute paths. If files in the current
        /// folder cannot be represented as local filenames they will be ignored. (See
        /// gtk_file_chooser_get_uris())
        func getFilenames() -> SListRef! {
            let rv = gtk_file_chooser_get_filenames(cast(ptr))
            return rv.map { SListRef($0) }
        }

        /// Lists all the selected files and subfolders in the current folder of @chooser
        /// as #GFile. An internal function, see gtk_file_chooser_get_uris().
        func getFiles() -> SListRef! {
            let rv = gtk_file_chooser_get_files(cast(ptr))
            return rv.map { SListRef($0) }
        }

        /// Gets the current filter; see gtk_file_chooser_set_filter().
        func getFilter() -> UnsafeMutablePointer<GtkFileFilter>! {
            let rv = gtk_file_chooser_get_filter(cast(ptr))
            return cast(rv)
        }

        /// Gets whether only local files can be selected in the
        /// file selector. See gtk_file_chooser_set_local_only()
        func getLocalOnly() -> Bool {
            let rv = gtk_file_chooser_get_local_only(cast(ptr))
            return Bool(rv != 0)
        }

        /// Gets the #GFile that should be previewed in a custom preview
        /// Internal function, see gtk_file_chooser_get_preview_uri().
        func getPreviewFile() -> UnsafeMutablePointer<GFile>! {
            let rv = gtk_file_chooser_get_preview_file(cast(ptr))
            return cast(rv)
        }

        /// Gets the filename that should be previewed in a custom preview
        /// widget. See gtk_file_chooser_set_preview_widget().
        func getPreviewFilename() -> String! {
            let rv = gtk_file_chooser_get_preview_filename(cast(ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }

        /// Gets the URI that should be previewed in a custom preview
        /// widget. See gtk_file_chooser_set_preview_widget().
        func getPreviewURI() -> String! {
            let rv = gtk_file_chooser_get_preview_uri(cast(ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }

        /// Gets the current preview widget; see
        /// gtk_file_chooser_set_preview_widget().
        func getPreviewWidget() -> UnsafeMutablePointer<GtkWidget>! {
            let rv = gtk_file_chooser_get_preview_widget(cast(ptr))
            return cast(rv)
        }

        /// Gets whether the preview widget set by gtk_file_chooser_set_preview_widget()
        /// should be shown for the current filename. See
        /// gtk_file_chooser_set_preview_widget_active().
        func getPreviewWidgetActive() -> Bool {
            let rv = gtk_file_chooser_get_preview_widget_active(cast(ptr))
            return Bool(rv != 0)
        }

        /// Gets whether multiple files can be selected in the file
        /// selector. See gtk_file_chooser_set_select_multiple().
        func getSelectMultiple() -> Bool {
            let rv = gtk_file_chooser_get_select_multiple(cast(ptr))
            return Bool(rv != 0)
        }

        /// Gets whether hidden files and folders are displayed in the file selector.
        /// See gtk_file_chooser_set_show_hidden().
        func getShowHidden() -> Bool {
            let rv = gtk_file_chooser_get_show_hidden(cast(ptr))
            return Bool(rv != 0)
        }

        /// Gets the URI for the currently selected file in
        /// the file selector. If multiple files are selected,
        /// one of the filenames will be returned at random.
        ///
        /// If the file chooser is in folder mode, this function returns the selected
        /// folder.
        func getURI() -> String! {
            let rv = gtk_file_chooser_get_uri(cast(ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }

        /// Lists all the selected files and subfolders in the current folder of
        /// @chooser. The returned names are full absolute URIs.
        func getURIs() -> SListRef! {
            let rv = gtk_file_chooser_get_uris(cast(ptr))
            return rv.map { SListRef($0) }
        }

        /// Gets whether a stock label should be drawn with the name of the previewed
        /// file.  See gtk_file_chooser_set_use_preview_label().
        func getUsePreviewLabel() -> Bool {
            let rv = gtk_file_chooser_get_use_preview_label(cast(ptr))
            return Bool(rv != 0)
        }

        /// Lists the current set of user-selectable filters; see
        /// gtk_file_chooser_add_filter(), gtk_file_chooser_remove_filter().
        func listFilters() -> SListRef! {
            let rv = gtk_file_chooser_list_filters(cast(ptr))
            return rv.map { SListRef($0) }
        }

        /// Queries the list of shortcut folders in the file chooser, as set by
        /// gtk_file_chooser_add_shortcut_folder_uri().
        func listShortcutFolderURIs() -> SListRef! {
            let rv = gtk_file_chooser_list_shortcut_folder_uris(cast(ptr))
            return rv.map { SListRef($0) }
        }

        /// Queries the list of shortcut folders in the file chooser, as set by
        /// gtk_file_chooser_add_shortcut_folder().
        func listShortcutFolders() -> SListRef! {
            let rv = gtk_file_chooser_list_shortcut_folders(cast(ptr))
            return rv.map { SListRef($0) }
        }

        /// Removes a 'choice' that has been added with gtk_file_chooser_add_choice().
        func removeChoice(id: UnsafePointer<CChar>) {
            gtk_file_chooser_remove_choice(cast(ptr), id)
        
        }

        /// Removes @filter from the list of filters that the user can select between.
        func remove(filter: FileFilterProtocol) {
            gtk_file_chooser_remove_filter(cast(ptr), cast(filter.ptr))
        
        }

        /// Removes a folder from a file chooser’s list of shortcut folders.
        func removeShortcut(folder: UnsafePointer<CChar>) throws -> Bool {
            var error: Optional<UnsafeMutablePointer<GError>> = nil
            let rv = gtk_file_chooser_remove_shortcut_folder(cast(ptr), folder, &error)
            if let error = error {
                    throw ErrorType(error)
            }
            return Bool(rv != 0)
        }

        /// Removes a folder URI from a file chooser’s list of shortcut folders.
        func removeShortcutFolder(uri: UnsafePointer<CChar>) throws -> Bool {
            var error: Optional<UnsafeMutablePointer<GError>> = nil
            let rv = gtk_file_chooser_remove_shortcut_folder_uri(cast(ptr), uri, &error)
            if let error = error {
                    throw ErrorType(error)
            }
            return Bool(rv != 0)
        }

        /// Selects all the files in the current folder of a file chooser.
        func selectAll() {
            gtk_file_chooser_select_all(cast(ptr))
        
        }

        /// Selects the file referred to by @file. An internal function. See
        /// _gtk_file_chooser_select_uri().
        func select(file: FileProtocol) throws -> Bool {
            var error: Optional<UnsafeMutablePointer<GError>> = nil
            let rv = gtk_file_chooser_select_file(cast(ptr), cast(file.ptr), &error)
            if let error = error {
                    throw ErrorType(error)
            }
            return Bool(rv != 0)
        }

        /// Selects a filename. If the file name isn’t in the current
        /// folder of @chooser, then the current folder of @chooser will
        /// be changed to the folder containing @filename.
        func selectFilename(String_: UnsafePointer<CChar>) -> Bool {
            let rv = gtk_file_chooser_select_filename(cast(ptr), String_)
            return Bool(rv != 0)
        }

        /// Selects the file to by @uri. If the URI doesn’t refer to a
        /// file in the current folder of @chooser, then the current folder of
        /// @chooser will be changed to the folder containing @filename.
        func select(uri: UnsafePointer<CChar>) -> Bool {
            let rv = gtk_file_chooser_select_uri(cast(ptr), uri)
            return Bool(rv != 0)
        }

        /// Sets the type of operation that the chooser is performing; the
        /// user interface is adapted to suit the selected action. For example,
        /// an option to create a new folder might be shown if the action is
        /// %GTK_FILE_CHOOSER_ACTION_SAVE but not if the action is
        /// %GTK_FILE_CHOOSER_ACTION_OPEN.
        func set(action: FileChooserAction) {
            gtk_file_chooser_set_action(cast(ptr), action)
        
        }

        /// Selects an option in a 'choice' that has been added with
        /// gtk_file_chooser_add_choice(). For a boolean choice, the
        /// possible options are "true" and "false".
        func setChoice(id: UnsafePointer<CChar>, option: UnsafePointer<CChar>) {
            gtk_file_chooser_set_choice(cast(ptr), id, option)
        
        }

        /// Sets whether file choser will offer to create new folders.
        /// This is only relevant if the action is not set to be
        /// %GTK_FILE_CHOOSER_ACTION_OPEN.
        func set(createFolders create_folders: Bool) {
            gtk_file_chooser_set_create_folders(cast(ptr), gboolean(create_folders ? 1 : 0))
        
        }

        /// Sets the current folder for @chooser from a local filename.
        /// The user will be shown the full contents of the current folder,
        /// plus user interface elements for navigating to other folders.
        ///
        /// In general, you should not use this function.  See the
        /// [section on setting up a file chooser dialog][gtkfilechooserdialog-setting-up]
        /// for the rationale behind this.
        func setCurrentFolder(String_: UnsafePointer<gchar>) -> Bool {
            let rv = gtk_file_chooser_set_current_folder(cast(ptr), String_)
            return Bool(rv != 0)
        }

        /// Sets the current folder for @chooser from a #GFile.
        /// Internal function, see gtk_file_chooser_set_current_folder_uri().
        func setCurrentFolder(file: FileProtocol) throws -> Bool {
            var error: Optional<UnsafeMutablePointer<GError>> = nil
            let rv = gtk_file_chooser_set_current_folder_file(cast(ptr), cast(file.ptr), &error)
            if let error = error {
                    throw ErrorType(error)
            }
            return Bool(rv != 0)
        }

        /// Sets the current folder for @chooser from an URI.
        /// The user will be shown the full contents of the current folder,
        /// plus user interface elements for navigating to other folders.
        ///
        /// In general, you should not use this function.  See the
        /// [section on setting up a file chooser dialog][gtkfilechooserdialog-setting-up]
        /// for the rationale behind this.
        func setCurrentFolder(uri: UnsafePointer<gchar>) -> Bool {
            let rv = gtk_file_chooser_set_current_folder_uri(cast(ptr), uri)
            return Bool(rv != 0)
        }

        /// Sets the current name in the file selector, as if entered
        /// by the user. Note that the name passed in here is a UTF-8
        /// string rather than a filename. This function is meant for
        /// such uses as a suggested name in a “Save As...” dialog.  You can
        /// pass “Untitled.doc” or a similarly suitable suggestion for the @name.
        ///
        /// If you want to preselect a particular existing file, you should use
        /// gtk_file_chooser_set_filename() or gtk_file_chooser_set_uri() instead.
        /// Please see the documentation for those functions for an example of using
        /// gtk_file_chooser_set_current_name() as well.
        func setCurrent(name: UnsafePointer<gchar>) {
            gtk_file_chooser_set_current_name(cast(ptr), name)
        
        }

        /// Sets whether a file chooser in %GTK_FILE_CHOOSER_ACTION_SAVE mode will present
        /// a confirmation dialog if the user types a file name that already exists.  This
        /// is %FALSE by default.
        ///
        /// If set to %TRUE, the @chooser will emit the
        /// #GtkFileChooser::confirm-overwrite signal when appropriate.
        ///
        /// If all you need is the stock confirmation dialog, set this property to %TRUE.
        /// You can override the way confirmation is done by actually handling the
        /// #GtkFileChooser::confirm-overwrite signal; please refer to its documentation
        /// for the details.
        func set(doOverwriteConfirmation do_overwrite_confirmation: Bool) {
            gtk_file_chooser_set_do_overwrite_confirmation(cast(ptr), gboolean(do_overwrite_confirmation ? 1 : 0))
        
        }

        /// Sets an application-supplied widget to provide extra options to the user.
        func set(extraWidget extra_widget: WidgetProtocol) {
            gtk_file_chooser_set_extra_widget(cast(ptr), cast(extra_widget.ptr))
        
        }

        /// Sets @file as the current filename for the file chooser, by changing
        /// to the file’s parent folder and actually selecting the file in list.  If
        /// the @chooser is in %GTK_FILE_CHOOSER_ACTION_SAVE mode, the file’s base name
        /// will also appear in the dialog’s file name entry.
        ///
        /// If the file name isn’t in the current folder of @chooser, then the current
        /// folder of @chooser will be changed to the folder containing @filename. This
        /// is equivalent to a sequence of gtk_file_chooser_unselect_all() followed by
        /// gtk_file_chooser_select_filename().
        ///
        /// Note that the file must exist, or nothing will be done except
        /// for the directory change.
        ///
        /// If you are implementing a save dialog,
        /// you should use this function if you already have a file name to which the
        /// user may save; for example, when the user opens an existing file and then
        /// does Save As...  If you don’t have
        /// a file name already — for example, if the user just created a new
        /// file and is saving it for the first time, do not call this function.
        /// Instead, use something similar to this:
        /// |[<!-- language="C" -->
        /// if (document_is_new)
        ///   {
        ///     // the user just created a new document
        ///     gtk_file_chooser_set_current_folder_file (chooser, default_file_for_saving);
        ///     gtk_file_chooser_set_current_name (chooser, "Untitled document");
        ///   }
        /// else
        ///   {
        ///     // the user edited an existing document
        ///     gtk_file_chooser_set_file (chooser, existing_file);
        ///   }
        /// ]|
        func set(file: FileProtocol) throws -> Bool {
            var error: Optional<UnsafeMutablePointer<GError>> = nil
            let rv = gtk_file_chooser_set_file(cast(ptr), cast(file.ptr), &error)
            if let error = error {
                    throw ErrorType(error)
            }
            return Bool(rv != 0)
        }

        /// Sets @filename as the current filename for the file chooser, by changing to
        /// the file’s parent folder and actually selecting the file in list; all other
        /// files will be unselected.  If the @chooser is in
        /// %GTK_FILE_CHOOSER_ACTION_SAVE mode, the file’s base name will also appear in
        /// the dialog’s file name entry.
        ///
        /// Note that the file must exist, or nothing will be done except
        /// for the directory change.
        ///
        /// You should use this function only when implementing a save
        /// dialog for which you already have a file name to which
        /// the user may save.  For example, when the user opens an existing file and
        /// then does Save As... to save a copy or
        /// a modified version.  If you don’t have a file name already — for
        /// example, if the user just created a new file and is saving it for the first
        /// time, do not call this function.  Instead, use something similar to this:
        /// |[<!-- language="C" -->
        /// if (document_is_new)
        ///   {
        ///     // the user just created a new document
        ///     gtk_file_chooser_set_current_name (chooser, "Untitled document");
        ///   }
        /// else
        ///   {
        ///     // the user edited an existing document
        ///     gtk_file_chooser_set_filename (chooser, existing_filename);
        ///   }
        /// ]|
        ///
        /// In the first case, the file chooser will present the user with useful suggestions
        /// as to where to save his new file.  In the second case, the file’s existing location
        /// is already known, so the file chooser will use it.
        func setFilename(String_: UnsafePointer<CChar>) -> Bool {
            let rv = gtk_file_chooser_set_filename(cast(ptr), String_)
            return Bool(rv != 0)
        }

        /// Sets the current filter; only the files that pass the
        /// filter will be displayed. If the user-selectable list of filters
        /// is non-empty, then the filter should be one of the filters
        /// in that list. Setting the current filter when the list of
        /// filters is empty is useful if you want to restrict the displayed
        /// set of files without letting the user change it.
        func set(filter: FileFilterProtocol) {
            gtk_file_chooser_set_filter(cast(ptr), cast(filter.ptr))
        
        }

        /// Sets whether only local files can be selected in the
        /// file selector. If @local_only is %TRUE (the default),
        /// then the selected file or files are guaranteed to be
        /// accessible through the operating systems native file
        /// system and therefore the application only
        /// needs to worry about the filename functions in
        /// #GtkFileChooser, like gtk_file_chooser_get_filename(),
        /// rather than the URI functions like
        /// gtk_file_chooser_get_uri(),
        ///
        /// On some systems non-native files may still be
        /// available using the native filesystem via a userspace
        /// filesystem (FUSE).
        func set(localOnly local_only: Bool) {
            gtk_file_chooser_set_local_only(cast(ptr), gboolean(local_only ? 1 : 0))
        
        }

        /// Sets an application-supplied widget to use to display a custom preview
        /// of the currently selected file. To implement a preview, after setting the
        /// preview widget, you connect to the #GtkFileChooser::update-preview
        /// signal, and call gtk_file_chooser_get_preview_filename() or
        /// gtk_file_chooser_get_preview_uri() on each change. If you can
        /// display a preview of the new file, update your widget and
        /// set the preview active using gtk_file_chooser_set_preview_widget_active().
        /// Otherwise, set the preview inactive.
        ///
        /// When there is no application-supplied preview widget, or the
        /// application-supplied preview widget is not active, the file chooser
        /// will display no preview at all.
        func set(previewWidget preview_widget: WidgetProtocol) {
            gtk_file_chooser_set_preview_widget(cast(ptr), cast(preview_widget.ptr))
        
        }

        /// Sets whether the preview widget set by
        /// gtk_file_chooser_set_preview_widget() should be shown for the
        /// current filename. When @active is set to false, the file chooser
        /// may display an internally generated preview of the current file
        /// or it may display no preview at all. See
        /// gtk_file_chooser_set_preview_widget() for more details.
        func setPreviewWidget(active: Bool) {
            gtk_file_chooser_set_preview_widget_active(cast(ptr), gboolean(active ? 1 : 0))
        
        }

        /// Sets whether multiple files can be selected in the file selector.  This is
        /// only relevant if the action is set to be %GTK_FILE_CHOOSER_ACTION_OPEN or
        /// %GTK_FILE_CHOOSER_ACTION_SELECT_FOLDER.
        func set(selectMultiple select_multiple: Bool) {
            gtk_file_chooser_set_select_multiple(cast(ptr), gboolean(select_multiple ? 1 : 0))
        
        }

        /// Sets whether hidden files and folders are displayed in the file selector.
        func set(showHidden show_hidden: Bool) {
            gtk_file_chooser_set_show_hidden(cast(ptr), gboolean(show_hidden ? 1 : 0))
        
        }

        /// Sets the file referred to by @uri as the current file for the file chooser,
        /// by changing to the URI’s parent folder and actually selecting the URI in the
        /// list.  If the @chooser is %GTK_FILE_CHOOSER_ACTION_SAVE mode, the URI’s base
        /// name will also appear in the dialog’s file name entry.
        ///
        /// Note that the URI must exist, or nothing will be done except for the
        /// directory change.
        ///
        /// You should use this function only when implementing a save
        /// dialog for which you already have a file name to which
        /// the user may save.  For example, when the user opens an existing file and then
        /// does Save As... to save a copy or a
        /// modified version.  If you don’t have a file name already — for example,
        /// if the user just created a new file and is saving it for the first time, do
        /// not call this function.  Instead, use something similar to this:
        /// |[<!-- language="C" -->
        /// if (document_is_new)
        ///   {
        ///     // the user just created a new document
        ///     gtk_file_chooser_set_current_name (chooser, "Untitled document");
        ///   }
        /// else
        ///   {
        ///     // the user edited an existing document
        ///     gtk_file_chooser_set_uri (chooser, existing_uri);
        ///   }
        /// ]|
        ///
        ///
        /// In the first case, the file chooser will present the user with useful suggestions
        /// as to where to save his new file.  In the second case, the file’s existing location
        /// is already known, so the file chooser will use it.
        func set(uri: UnsafePointer<CChar>) -> Bool {
            let rv = gtk_file_chooser_set_uri(cast(ptr), uri)
            return Bool(rv != 0)
        }

        /// Sets whether the file chooser should display a stock label with the name of
        /// the file that is being previewed; the default is %TRUE.  Applications that
        /// want to draw the whole preview area themselves should set this to %FALSE and
        /// display the name themselves in their preview widget.
        ///
        /// See also: gtk_file_chooser_set_preview_widget()
        func setUsePreviewLabel(useLabel use_label: Bool) {
            gtk_file_chooser_set_use_preview_label(cast(ptr), gboolean(use_label ? 1 : 0))
        
        }

        /// Unselects all the files in the current folder of a file chooser.
        func unselectAll() {
            gtk_file_chooser_unselect_all(cast(ptr))
        
        }

        /// Unselects the file referred to by @file. If the file is not in the current
        /// directory, does not exist, or is otherwise not currently selected, does nothing.
        func unselect(file: FileProtocol) {
            gtk_file_chooser_unselect_file(cast(ptr), cast(file.ptr))
        
        }

        /// Unselects a currently selected filename. If the filename
        /// is not in the current directory, does not exist, or
        /// is otherwise not currently selected, does nothing.
        func unselectFilename(String_: UnsafePointer<CChar>) {
            gtk_file_chooser_unselect_filename(cast(ptr), String_)
        
        }

        /// Unselects the file referred to by @uri. If the file
        /// is not in the current directory, does not exist, or
        /// is otherwise not currently selected, does nothing.
        func unselect(uri: UnsafePointer<CChar>) {
            gtk_file_chooser_unselect_uri(cast(ptr), uri)
        
        }
        var action: GtkFileChooserAction {
            /// Gets the type of operation that the file chooser is performing; see
            /// gtk_file_chooser_set_action().
            get {
                let rv = gtk_file_chooser_get_action(cast(ptr))
                return rv
            }
            /// Sets the type of operation that the chooser is performing; the
            /// user interface is adapted to suit the selected action. For example,
            /// an option to create a new folder might be shown if the action is
            /// %GTK_FILE_CHOOSER_ACTION_SAVE but not if the action is
            /// %GTK_FILE_CHOOSER_ACTION_OPEN.
            nonmutating set {
                gtk_file_chooser_set_action(cast(ptr), newValue)
            }
        }

        /// Gets whether file choser will offer to create new folders.
        /// See gtk_file_chooser_set_create_folders().
        var createFolders: Bool {
            /// Gets whether file choser will offer to create new folders.
            /// See gtk_file_chooser_set_create_folders().
            get {
                let rv = gtk_file_chooser_get_create_folders(cast(ptr))
                return Bool(rv != 0)
            }
            /// Sets whether file choser will offer to create new folders.
            /// This is only relevant if the action is not set to be
            /// %GTK_FILE_CHOOSER_ACTION_OPEN.
            nonmutating set {
                gtk_file_chooser_set_create_folders(cast(ptr), gboolean(newValue ? 1 : 0))
            }
        }

        /// Gets the current folder of @chooser as a local filename.
        /// See gtk_file_chooser_set_current_folder().
        ///
        /// Note that this is the folder that the file chooser is currently displaying
        /// (e.g. "/home/username/Documents"), which is not the same
        /// as the currently-selected folder if the chooser is in
        /// %GTK_FILE_CHOOSER_ACTION_SELECT_FOLDER mode
        /// (e.g. "/home/username/Documents/selected-folder/".  To get the
        /// currently-selected folder in that mode, use gtk_file_chooser_get_uri() as the
        /// usual way to get the selection.
        var currentFolder: String! {
            /// Gets the current folder of @chooser as a local filename.
            /// See gtk_file_chooser_set_current_folder().
            ///
            /// Note that this is the folder that the file chooser is currently displaying
            /// (e.g. "/home/username/Documents"), which is not the same
            /// as the currently-selected folder if the chooser is in
            /// %GTK_FILE_CHOOSER_ACTION_SELECT_FOLDER mode
            /// (e.g. "/home/username/Documents/selected-folder/".  To get the
            /// currently-selected folder in that mode, use gtk_file_chooser_get_uri() as the
            /// usual way to get the selection.
            get {
                let rv = gtk_file_chooser_get_current_folder(cast(ptr))
                return rv.map { String(cString: UnsafePointer<CChar>($0)) }
            }
            /// Sets the current folder for @chooser from a local filename.
            /// The user will be shown the full contents of the current folder,
            /// plus user interface elements for navigating to other folders.
            ///
            /// In general, you should not use this function.  See the
            /// [section on setting up a file chooser dialog][gtkfilechooserdialog-setting-up]
            /// for the rationale behind this.
            nonmutating set {
                let _ = gtk_file_chooser_set_current_folder(cast(ptr), newValue)
            }
        }

        /// Gets the current folder of @chooser as #GFile.
        /// See gtk_file_chooser_get_current_folder_uri().
        var currentFolderFile: UnsafeMutablePointer<GFile>! {
            /// Gets the current folder of @chooser as #GFile.
            /// See gtk_file_chooser_get_current_folder_uri().
            get {
                let rv = gtk_file_chooser_get_current_folder_file(cast(ptr))
                return cast(rv)
            }
        }

        /// Gets the current folder of @chooser as an URI.
        /// See gtk_file_chooser_set_current_folder_uri().
        ///
        /// Note that this is the folder that the file chooser is currently displaying
        /// (e.g. "file:///home/username/Documents"), which is not the same
        /// as the currently-selected folder if the chooser is in
        /// %GTK_FILE_CHOOSER_ACTION_SELECT_FOLDER mode
        /// (e.g. "file:///home/username/Documents/selected-folder/".  To get the
        /// currently-selected folder in that mode, use gtk_file_chooser_get_uri() as the
        /// usual way to get the selection.
        var currentFolderURI: String! {
            /// Gets the current folder of @chooser as an URI.
            /// See gtk_file_chooser_set_current_folder_uri().
            ///
            /// Note that this is the folder that the file chooser is currently displaying
            /// (e.g. "file:///home/username/Documents"), which is not the same
            /// as the currently-selected folder if the chooser is in
            /// %GTK_FILE_CHOOSER_ACTION_SELECT_FOLDER mode
            /// (e.g. "file:///home/username/Documents/selected-folder/".  To get the
            /// currently-selected folder in that mode, use gtk_file_chooser_get_uri() as the
            /// usual way to get the selection.
            get {
                let rv = gtk_file_chooser_get_current_folder_uri(cast(ptr))
                return rv.map { String(cString: UnsafePointer<CChar>($0)) }
            }
            /// Sets the current folder for @chooser from an URI.
            /// The user will be shown the full contents of the current folder,
            /// plus user interface elements for navigating to other folders.
            ///
            /// In general, you should not use this function.  See the
            /// [section on setting up a file chooser dialog][gtkfilechooserdialog-setting-up]
            /// for the rationale behind this.
            nonmutating set {
                let _ = gtk_file_chooser_set_current_folder_uri(cast(ptr), newValue)
            }
        }

        /// Gets the current name in the file selector, as entered by the user in the
        /// text entry for “Name”.
        ///
        /// This is meant to be used in save dialogs, to get the currently typed filename
        /// when the file itself does not exist yet.  For example, an application that
        /// adds a custom extra widget to the file chooser for “file format” may want to
        /// change the extension of the typed filename based on the chosen format, say,
        /// from “.jpg” to “.png”.
        var currentName: String! {
            /// Gets the current name in the file selector, as entered by the user in the
            /// text entry for “Name”.
            ///
            /// This is meant to be used in save dialogs, to get the currently typed filename
            /// when the file itself does not exist yet.  For example, an application that
            /// adds a custom extra widget to the file chooser for “file format” may want to
            /// change the extension of the typed filename based on the chosen format, say,
            /// from “.jpg” to “.png”.
            get {
                let rv = gtk_file_chooser_get_current_name(cast(ptr))
                return rv.map { String(cString: UnsafePointer<CChar>($0)) }
            }
            /// Sets the current name in the file selector, as if entered
            /// by the user. Note that the name passed in here is a UTF-8
            /// string rather than a filename. This function is meant for
            /// such uses as a suggested name in a “Save As...” dialog.  You can
            /// pass “Untitled.doc” or a similarly suitable suggestion for the @name.
            ///
            /// If you want to preselect a particular existing file, you should use
            /// gtk_file_chooser_set_filename() or gtk_file_chooser_set_uri() instead.
            /// Please see the documentation for those functions for an example of using
            /// gtk_file_chooser_set_current_name() as well.
            nonmutating set {
                gtk_file_chooser_set_current_name(cast(ptr), newValue)
            }
        }

        /// Queries whether a file chooser is set to confirm for overwriting when the user
        /// types a file name that already exists.
        var doOverwriteConfirmation: Bool {
            /// Queries whether a file chooser is set to confirm for overwriting when the user
            /// types a file name that already exists.
            get {
                let rv = gtk_file_chooser_get_do_overwrite_confirmation(cast(ptr))
                return Bool(rv != 0)
            }
            /// Sets whether a file chooser in %GTK_FILE_CHOOSER_ACTION_SAVE mode will present
            /// a confirmation dialog if the user types a file name that already exists.  This
            /// is %FALSE by default.
            ///
            /// If set to %TRUE, the @chooser will emit the
            /// #GtkFileChooser::confirm-overwrite signal when appropriate.
            ///
            /// If all you need is the stock confirmation dialog, set this property to %TRUE.
            /// You can override the way confirmation is done by actually handling the
            /// #GtkFileChooser::confirm-overwrite signal; please refer to its documentation
            /// for the details.
            nonmutating set {
                gtk_file_chooser_set_do_overwrite_confirmation(cast(ptr), gboolean(newValue ? 1 : 0))
            }
        }

        /// Gets the current extra widget; see
        /// gtk_file_chooser_set_extra_widget().
        var extraWidget: UnsafeMutablePointer<GtkWidget>! {
            /// Gets the current extra widget; see
            /// gtk_file_chooser_set_extra_widget().
            get {
                let rv = gtk_file_chooser_get_extra_widget(cast(ptr))
                return cast(rv)
            }
            /// Sets an application-supplied widget to provide extra options to the user.
            nonmutating set {
                gtk_file_chooser_set_extra_widget(cast(ptr), cast(newValue))
            }
        }

        /// Gets the #GFile for the currently selected file in
        /// the file selector. If multiple files are selected,
        /// one of the files will be returned at random.
        ///
        /// If the file chooser is in folder mode, this function returns the selected
        /// folder.
        var file: UnsafeMutablePointer<GFile>! {
            /// Gets the #GFile for the currently selected file in
            /// the file selector. If multiple files are selected,
            /// one of the files will be returned at random.
            ///
            /// If the file chooser is in folder mode, this function returns the selected
            /// folder.
            get {
                let rv = gtk_file_chooser_get_file(cast(ptr))
                return cast(rv)
            }
        }

        /// Gets the filename for the currently selected file in
        /// the file selector. The filename is returned as an absolute path. If
        /// multiple files are selected, one of the filenames will be returned at
        /// random.
        ///
        /// If the file chooser is in folder mode, this function returns the selected
        /// folder.
        var filename: String! {
            /// Gets the filename for the currently selected file in
            /// the file selector. The filename is returned as an absolute path. If
            /// multiple files are selected, one of the filenames will be returned at
            /// random.
            ///
            /// If the file chooser is in folder mode, this function returns the selected
            /// folder.
            get {
                let rv = gtk_file_chooser_get_filename(cast(ptr))
                return rv.map { String(cString: UnsafePointer<CChar>($0)) }
            }
            /// Sets @filename as the current filename for the file chooser, by changing to
            /// the file’s parent folder and actually selecting the file in list; all other
            /// files will be unselected.  If the @chooser is in
            /// %GTK_FILE_CHOOSER_ACTION_SAVE mode, the file’s base name will also appear in
            /// the dialog’s file name entry.
            ///
            /// Note that the file must exist, or nothing will be done except
            /// for the directory change.
            ///
            /// You should use this function only when implementing a save
            /// dialog for which you already have a file name to which
            /// the user may save.  For example, when the user opens an existing file and
            /// then does Save As... to save a copy or
            /// a modified version.  If you don’t have a file name already — for
            /// example, if the user just created a new file and is saving it for the first
            /// time, do not call this function.  Instead, use something similar to this:
            /// |[<!-- language="C" -->
            /// if (document_is_new)
            ///   {
            ///     // the user just created a new document
            ///     gtk_file_chooser_set_current_name (chooser, "Untitled document");
            ///   }
            /// else
            ///   {
            ///     // the user edited an existing document
            ///     gtk_file_chooser_set_filename (chooser, existing_filename);
            ///   }
            /// ]|
            ///
            /// In the first case, the file chooser will present the user with useful suggestions
            /// as to where to save his new file.  In the second case, the file’s existing location
            /// is already known, so the file chooser will use it.
            nonmutating set {
                let _ = gtk_file_chooser_set_filename(cast(ptr), newValue)
            }
        }

        /// Lists all the selected files and subfolders in the current folder of
        /// @chooser. The returned names are full absolute paths. If files in the current
        /// folder cannot be represented as local filenames they will be ignored. (See
        /// gtk_file_chooser_get_uris())
        var filenames: SListRef! {
            /// Lists all the selected files and subfolders in the current folder of
            /// @chooser. The returned names are full absolute paths. If files in the current
            /// folder cannot be represented as local filenames they will be ignored. (See
            /// gtk_file_chooser_get_uris())
            get {
                let rv = gtk_file_chooser_get_filenames(cast(ptr))
                return rv.map { SListRef($0) }
            }
        }

        /// Lists all the selected files and subfolders in the current folder of @chooser
        /// as #GFile. An internal function, see gtk_file_chooser_get_uris().
        var files: SListRef! {
            /// Lists all the selected files and subfolders in the current folder of @chooser
            /// as #GFile. An internal function, see gtk_file_chooser_get_uris().
            get {
                let rv = gtk_file_chooser_get_files(cast(ptr))
                return rv.map { SListRef($0) }
            }
        }

        var filter: UnsafeMutablePointer<GtkFileFilter>! {
            /// Gets the current filter; see gtk_file_chooser_set_filter().
            get {
                let rv = gtk_file_chooser_get_filter(cast(ptr))
                return cast(rv)
            }
            /// Sets the current filter; only the files that pass the
            /// filter will be displayed. If the user-selectable list of filters
            /// is non-empty, then the filter should be one of the filters
            /// in that list. Setting the current filter when the list of
            /// filters is empty is useful if you want to restrict the displayed
            /// set of files without letting the user change it.
            nonmutating set {
                gtk_file_chooser_set_filter(cast(ptr), cast(newValue))
            }
        }

        /// Gets whether only local files can be selected in the
        /// file selector. See gtk_file_chooser_set_local_only()
        var localOnly: Bool {
            /// Gets whether only local files can be selected in the
            /// file selector. See gtk_file_chooser_set_local_only()
            get {
                let rv = gtk_file_chooser_get_local_only(cast(ptr))
                return Bool(rv != 0)
            }
            /// Sets whether only local files can be selected in the
            /// file selector. If @local_only is %TRUE (the default),
            /// then the selected file or files are guaranteed to be
            /// accessible through the operating systems native file
            /// system and therefore the application only
            /// needs to worry about the filename functions in
            /// #GtkFileChooser, like gtk_file_chooser_get_filename(),
            /// rather than the URI functions like
            /// gtk_file_chooser_get_uri(),
            ///
            /// On some systems non-native files may still be
            /// available using the native filesystem via a userspace
            /// filesystem (FUSE).
            nonmutating set {
                gtk_file_chooser_set_local_only(cast(ptr), gboolean(newValue ? 1 : 0))
            }
        }

        /// Gets the #GFile that should be previewed in a custom preview
        /// Internal function, see gtk_file_chooser_get_preview_uri().
        var previewFile: UnsafeMutablePointer<GFile>! {
            /// Gets the #GFile that should be previewed in a custom preview
            /// Internal function, see gtk_file_chooser_get_preview_uri().
            get {
                let rv = gtk_file_chooser_get_preview_file(cast(ptr))
                return cast(rv)
            }
        }

        /// Gets the filename that should be previewed in a custom preview
        /// widget. See gtk_file_chooser_set_preview_widget().
        var previewFilename: String! {
            /// Gets the filename that should be previewed in a custom preview
            /// widget. See gtk_file_chooser_set_preview_widget().
            get {
                let rv = gtk_file_chooser_get_preview_filename(cast(ptr))
                return rv.map { String(cString: UnsafePointer<CChar>($0)) }
            }
        }

        /// Gets the URI that should be previewed in a custom preview
        /// widget. See gtk_file_chooser_set_preview_widget().
        var previewURI: String! {
            /// Gets the URI that should be previewed in a custom preview
            /// widget. See gtk_file_chooser_set_preview_widget().
            get {
                let rv = gtk_file_chooser_get_preview_uri(cast(ptr))
                return rv.map { String(cString: UnsafePointer<CChar>($0)) }
            }
        }

        /// Gets the current preview widget; see
        /// gtk_file_chooser_set_preview_widget().
        var previewWidget: UnsafeMutablePointer<GtkWidget>! {
            /// Gets the current preview widget; see
            /// gtk_file_chooser_set_preview_widget().
            get {
                let rv = gtk_file_chooser_get_preview_widget(cast(ptr))
                return cast(rv)
            }
            /// Sets an application-supplied widget to use to display a custom preview
            /// of the currently selected file. To implement a preview, after setting the
            /// preview widget, you connect to the #GtkFileChooser::update-preview
            /// signal, and call gtk_file_chooser_get_preview_filename() or
            /// gtk_file_chooser_get_preview_uri() on each change. If you can
            /// display a preview of the new file, update your widget and
            /// set the preview active using gtk_file_chooser_set_preview_widget_active().
            /// Otherwise, set the preview inactive.
            ///
            /// When there is no application-supplied preview widget, or the
            /// application-supplied preview widget is not active, the file chooser
            /// will display no preview at all.
            nonmutating set {
                gtk_file_chooser_set_preview_widget(cast(ptr), cast(newValue))
            }
        }

        /// Gets whether the preview widget set by gtk_file_chooser_set_preview_widget()
        /// should be shown for the current filename. See
        /// gtk_file_chooser_set_preview_widget_active().
        var previewWidgetActive: Bool {
            /// Gets whether the preview widget set by gtk_file_chooser_set_preview_widget()
            /// should be shown for the current filename. See
            /// gtk_file_chooser_set_preview_widget_active().
            get {
                let rv = gtk_file_chooser_get_preview_widget_active(cast(ptr))
                return Bool(rv != 0)
            }
            /// Sets whether the preview widget set by
            /// gtk_file_chooser_set_preview_widget() should be shown for the
            /// current filename. When @active is set to false, the file chooser
            /// may display an internally generated preview of the current file
            /// or it may display no preview at all. See
            /// gtk_file_chooser_set_preview_widget() for more details.
            nonmutating set {
                gtk_file_chooser_set_preview_widget_active(cast(ptr), gboolean(newValue ? 1 : 0))
            }
        }

        /// Gets whether multiple files can be selected in the file
        /// selector. See gtk_file_chooser_set_select_multiple().
        var selectMultiple: Bool {
            /// Gets whether multiple files can be selected in the file
            /// selector. See gtk_file_chooser_set_select_multiple().
            get {
                let rv = gtk_file_chooser_get_select_multiple(cast(ptr))
                return Bool(rv != 0)
            }
            /// Sets whether multiple files can be selected in the file selector.  This is
            /// only relevant if the action is set to be %GTK_FILE_CHOOSER_ACTION_OPEN or
            /// %GTK_FILE_CHOOSER_ACTION_SELECT_FOLDER.
            nonmutating set {
                gtk_file_chooser_set_select_multiple(cast(ptr), gboolean(newValue ? 1 : 0))
            }
        }

        /// Gets whether hidden files and folders are displayed in the file selector.
        /// See gtk_file_chooser_set_show_hidden().
        var showHidden: Bool {
            /// Gets whether hidden files and folders are displayed in the file selector.
            /// See gtk_file_chooser_set_show_hidden().
            get {
                let rv = gtk_file_chooser_get_show_hidden(cast(ptr))
                return Bool(rv != 0)
            }
            /// Sets whether hidden files and folders are displayed in the file selector.
            nonmutating set {
                gtk_file_chooser_set_show_hidden(cast(ptr), gboolean(newValue ? 1 : 0))
            }
        }

        /// Gets the URI for the currently selected file in
        /// the file selector. If multiple files are selected,
        /// one of the filenames will be returned at random.
        ///
        /// If the file chooser is in folder mode, this function returns the selected
        /// folder.
        var uri: String! {
            /// Gets the URI for the currently selected file in
            /// the file selector. If multiple files are selected,
            /// one of the filenames will be returned at random.
            ///
            /// If the file chooser is in folder mode, this function returns the selected
            /// folder.
            get {
                let rv = gtk_file_chooser_get_uri(cast(ptr))
                return rv.map { String(cString: UnsafePointer<CChar>($0)) }
            }
            /// Sets the file referred to by @uri as the current file for the file chooser,
            /// by changing to the URI’s parent folder and actually selecting the URI in the
            /// list.  If the @chooser is %GTK_FILE_CHOOSER_ACTION_SAVE mode, the URI’s base
            /// name will also appear in the dialog’s file name entry.
            ///
            /// Note that the URI must exist, or nothing will be done except for the
            /// directory change.
            ///
            /// You should use this function only when implementing a save
            /// dialog for which you already have a file name to which
            /// the user may save.  For example, when the user opens an existing file and then
            /// does Save As... to save a copy or a
            /// modified version.  If you don’t have a file name already — for example,
            /// if the user just created a new file and is saving it for the first time, do
            /// not call this function.  Instead, use something similar to this:
            /// |[<!-- language="C" -->
            /// if (document_is_new)
            ///   {
            ///     // the user just created a new document
            ///     gtk_file_chooser_set_current_name (chooser, "Untitled document");
            ///   }
            /// else
            ///   {
            ///     // the user edited an existing document
            ///     gtk_file_chooser_set_uri (chooser, existing_uri);
            ///   }
            /// ]|
            ///
            ///
            /// In the first case, the file chooser will present the user with useful suggestions
            /// as to where to save his new file.  In the second case, the file’s existing location
            /// is already known, so the file chooser will use it.
            nonmutating set {
                let _ = gtk_file_chooser_set_uri(cast(ptr), newValue)
            }
        }

        /// Lists all the selected files and subfolders in the current folder of
        /// @chooser. The returned names are full absolute URIs.
        var uris: SListRef! {
            /// Lists all the selected files and subfolders in the current folder of
            /// @chooser. The returned names are full absolute URIs.
            get {
                let rv = gtk_file_chooser_get_uris(cast(ptr))
                return rv.map { SListRef($0) }
            }
        }

        /// Gets whether a stock label should be drawn with the name of the previewed
        /// file.  See gtk_file_chooser_set_use_preview_label().
        var usePreviewLabel: Bool {
            /// Gets whether a stock label should be drawn with the name of the previewed
            /// file.  See gtk_file_chooser_set_use_preview_label().
            get {
                let rv = gtk_file_chooser_get_use_preview_label(cast(ptr))
                return Bool(rv != 0)
            }
            /// Sets whether the file chooser should display a stock label with the name of
            /// the file that is being previewed; the default is %TRUE.  Applications that
            /// want to draw the whole preview area themselves should set this to %FALSE and
            /// display the name themselves in their preview widget.
            ///
            /// See also: gtk_file_chooser_set_preview_widget()
            nonmutating set {
                gtk_file_chooser_set_use_preview_label(cast(ptr), gboolean(newValue ? 1 : 0))
            }
        }
}
