import CGLib
import CCairo
import CPango
import CGdkPixbuf
import CGdk
import CAtk
import CGtk
import GLib
import GLibObject
import GIO
import Pango
import Cairo
import PangoCairo
import GdkPixbuf
import Gdk
import Atk

// MARK: - FileChooserDialog Class

/// The `FileChooserDialogProtocol` protocol exposes the methods and properties of an underlying `GtkFileChooserDialog` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FileChooserDialog`.
/// Alternatively, use `FileChooserDialogRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkFileChooserDialog` is a dialog box suitable for use with
/// “File/Open” or “File/Save as” commands.  This widget works by
/// putting a `GtkFileChooserWidget` inside a `GtkDialog`.  It exposes
/// the `GtkFileChooser` interface, so you can use all of the
/// `GtkFileChooser` functions on the file chooser dialog as well as
/// those for `GtkDialog`.
/// 
/// Note that `GtkFileChooserDialog` does not have any methods of its
/// own.  Instead, you should use the functions that work on a
/// `GtkFileChooser`.
/// 
/// If you want to integrate well with the platform you should use the
/// `GtkFileChooserNative` API, which will use a platform-specific
/// dialog if available and fall back to GtkFileChooserDialog
/// otherwise.
/// 
/// ## Typical usage ## <a name="gtkfilechooser-typical-usage"></a>
/// 
/// In the simplest of cases, you can the following code to use
/// `GtkFileChooserDialog` to select a file for opening:
/// 
/// ```
/// GtkWidget *dialog;
/// GtkFileChooserAction action = GTK_FILE_CHOOSER_ACTION_OPEN;
/// gint res;
/// 
/// dialog = gtk_file_chooser_dialog_new ("Open File",
///                                       parent_window,
///                                       action,
///                                       _("_Cancel"),
///                                       GTK_RESPONSE_CANCEL,
///                                       _("_Open"),
///                                       GTK_RESPONSE_ACCEPT,
///                                       NULL);
/// 
/// res = gtk_dialog_run (GTK_DIALOG (dialog));
/// if (res == GTK_RESPONSE_ACCEPT)
///   {
///     char *filename;
///     GtkFileChooser *chooser = GTK_FILE_CHOOSER (dialog);
///     filename = gtk_file_chooser_get_filename (chooser);
///     open_file (filename);
///     g_free (filename);
///   }
/// 
/// gtk_widget_destroy (dialog);
/// ```
/// 
/// To use a dialog for saving, you can use this:
/// 
/// ```
/// GtkWidget *dialog;
/// GtkFileChooser *chooser;
/// GtkFileChooserAction action = GTK_FILE_CHOOSER_ACTION_SAVE;
/// gint res;
/// 
/// dialog = gtk_file_chooser_dialog_new ("Save File",
///                                       parent_window,
///                                       action,
///                                       _("_Cancel"),
///                                       GTK_RESPONSE_CANCEL,
///                                       _("_Save"),
///                                       GTK_RESPONSE_ACCEPT,
///                                       NULL);
/// chooser = GTK_FILE_CHOOSER (dialog);
/// 
/// gtk_file_chooser_set_do_overwrite_confirmation (chooser, TRUE);
/// 
/// if (user_edited_a_new_document)
///   gtk_file_chooser_set_current_name (chooser,
///                                      _("Untitled document"));
/// else
///   gtk_file_chooser_set_filename (chooser,
///                                  existing_filename);
/// 
/// res = gtk_dialog_run (GTK_DIALOG (dialog));
/// if (res == GTK_RESPONSE_ACCEPT)
///   {
///     char *filename;
/// 
///     filename = gtk_file_chooser_get_filename (chooser);
///     save_to_file (filename);
///     g_free (filename);
///   }
/// 
/// gtk_widget_destroy (dialog);
/// ```
/// 
/// ## Setting up a file chooser dialog ## <a name="gtkfilechooserdialog-setting-up"></a>
/// 
/// There are various cases in which you may need to use a `GtkFileChooserDialog:`
/// 
/// - To select a file for opening. Use `GTK_FILE_CHOOSER_ACTION_OPEN`.
/// 
/// - To save a file for the first time. Use `GTK_FILE_CHOOSER_ACTION_SAVE`,
///   and suggest a name such as “Untitled” with `gtk_file_chooser_set_current_name()`.
/// 
/// - To save a file under a different name. Use `GTK_FILE_CHOOSER_ACTION_SAVE`,
///   and set the existing filename with `gtk_file_chooser_set_filename()`.
/// 
/// - To choose a folder instead of a file. Use `GTK_FILE_CHOOSER_ACTION_SELECT_FOLDER`.
/// 
/// Note that old versions of the file chooser’s documentation suggested
/// using `gtk_file_chooser_set_current_folder()` in various
/// situations, with the intention of letting the application
/// suggest a reasonable default folder.  This is no longer
/// considered to be a good policy, as now the file chooser is
/// able to make good suggestions on its own.  In general, you
/// should only cause the file chooser to show a specific folder
/// when it is appropriate to use `gtk_file_chooser_set_filename()`,
/// i.e. when you are doing a Save As command and you already
/// have a file saved somewhere.
/// 
/// ## Response Codes ## <a name="gtkfilechooserdialog-responses"></a>
/// 
/// `GtkFileChooserDialog` inherits from `GtkDialog`, so buttons that
/// go in its action area have response codes such as
/// `GTK_RESPONSE_ACCEPT` and `GTK_RESPONSE_CANCEL`.  For example, you
/// could call `gtk_file_chooser_dialog_new()` as follows:
/// 
/// ```
/// GtkWidget *dialog;
/// GtkFileChooserAction action = GTK_FILE_CHOOSER_ACTION_OPEN;
/// 
/// dialog = gtk_file_chooser_dialog_new ("Open File",
///                                       parent_window,
///                                       action,
///                                       _("_Cancel"),
///                                       GTK_RESPONSE_CANCEL,
///                                       _("_Open"),
///                                       GTK_RESPONSE_ACCEPT,
///                                       NULL);
/// ```
/// 
/// This will create buttons for “Cancel” and “Open” that use stock
/// response identifiers from `GtkResponseType`.  For most dialog
/// boxes you can use your own custom response codes rather than the
/// ones in `GtkResponseType`, but `GtkFileChooserDialog` assumes that
/// its “accept”-type action, e.g. an “Open” or “Save” button,
/// will have one of the following response codes:
/// 
/// - `GTK_RESPONSE_ACCEPT`
/// - `GTK_RESPONSE_OK`
/// - `GTK_RESPONSE_YES`
/// - `GTK_RESPONSE_APPLY`
/// 
/// This is because `GtkFileChooserDialog` must intercept responses
/// and switch to folders if appropriate, rather than letting the
/// dialog terminate — the implementation uses these known
/// response codes to know which responses can be blocked if
/// appropriate.
/// 
/// To summarize, make sure you use a
/// [stock response code](#gtkfilechooserdialog-responses)
/// when you use `GtkFileChooserDialog` to ensure proper operation.
public protocol FileChooserDialogProtocol: DialogProtocol, FileChooserProtocol {
        /// Untyped pointer to the underlying `GtkFileChooserDialog` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkFileChooserDialog` instance.
    var file_chooser_dialog_ptr: UnsafeMutablePointer<GtkFileChooserDialog>! { get }

}

/// The `FileChooserDialogRef` type acts as a lightweight Swift reference to an underlying `GtkFileChooserDialog` instance.
/// It exposes methods that can operate on this data type through `FileChooserDialogProtocol` conformance.
/// Use `FileChooserDialogRef` only as an `unowned` reference to an existing `GtkFileChooserDialog` instance.
///
/// `GtkFileChooserDialog` is a dialog box suitable for use with
/// “File/Open” or “File/Save as” commands.  This widget works by
/// putting a `GtkFileChooserWidget` inside a `GtkDialog`.  It exposes
/// the `GtkFileChooser` interface, so you can use all of the
/// `GtkFileChooser` functions on the file chooser dialog as well as
/// those for `GtkDialog`.
/// 
/// Note that `GtkFileChooserDialog` does not have any methods of its
/// own.  Instead, you should use the functions that work on a
/// `GtkFileChooser`.
/// 
/// If you want to integrate well with the platform you should use the
/// `GtkFileChooserNative` API, which will use a platform-specific
/// dialog if available and fall back to GtkFileChooserDialog
/// otherwise.
/// 
/// ## Typical usage ## <a name="gtkfilechooser-typical-usage"></a>
/// 
/// In the simplest of cases, you can the following code to use
/// `GtkFileChooserDialog` to select a file for opening:
/// 
/// ```
/// GtkWidget *dialog;
/// GtkFileChooserAction action = GTK_FILE_CHOOSER_ACTION_OPEN;
/// gint res;
/// 
/// dialog = gtk_file_chooser_dialog_new ("Open File",
///                                       parent_window,
///                                       action,
///                                       _("_Cancel"),
///                                       GTK_RESPONSE_CANCEL,
///                                       _("_Open"),
///                                       GTK_RESPONSE_ACCEPT,
///                                       NULL);
/// 
/// res = gtk_dialog_run (GTK_DIALOG (dialog));
/// if (res == GTK_RESPONSE_ACCEPT)
///   {
///     char *filename;
///     GtkFileChooser *chooser = GTK_FILE_CHOOSER (dialog);
///     filename = gtk_file_chooser_get_filename (chooser);
///     open_file (filename);
///     g_free (filename);
///   }
/// 
/// gtk_widget_destroy (dialog);
/// ```
/// 
/// To use a dialog for saving, you can use this:
/// 
/// ```
/// GtkWidget *dialog;
/// GtkFileChooser *chooser;
/// GtkFileChooserAction action = GTK_FILE_CHOOSER_ACTION_SAVE;
/// gint res;
/// 
/// dialog = gtk_file_chooser_dialog_new ("Save File",
///                                       parent_window,
///                                       action,
///                                       _("_Cancel"),
///                                       GTK_RESPONSE_CANCEL,
///                                       _("_Save"),
///                                       GTK_RESPONSE_ACCEPT,
///                                       NULL);
/// chooser = GTK_FILE_CHOOSER (dialog);
/// 
/// gtk_file_chooser_set_do_overwrite_confirmation (chooser, TRUE);
/// 
/// if (user_edited_a_new_document)
///   gtk_file_chooser_set_current_name (chooser,
///                                      _("Untitled document"));
/// else
///   gtk_file_chooser_set_filename (chooser,
///                                  existing_filename);
/// 
/// res = gtk_dialog_run (GTK_DIALOG (dialog));
/// if (res == GTK_RESPONSE_ACCEPT)
///   {
///     char *filename;
/// 
///     filename = gtk_file_chooser_get_filename (chooser);
///     save_to_file (filename);
///     g_free (filename);
///   }
/// 
/// gtk_widget_destroy (dialog);
/// ```
/// 
/// ## Setting up a file chooser dialog ## <a name="gtkfilechooserdialog-setting-up"></a>
/// 
/// There are various cases in which you may need to use a `GtkFileChooserDialog:`
/// 
/// - To select a file for opening. Use `GTK_FILE_CHOOSER_ACTION_OPEN`.
/// 
/// - To save a file for the first time. Use `GTK_FILE_CHOOSER_ACTION_SAVE`,
///   and suggest a name such as “Untitled” with `gtk_file_chooser_set_current_name()`.
/// 
/// - To save a file under a different name. Use `GTK_FILE_CHOOSER_ACTION_SAVE`,
///   and set the existing filename with `gtk_file_chooser_set_filename()`.
/// 
/// - To choose a folder instead of a file. Use `GTK_FILE_CHOOSER_ACTION_SELECT_FOLDER`.
/// 
/// Note that old versions of the file chooser’s documentation suggested
/// using `gtk_file_chooser_set_current_folder()` in various
/// situations, with the intention of letting the application
/// suggest a reasonable default folder.  This is no longer
/// considered to be a good policy, as now the file chooser is
/// able to make good suggestions on its own.  In general, you
/// should only cause the file chooser to show a specific folder
/// when it is appropriate to use `gtk_file_chooser_set_filename()`,
/// i.e. when you are doing a Save As command and you already
/// have a file saved somewhere.
/// 
/// ## Response Codes ## <a name="gtkfilechooserdialog-responses"></a>
/// 
/// `GtkFileChooserDialog` inherits from `GtkDialog`, so buttons that
/// go in its action area have response codes such as
/// `GTK_RESPONSE_ACCEPT` and `GTK_RESPONSE_CANCEL`.  For example, you
/// could call `gtk_file_chooser_dialog_new()` as follows:
/// 
/// ```
/// GtkWidget *dialog;
/// GtkFileChooserAction action = GTK_FILE_CHOOSER_ACTION_OPEN;
/// 
/// dialog = gtk_file_chooser_dialog_new ("Open File",
///                                       parent_window,
///                                       action,
///                                       _("_Cancel"),
///                                       GTK_RESPONSE_CANCEL,
///                                       _("_Open"),
///                                       GTK_RESPONSE_ACCEPT,
///                                       NULL);
/// ```
/// 
/// This will create buttons for “Cancel” and “Open” that use stock
/// response identifiers from `GtkResponseType`.  For most dialog
/// boxes you can use your own custom response codes rather than the
/// ones in `GtkResponseType`, but `GtkFileChooserDialog` assumes that
/// its “accept”-type action, e.g. an “Open” or “Save” button,
/// will have one of the following response codes:
/// 
/// - `GTK_RESPONSE_ACCEPT`
/// - `GTK_RESPONSE_OK`
/// - `GTK_RESPONSE_YES`
/// - `GTK_RESPONSE_APPLY`
/// 
/// This is because `GtkFileChooserDialog` must intercept responses
/// and switch to folders if appropriate, rather than letting the
/// dialog terminate — the implementation uses these known
/// response codes to know which responses can be blocked if
/// appropriate.
/// 
/// To summarize, make sure you use a
/// [stock response code](#gtkfilechooserdialog-responses)
/// when you use `GtkFileChooserDialog` to ensure proper operation.
public struct FileChooserDialogRef: FileChooserDialogProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkFileChooserDialog` instance.
    /// For type-safe access, use the generated, typed pointer `file_chooser_dialog_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FileChooserDialogRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkFileChooserDialog>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkFileChooserDialog>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkFileChooserDialog>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkFileChooserDialog>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `FileChooserDialogProtocol`
    @inlinable init<T: FileChooserDialogProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: FileChooserDialogProtocol>(_ other: T) -> FileChooserDialogRef { FileChooserDialogRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserDialogProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserDialogProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserDialogProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserDialogProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserDialogProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    
    // *** new() is not available because it has a varargs (...) parameter!

}

/// The `FileChooserDialog` type acts as a reference-counted owner of an underlying `GtkFileChooserDialog` instance.
/// It provides the methods that can operate on this data type through `FileChooserDialogProtocol` conformance.
/// Use `FileChooserDialog` as a strong reference or owner of a `GtkFileChooserDialog` instance.
///
/// `GtkFileChooserDialog` is a dialog box suitable for use with
/// “File/Open” or “File/Save as” commands.  This widget works by
/// putting a `GtkFileChooserWidget` inside a `GtkDialog`.  It exposes
/// the `GtkFileChooser` interface, so you can use all of the
/// `GtkFileChooser` functions on the file chooser dialog as well as
/// those for `GtkDialog`.
/// 
/// Note that `GtkFileChooserDialog` does not have any methods of its
/// own.  Instead, you should use the functions that work on a
/// `GtkFileChooser`.
/// 
/// If you want to integrate well with the platform you should use the
/// `GtkFileChooserNative` API, which will use a platform-specific
/// dialog if available and fall back to GtkFileChooserDialog
/// otherwise.
/// 
/// ## Typical usage ## <a name="gtkfilechooser-typical-usage"></a>
/// 
/// In the simplest of cases, you can the following code to use
/// `GtkFileChooserDialog` to select a file for opening:
/// 
/// ```
/// GtkWidget *dialog;
/// GtkFileChooserAction action = GTK_FILE_CHOOSER_ACTION_OPEN;
/// gint res;
/// 
/// dialog = gtk_file_chooser_dialog_new ("Open File",
///                                       parent_window,
///                                       action,
///                                       _("_Cancel"),
///                                       GTK_RESPONSE_CANCEL,
///                                       _("_Open"),
///                                       GTK_RESPONSE_ACCEPT,
///                                       NULL);
/// 
/// res = gtk_dialog_run (GTK_DIALOG (dialog));
/// if (res == GTK_RESPONSE_ACCEPT)
///   {
///     char *filename;
///     GtkFileChooser *chooser = GTK_FILE_CHOOSER (dialog);
///     filename = gtk_file_chooser_get_filename (chooser);
///     open_file (filename);
///     g_free (filename);
///   }
/// 
/// gtk_widget_destroy (dialog);
/// ```
/// 
/// To use a dialog for saving, you can use this:
/// 
/// ```
/// GtkWidget *dialog;
/// GtkFileChooser *chooser;
/// GtkFileChooserAction action = GTK_FILE_CHOOSER_ACTION_SAVE;
/// gint res;
/// 
/// dialog = gtk_file_chooser_dialog_new ("Save File",
///                                       parent_window,
///                                       action,
///                                       _("_Cancel"),
///                                       GTK_RESPONSE_CANCEL,
///                                       _("_Save"),
///                                       GTK_RESPONSE_ACCEPT,
///                                       NULL);
/// chooser = GTK_FILE_CHOOSER (dialog);
/// 
/// gtk_file_chooser_set_do_overwrite_confirmation (chooser, TRUE);
/// 
/// if (user_edited_a_new_document)
///   gtk_file_chooser_set_current_name (chooser,
///                                      _("Untitled document"));
/// else
///   gtk_file_chooser_set_filename (chooser,
///                                  existing_filename);
/// 
/// res = gtk_dialog_run (GTK_DIALOG (dialog));
/// if (res == GTK_RESPONSE_ACCEPT)
///   {
///     char *filename;
/// 
///     filename = gtk_file_chooser_get_filename (chooser);
///     save_to_file (filename);
///     g_free (filename);
///   }
/// 
/// gtk_widget_destroy (dialog);
/// ```
/// 
/// ## Setting up a file chooser dialog ## <a name="gtkfilechooserdialog-setting-up"></a>
/// 
/// There are various cases in which you may need to use a `GtkFileChooserDialog:`
/// 
/// - To select a file for opening. Use `GTK_FILE_CHOOSER_ACTION_OPEN`.
/// 
/// - To save a file for the first time. Use `GTK_FILE_CHOOSER_ACTION_SAVE`,
///   and suggest a name such as “Untitled” with `gtk_file_chooser_set_current_name()`.
/// 
/// - To save a file under a different name. Use `GTK_FILE_CHOOSER_ACTION_SAVE`,
///   and set the existing filename with `gtk_file_chooser_set_filename()`.
/// 
/// - To choose a folder instead of a file. Use `GTK_FILE_CHOOSER_ACTION_SELECT_FOLDER`.
/// 
/// Note that old versions of the file chooser’s documentation suggested
/// using `gtk_file_chooser_set_current_folder()` in various
/// situations, with the intention of letting the application
/// suggest a reasonable default folder.  This is no longer
/// considered to be a good policy, as now the file chooser is
/// able to make good suggestions on its own.  In general, you
/// should only cause the file chooser to show a specific folder
/// when it is appropriate to use `gtk_file_chooser_set_filename()`,
/// i.e. when you are doing a Save As command and you already
/// have a file saved somewhere.
/// 
/// ## Response Codes ## <a name="gtkfilechooserdialog-responses"></a>
/// 
/// `GtkFileChooserDialog` inherits from `GtkDialog`, so buttons that
/// go in its action area have response codes such as
/// `GTK_RESPONSE_ACCEPT` and `GTK_RESPONSE_CANCEL`.  For example, you
/// could call `gtk_file_chooser_dialog_new()` as follows:
/// 
/// ```
/// GtkWidget *dialog;
/// GtkFileChooserAction action = GTK_FILE_CHOOSER_ACTION_OPEN;
/// 
/// dialog = gtk_file_chooser_dialog_new ("Open File",
///                                       parent_window,
///                                       action,
///                                       _("_Cancel"),
///                                       GTK_RESPONSE_CANCEL,
///                                       _("_Open"),
///                                       GTK_RESPONSE_ACCEPT,
///                                       NULL);
/// ```
/// 
/// This will create buttons for “Cancel” and “Open” that use stock
/// response identifiers from `GtkResponseType`.  For most dialog
/// boxes you can use your own custom response codes rather than the
/// ones in `GtkResponseType`, but `GtkFileChooserDialog` assumes that
/// its “accept”-type action, e.g. an “Open” or “Save” button,
/// will have one of the following response codes:
/// 
/// - `GTK_RESPONSE_ACCEPT`
/// - `GTK_RESPONSE_OK`
/// - `GTK_RESPONSE_YES`
/// - `GTK_RESPONSE_APPLY`
/// 
/// This is because `GtkFileChooserDialog` must intercept responses
/// and switch to folders if appropriate, rather than letting the
/// dialog terminate — the implementation uses these known
/// response codes to know which responses can be blocked if
/// appropriate.
/// 
/// To summarize, make sure you use a
/// [stock response code](#gtkfilechooserdialog-responses)
/// when you use `GtkFileChooserDialog` to ensure proper operation.
open class FileChooserDialog: Dialog, FileChooserDialogProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileChooserDialog` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkFileChooserDialog>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileChooserDialog` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkFileChooserDialog>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileChooserDialog` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileChooserDialog` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileChooserDialog` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkFileChooserDialog>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileChooserDialog` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkFileChooserDialog>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkFileChooserDialog`.
    /// i.e., ownership is transferred to the `FileChooserDialog` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkFileChooserDialog>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `FileChooserDialogProtocol`
    /// Will retain `GtkFileChooserDialog`.
    /// - Parameter other: an instance of a related type that implements `FileChooserDialogProtocol`
    @inlinable public init<T: FileChooserDialogProtocol>(fileChooserDialog other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserDialogProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserDialogProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserDialogProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserDialogProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserDialogProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserDialogProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserDialogProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserDialogProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }


    // *** new() is not available because it has a varargs (...) parameter!



}

public enum FileChooserDialogPropertyName: String, PropertyNameProtocol {
    /// Whether the window should receive the input focus.
    case acceptFocus = "accept-focus"
    case appPaintable = "app-paintable"
    /// The `GtkApplication` associated with the window.
    /// 
    /// The application will be kept alive for at least as long as it
    /// has any windows associated with it (see `g_application_hold()`
    /// for a way to keep it alive without windows).
    /// 
    /// Normally, the connection between the application and the window
    /// will remain until the window is destroyed, but you can explicitly
    /// remove it by setting the :application property to `nil`.
    case application = "application"
    /// The widget to which this window is attached.
    /// See `gtk_window_set_attached_to()`.
    /// 
    /// Examples of places where specifying this relation is useful are
    /// for instance a `GtkMenu` created by a `GtkComboBox`, a completion
    /// popup window created by `GtkEntry` or a typeahead search entry
    /// created by `GtkTreeView`.
    case attachedTo = "attached-to"
    case borderWidth = "border-width"
    case canDefault = "can-default"
    case canFocus = "can-focus"
    case child = "child"
    case compositeChild = "composite-child"
    /// Whether the window should be decorated by the window manager.
    case decorated = "decorated"
    case defaultHeight = "default-height"
    case defaultWidth = "default-width"
    /// Whether the window frame should have a close button.
    case deletable = "deletable"
    case destroyWithParent = "destroy-with-parent"
    /// Whether the widget is double buffered.
    ///
    /// **double-buffered is deprecated:**
    /// Widgets should not use this property.
    case doubleBuffered = "double-buffered"
    case events = "events"
    /// Whether to expand in both directions. Setting this sets both `GtkWidget:hexpand` and `GtkWidget:vexpand`
    case expand = "expand"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    /// 
    /// Before 3.20, several widgets (GtkButton, GtkFileChooserButton,
    /// GtkComboBox) implemented this property individually.
    case focusOnClick = "focus-on-click"
    /// Whether the window should receive the input focus when mapped.
    case focusOnMap = "focus-on-map"
    /// Whether 'focus rectangles' are currently visible in this window.
    /// 
    /// This property is maintained by GTK+ based on user input
    /// and should not be set by applications.
    case focusVisible = "focus-visible"
    /// The window gravity of the window. See `gtk_window_move()` and `GdkGravity` for
    /// more details about window gravity.
    case gravity = "gravity"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case halign = "halign"
    case hasDefault = "has-default"
    case hasFocus = "has-focus"
    /// Whether the window has a corner resize grip.
    /// 
    /// Note that the resize grip is only shown if the window is
    /// actually resizable and not maximized. Use
    /// `GtkWindow:resize`-grip-visible to find out if the resize
    /// grip is currently shown.
    ///
    /// **has-resize-grip is deprecated:**
    /// Resize grips have been removed.
    case hasResizeGrip = "has-resize-grip"
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case hasTooltip = "has-tooltip"
    case hasToplevelFocus = "has-toplevel-focus"
    case heightRequest = "height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case hexpand = "hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case hexpandSet = "hexpand-set"
    /// Whether the titlebar should be hidden during maximization.
    case hideTitlebarWhenMaximized = "hide-titlebar-when-maximized"
    case icon = "icon"
    /// The :icon-name property specifies the name of the themed icon to
    /// use as the window icon. See `GtkIconTheme` for more details.
    case iconName = "icon-name"
    case isActive = "is-active"
    case isFocus = "is-focus"
    case isMaximized = "is-maximized"
    /// Sets all four sides' margin at once. If read, returns max
    /// margin on any side.
    case margin = "margin"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginBottom = "margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginEnd = "margin-end"
    /// Margin on left side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-left is deprecated:**
    /// Use #GtkWidget:margin-start instead.
    case marginLeft = "margin-left"
    /// Margin on right side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-right is deprecated:**
    /// Use #GtkWidget:margin-end instead.
    case marginRight = "margin-right"
    /// Margin on start of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginStart = "margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginTop = "margin-top"
    /// Whether mnemonics are currently visible in this window.
    /// 
    /// This property is maintained by GTK+ based on user input,
    /// and should not be set by applications.
    case mnemonicsVisible = "mnemonics-visible"
    case modal = "modal"
    case name = "name"
    case noShowAll = "no-show-all"
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case opacity = "opacity"
    case parent = "parent"
    case receivesDefault = "receives-default"
    case resizable = "resizable"
    /// Whether a corner resize grip is currently shown.
    ///
    /// **resize-grip-visible is deprecated:**
    /// Resize grips have been removed.
    case resizeGripVisible = "resize-grip-visible"
    case resizeMode = "resize-mode"
    case role = "role"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case screen = "screen"
    case sensitive = "sensitive"
    case skipPagerHint = "skip-pager-hint"
    case skipTaskbarHint = "skip-taskbar-hint"
    /// The :startup-id is a write-only property for setting window's
    /// startup notification identifier. See `gtk_window_set_startup_id()`
    /// for more details.
    case startupID = "startup-id"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case style = "style"
    case title = "title"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language](#PangoMarkupFormat).
    /// Also see `gtk_tooltip_set_markup()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case tooltipMarkup = "tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see `gtk_tooltip_set_text()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case tooltipText = "tooltip-text"
    /// The transient parent of the window. See `gtk_window_set_transient_for()` for
    /// more details about transient windows.
    case transientFor = "transient-for"
    case type = "type"
    case typeHint = "type-hint"
    case urgencyHint = "urgency-hint"
    /// `true` if the dialog uses a `GtkHeaderBar` for action buttons
    /// instead of the action-area.
    /// 
    /// For technical reasons, this property is declared as an integer
    /// property, but you should only set it to `true` or `false`.
    case useHeaderBar = "use-header-bar"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case valign = "valign"
    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    case vexpand = "vexpand"
    /// Whether to use the `GtkWidget:vexpand` property. See `gtk_widget_get_vexpand_set()`.
    case vexpandSet = "vexpand-set"
    case visible = "visible"
    case widthRequest = "width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case window = "window"
    case windowPosition = "window-position"
}

public extension FileChooserDialogProtocol {
    /// Bind a `FileChooserDialogPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: FileChooserDialogPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
        }

        let rv = _bind(source_property.name, to: target, target_property.name, flags: f, holder: BindingClosureHolder(transform_from, transform_to), transformFrom: {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_from(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }) {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_to(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }
        return rv
    }

    /// Get the value of a FileChooserDialog property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: FileChooserDialogPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a FileChooserDialog property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: FileChooserDialogPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: FileChooserDialog has no signals// MARK: FileChooserDialog Class: FileChooserDialogProtocol extension (methods and fields)
public extension FileChooserDialogProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFileChooserDialog` instance.
    @inlinable var file_chooser_dialog_ptr: UnsafeMutablePointer<GtkFileChooserDialog>! { return ptr?.assumingMemoryBound(to: GtkFileChooserDialog.self) }


    @inlinable var parentInstance: GtkDialog {
        get {
            let rv = file_chooser_dialog_ptr.pointee.parent_instance
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - FileChooserNative Class

/// The `FileChooserNativeProtocol` protocol exposes the methods and properties of an underlying `GtkFileChooserNative` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FileChooserNative`.
/// Alternatively, use `FileChooserNativeRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkFileChooserNative` is an abstraction of a dialog box suitable
/// for use with “File/Open” or “File/Save as” commands. By default, this
/// just uses a `GtkFileChooserDialog` to implement the actual dialog.
/// However, on certain platforms, such as Windows and macOS, the native platform
/// file chooser is used instead. When the application is running in a
/// sandboxed environment without direct filesystem access (such as Flatpak),
/// `GtkFileChooserNative` may call the proper APIs (portals) to let the user
/// choose a file and make it available to the application.
/// 
/// While the API of `GtkFileChooserNative` closely mirrors `GtkFileChooserDialog`, the main
/// difference is that there is no access to any `GtkWindow` or `GtkWidget` for the dialog.
/// This is required, as there may not be one in the case of a platform native dialog.
/// Showing, hiding and running the dialog is handled by the `GtkNativeDialog` functions.
/// 
/// ## Typical usage ## <a name="gtkfilechoosernative-typical-usage"></a>
/// 
/// In the simplest of cases, you can the following code to use
/// `GtkFileChooserDialog` to select a file for opening:
/// 
/// ```
/// GtkFileChooserNative *native;
/// GtkFileChooserAction action = GTK_FILE_CHOOSER_ACTION_OPEN;
/// gint res;
/// 
/// native = gtk_file_chooser_native_new ("Open File",
///                                       parent_window,
///                                       action,
///                                       "_Open",
///                                       "_Cancel");
/// 
/// res = gtk_native_dialog_run (GTK_NATIVE_DIALOG (native));
/// if (res == GTK_RESPONSE_ACCEPT)
///   {
///     char *filename;
///     GtkFileChooser *chooser = GTK_FILE_CHOOSER (native);
///     filename = gtk_file_chooser_get_filename (chooser);
///     open_file (filename);
///     g_free (filename);
///   }
/// 
/// g_object_unref (native);
/// ```
/// 
/// To use a dialog for saving, you can use this:
/// 
/// ```
/// GtkFileChooserNative *native;
/// GtkFileChooser *chooser;
/// GtkFileChooserAction action = GTK_FILE_CHOOSER_ACTION_SAVE;
/// gint res;
/// 
/// native = gtk_file_chooser_native_new ("Save File",
///                                       parent_window,
///                                       action,
///                                       "_Save",
///                                       "_Cancel");
/// chooser = GTK_FILE_CHOOSER (native);
/// 
/// gtk_file_chooser_set_do_overwrite_confirmation (chooser, TRUE);
/// 
/// if (user_edited_a_new_document)
///   gtk_file_chooser_set_current_name (chooser,
///                                      _("Untitled document"));
/// else
///   gtk_file_chooser_set_filename (chooser,
///                                  existing_filename);
/// 
/// res = gtk_native_dialog_run (GTK_NATIVE_DIALOG (native));
/// if (res == GTK_RESPONSE_ACCEPT)
///   {
///     char *filename;
/// 
///     filename = gtk_file_chooser_get_filename (chooser);
///     save_to_file (filename);
///     g_free (filename);
///   }
/// 
/// g_object_unref (native);
/// ```
/// 
/// For more information on how to best set up a file dialog, see `GtkFileChooserDialog`.
/// 
/// ## Response Codes ## <a name="gtkfilechooserdialognative-responses"></a>
/// 
/// `GtkFileChooserNative` inherits from `GtkNativeDialog`, which means it
/// will return `GTK_RESPONSE_ACCEPT` if the user accepted, and
/// `GTK_RESPONSE_CANCEL` if he pressed cancel. It can also return
/// `GTK_RESPONSE_DELETE_EVENT` if the window was unexpectedly closed.
/// 
/// ## Differences from `GtkFileChooserDialog` ##  <a name="gtkfilechooserdialognative-differences"></a>
/// 
/// There are a few things in the GtkFileChooser API that are not
/// possible to use with `GtkFileChooserNative`, as such use would
/// prohibit the use of a native dialog.
/// 
/// There is no support for the signals that are emitted when the user
/// navigates in the dialog, including:
/// * `GtkFileChooser::current`-folder-changed
/// * `GtkFileChooser::selection`-changed
/// * `GtkFileChooser::file`-activated
/// * `GtkFileChooser::confirm`-overwrite
/// 
/// You can also not use the methods that directly control user navigation:
/// * `gtk_file_chooser_unselect_filename()`
/// * `gtk_file_chooser_select_all()`
/// * `gtk_file_chooser_unselect_all()`
/// 
/// If you need any of the above you will have to use `GtkFileChooserDialog` directly.
/// 
/// No operations that change the the dialog work while the dialog is
/// visible. Set all the properties that are required before showing the dialog.
/// 
/// ## Win32 details ## <a name="gtkfilechooserdialognative-win32"></a>
/// 
/// On windows the IFileDialog implementation (added in Windows Vista) is
/// used. It supports many of the features that `GtkFileChooserDialog`
/// does, but there are some things it does not handle:
/// 
/// * Extra widgets added with `gtk_file_chooser_set_extra_widget()`.
/// 
/// * Use of custom previews by connecting to `GtkFileChooser::update`-preview.
/// 
/// * Any `GtkFileFilter` added using a mimetype or custom filter.
/// 
/// If any of these features are used the regular `GtkFileChooserDialog`
/// will be used in place of the native one.
/// 
/// ## Portal details ## <a name="gtkfilechooserdialognative-portal"></a>
/// 
/// When the org.freedesktop.portal.FileChooser portal is available on the
/// session bus, it is used to bring up an out-of-process file chooser. Depending
/// on the kind of session the application is running in, this may or may not
/// be a GTK+ file chooser. In this situation, the following things are not
/// supported and will be silently ignored:
/// 
/// * Extra widgets added with `gtk_file_chooser_set_extra_widget()`.
/// 
/// * Use of custom previews by connecting to `GtkFileChooser::update`-preview.
/// 
/// * Any `GtkFileFilter` added with a custom filter.
/// 
/// ## macOS details ## <a name="gtkfilechooserdialognative-macos"></a>
/// 
/// On macOS the NSSavePanel and NSOpenPanel classes are used to provide native
/// file chooser dialogs. Some features provided by `GtkFileChooserDialog` are
/// not supported:
/// 
/// * Extra widgets added with `gtk_file_chooser_set_extra_widget()`, unless the
///   widget is an instance of GtkLabel, in which case the label text will be used
///   to set the NSSavePanel message instance property.
/// 
/// * Use of custom previews by connecting to `GtkFileChooser::update`-preview.
/// 
/// * Any `GtkFileFilter` added with a custom filter.
/// 
/// * Shortcut folders.
public protocol FileChooserNativeProtocol: NativeDialogProtocol, FileChooserProtocol {
        /// Untyped pointer to the underlying `GtkFileChooserNative` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkFileChooserNative` instance.
    var file_chooser_native_ptr: UnsafeMutablePointer<GtkFileChooserNative>! { get }

}

/// The `FileChooserNativeRef` type acts as a lightweight Swift reference to an underlying `GtkFileChooserNative` instance.
/// It exposes methods that can operate on this data type through `FileChooserNativeProtocol` conformance.
/// Use `FileChooserNativeRef` only as an `unowned` reference to an existing `GtkFileChooserNative` instance.
///
/// `GtkFileChooserNative` is an abstraction of a dialog box suitable
/// for use with “File/Open” or “File/Save as” commands. By default, this
/// just uses a `GtkFileChooserDialog` to implement the actual dialog.
/// However, on certain platforms, such as Windows and macOS, the native platform
/// file chooser is used instead. When the application is running in a
/// sandboxed environment without direct filesystem access (such as Flatpak),
/// `GtkFileChooserNative` may call the proper APIs (portals) to let the user
/// choose a file and make it available to the application.
/// 
/// While the API of `GtkFileChooserNative` closely mirrors `GtkFileChooserDialog`, the main
/// difference is that there is no access to any `GtkWindow` or `GtkWidget` for the dialog.
/// This is required, as there may not be one in the case of a platform native dialog.
/// Showing, hiding and running the dialog is handled by the `GtkNativeDialog` functions.
/// 
/// ## Typical usage ## <a name="gtkfilechoosernative-typical-usage"></a>
/// 
/// In the simplest of cases, you can the following code to use
/// `GtkFileChooserDialog` to select a file for opening:
/// 
/// ```
/// GtkFileChooserNative *native;
/// GtkFileChooserAction action = GTK_FILE_CHOOSER_ACTION_OPEN;
/// gint res;
/// 
/// native = gtk_file_chooser_native_new ("Open File",
///                                       parent_window,
///                                       action,
///                                       "_Open",
///                                       "_Cancel");
/// 
/// res = gtk_native_dialog_run (GTK_NATIVE_DIALOG (native));
/// if (res == GTK_RESPONSE_ACCEPT)
///   {
///     char *filename;
///     GtkFileChooser *chooser = GTK_FILE_CHOOSER (native);
///     filename = gtk_file_chooser_get_filename (chooser);
///     open_file (filename);
///     g_free (filename);
///   }
/// 
/// g_object_unref (native);
/// ```
/// 
/// To use a dialog for saving, you can use this:
/// 
/// ```
/// GtkFileChooserNative *native;
/// GtkFileChooser *chooser;
/// GtkFileChooserAction action = GTK_FILE_CHOOSER_ACTION_SAVE;
/// gint res;
/// 
/// native = gtk_file_chooser_native_new ("Save File",
///                                       parent_window,
///                                       action,
///                                       "_Save",
///                                       "_Cancel");
/// chooser = GTK_FILE_CHOOSER (native);
/// 
/// gtk_file_chooser_set_do_overwrite_confirmation (chooser, TRUE);
/// 
/// if (user_edited_a_new_document)
///   gtk_file_chooser_set_current_name (chooser,
///                                      _("Untitled document"));
/// else
///   gtk_file_chooser_set_filename (chooser,
///                                  existing_filename);
/// 
/// res = gtk_native_dialog_run (GTK_NATIVE_DIALOG (native));
/// if (res == GTK_RESPONSE_ACCEPT)
///   {
///     char *filename;
/// 
///     filename = gtk_file_chooser_get_filename (chooser);
///     save_to_file (filename);
///     g_free (filename);
///   }
/// 
/// g_object_unref (native);
/// ```
/// 
/// For more information on how to best set up a file dialog, see `GtkFileChooserDialog`.
/// 
/// ## Response Codes ## <a name="gtkfilechooserdialognative-responses"></a>
/// 
/// `GtkFileChooserNative` inherits from `GtkNativeDialog`, which means it
/// will return `GTK_RESPONSE_ACCEPT` if the user accepted, and
/// `GTK_RESPONSE_CANCEL` if he pressed cancel. It can also return
/// `GTK_RESPONSE_DELETE_EVENT` if the window was unexpectedly closed.
/// 
/// ## Differences from `GtkFileChooserDialog` ##  <a name="gtkfilechooserdialognative-differences"></a>
/// 
/// There are a few things in the GtkFileChooser API that are not
/// possible to use with `GtkFileChooserNative`, as such use would
/// prohibit the use of a native dialog.
/// 
/// There is no support for the signals that are emitted when the user
/// navigates in the dialog, including:
/// * `GtkFileChooser::current`-folder-changed
/// * `GtkFileChooser::selection`-changed
/// * `GtkFileChooser::file`-activated
/// * `GtkFileChooser::confirm`-overwrite
/// 
/// You can also not use the methods that directly control user navigation:
/// * `gtk_file_chooser_unselect_filename()`
/// * `gtk_file_chooser_select_all()`
/// * `gtk_file_chooser_unselect_all()`
/// 
/// If you need any of the above you will have to use `GtkFileChooserDialog` directly.
/// 
/// No operations that change the the dialog work while the dialog is
/// visible. Set all the properties that are required before showing the dialog.
/// 
/// ## Win32 details ## <a name="gtkfilechooserdialognative-win32"></a>
/// 
/// On windows the IFileDialog implementation (added in Windows Vista) is
/// used. It supports many of the features that `GtkFileChooserDialog`
/// does, but there are some things it does not handle:
/// 
/// * Extra widgets added with `gtk_file_chooser_set_extra_widget()`.
/// 
/// * Use of custom previews by connecting to `GtkFileChooser::update`-preview.
/// 
/// * Any `GtkFileFilter` added using a mimetype or custom filter.
/// 
/// If any of these features are used the regular `GtkFileChooserDialog`
/// will be used in place of the native one.
/// 
/// ## Portal details ## <a name="gtkfilechooserdialognative-portal"></a>
/// 
/// When the org.freedesktop.portal.FileChooser portal is available on the
/// session bus, it is used to bring up an out-of-process file chooser. Depending
/// on the kind of session the application is running in, this may or may not
/// be a GTK+ file chooser. In this situation, the following things are not
/// supported and will be silently ignored:
/// 
/// * Extra widgets added with `gtk_file_chooser_set_extra_widget()`.
/// 
/// * Use of custom previews by connecting to `GtkFileChooser::update`-preview.
/// 
/// * Any `GtkFileFilter` added with a custom filter.
/// 
/// ## macOS details ## <a name="gtkfilechooserdialognative-macos"></a>
/// 
/// On macOS the NSSavePanel and NSOpenPanel classes are used to provide native
/// file chooser dialogs. Some features provided by `GtkFileChooserDialog` are
/// not supported:
/// 
/// * Extra widgets added with `gtk_file_chooser_set_extra_widget()`, unless the
///   widget is an instance of GtkLabel, in which case the label text will be used
///   to set the NSSavePanel message instance property.
/// 
/// * Use of custom previews by connecting to `GtkFileChooser::update`-preview.
/// 
/// * Any `GtkFileFilter` added with a custom filter.
/// 
/// * Shortcut folders.
public struct FileChooserNativeRef: FileChooserNativeProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkFileChooserNative` instance.
    /// For type-safe access, use the generated, typed pointer `file_chooser_native_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FileChooserNativeRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkFileChooserNative>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkFileChooserNative>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkFileChooserNative>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkFileChooserNative>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `FileChooserNativeProtocol`
    @inlinable init<T: FileChooserNativeProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: FileChooserNativeProtocol>(_ other: T) -> FileChooserNativeRef { FileChooserNativeRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserNativeProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserNativeProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserNativeProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserNativeProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserNativeProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkFileChooserNative`.
    @inlinable init<WindowT: WindowProtocol>( title: UnsafePointer<gchar>? = nil, parent: WindowT?, action: GtkFileChooserAction, acceptLabel: UnsafePointer<gchar>? = nil, cancelLabel: UnsafePointer<gchar>? = nil) {
        let rv = gtk_file_chooser_native_new(title, parent?.window_ptr, action, acceptLabel, cancelLabel)
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `FileChooserNative` type acts as a reference-counted owner of an underlying `GtkFileChooserNative` instance.
/// It provides the methods that can operate on this data type through `FileChooserNativeProtocol` conformance.
/// Use `FileChooserNative` as a strong reference or owner of a `GtkFileChooserNative` instance.
///
/// `GtkFileChooserNative` is an abstraction of a dialog box suitable
/// for use with “File/Open” or “File/Save as” commands. By default, this
/// just uses a `GtkFileChooserDialog` to implement the actual dialog.
/// However, on certain platforms, such as Windows and macOS, the native platform
/// file chooser is used instead. When the application is running in a
/// sandboxed environment without direct filesystem access (such as Flatpak),
/// `GtkFileChooserNative` may call the proper APIs (portals) to let the user
/// choose a file and make it available to the application.
/// 
/// While the API of `GtkFileChooserNative` closely mirrors `GtkFileChooserDialog`, the main
/// difference is that there is no access to any `GtkWindow` or `GtkWidget` for the dialog.
/// This is required, as there may not be one in the case of a platform native dialog.
/// Showing, hiding and running the dialog is handled by the `GtkNativeDialog` functions.
/// 
/// ## Typical usage ## <a name="gtkfilechoosernative-typical-usage"></a>
/// 
/// In the simplest of cases, you can the following code to use
/// `GtkFileChooserDialog` to select a file for opening:
/// 
/// ```
/// GtkFileChooserNative *native;
/// GtkFileChooserAction action = GTK_FILE_CHOOSER_ACTION_OPEN;
/// gint res;
/// 
/// native = gtk_file_chooser_native_new ("Open File",
///                                       parent_window,
///                                       action,
///                                       "_Open",
///                                       "_Cancel");
/// 
/// res = gtk_native_dialog_run (GTK_NATIVE_DIALOG (native));
/// if (res == GTK_RESPONSE_ACCEPT)
///   {
///     char *filename;
///     GtkFileChooser *chooser = GTK_FILE_CHOOSER (native);
///     filename = gtk_file_chooser_get_filename (chooser);
///     open_file (filename);
///     g_free (filename);
///   }
/// 
/// g_object_unref (native);
/// ```
/// 
/// To use a dialog for saving, you can use this:
/// 
/// ```
/// GtkFileChooserNative *native;
/// GtkFileChooser *chooser;
/// GtkFileChooserAction action = GTK_FILE_CHOOSER_ACTION_SAVE;
/// gint res;
/// 
/// native = gtk_file_chooser_native_new ("Save File",
///                                       parent_window,
///                                       action,
///                                       "_Save",
///                                       "_Cancel");
/// chooser = GTK_FILE_CHOOSER (native);
/// 
/// gtk_file_chooser_set_do_overwrite_confirmation (chooser, TRUE);
/// 
/// if (user_edited_a_new_document)
///   gtk_file_chooser_set_current_name (chooser,
///                                      _("Untitled document"));
/// else
///   gtk_file_chooser_set_filename (chooser,
///                                  existing_filename);
/// 
/// res = gtk_native_dialog_run (GTK_NATIVE_DIALOG (native));
/// if (res == GTK_RESPONSE_ACCEPT)
///   {
///     char *filename;
/// 
///     filename = gtk_file_chooser_get_filename (chooser);
///     save_to_file (filename);
///     g_free (filename);
///   }
/// 
/// g_object_unref (native);
/// ```
/// 
/// For more information on how to best set up a file dialog, see `GtkFileChooserDialog`.
/// 
/// ## Response Codes ## <a name="gtkfilechooserdialognative-responses"></a>
/// 
/// `GtkFileChooserNative` inherits from `GtkNativeDialog`, which means it
/// will return `GTK_RESPONSE_ACCEPT` if the user accepted, and
/// `GTK_RESPONSE_CANCEL` if he pressed cancel. It can also return
/// `GTK_RESPONSE_DELETE_EVENT` if the window was unexpectedly closed.
/// 
/// ## Differences from `GtkFileChooserDialog` ##  <a name="gtkfilechooserdialognative-differences"></a>
/// 
/// There are a few things in the GtkFileChooser API that are not
/// possible to use with `GtkFileChooserNative`, as such use would
/// prohibit the use of a native dialog.
/// 
/// There is no support for the signals that are emitted when the user
/// navigates in the dialog, including:
/// * `GtkFileChooser::current`-folder-changed
/// * `GtkFileChooser::selection`-changed
/// * `GtkFileChooser::file`-activated
/// * `GtkFileChooser::confirm`-overwrite
/// 
/// You can also not use the methods that directly control user navigation:
/// * `gtk_file_chooser_unselect_filename()`
/// * `gtk_file_chooser_select_all()`
/// * `gtk_file_chooser_unselect_all()`
/// 
/// If you need any of the above you will have to use `GtkFileChooserDialog` directly.
/// 
/// No operations that change the the dialog work while the dialog is
/// visible. Set all the properties that are required before showing the dialog.
/// 
/// ## Win32 details ## <a name="gtkfilechooserdialognative-win32"></a>
/// 
/// On windows the IFileDialog implementation (added in Windows Vista) is
/// used. It supports many of the features that `GtkFileChooserDialog`
/// does, but there are some things it does not handle:
/// 
/// * Extra widgets added with `gtk_file_chooser_set_extra_widget()`.
/// 
/// * Use of custom previews by connecting to `GtkFileChooser::update`-preview.
/// 
/// * Any `GtkFileFilter` added using a mimetype or custom filter.
/// 
/// If any of these features are used the regular `GtkFileChooserDialog`
/// will be used in place of the native one.
/// 
/// ## Portal details ## <a name="gtkfilechooserdialognative-portal"></a>
/// 
/// When the org.freedesktop.portal.FileChooser portal is available on the
/// session bus, it is used to bring up an out-of-process file chooser. Depending
/// on the kind of session the application is running in, this may or may not
/// be a GTK+ file chooser. In this situation, the following things are not
/// supported and will be silently ignored:
/// 
/// * Extra widgets added with `gtk_file_chooser_set_extra_widget()`.
/// 
/// * Use of custom previews by connecting to `GtkFileChooser::update`-preview.
/// 
/// * Any `GtkFileFilter` added with a custom filter.
/// 
/// ## macOS details ## <a name="gtkfilechooserdialognative-macos"></a>
/// 
/// On macOS the NSSavePanel and NSOpenPanel classes are used to provide native
/// file chooser dialogs. Some features provided by `GtkFileChooserDialog` are
/// not supported:
/// 
/// * Extra widgets added with `gtk_file_chooser_set_extra_widget()`, unless the
///   widget is an instance of GtkLabel, in which case the label text will be used
///   to set the NSSavePanel message instance property.
/// 
/// * Use of custom previews by connecting to `GtkFileChooser::update`-preview.
/// 
/// * Any `GtkFileFilter` added with a custom filter.
/// 
/// * Shortcut folders.
open class FileChooserNative: NativeDialog, FileChooserNativeProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileChooserNative` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkFileChooserNative>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileChooserNative` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkFileChooserNative>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileChooserNative` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileChooserNative` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileChooserNative` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkFileChooserNative>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileChooserNative` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkFileChooserNative>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkFileChooserNative`.
    /// i.e., ownership is transferred to the `FileChooserNative` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkFileChooserNative>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `FileChooserNativeProtocol`
    /// Will retain `GtkFileChooserNative`.
    /// - Parameter other: an instance of a related type that implements `FileChooserNativeProtocol`
    @inlinable public init<T: FileChooserNativeProtocol>(fileChooserNative other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserNativeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserNativeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserNativeProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserNativeProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserNativeProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserNativeProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserNativeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserNativeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkFileChooserNative`.
    @inlinable public init<WindowT: WindowProtocol>( title: UnsafePointer<gchar>? = nil, parent: WindowT?, action: GtkFileChooserAction, acceptLabel: UnsafePointer<gchar>? = nil, cancelLabel: UnsafePointer<gchar>? = nil) {
        let rv = gtk_file_chooser_native_new(title, parent?.window_ptr, action, acceptLabel, cancelLabel)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum FileChooserNativePropertyName: String, PropertyNameProtocol {
    /// The text used for the label on the accept button in the dialog, or
    /// `nil` to use the default text.
    case acceptLabel = "accept-label"
    /// The text used for the label on the cancel button in the dialog, or
    /// `nil` to use the default text.
    case cancelLabel = "cancel-label"
    /// Whether the window should be modal with respect to its transient parent.
    case modal = "modal"
    /// The title of the dialog window
    case title = "title"
    /// The transient parent of the dialog, or `nil` for none.
    case transientFor = "transient-for"
    /// Whether the window is currenlty visible.
    case visible = "visible"
}

public extension FileChooserNativeProtocol {
    /// Bind a `FileChooserNativePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: FileChooserNativePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
        }

        let rv = _bind(source_property.name, to: target, target_property.name, flags: f, holder: BindingClosureHolder(transform_from, transform_to), transformFrom: {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_from(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }) {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_to(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }
        return rv
    }

    /// Get the value of a FileChooserNative property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: FileChooserNativePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a FileChooserNative property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: FileChooserNativePropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: FileChooserNative has no signals// MARK: FileChooserNative Class: FileChooserNativeProtocol extension (methods and fields)
public extension FileChooserNativeProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFileChooserNative` instance.
    @inlinable var file_chooser_native_ptr: UnsafeMutablePointer<GtkFileChooserNative>! { return ptr?.assumingMemoryBound(to: GtkFileChooserNative.self) }

    /// Retrieves the custom label text for the accept button.
    @inlinable func getAcceptLabel() -> String! {
        let rv = gtk_file_chooser_native_get_accept_label(file_chooser_native_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Retrieves the custom label text for the cancel button.
    @inlinable func getCancelLabel() -> String! {
        let rv = gtk_file_chooser_native_get_cancel_label(file_chooser_native_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Sets the custom label text for the accept button.
    /// 
    /// If characters in `label` are preceded by an underscore, they are underlined.
    /// If you need a literal underscore character in a label, use “__” (two
    /// underscores). The first underlined character represents a keyboard
    /// accelerator called a mnemonic.
    /// Pressing Alt and that key activates the button.
    @inlinable func set(acceptLabel: UnsafePointer<CChar>? = nil) {
        gtk_file_chooser_native_set_accept_label(file_chooser_native_ptr, acceptLabel)
    
    }

    /// Sets the custom label text for the cancel button.
    /// 
    /// If characters in `label` are preceded by an underscore, they are underlined.
    /// If you need a literal underscore character in a label, use “__” (two
    /// underscores). The first underlined character represents a keyboard
    /// accelerator called a mnemonic.
    /// Pressing Alt and that key activates the button.
    @inlinable func set(cancelLabel: UnsafePointer<CChar>? = nil) {
        gtk_file_chooser_native_set_cancel_label(file_chooser_native_ptr, cancelLabel)
    
    }
    /// Retrieves the custom label text for the accept button.
    @inlinable var acceptLabel: String! {
        /// Retrieves the custom label text for the accept button.
        get {
            let rv = gtk_file_chooser_native_get_accept_label(file_chooser_native_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the custom label text for the accept button.
        /// 
        /// If characters in `label` are preceded by an underscore, they are underlined.
        /// If you need a literal underscore character in a label, use “__” (two
        /// underscores). The first underlined character represents a keyboard
        /// accelerator called a mnemonic.
        /// Pressing Alt and that key activates the button.
        nonmutating set {
            gtk_file_chooser_native_set_accept_label(file_chooser_native_ptr, newValue)
        }
    }

    /// Retrieves the custom label text for the cancel button.
    @inlinable var cancelLabel: String! {
        /// Retrieves the custom label text for the cancel button.
        get {
            let rv = gtk_file_chooser_native_get_cancel_label(file_chooser_native_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the custom label text for the cancel button.
        /// 
        /// If characters in `label` are preceded by an underscore, they are underlined.
        /// If you need a literal underscore character in a label, use “__” (two
        /// underscores). The first underlined character represents a keyboard
        /// accelerator called a mnemonic.
        /// Pressing Alt and that key activates the button.
        nonmutating set {
            gtk_file_chooser_native_set_cancel_label(file_chooser_native_ptr, newValue)
        }
    }


}



// MARK: - FileChooserWidget Class

/// The `FileChooserWidgetProtocol` protocol exposes the methods and properties of an underlying `GtkFileChooserWidget` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FileChooserWidget`.
/// Alternatively, use `FileChooserWidgetRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkFileChooserWidget` is a widget for choosing files.
/// It exposes the `GtkFileChooser` interface, and you should
/// use the methods of this interface to interact with the
/// widget.
/// 
/// # CSS nodes
/// 
/// GtkFileChooserWidget has a single CSS node with name filechooser.
public protocol FileChooserWidgetProtocol: BoxProtocol, FileChooserProtocol {
        /// Untyped pointer to the underlying `GtkFileChooserWidget` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkFileChooserWidget` instance.
    var file_chooser_widget_ptr: UnsafeMutablePointer<GtkFileChooserWidget>! { get }

}

/// The `FileChooserWidgetRef` type acts as a lightweight Swift reference to an underlying `GtkFileChooserWidget` instance.
/// It exposes methods that can operate on this data type through `FileChooserWidgetProtocol` conformance.
/// Use `FileChooserWidgetRef` only as an `unowned` reference to an existing `GtkFileChooserWidget` instance.
///
/// `GtkFileChooserWidget` is a widget for choosing files.
/// It exposes the `GtkFileChooser` interface, and you should
/// use the methods of this interface to interact with the
/// widget.
/// 
/// # CSS nodes
/// 
/// GtkFileChooserWidget has a single CSS node with name filechooser.
public struct FileChooserWidgetRef: FileChooserWidgetProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkFileChooserWidget` instance.
    /// For type-safe access, use the generated, typed pointer `file_chooser_widget_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FileChooserWidgetRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkFileChooserWidget>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkFileChooserWidget>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkFileChooserWidget>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkFileChooserWidget>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `FileChooserWidgetProtocol`
    @inlinable init<T: FileChooserWidgetProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: FileChooserWidgetProtocol>(_ other: T) -> FileChooserWidgetRef { FileChooserWidgetRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserWidgetProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserWidgetProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserWidgetProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserWidgetProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserWidgetProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkFileChooserWidget`. This is a file chooser widget that can
    /// be embedded in custom windows, and it is the same widget that is used by
    /// `GtkFileChooserDialog`.
    @inlinable init( action: GtkFileChooserAction) {
        let rv = gtk_file_chooser_widget_new(action)
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `FileChooserWidget` type acts as a reference-counted owner of an underlying `GtkFileChooserWidget` instance.
/// It provides the methods that can operate on this data type through `FileChooserWidgetProtocol` conformance.
/// Use `FileChooserWidget` as a strong reference or owner of a `GtkFileChooserWidget` instance.
///
/// `GtkFileChooserWidget` is a widget for choosing files.
/// It exposes the `GtkFileChooser` interface, and you should
/// use the methods of this interface to interact with the
/// widget.
/// 
/// # CSS nodes
/// 
/// GtkFileChooserWidget has a single CSS node with name filechooser.
open class FileChooserWidget: Box, FileChooserWidgetProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileChooserWidget` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkFileChooserWidget>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileChooserWidget` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkFileChooserWidget>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileChooserWidget` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileChooserWidget` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileChooserWidget` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkFileChooserWidget>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileChooserWidget` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkFileChooserWidget>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkFileChooserWidget`.
    /// i.e., ownership is transferred to the `FileChooserWidget` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkFileChooserWidget>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `FileChooserWidgetProtocol`
    /// Will retain `GtkFileChooserWidget`.
    /// - Parameter other: an instance of a related type that implements `FileChooserWidgetProtocol`
    @inlinable public init<T: FileChooserWidgetProtocol>(fileChooserWidget other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserWidgetProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserWidgetProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserWidgetProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserWidgetProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserWidgetProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserWidgetProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserWidgetProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserWidgetProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkFileChooserWidget`. This is a file chooser widget that can
    /// be embedded in custom windows, and it is the same widget that is used by
    /// `GtkFileChooserDialog`.
    @inlinable public init( action: GtkFileChooserAction) {
        let rv = gtk_file_chooser_widget_new(action)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum FileChooserWidgetPropertyName: String, PropertyNameProtocol {
    case appPaintable = "app-paintable"
    case baselinePosition = "baseline-position"
    case borderWidth = "border-width"
    case canDefault = "can-default"
    case canFocus = "can-focus"
    case child = "child"
    case compositeChild = "composite-child"
    /// Whether the widget is double buffered.
    ///
    /// **double-buffered is deprecated:**
    /// Widgets should not use this property.
    case doubleBuffered = "double-buffered"
    case events = "events"
    /// Whether to expand in both directions. Setting this sets both `GtkWidget:hexpand` and `GtkWidget:vexpand`
    case expand = "expand"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    /// 
    /// Before 3.20, several widgets (GtkButton, GtkFileChooserButton,
    /// GtkComboBox) implemented this property individually.
    case focusOnClick = "focus-on-click"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case halign = "halign"
    case hasDefault = "has-default"
    case hasFocus = "has-focus"
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case hasTooltip = "has-tooltip"
    case heightRequest = "height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case hexpand = "hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case hexpandSet = "hexpand-set"
    case homogeneous = "homogeneous"
    case isFocus = "is-focus"
    /// Sets all four sides' margin at once. If read, returns max
    /// margin on any side.
    case margin = "margin"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginBottom = "margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginEnd = "margin-end"
    /// Margin on left side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-left is deprecated:**
    /// Use #GtkWidget:margin-start instead.
    case marginLeft = "margin-left"
    /// Margin on right side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-right is deprecated:**
    /// Use #GtkWidget:margin-end instead.
    case marginRight = "margin-right"
    /// Margin on start of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginStart = "margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginTop = "margin-top"
    case name = "name"
    case noShowAll = "no-show-all"
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case opacity = "opacity"
    case parent = "parent"
    case receivesDefault = "receives-default"
    case resizeMode = "resize-mode"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case searchMode = "search-mode"
    case sensitive = "sensitive"
    case spacing = "spacing"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case style = "style"
    case subtitle = "subtitle"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language](#PangoMarkupFormat).
    /// Also see `gtk_tooltip_set_markup()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case tooltipMarkup = "tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see `gtk_tooltip_set_text()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case tooltipText = "tooltip-text"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case valign = "valign"
    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    case vexpand = "vexpand"
    /// Whether to use the `GtkWidget:vexpand` property. See `gtk_widget_get_vexpand_set()`.
    case vexpandSet = "vexpand-set"
    case visible = "visible"
    case widthRequest = "width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case window = "window"
}

public extension FileChooserWidgetProtocol {
    /// Bind a `FileChooserWidgetPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: FileChooserWidgetPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
        }

        let rv = _bind(source_property.name, to: target, target_property.name, flags: f, holder: BindingClosureHolder(transform_from, transform_to), transformFrom: {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_from(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }) {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_to(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }
        return rv
    }

    /// Get the value of a FileChooserWidget property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: FileChooserWidgetPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a FileChooserWidget property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: FileChooserWidgetPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: Signals of FileChooserWidget
public extension FileChooserWidgetProtocol {
    /// The `desktop`-folder signal is a [keybinding signal](#GtkBindingSignal)
    /// which gets emitted when the user asks for it.
    /// 
    /// This is used to make the file chooser show the user's Desktop
    /// folder in the file list.
    /// 
    /// The default binding for this signal is `Alt + D`.
    /// - Note: Representation of signal named `desktop-folder`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onDesktopFolder(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: FileChooserWidgetRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<FileChooserWidgetRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(FileChooserWidgetRef(raw: unownedSelf))
            return output
        }
        return signalConnectData(
            detailedSignal: "desktop-folder", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The `down`-folder signal is a [keybinding signal](#GtkBindingSignal)
    /// which gets emitted when the user asks for it.
    /// 
    /// This is used to make the file chooser go to a child of the current folder
    /// in the file hierarchy. The subfolder that will be used is displayed in the
    /// path bar widget of the file chooser. For example, if the path bar is showing
    /// "/foo/bar/baz", with bar currently displayed, then this will cause the file
    /// chooser to switch to the "baz" subfolder.
    /// 
    /// The default binding for this signal is `Alt + Down`.
    /// - Note: Representation of signal named `down-folder`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onDownFolder(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: FileChooserWidgetRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<FileChooserWidgetRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(FileChooserWidgetRef(raw: unownedSelf))
            return output
        }
        return signalConnectData(
            detailedSignal: "down-folder", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The `home`-folder signal is a [keybinding signal](#GtkBindingSignal)
    /// which gets emitted when the user asks for it.
    /// 
    /// This is used to make the file chooser show the user's home
    /// folder in the file list.
    /// 
    /// The default binding for this signal is `Alt + Home`.
    /// - Note: Representation of signal named `home-folder`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onHomeFolder(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: FileChooserWidgetRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<FileChooserWidgetRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(FileChooserWidgetRef(raw: unownedSelf))
            return output
        }
        return signalConnectData(
            detailedSignal: "home-folder", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The `location`-popup signal is a [keybinding signal](#GtkBindingSignal)
    /// which gets emitted when the user asks for it.
    /// 
    /// This is used to make the file chooser show a "Location" prompt which
    /// the user can use to manually type the name of the file he wishes to select.
    /// 
    /// The default bindings for this signal are `Control + L` with a `path` string
    /// of "" (the empty string).  It is also bound to `/` with a `path` string of
    /// "`/`" (a slash):  this lets you type `/` and immediately type a path name.
    /// On Unix systems, this is bound to `~` (tilde) with a `path` string of "~"
    /// itself for access to home directories.
    /// - Note: Representation of signal named `location-popup`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter path: a string that gets put in the text entry for the file name
    @discardableResult
    func onLocationPopup(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: FileChooserWidgetRef, _ path: String) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<FileChooserWidgetRef, String, Void>
        let cCallback: @convention(c) (gpointer, UnsafeMutablePointer<gchar>?, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(FileChooserWidgetRef(raw: unownedSelf), arg1.map({ String(cString: $0) })!)
            return output
        }
        return signalConnectData(
            detailedSignal: "location-popup", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The `location`-popup-on-paste signal is a [keybinding signal](#GtkBindingSignal)
    /// which gets emitted when the user asks for it.
    /// 
    /// This is used to make the file chooser show a "Location" prompt when the user
    /// pastes into a `GtkFileChooserWidget`.
    /// 
    /// The default binding for this signal is `Control + V`.
    /// - Note: Representation of signal named `location-popup-on-paste`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onLocationPopupOnPaste(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: FileChooserWidgetRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<FileChooserWidgetRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(FileChooserWidgetRef(raw: unownedSelf))
            return output
        }
        return signalConnectData(
            detailedSignal: "location-popup-on-paste", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The `location`-toggle-popup signal is a [keybinding signal](#GtkBindingSignal)
    /// which gets emitted when the user asks for it.
    /// 
    /// This is used to toggle the visibility of a "Location" prompt which the user
    /// can use to manually type the name of the file he wishes to select.
    /// 
    /// The default binding for this signal is `Control + L`.
    /// - Note: Representation of signal named `location-toggle-popup`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onLocationTogglePopup(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: FileChooserWidgetRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<FileChooserWidgetRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(FileChooserWidgetRef(raw: unownedSelf))
            return output
        }
        return signalConnectData(
            detailedSignal: "location-toggle-popup", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The `places`-shortcut signal is a [keybinding signal](#GtkBindingSignal)
    /// which gets emitted when the user asks for it.
    /// 
    /// This is used to move the focus to the places sidebar.
    /// 
    /// The default binding for this signal is `Alt + P`.
    /// - Note: Representation of signal named `places-shortcut`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onPlacesShortcut(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: FileChooserWidgetRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<FileChooserWidgetRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(FileChooserWidgetRef(raw: unownedSelf))
            return output
        }
        return signalConnectData(
            detailedSignal: "places-shortcut", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The `quick`-bookmark signal is a [keybinding signal](#GtkBindingSignal)
    /// which gets emitted when the user asks for it.
    /// 
    /// This is used to make the file chooser switch to the bookmark specified
    /// in the `bookmark_index` parameter. For example, if you have three bookmarks,
    /// you can pass 0, 1, 2 to this signal to switch to each of them, respectively.
    /// 
    /// The default binding for this signal is `Alt + 1`, `Alt + 2`,
    /// etc. until `Alt + 0`.  Note that in the default binding, that
    /// `Alt + 1` is actually defined to switch to the bookmark at index
    /// 0, and so on successively; `Alt + 0` is defined to switch to the
    /// bookmark at index 10.
    /// - Note: Representation of signal named `quick-bookmark`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter bookmarkIndex: the number of the bookmark to switch to
    @discardableResult
    func onQuickBookmark(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: FileChooserWidgetRef, _ bookmarkIndex: Int) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<FileChooserWidgetRef, Int, Void>
        let cCallback: @convention(c) (gpointer, gint, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(FileChooserWidgetRef(raw: unownedSelf), Int(arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "quick-bookmark", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The `recent`-shortcut signal is a [keybinding signal](#GtkBindingSignal)
    /// which gets emitted when the user asks for it.
    /// 
    /// This is used to make the file chooser show the Recent location.
    /// 
    /// The default binding for this signal is `Alt + R`.
    /// - Note: Representation of signal named `recent-shortcut`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onRecentShortcut(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: FileChooserWidgetRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<FileChooserWidgetRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(FileChooserWidgetRef(raw: unownedSelf))
            return output
        }
        return signalConnectData(
            detailedSignal: "recent-shortcut", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The `search`-shortcut signal is a [keybinding signal](#GtkBindingSignal)
    /// which gets emitted when the user asks for it.
    /// 
    /// This is used to make the file chooser show the search entry.
    /// 
    /// The default binding for this signal is `Alt + S`.
    /// - Note: Representation of signal named `search-shortcut`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onSearchShortcut(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: FileChooserWidgetRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<FileChooserWidgetRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(FileChooserWidgetRef(raw: unownedSelf))
            return output
        }
        return signalConnectData(
            detailedSignal: "search-shortcut", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The `show`-hidden signal is a [keybinding signal](#GtkBindingSignal)
    /// which gets emitted when the user asks for it.
    /// 
    /// This is used to make the file chooser display hidden files.
    /// 
    /// The default binding for this signal is `Control + H`.
    /// - Note: Representation of signal named `show-hidden`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onShowHidden(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: FileChooserWidgetRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<FileChooserWidgetRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(FileChooserWidgetRef(raw: unownedSelf))
            return output
        }
        return signalConnectData(
            detailedSignal: "show-hidden", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The `up`-folder signal is a [keybinding signal](#GtkBindingSignal)
    /// which gets emitted when the user asks for it.
    /// 
    /// This is used to make the file chooser go to the parent of the current folder
    /// in the file hierarchy.
    /// 
    /// The default binding for this signal is `Alt + Up`.
    /// - Note: Representation of signal named `up-folder`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onUpFolder(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: FileChooserWidgetRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<FileChooserWidgetRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(FileChooserWidgetRef(raw: unownedSelf))
            return output
        }
        return signalConnectData(
            detailedSignal: "up-folder", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: Representation of signal named `notify::search-mode`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifySearchMode(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: FileChooserWidgetRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<FileChooserWidgetRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(FileChooserWidgetRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::search-mode", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: Representation of signal named `notify::subtitle`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifySubtitle(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: FileChooserWidgetRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<FileChooserWidgetRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(FileChooserWidgetRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::subtitle", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
}

// MARK: FileChooserWidget Class: FileChooserWidgetProtocol extension (methods and fields)
public extension FileChooserWidgetProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFileChooserWidget` instance.
    @inlinable var file_chooser_widget_ptr: UnsafeMutablePointer<GtkFileChooserWidget>! { return ptr?.assumingMemoryBound(to: GtkFileChooserWidget.self) }


    @inlinable var parentInstance: GtkBox {
        get {
            let rv = file_chooser_widget_ptr.pointee.parent_instance
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - FileFilter Class

/// The `FileFilterProtocol` protocol exposes the methods and properties of an underlying `GtkFileFilter` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FileFilter`.
/// Alternatively, use `FileFilterRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A GtkFileFilter can be used to restrict the files being shown in a
/// `GtkFileChooser`. Files can be filtered based on their name (with
/// `gtk_file_filter_add_pattern()`), on their mime type (with
/// `gtk_file_filter_add_mime_type()`), or by a custom filter function
/// (with `gtk_file_filter_add_custom()`).
/// 
/// Filtering by mime types handles aliasing and subclassing of mime
/// types; e.g. a filter for text/plain also matches a file with mime
/// type application/rtf, since application/rtf is a subclass of
/// text/plain. Note that `GtkFileFilter` allows wildcards for the
/// subtype of a mime type, so you can e.g. filter for image/\*.
/// 
/// Normally, filters are used by adding them to a `GtkFileChooser`,
/// see `gtk_file_chooser_add_filter()`, but it is also possible
/// to manually use a filter on a file with `gtk_file_filter_filter()`.
/// 
/// # GtkFileFilter as GtkBuildable
/// 
/// The GtkFileFilter implementation of the GtkBuildable interface
/// supports adding rules using the <mime-types>, <patterns> and
/// <applications> elements and listing the rules within. Specifying
/// a <mime-type> or <pattern> has the same effect as as calling
/// `gtk_file_filter_add_mime_type()` or `gtk_file_filter_add_pattern()`.
/// 
/// An example of a UI definition fragment specifying GtkFileFilter
/// rules:
/// ```
/// <object class="GtkFileFilter">
///   <mime-types>
///     <mime-type>text/plain</mime-type>
///     <mime-type>image/ *</mime-type>
///   </mime-types>
///   <patterns>
///     <pattern>*.txt</pattern>
///     <pattern>*.png</pattern>
///   </patterns>
/// </object>
/// ```
/// 
public protocol FileFilterProtocol: GLibObject.InitiallyUnownedProtocol, BuildableProtocol {
        /// Untyped pointer to the underlying `GtkFileFilter` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkFileFilter` instance.
    var file_filter_ptr: UnsafeMutablePointer<GtkFileFilter>! { get }

}

/// The `FileFilterRef` type acts as a lightweight Swift reference to an underlying `GtkFileFilter` instance.
/// It exposes methods that can operate on this data type through `FileFilterProtocol` conformance.
/// Use `FileFilterRef` only as an `unowned` reference to an existing `GtkFileFilter` instance.
///
/// A GtkFileFilter can be used to restrict the files being shown in a
/// `GtkFileChooser`. Files can be filtered based on their name (with
/// `gtk_file_filter_add_pattern()`), on their mime type (with
/// `gtk_file_filter_add_mime_type()`), or by a custom filter function
/// (with `gtk_file_filter_add_custom()`).
/// 
/// Filtering by mime types handles aliasing and subclassing of mime
/// types; e.g. a filter for text/plain also matches a file with mime
/// type application/rtf, since application/rtf is a subclass of
/// text/plain. Note that `GtkFileFilter` allows wildcards for the
/// subtype of a mime type, so you can e.g. filter for image/\*.
/// 
/// Normally, filters are used by adding them to a `GtkFileChooser`,
/// see `gtk_file_chooser_add_filter()`, but it is also possible
/// to manually use a filter on a file with `gtk_file_filter_filter()`.
/// 
/// # GtkFileFilter as GtkBuildable
/// 
/// The GtkFileFilter implementation of the GtkBuildable interface
/// supports adding rules using the <mime-types>, <patterns> and
/// <applications> elements and listing the rules within. Specifying
/// a <mime-type> or <pattern> has the same effect as as calling
/// `gtk_file_filter_add_mime_type()` or `gtk_file_filter_add_pattern()`.
/// 
/// An example of a UI definition fragment specifying GtkFileFilter
/// rules:
/// ```
/// <object class="GtkFileFilter">
///   <mime-types>
///     <mime-type>text/plain</mime-type>
///     <mime-type>image/ *</mime-type>
///   </mime-types>
///   <patterns>
///     <pattern>*.txt</pattern>
///     <pattern>*.png</pattern>
///   </patterns>
/// </object>
/// ```
/// 
public struct FileFilterRef: FileFilterProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkFileFilter` instance.
    /// For type-safe access, use the generated, typed pointer `file_filter_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FileFilterRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkFileFilter>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkFileFilter>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkFileFilter>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkFileFilter>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `FileFilterProtocol`
    @inlinable init<T: FileFilterProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: FileFilterProtocol>(_ other: T) -> FileFilterRef { FileFilterRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileFilterProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileFilterProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileFilterProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileFilterProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileFilterProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkFileFilter` with no rules added to it.
    /// Such a filter doesn’t accept any files, so is not
    /// particularly useful until you add rules with
    /// `gtk_file_filter_add_mime_type()`, `gtk_file_filter_add_pattern()`,
    /// or `gtk_file_filter_add_custom()`. To create a filter
    /// that accepts any file, use:
    /// (C Language Example):
    /// ```C
    /// GtkFileFilter *filter = gtk_file_filter_new ();
    /// gtk_file_filter_add_pattern (filter, "*");
    /// ```
    /// 
    @inlinable init() {
        let rv = gtk_file_filter_new()
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Deserialize a file filter from an a{sv} variant in
    /// the format produced by `gtk_file_filter_to_gvariant()`.
    @inlinable init<VariantT: GLib.VariantProtocol>(gvariant variant: VariantT) {
        let rv = gtk_file_filter_new_from_gvariant(variant.variant_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Deserialize a file filter from an a{sv} variant in
    /// the format produced by `gtk_file_filter_to_gvariant()`.
    @inlinable static func newFromG<VariantT: GLib.VariantProtocol>(gvariant variant: VariantT) -> FileFilterRef! {
        guard let rv = FileFilterRef(gconstpointer: gconstpointer(gtk_file_filter_new_from_gvariant(variant.variant_ptr))) else { return nil }
        return rv
    }
}

/// The `FileFilter` type acts as a reference-counted owner of an underlying `GtkFileFilter` instance.
/// It provides the methods that can operate on this data type through `FileFilterProtocol` conformance.
/// Use `FileFilter` as a strong reference or owner of a `GtkFileFilter` instance.
///
/// A GtkFileFilter can be used to restrict the files being shown in a
/// `GtkFileChooser`. Files can be filtered based on their name (with
/// `gtk_file_filter_add_pattern()`), on their mime type (with
/// `gtk_file_filter_add_mime_type()`), or by a custom filter function
/// (with `gtk_file_filter_add_custom()`).
/// 
/// Filtering by mime types handles aliasing and subclassing of mime
/// types; e.g. a filter for text/plain also matches a file with mime
/// type application/rtf, since application/rtf is a subclass of
/// text/plain. Note that `GtkFileFilter` allows wildcards for the
/// subtype of a mime type, so you can e.g. filter for image/\*.
/// 
/// Normally, filters are used by adding them to a `GtkFileChooser`,
/// see `gtk_file_chooser_add_filter()`, but it is also possible
/// to manually use a filter on a file with `gtk_file_filter_filter()`.
/// 
/// # GtkFileFilter as GtkBuildable
/// 
/// The GtkFileFilter implementation of the GtkBuildable interface
/// supports adding rules using the <mime-types>, <patterns> and
/// <applications> elements and listing the rules within. Specifying
/// a <mime-type> or <pattern> has the same effect as as calling
/// `gtk_file_filter_add_mime_type()` or `gtk_file_filter_add_pattern()`.
/// 
/// An example of a UI definition fragment specifying GtkFileFilter
/// rules:
/// ```
/// <object class="GtkFileFilter">
///   <mime-types>
///     <mime-type>text/plain</mime-type>
///     <mime-type>image/ *</mime-type>
///   </mime-types>
///   <patterns>
///     <pattern>*.txt</pattern>
///     <pattern>*.png</pattern>
///   </patterns>
/// </object>
/// ```
/// 
open class FileFilter: GLibObject.InitiallyUnowned, FileFilterProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileFilter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkFileFilter>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileFilter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkFileFilter>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileFilter` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileFilter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileFilter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkFileFilter>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileFilter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkFileFilter>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkFileFilter`.
    /// i.e., ownership is transferred to the `FileFilter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkFileFilter>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `FileFilterProtocol`
    /// Will retain `GtkFileFilter`.
    /// - Parameter other: an instance of a related type that implements `FileFilterProtocol`
    @inlinable public init<T: FileFilterProtocol>(fileFilter other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileFilterProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileFilterProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileFilterProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileFilterProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileFilterProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileFilterProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileFilterProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileFilterProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkFileFilter` with no rules added to it.
    /// Such a filter doesn’t accept any files, so is not
    /// particularly useful until you add rules with
    /// `gtk_file_filter_add_mime_type()`, `gtk_file_filter_add_pattern()`,
    /// or `gtk_file_filter_add_custom()`. To create a filter
    /// that accepts any file, use:
    /// (C Language Example):
    /// ```C
    /// GtkFileFilter *filter = gtk_file_filter_new ();
    /// gtk_file_filter_add_pattern (filter, "*");
    /// ```
    /// 
    @inlinable public init() {
        let rv = gtk_file_filter_new()
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Deserialize a file filter from an a{sv} variant in
    /// the format produced by `gtk_file_filter_to_gvariant()`.
    @inlinable public init<VariantT: GLib.VariantProtocol>(gvariant variant: VariantT) {
        let rv = gtk_file_filter_new_from_gvariant(variant.variant_ptr)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Deserialize a file filter from an a{sv} variant in
    /// the format produced by `gtk_file_filter_to_gvariant()`.
    @inlinable public static func newFromG<VariantT: GLib.VariantProtocol>(gvariant variant: VariantT) -> FileFilter! {
        guard let rv = FileFilter(gconstpointer: gconstpointer(gtk_file_filter_new_from_gvariant(variant.variant_ptr))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

}

// MARK: no FileFilter properties

// MARK: FileFilter has no signals// MARK: FileFilter Class: FileFilterProtocol extension (methods and fields)
public extension FileFilterProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFileFilter` instance.
    @inlinable var file_filter_ptr: UnsafeMutablePointer<GtkFileFilter>! { return ptr?.assumingMemoryBound(to: GtkFileFilter.self) }

    /// Adds rule to a filter that allows files based on a custom callback
    /// function. The bitfield `needed` which is passed in provides information
    /// about what sorts of information that the filter function needs;
    /// this allows GTK+ to avoid retrieving expensive information when
    /// it isn’t needed by the filter.
    @inlinable func addCustom(needed: FileFilterFlags, `func`: GtkFileFilterFunc?, data: gpointer! = nil, notify: GDestroyNotify?) {
        gtk_file_filter_add_custom(file_filter_ptr, needed.value, `func`, data, notify)
    
    }

    /// Adds a rule allowing a given mime type to `filter`.
    @inlinable func add(mimeType: UnsafePointer<gchar>!) {
        gtk_file_filter_add_mime_type(file_filter_ptr, mimeType)
    
    }

    /// Adds a rule allowing a shell style glob to a filter.
    @inlinable func add(pattern: UnsafePointer<gchar>!) {
        gtk_file_filter_add_pattern(file_filter_ptr, pattern)
    
    }

    /// Adds a rule allowing image files in the formats supported
    /// by GdkPixbuf.
    @inlinable func addPixbufFormats() {
        gtk_file_filter_add_pixbuf_formats(file_filter_ptr)
    
    }

    /// Tests whether a file should be displayed according to `filter`.
    /// The `GtkFileFilterInfo` `filter_info` should include
    /// the fields returned from `gtk_file_filter_get_needed()`.
    /// 
    /// This function will not typically be used by applications; it
    /// is intended principally for use in the implementation of
    /// `GtkFileChooser`.
    @inlinable func filter<FileFilterInfoT: FileFilterInfoProtocol>(filterInfo: FileFilterInfoT) -> Bool {
        let rv = ((gtk_file_filter_filter(file_filter_ptr, filterInfo._ptr)) != 0)
        return rv
    }

    /// Gets the human-readable name for the filter. See `gtk_file_filter_set_name()`.
    @inlinable func getName() -> String! {
        let rv = gtk_file_filter_get_name(file_filter_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the fields that need to be filled in for the `GtkFileFilterInfo`
    /// passed to `gtk_file_filter_filter()`
    /// 
    /// This function will not typically be used by applications; it
    /// is intended principally for use in the implementation of
    /// `GtkFileChooser`.
    @inlinable func getNeeded() -> FileFilterFlags {
        let rv = FileFilterFlags(gtk_file_filter_get_needed(file_filter_ptr))
        return rv
    }

    /// Sets the human-readable name of the filter; this is the string
    /// that will be displayed in the file selector user interface if
    /// there is a selectable list of filters.
    @inlinable func set(name: UnsafePointer<gchar>? = nil) {
        gtk_file_filter_set_name(file_filter_ptr, name)
    
    }

    /// Serialize a file filter to an a{sv} variant.
    @inlinable func toGvariant() -> GLib.VariantRef! {
        let rv = GLib.VariantRef(gtk_file_filter_to_gvariant(file_filter_ptr))
        return rv
    }
    /// Gets the human-readable name for the filter. See `gtk_file_filter_set_name()`.
    @inlinable var name: String! {
        /// Gets the human-readable name for the filter. See `gtk_file_filter_set_name()`.
        get {
            let rv = gtk_file_filter_get_name(file_filter_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the human-readable name of the filter; this is the string
        /// that will be displayed in the file selector user interface if
        /// there is a selectable list of filters.
        nonmutating set {
            gtk_file_filter_set_name(file_filter_ptr, newValue)
        }
    }

    /// Gets the fields that need to be filled in for the `GtkFileFilterInfo`
    /// passed to `gtk_file_filter_filter()`
    /// 
    /// This function will not typically be used by applications; it
    /// is intended principally for use in the implementation of
    /// `GtkFileChooser`.
    @inlinable var needed: FileFilterFlags {
        /// Gets the fields that need to be filled in for the `GtkFileFilterInfo`
        /// passed to `gtk_file_filter_filter()`
        /// 
        /// This function will not typically be used by applications; it
        /// is intended principally for use in the implementation of
        /// `GtkFileChooser`.
        get {
            let rv = FileFilterFlags(gtk_file_filter_get_needed(file_filter_ptr))
            return rv
        }
    }


}



// MARK: - Fixed Class

/// The `FixedProtocol` protocol exposes the methods and properties of an underlying `GtkFixed` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Fixed`.
/// Alternatively, use `FixedRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GtkFixed` widget is a container which can place child widgets
/// at fixed positions and with fixed sizes, given in pixels. `GtkFixed`
/// performs no automatic layout management.
/// 
/// For most applications, you should not use this container! It keeps
/// you from having to learn about the other GTK+ containers, but it
/// results in broken applications.  With `GtkFixed`, the following
/// things will result in truncated text, overlapping widgets, and
/// other display bugs:
/// 
/// - Themes, which may change widget sizes.
/// 
/// - Fonts other than the one you used to write the app will of course
///   change the size of widgets containing text; keep in mind that
///   users may use a larger font because of difficulty reading the
///   default, or they may be using a different OS that provides different fonts.
/// 
/// - Translation of text into other languages changes its size. Also,
///   display of non-English text will use a different font in many
///   cases.
/// 
/// In addition, `GtkFixed` does not pay attention to text direction and thus may
/// produce unwanted results if your app is run under right-to-left languages
/// such as Hebrew or Arabic. That is: normally GTK+ will order containers
/// appropriately for the text direction, e.g. to put labels to the right of the
/// thing they label when using an RTL language, but it can’t do that with
/// `GtkFixed`. So if you need to reorder widgets depending on the text direction,
/// you would need to manually detect it and adjust child positions accordingly.
/// 
/// Finally, fixed positioning makes it kind of annoying to add/remove
/// GUI elements, since you have to reposition all the other
/// elements. This is a long-term maintenance problem for your
/// application.
/// 
/// If you know none of these things are an issue for your application,
/// and prefer the simplicity of `GtkFixed`, by all means use the
/// widget. But you should be aware of the tradeoffs.
/// 
/// See also `GtkLayout`, which shares the ability to perform fixed positioning
/// of child widgets and additionally adds custom drawing and scrollability.
public protocol FixedProtocol: ContainerProtocol {
        /// Untyped pointer to the underlying `GtkFixed` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkFixed` instance.
    var fixed_ptr: UnsafeMutablePointer<GtkFixed>! { get }

}

/// The `FixedRef` type acts as a lightweight Swift reference to an underlying `GtkFixed` instance.
/// It exposes methods that can operate on this data type through `FixedProtocol` conformance.
/// Use `FixedRef` only as an `unowned` reference to an existing `GtkFixed` instance.
///
/// The `GtkFixed` widget is a container which can place child widgets
/// at fixed positions and with fixed sizes, given in pixels. `GtkFixed`
/// performs no automatic layout management.
/// 
/// For most applications, you should not use this container! It keeps
/// you from having to learn about the other GTK+ containers, but it
/// results in broken applications.  With `GtkFixed`, the following
/// things will result in truncated text, overlapping widgets, and
/// other display bugs:
/// 
/// - Themes, which may change widget sizes.
/// 
/// - Fonts other than the one you used to write the app will of course
///   change the size of widgets containing text; keep in mind that
///   users may use a larger font because of difficulty reading the
///   default, or they may be using a different OS that provides different fonts.
/// 
/// - Translation of text into other languages changes its size. Also,
///   display of non-English text will use a different font in many
///   cases.
/// 
/// In addition, `GtkFixed` does not pay attention to text direction and thus may
/// produce unwanted results if your app is run under right-to-left languages
/// such as Hebrew or Arabic. That is: normally GTK+ will order containers
/// appropriately for the text direction, e.g. to put labels to the right of the
/// thing they label when using an RTL language, but it can’t do that with
/// `GtkFixed`. So if you need to reorder widgets depending on the text direction,
/// you would need to manually detect it and adjust child positions accordingly.
/// 
/// Finally, fixed positioning makes it kind of annoying to add/remove
/// GUI elements, since you have to reposition all the other
/// elements. This is a long-term maintenance problem for your
/// application.
/// 
/// If you know none of these things are an issue for your application,
/// and prefer the simplicity of `GtkFixed`, by all means use the
/// widget. But you should be aware of the tradeoffs.
/// 
/// See also `GtkLayout`, which shares the ability to perform fixed positioning
/// of child widgets and additionally adds custom drawing and scrollability.
public struct FixedRef: FixedProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkFixed` instance.
    /// For type-safe access, use the generated, typed pointer `fixed_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FixedRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkFixed>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkFixed>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkFixed>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkFixed>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `FixedProtocol`
    @inlinable init<T: FixedProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: FixedProtocol>(_ other: T) -> FixedRef { FixedRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkFixed`.
    @inlinable init() {
        let rv = gtk_fixed_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `Fixed` type acts as a reference-counted owner of an underlying `GtkFixed` instance.
/// It provides the methods that can operate on this data type through `FixedProtocol` conformance.
/// Use `Fixed` as a strong reference or owner of a `GtkFixed` instance.
///
/// The `GtkFixed` widget is a container which can place child widgets
/// at fixed positions and with fixed sizes, given in pixels. `GtkFixed`
/// performs no automatic layout management.
/// 
/// For most applications, you should not use this container! It keeps
/// you from having to learn about the other GTK+ containers, but it
/// results in broken applications.  With `GtkFixed`, the following
/// things will result in truncated text, overlapping widgets, and
/// other display bugs:
/// 
/// - Themes, which may change widget sizes.
/// 
/// - Fonts other than the one you used to write the app will of course
///   change the size of widgets containing text; keep in mind that
///   users may use a larger font because of difficulty reading the
///   default, or they may be using a different OS that provides different fonts.
/// 
/// - Translation of text into other languages changes its size. Also,
///   display of non-English text will use a different font in many
///   cases.
/// 
/// In addition, `GtkFixed` does not pay attention to text direction and thus may
/// produce unwanted results if your app is run under right-to-left languages
/// such as Hebrew or Arabic. That is: normally GTK+ will order containers
/// appropriately for the text direction, e.g. to put labels to the right of the
/// thing they label when using an RTL language, but it can’t do that with
/// `GtkFixed`. So if you need to reorder widgets depending on the text direction,
/// you would need to manually detect it and adjust child positions accordingly.
/// 
/// Finally, fixed positioning makes it kind of annoying to add/remove
/// GUI elements, since you have to reposition all the other
/// elements. This is a long-term maintenance problem for your
/// application.
/// 
/// If you know none of these things are an issue for your application,
/// and prefer the simplicity of `GtkFixed`, by all means use the
/// widget. But you should be aware of the tradeoffs.
/// 
/// See also `GtkLayout`, which shares the ability to perform fixed positioning
/// of child widgets and additionally adds custom drawing and scrollability.
open class Fixed: Container, FixedProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Fixed` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkFixed>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Fixed` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkFixed>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Fixed` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Fixed` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Fixed` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkFixed>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Fixed` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkFixed>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkFixed`.
    /// i.e., ownership is transferred to the `Fixed` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkFixed>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `FixedProtocol`
    /// Will retain `GtkFixed`.
    /// - Parameter other: an instance of a related type that implements `FixedProtocol`
    @inlinable public init<T: FixedProtocol>(fixed other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkFixed`.
    @inlinable public init() {
        let rv = gtk_fixed_new()
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum FixedPropertyName: String, PropertyNameProtocol {
    case appPaintable = "app-paintable"
    case borderWidth = "border-width"
    case canDefault = "can-default"
    case canFocus = "can-focus"
    case child = "child"
    case compositeChild = "composite-child"
    /// Whether the widget is double buffered.
    ///
    /// **double-buffered is deprecated:**
    /// Widgets should not use this property.
    case doubleBuffered = "double-buffered"
    case events = "events"
    /// Whether to expand in both directions. Setting this sets both `GtkWidget:hexpand` and `GtkWidget:vexpand`
    case expand = "expand"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    /// 
    /// Before 3.20, several widgets (GtkButton, GtkFileChooserButton,
    /// GtkComboBox) implemented this property individually.
    case focusOnClick = "focus-on-click"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case halign = "halign"
    case hasDefault = "has-default"
    case hasFocus = "has-focus"
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case hasTooltip = "has-tooltip"
    case heightRequest = "height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case hexpand = "hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case hexpandSet = "hexpand-set"
    case isFocus = "is-focus"
    /// Sets all four sides' margin at once. If read, returns max
    /// margin on any side.
    case margin = "margin"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginBottom = "margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginEnd = "margin-end"
    /// Margin on left side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-left is deprecated:**
    /// Use #GtkWidget:margin-start instead.
    case marginLeft = "margin-left"
    /// Margin on right side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-right is deprecated:**
    /// Use #GtkWidget:margin-end instead.
    case marginRight = "margin-right"
    /// Margin on start of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginStart = "margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginTop = "margin-top"
    case name = "name"
    case noShowAll = "no-show-all"
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case opacity = "opacity"
    case parent = "parent"
    case receivesDefault = "receives-default"
    case resizeMode = "resize-mode"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case sensitive = "sensitive"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case style = "style"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language](#PangoMarkupFormat).
    /// Also see `gtk_tooltip_set_markup()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case tooltipMarkup = "tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see `gtk_tooltip_set_text()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case tooltipText = "tooltip-text"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case valign = "valign"
    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    case vexpand = "vexpand"
    /// Whether to use the `GtkWidget:vexpand` property. See `gtk_widget_get_vexpand_set()`.
    case vexpandSet = "vexpand-set"
    case visible = "visible"
    case widthRequest = "width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case window = "window"
}

public extension FixedProtocol {
    /// Bind a `FixedPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: FixedPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
        }

        let rv = _bind(source_property.name, to: target, target_property.name, flags: f, holder: BindingClosureHolder(transform_from, transform_to), transformFrom: {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_from(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }) {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_to(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }
        return rv
    }

    /// Get the value of a Fixed property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: FixedPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Fixed property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: FixedPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: Fixed has no signals// MARK: Fixed Class: FixedProtocol extension (methods and fields)
public extension FixedProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFixed` instance.
    @inlinable var fixed_ptr: UnsafeMutablePointer<GtkFixed>! { return ptr?.assumingMemoryBound(to: GtkFixed.self) }

    /// Moves a child of a `GtkFixed` container to the given position.
    @inlinable func move<WidgetT: WidgetProtocol>(widget: WidgetT, x: Int, y: Int) {
        gtk_fixed_move(fixed_ptr, widget.widget_ptr, gint(x), gint(y))
    
    }

    /// Adds a widget to a `GtkFixed` container at the given position.
    @inlinable func put<WidgetT: WidgetProtocol>(widget: WidgetT, x: Int, y: Int) {
        gtk_fixed_put(fixed_ptr, widget.widget_ptr, gint(x), gint(y))
    
    }

    @inlinable var container: GtkContainer {
        get {
            let rv = fixed_ptr.pointee.container
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - FlowBox Class

/// The `FlowBoxProtocol` protocol exposes the methods and properties of an underlying `GtkFlowBox` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FlowBox`.
/// Alternatively, use `FlowBoxRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A GtkFlowBox positions child widgets in sequence according to its
/// orientation.
/// 
/// For instance, with the horizontal orientation, the widgets will be
/// arranged from left to right, starting a new row under the previous
/// row when necessary. Reducing the width in this case will require more
/// rows, so a larger height will be requested.
/// 
/// Likewise, with the vertical orientation, the widgets will be arranged
/// from top to bottom, starting a new column to the right when necessary.
/// Reducing the height will require more columns, so a larger width will
/// be requested.
/// 
/// The size request of a GtkFlowBox alone may not be what you expect; if you
/// need to be able to shrink it along both axes and dynamically reflow its
/// children, you may have to wrap it in a `GtkScrolledWindow` to enable that.
/// 
/// The children of a GtkFlowBox can be dynamically sorted and filtered.
/// 
/// Although a GtkFlowBox must have only `GtkFlowBoxChild` children,
/// you can add any kind of widget to it via `gtk_container_add()`, and
/// a GtkFlowBoxChild widget will automatically be inserted between
/// the box and the widget.
/// 
/// Also see `GtkListBox`.
/// 
/// GtkFlowBox was added in GTK+ 3.12.
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
/// flowbox
/// ├── flowboxchild
/// │   ╰── <child>
/// ├── flowboxchild
/// │   ╰── <child>
/// ┊
/// ╰── [rubberband]
/// ```
/// 
/// GtkFlowBox uses a single CSS node with name flowbox. GtkFlowBoxChild
/// uses a single CSS node with name flowboxchild.
/// For rubberband selection, a subnode with name rubberband is used.
public protocol FlowBoxProtocol: ContainerProtocol, OrientableProtocol {
        /// Untyped pointer to the underlying `GtkFlowBox` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkFlowBox` instance.
    var flow_box_ptr: UnsafeMutablePointer<GtkFlowBox>! { get }

}

/// The `FlowBoxRef` type acts as a lightweight Swift reference to an underlying `GtkFlowBox` instance.
/// It exposes methods that can operate on this data type through `FlowBoxProtocol` conformance.
/// Use `FlowBoxRef` only as an `unowned` reference to an existing `GtkFlowBox` instance.
///
/// A GtkFlowBox positions child widgets in sequence according to its
/// orientation.
/// 
/// For instance, with the horizontal orientation, the widgets will be
/// arranged from left to right, starting a new row under the previous
/// row when necessary. Reducing the width in this case will require more
/// rows, so a larger height will be requested.
/// 
/// Likewise, with the vertical orientation, the widgets will be arranged
/// from top to bottom, starting a new column to the right when necessary.
/// Reducing the height will require more columns, so a larger width will
/// be requested.
/// 
/// The size request of a GtkFlowBox alone may not be what you expect; if you
/// need to be able to shrink it along both axes and dynamically reflow its
/// children, you may have to wrap it in a `GtkScrolledWindow` to enable that.
/// 
/// The children of a GtkFlowBox can be dynamically sorted and filtered.
/// 
/// Although a GtkFlowBox must have only `GtkFlowBoxChild` children,
/// you can add any kind of widget to it via `gtk_container_add()`, and
/// a GtkFlowBoxChild widget will automatically be inserted between
/// the box and the widget.
/// 
/// Also see `GtkListBox`.
/// 
/// GtkFlowBox was added in GTK+ 3.12.
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
/// flowbox
/// ├── flowboxchild
/// │   ╰── <child>
/// ├── flowboxchild
/// │   ╰── <child>
/// ┊
/// ╰── [rubberband]
/// ```
/// 
/// GtkFlowBox uses a single CSS node with name flowbox. GtkFlowBoxChild
/// uses a single CSS node with name flowboxchild.
/// For rubberband selection, a subnode with name rubberband is used.
public struct FlowBoxRef: FlowBoxProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkFlowBox` instance.
    /// For type-safe access, use the generated, typed pointer `flow_box_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FlowBoxRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkFlowBox>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkFlowBox>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkFlowBox>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkFlowBox>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `FlowBoxProtocol`
    @inlinable init<T: FlowBoxProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: FlowBoxProtocol>(_ other: T) -> FlowBoxRef { FlowBoxRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a GtkFlowBox.
    @inlinable init() {
        let rv = gtk_flow_box_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `FlowBox` type acts as a reference-counted owner of an underlying `GtkFlowBox` instance.
/// It provides the methods that can operate on this data type through `FlowBoxProtocol` conformance.
/// Use `FlowBox` as a strong reference or owner of a `GtkFlowBox` instance.
///
/// A GtkFlowBox positions child widgets in sequence according to its
/// orientation.
/// 
/// For instance, with the horizontal orientation, the widgets will be
/// arranged from left to right, starting a new row under the previous
/// row when necessary. Reducing the width in this case will require more
/// rows, so a larger height will be requested.
/// 
/// Likewise, with the vertical orientation, the widgets will be arranged
/// from top to bottom, starting a new column to the right when necessary.
/// Reducing the height will require more columns, so a larger width will
/// be requested.
/// 
/// The size request of a GtkFlowBox alone may not be what you expect; if you
/// need to be able to shrink it along both axes and dynamically reflow its
/// children, you may have to wrap it in a `GtkScrolledWindow` to enable that.
/// 
/// The children of a GtkFlowBox can be dynamically sorted and filtered.
/// 
/// Although a GtkFlowBox must have only `GtkFlowBoxChild` children,
/// you can add any kind of widget to it via `gtk_container_add()`, and
/// a GtkFlowBoxChild widget will automatically be inserted between
/// the box and the widget.
/// 
/// Also see `GtkListBox`.
/// 
/// GtkFlowBox was added in GTK+ 3.12.
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
/// flowbox
/// ├── flowboxchild
/// │   ╰── <child>
/// ├── flowboxchild
/// │   ╰── <child>
/// ┊
/// ╰── [rubberband]
/// ```
/// 
/// GtkFlowBox uses a single CSS node with name flowbox. GtkFlowBoxChild
/// uses a single CSS node with name flowboxchild.
/// For rubberband selection, a subnode with name rubberband is used.
open class FlowBox: Container, FlowBoxProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FlowBox` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkFlowBox>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FlowBox` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkFlowBox>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FlowBox` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FlowBox` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FlowBox` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkFlowBox>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FlowBox` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkFlowBox>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkFlowBox`.
    /// i.e., ownership is transferred to the `FlowBox` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkFlowBox>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `FlowBoxProtocol`
    /// Will retain `GtkFlowBox`.
    /// - Parameter other: an instance of a related type that implements `FlowBoxProtocol`
    @inlinable public init<T: FlowBoxProtocol>(flowBox other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a GtkFlowBox.
    @inlinable public init() {
        let rv = gtk_flow_box_new()
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum FlowBoxPropertyName: String, PropertyNameProtocol {
    /// Determines whether children can be activated with a single
    /// click, or require a double-click.
    case activateOnSingleClick = "activate-on-single-click"
    case appPaintable = "app-paintable"
    case borderWidth = "border-width"
    case canDefault = "can-default"
    case canFocus = "can-focus"
    case child = "child"
    /// The amount of horizontal space between two children.
    case columnSpacing = "column-spacing"
    case compositeChild = "composite-child"
    /// Whether the widget is double buffered.
    ///
    /// **double-buffered is deprecated:**
    /// Widgets should not use this property.
    case doubleBuffered = "double-buffered"
    case events = "events"
    /// Whether to expand in both directions. Setting this sets both `GtkWidget:hexpand` and `GtkWidget:vexpand`
    case expand = "expand"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    /// 
    /// Before 3.20, several widgets (GtkButton, GtkFileChooserButton,
    /// GtkComboBox) implemented this property individually.
    case focusOnClick = "focus-on-click"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case halign = "halign"
    case hasDefault = "has-default"
    case hasFocus = "has-focus"
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case hasTooltip = "has-tooltip"
    case heightRequest = "height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case hexpand = "hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case hexpandSet = "hexpand-set"
    /// Determines whether all children should be allocated the
    /// same size.
    case homogeneous = "homogeneous"
    case isFocus = "is-focus"
    /// Sets all four sides' margin at once. If read, returns max
    /// margin on any side.
    case margin = "margin"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginBottom = "margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginEnd = "margin-end"
    /// Margin on left side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-left is deprecated:**
    /// Use #GtkWidget:margin-start instead.
    case marginLeft = "margin-left"
    /// Margin on right side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-right is deprecated:**
    /// Use #GtkWidget:margin-end instead.
    case marginRight = "margin-right"
    /// Margin on start of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginStart = "margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginTop = "margin-top"
    /// The maximum amount of children to request space for consecutively
    /// in the given orientation.
    case maxChildrenPerLine = "max-children-per-line"
    /// The minimum number of children to allocate consecutively
    /// in the given orientation.
    /// 
    /// Setting the minimum children per line ensures
    /// that a reasonably small height will be requested
    /// for the overall minimum width of the box.
    case minChildrenPerLine = "min-children-per-line"
    case name = "name"
    case noShowAll = "no-show-all"
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case opacity = "opacity"
    case parent = "parent"
    case receivesDefault = "receives-default"
    case resizeMode = "resize-mode"
    /// The amount of vertical space between two children.
    case rowSpacing = "row-spacing"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    /// The selection mode used by the flow  box.
    case selectionMode = "selection-mode"
    case sensitive = "sensitive"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case style = "style"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language](#PangoMarkupFormat).
    /// Also see `gtk_tooltip_set_markup()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case tooltipMarkup = "tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see `gtk_tooltip_set_text()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case tooltipText = "tooltip-text"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case valign = "valign"
    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    case vexpand = "vexpand"
    /// Whether to use the `GtkWidget:vexpand` property. See `gtk_widget_get_vexpand_set()`.
    case vexpandSet = "vexpand-set"
    case visible = "visible"
    case widthRequest = "width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case window = "window"
}

public extension FlowBoxProtocol {
    /// Bind a `FlowBoxPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: FlowBoxPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
        }

        let rv = _bind(source_property.name, to: target, target_property.name, flags: f, holder: BindingClosureHolder(transform_from, transform_to), transformFrom: {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_from(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }) {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_to(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }
        return rv
    }

    /// Get the value of a FlowBox property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: FlowBoxPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a FlowBox property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: FlowBoxPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: Signals of FlowBox
public extension FlowBoxProtocol {
    /// The `activate`-cursor-child signal is a
    /// [keybinding signal](#GtkBindingSignal)
    /// which gets emitted when the user activates the `box`.
    /// - Note: Representation of signal named `activate-cursor-child`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onActivateCursorChild(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: FlowBoxRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<FlowBoxRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(FlowBoxRef(raw: unownedSelf))
            return output
        }
        return signalConnectData(
            detailedSignal: "activate-cursor-child", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The `child`-activated signal is emitted when a child has been
    /// activated by the user.
    /// - Note: Representation of signal named `child-activated`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter child: the child that is activated
    @discardableResult
    func onChildActivated(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: FlowBoxRef, _ child: FlowBoxChildRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<FlowBoxRef, FlowBoxChildRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(FlowBoxRef(raw: unownedSelf), FlowBoxChildRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "child-activated", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The `move`-cursor signal is a
    /// [keybinding signal](#GtkBindingSignal)
    /// which gets emitted when the user initiates a cursor movement.
    /// 
    /// Applications should not connect to it, but may emit it with
    /// `g_signal_emit_by_name()` if they need to control the cursor
    /// programmatically.
    /// 
    /// The default bindings for this signal come in two variants,
    /// the variant with the Shift modifier extends the selection,
    /// the variant without the Shift modifer does not.
    /// There are too many key combinations to list them all here.
    /// - Arrow keys move by individual children
    /// - Home/End keys move to the ends of the box
    /// - PageUp/PageDown keys move vertically by pages
    /// - Note: Representation of signal named `move-cursor`
    /// - Parameter flags: Flags
    /// - Parameter handler: `true` to stop other handlers from being invoked for the event. `false` to propagate the event further.
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter step: the granularity fo the move, as a `GtkMovementStep`
    /// - Parameter count: the number of `step` units to move
    @discardableResult
    func onMoveCursor(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: FlowBoxRef, _ step: MovementStep, _ count: Int) -> Bool ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder3<FlowBoxRef, MovementStep, Int, Bool>
        let cCallback: @convention(c) (gpointer, UInt32, gint, gpointer) -> gboolean = { unownedSelf, arg1, arg2, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output = holder.call(FlowBoxRef(raw: unownedSelf), MovementStep(arg1), Int(arg2))
            return gboolean((output) ? 1 : 0)
        }
        return signalConnectData(
            detailedSignal: "move-cursor", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The `select`-all signal is a
    /// [keybinding signal](#GtkBindingSignal)
    /// which gets emitted to select all children of the box, if
    /// the selection mode permits it.
    /// 
    /// The default bindings for this signal is Ctrl-a.
    /// - Note: Representation of signal named `select-all`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onSelectAll(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: FlowBoxRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<FlowBoxRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(FlowBoxRef(raw: unownedSelf))
            return output
        }
        return signalConnectData(
            detailedSignal: "select-all", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The `selected`-children-changed signal is emitted when the
    /// set of selected children changes.
    /// 
    /// Use `gtk_flow_box_selected_foreach()` or
    /// `gtk_flow_box_get_selected_children()` to obtain the
    /// selected children.
    /// - Note: Representation of signal named `selected-children-changed`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onSelectedChildrenChanged(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: FlowBoxRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<FlowBoxRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(FlowBoxRef(raw: unownedSelf))
            return output
        }
        return signalConnectData(
            detailedSignal: "selected-children-changed", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The `toggle`-cursor-child signal is a
    /// [keybinding signal](#GtkBindingSignal)
    /// which toggles the selection of the child that has the focus.
    /// 
    /// The default binding for this signal is Ctrl-Space.
    /// - Note: Representation of signal named `toggle-cursor-child`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onToggleCursorChild(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: FlowBoxRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<FlowBoxRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(FlowBoxRef(raw: unownedSelf))
            return output
        }
        return signalConnectData(
            detailedSignal: "toggle-cursor-child", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The `unselect`-all signal is a
    /// [keybinding signal](#GtkBindingSignal)
    /// which gets emitted to unselect all children of the box, if
    /// the selection mode permits it.
    /// 
    /// The default bindings for this signal is Ctrl-Shift-a.
    /// - Note: Representation of signal named `unselect-all`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onUnselectAll(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: FlowBoxRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<FlowBoxRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(FlowBoxRef(raw: unownedSelf))
            return output
        }
        return signalConnectData(
            detailedSignal: "unselect-all", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: Representation of signal named `notify::activate-on-single-click`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyActivateOnSingleClick(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: FlowBoxRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<FlowBoxRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(FlowBoxRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::activate-on-single-click", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: Representation of signal named `notify::column-spacing`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyColumnSpacing(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: FlowBoxRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<FlowBoxRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(FlowBoxRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::column-spacing", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: Representation of signal named `notify::homogeneous`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyHomogeneous(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: FlowBoxRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<FlowBoxRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(FlowBoxRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::homogeneous", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: Representation of signal named `notify::max-children-per-line`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyMaxChildrenPerLine(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: FlowBoxRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<FlowBoxRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(FlowBoxRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::max-children-per-line", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: Representation of signal named `notify::min-children-per-line`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyMinChildrenPerLine(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: FlowBoxRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<FlowBoxRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(FlowBoxRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::min-children-per-line", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: Representation of signal named `notify::row-spacing`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyRowSpacing(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: FlowBoxRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<FlowBoxRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(FlowBoxRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::row-spacing", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: Representation of signal named `notify::selection-mode`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifySelectionMode(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: FlowBoxRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<FlowBoxRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(FlowBoxRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::selection-mode", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
}

// MARK: FlowBox Class: FlowBoxProtocol extension (methods and fields)
public extension FlowBoxProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFlowBox` instance.
    @inlinable var flow_box_ptr: UnsafeMutablePointer<GtkFlowBox>! { return ptr?.assumingMemoryBound(to: GtkFlowBox.self) }

    /// Binds `model` to `box`.
    /// 
    /// If `box` was already bound to a model, that previous binding is
    /// destroyed.
    /// 
    /// The contents of `box` are cleared and then filled with widgets that
    /// represent items from `model`. `box` is updated whenever `model` changes.
    /// If `model` is `nil`, `box` is left empty.
    /// 
    /// It is undefined to add or remove widgets directly (for example, with
    /// `gtk_flow_box_insert()` or `gtk_container_add()`) while `box` is bound to a
    /// model.
    /// 
    /// Note that using a model is incompatible with the filtering and sorting
    /// functionality in GtkFlowBox. When using a model, filtering and sorting
    /// should be implemented by the model.
    @inlinable func bind(model: GIO.ListModelRef? = nil, createWidgetFunc: GtkFlowBoxCreateWidgetFunc?, userData: gpointer! = nil, userDataFreeFunc: GDestroyNotify?) {
        gtk_flow_box_bind_model(flow_box_ptr, model?.list_model_ptr, createWidgetFunc, userData, userDataFreeFunc)
    
    }
    /// Binds `model` to `box`.
    /// 
    /// If `box` was already bound to a model, that previous binding is
    /// destroyed.
    /// 
    /// The contents of `box` are cleared and then filled with widgets that
    /// represent items from `model`. `box` is updated whenever `model` changes.
    /// If `model` is `nil`, `box` is left empty.
    /// 
    /// It is undefined to add or remove widgets directly (for example, with
    /// `gtk_flow_box_insert()` or `gtk_container_add()`) while `box` is bound to a
    /// model.
    /// 
    /// Note that using a model is incompatible with the filtering and sorting
    /// functionality in GtkFlowBox. When using a model, filtering and sorting
    /// should be implemented by the model.
    @inlinable func bind<ListModelT: GIO.ListModelProtocol>(model: ListModelT?, createWidgetFunc: GtkFlowBoxCreateWidgetFunc?, userData: gpointer! = nil, userDataFreeFunc: GDestroyNotify?) {
        gtk_flow_box_bind_model(flow_box_ptr, model?.list_model_ptr, createWidgetFunc, userData, userDataFreeFunc)
    
    }

    /// Returns whether children activate on single clicks.
    @inlinable func getActivateOnSingleClick() -> Bool {
        let rv = ((gtk_flow_box_get_activate_on_single_click(flow_box_ptr)) != 0)
        return rv
    }

    /// Gets the nth child in the `box`.
    @inlinable func getChildAtIndex(idx: Int) -> FlowBoxChildRef! {
        let rv = FlowBoxChildRef(gconstpointer: gconstpointer(gtk_flow_box_get_child_at_index(flow_box_ptr, gint(idx))))
        return rv
    }

    /// Gets the child in the (`x`, `y`) position.
    @inlinable func getChildAtPos(x: Int, y: Int) -> FlowBoxChildRef! {
        let rv = FlowBoxChildRef(gconstpointer: gconstpointer(gtk_flow_box_get_child_at_pos(flow_box_ptr, gint(x), gint(y))))
        return rv
    }

    /// Gets the horizontal spacing.
    @inlinable func getColumnSpacing() -> Int {
        let rv = Int(gtk_flow_box_get_column_spacing(flow_box_ptr))
        return rv
    }

    /// Returns whether the box is homogeneous (all children are the
    /// same size). See `gtk_box_set_homogeneous()`.
    @inlinable func getHomogeneous() -> Bool {
        let rv = ((gtk_flow_box_get_homogeneous(flow_box_ptr)) != 0)
        return rv
    }

    /// Gets the maximum number of children per line.
    @inlinable func getMaxChildrenPerLine() -> Int {
        let rv = Int(gtk_flow_box_get_max_children_per_line(flow_box_ptr))
        return rv
    }

    /// Gets the minimum number of children per line.
    @inlinable func getMinChildrenPerLine() -> Int {
        let rv = Int(gtk_flow_box_get_min_children_per_line(flow_box_ptr))
        return rv
    }

    /// Gets the vertical spacing.
    @inlinable func getRowSpacing() -> Int {
        let rv = Int(gtk_flow_box_get_row_spacing(flow_box_ptr))
        return rv
    }

    /// Creates a list of all selected children.
    @inlinable func getSelectedChildren() -> GLib.ListRef! {
        let rv = GLib.ListRef(gtk_flow_box_get_selected_children(flow_box_ptr))
        return rv
    }

    /// Gets the selection mode of `box`.
    @inlinable func getSelectionMode() -> GtkSelectionMode {
        let rv = gtk_flow_box_get_selection_mode(flow_box_ptr)
        return rv
    }

    /// Inserts the `widget` into `box` at `position`.
    /// 
    /// If a sort function is set, the widget will actually be inserted
    /// at the calculated position and this function has the same effect
    /// as `gtk_container_add()`.
    /// 
    /// If `position` is -1, or larger than the total number of children
    /// in the `box`, then the `widget` will be appended to the end.
    @inlinable func insert<WidgetT: WidgetProtocol>(widget: WidgetT, position: Int) {
        gtk_flow_box_insert(flow_box_ptr, widget.widget_ptr, gint(position))
    
    }

    /// Updates the filtering for all children.
    /// 
    /// Call this function when the result of the filter
    /// function on the `box` is changed due ot an external
    /// factor. For instance, this would be used if the
    /// filter function just looked for a specific search
    /// term, and the entry with the string has changed.
    @inlinable func invalidateFilter() {
        gtk_flow_box_invalidate_filter(flow_box_ptr)
    
    }

    /// Updates the sorting for all children.
    /// 
    /// Call this when the result of the sort function on
    /// `box` is changed due to an external factor.
    @inlinable func invalidateSort() {
        gtk_flow_box_invalidate_sort(flow_box_ptr)
    
    }

    /// Select all children of `box`, if the selection
    /// mode allows it.
    @inlinable func selectAll() {
        gtk_flow_box_select_all(flow_box_ptr)
    
    }

    /// Selects a single child of `box`, if the selection
    /// mode allows it.
    @inlinable func select<FlowBoxChildT: FlowBoxChildProtocol>(child: FlowBoxChildT) {
        gtk_flow_box_select_child(flow_box_ptr, child.flow_box_child_ptr)
    
    }

    /// Calls a function for each selected child.
    /// 
    /// Note that the selection cannot be modified from within
    /// this function.
    @inlinable func selectedForeach(`func`: GtkFlowBoxForeachFunc?, data: gpointer! = nil) {
        gtk_flow_box_selected_foreach(flow_box_ptr, `func`, data)
    
    }

    /// If `single` is `true`, children will be activated when you click
    /// on them, otherwise you need to double-click.
    @inlinable func setActivateOnSingleClick(single: Bool) {
        gtk_flow_box_set_activate_on_single_click(flow_box_ptr, gboolean((single) ? 1 : 0))
    
    }

    /// Sets the horizontal space to add between children.
    /// See the `GtkFlowBox:column`-spacing property.
    @inlinable func setColumn(spacing: Int) {
        gtk_flow_box_set_column_spacing(flow_box_ptr, guint(spacing))
    
    }

    /// By setting a filter function on the `box` one can decide dynamically
    /// which of the children to show. For instance, to implement a search
    /// function that only shows the children matching the search terms.
    /// 
    /// The `filter_func` will be called for each child after the call, and
    /// it will continue to be called each time a child changes (via
    /// `gtk_flow_box_child_changed()`) or when `gtk_flow_box_invalidate_filter()`
    /// is called.
    /// 
    /// Note that using a filter function is incompatible with using a model
    /// (see `gtk_flow_box_bind_model()`).
    @inlinable func set(filterFunc: GtkFlowBoxFilterFunc? = nil, userData: gpointer! = nil, destroy: GDestroyNotify?) {
        gtk_flow_box_set_filter_func(flow_box_ptr, filterFunc, userData, destroy)
    
    }

    /// Hooks up an adjustment to focus handling in `box`.
    /// The adjustment is also used for autoscrolling during
    /// rubberband selection. See `gtk_scrolled_window_get_hadjustment()`
    /// for a typical way of obtaining the adjustment, and
    /// `gtk_flow_box_set_vadjustment()`for setting the vertical
    /// adjustment.
    /// 
    /// The adjustments have to be in pixel units and in the same
    /// coordinate system as the allocation for immediate children
    /// of the box.
    @inlinable func setHadjustment<AdjustmentT: AdjustmentProtocol>(adjustment: AdjustmentT) {
        gtk_flow_box_set_hadjustment(flow_box_ptr, adjustment.adjustment_ptr)
    
    }

    /// Sets the `GtkFlowBox:homogeneous` property of `box`, controlling
    /// whether or not all children of `box` are given equal space
    /// in the box.
    @inlinable func set(homogeneous: Bool) {
        gtk_flow_box_set_homogeneous(flow_box_ptr, gboolean((homogeneous) ? 1 : 0))
    
    }

    /// Sets the maximum number of children to request and
    /// allocate space for in `box`’s orientation.
    /// 
    /// Setting the maximum number of children per line
    /// limits the overall natural size request to be no more
    /// than `n_children` children long in the given orientation.
    @inlinable func setMaxChildrenPerLine(nChildren: Int) {
        gtk_flow_box_set_max_children_per_line(flow_box_ptr, guint(nChildren))
    
    }

    /// Sets the minimum number of children to line up
    /// in `box`’s orientation before flowing.
    @inlinable func setMinChildrenPerLine(nChildren: Int) {
        gtk_flow_box_set_min_children_per_line(flow_box_ptr, guint(nChildren))
    
    }

    /// Sets the vertical space to add between children.
    /// See the `GtkFlowBox:row`-spacing property.
    @inlinable func setRow(spacing: Int) {
        gtk_flow_box_set_row_spacing(flow_box_ptr, guint(spacing))
    
    }

    /// Sets how selection works in `box`.
    /// See `GtkSelectionMode` for details.
    @inlinable func setSelection(mode: GtkSelectionMode) {
        gtk_flow_box_set_selection_mode(flow_box_ptr, mode)
    
    }

    /// By setting a sort function on the `box`, one can dynamically
    /// reorder the children of the box, based on the contents of
    /// the children.
    /// 
    /// The `sort_func` will be called for each child after the call,
    /// and will continue to be called each time a child changes (via
    /// `gtk_flow_box_child_changed()`) and when `gtk_flow_box_invalidate_sort()`
    /// is called.
    /// 
    /// Note that using a sort function is incompatible with using a model
    /// (see `gtk_flow_box_bind_model()`).
    @inlinable func set(sortFunc: GtkFlowBoxSortFunc? = nil, userData: gpointer! = nil, destroy: GDestroyNotify?) {
        gtk_flow_box_set_sort_func(flow_box_ptr, sortFunc, userData, destroy)
    
    }

    /// Hooks up an adjustment to focus handling in `box`.
    /// The adjustment is also used for autoscrolling during
    /// rubberband selection. See `gtk_scrolled_window_get_vadjustment()`
    /// for a typical way of obtaining the adjustment, and
    /// `gtk_flow_box_set_hadjustment()`for setting the horizontal
    /// adjustment.
    /// 
    /// The adjustments have to be in pixel units and in the same
    /// coordinate system as the allocation for immediate children
    /// of the box.
    @inlinable func setVadjustment<AdjustmentT: AdjustmentProtocol>(adjustment: AdjustmentT) {
        gtk_flow_box_set_vadjustment(flow_box_ptr, adjustment.adjustment_ptr)
    
    }

    /// Unselect all children of `box`, if the selection
    /// mode allows it.
    @inlinable func unselectAll() {
        gtk_flow_box_unselect_all(flow_box_ptr)
    
    }

    /// Unselects a single child of `box`, if the selection
    /// mode allows it.
    @inlinable func unselect<FlowBoxChildT: FlowBoxChildProtocol>(child: FlowBoxChildT) {
        gtk_flow_box_unselect_child(flow_box_ptr, child.flow_box_child_ptr)
    
    }
    /// Returns whether children activate on single clicks.
    @inlinable var activateOnSingleClick: Bool {
        /// Returns whether children activate on single clicks.
        get {
            let rv = ((gtk_flow_box_get_activate_on_single_click(flow_box_ptr)) != 0)
            return rv
        }
        /// If `single` is `true`, children will be activated when you click
        /// on them, otherwise you need to double-click.
        nonmutating set {
            gtk_flow_box_set_activate_on_single_click(flow_box_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Gets the horizontal spacing.
    @inlinable var columnSpacing: Int {
        /// Gets the horizontal spacing.
        get {
            let rv = Int(gtk_flow_box_get_column_spacing(flow_box_ptr))
            return rv
        }
        /// Sets the horizontal space to add between children.
        /// See the `GtkFlowBox:column`-spacing property.
        nonmutating set {
            gtk_flow_box_set_column_spacing(flow_box_ptr, guint(newValue))
        }
    }

    /// Determines whether all children should be allocated the
    /// same size.
    @inlinable var homogeneous: Bool {
        /// Returns whether the box is homogeneous (all children are the
        /// same size). See `gtk_box_set_homogeneous()`.
        get {
            let rv = ((gtk_flow_box_get_homogeneous(flow_box_ptr)) != 0)
            return rv
        }
        /// Sets the `GtkFlowBox:homogeneous` property of `box`, controlling
        /// whether or not all children of `box` are given equal space
        /// in the box.
        nonmutating set {
            gtk_flow_box_set_homogeneous(flow_box_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Gets the maximum number of children per line.
    @inlinable var maxChildrenPerLine: Int {
        /// Gets the maximum number of children per line.
        get {
            let rv = Int(gtk_flow_box_get_max_children_per_line(flow_box_ptr))
            return rv
        }
        /// Sets the maximum number of children to request and
        /// allocate space for in `box`’s orientation.
        /// 
        /// Setting the maximum number of children per line
        /// limits the overall natural size request to be no more
        /// than `n_children` children long in the given orientation.
        nonmutating set {
            gtk_flow_box_set_max_children_per_line(flow_box_ptr, guint(newValue))
        }
    }

    /// Gets the minimum number of children per line.
    @inlinable var minChildrenPerLine: Int {
        /// Gets the minimum number of children per line.
        get {
            let rv = Int(gtk_flow_box_get_min_children_per_line(flow_box_ptr))
            return rv
        }
        /// Sets the minimum number of children to line up
        /// in `box`’s orientation before flowing.
        nonmutating set {
            gtk_flow_box_set_min_children_per_line(flow_box_ptr, guint(newValue))
        }
    }

    /// Gets the vertical spacing.
    @inlinable var rowSpacing: Int {
        /// Gets the vertical spacing.
        get {
            let rv = Int(gtk_flow_box_get_row_spacing(flow_box_ptr))
            return rv
        }
        /// Sets the vertical space to add between children.
        /// See the `GtkFlowBox:row`-spacing property.
        nonmutating set {
            gtk_flow_box_set_row_spacing(flow_box_ptr, guint(newValue))
        }
    }

    /// Creates a list of all selected children.
    @inlinable var selectedChildren: GLib.ListRef! {
        /// Creates a list of all selected children.
        get {
            let rv = GLib.ListRef(gtk_flow_box_get_selected_children(flow_box_ptr))
            return rv
        }
    }

    /// Gets the selection mode of `box`.
    @inlinable var selectionMode: GtkSelectionMode {
        /// Gets the selection mode of `box`.
        get {
            let rv = gtk_flow_box_get_selection_mode(flow_box_ptr)
            return rv
        }
        /// Sets how selection works in `box`.
        /// See `GtkSelectionMode` for details.
        nonmutating set {
            gtk_flow_box_set_selection_mode(flow_box_ptr, newValue)
        }
    }

    @inlinable var container: GtkContainer {
        get {
            let rv = flow_box_ptr.pointee.container
            return rv
        }
    }

}



// MARK: - FlowBoxAccessible Class

/// The `FlowBoxAccessibleProtocol` protocol exposes the methods and properties of an underlying `GtkFlowBoxAccessible` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FlowBoxAccessible`.
/// Alternatively, use `FlowBoxAccessibleRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FlowBoxAccessibleProtocol: ContainerAccessibleProtocol, Atk.SelectionProtocol {
        /// Untyped pointer to the underlying `GtkFlowBoxAccessible` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkFlowBoxAccessible` instance.
    var flow_box_accessible_ptr: UnsafeMutablePointer<GtkFlowBoxAccessible>! { get }

}

/// The `FlowBoxAccessibleRef` type acts as a lightweight Swift reference to an underlying `GtkFlowBoxAccessible` instance.
/// It exposes methods that can operate on this data type through `FlowBoxAccessibleProtocol` conformance.
/// Use `FlowBoxAccessibleRef` only as an `unowned` reference to an existing `GtkFlowBoxAccessible` instance.
///

public struct FlowBoxAccessibleRef: FlowBoxAccessibleProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkFlowBoxAccessible` instance.
    /// For type-safe access, use the generated, typed pointer `flow_box_accessible_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FlowBoxAccessibleRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkFlowBoxAccessible>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkFlowBoxAccessible>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkFlowBoxAccessible>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkFlowBoxAccessible>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `FlowBoxAccessibleProtocol`
    @inlinable init<T: FlowBoxAccessibleProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: FlowBoxAccessibleProtocol>(_ other: T) -> FlowBoxAccessibleRef { FlowBoxAccessibleRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxAccessibleProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxAccessibleProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxAccessibleProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxAccessibleProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxAccessibleProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FlowBoxAccessible` type acts as a reference-counted owner of an underlying `GtkFlowBoxAccessible` instance.
/// It provides the methods that can operate on this data type through `FlowBoxAccessibleProtocol` conformance.
/// Use `FlowBoxAccessible` as a strong reference or owner of a `GtkFlowBoxAccessible` instance.
///

open class FlowBoxAccessible: ContainerAccessible, FlowBoxAccessibleProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FlowBoxAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkFlowBoxAccessible>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FlowBoxAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkFlowBoxAccessible>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FlowBoxAccessible` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FlowBoxAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FlowBoxAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkFlowBoxAccessible>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FlowBoxAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkFlowBoxAccessible>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkFlowBoxAccessible`.
    /// i.e., ownership is transferred to the `FlowBoxAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkFlowBoxAccessible>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `FlowBoxAccessibleProtocol`
    /// Will retain `GtkFlowBoxAccessible`.
    /// - Parameter other: an instance of a related type that implements `FlowBoxAccessibleProtocol`
    @inlinable public init<T: FlowBoxAccessibleProtocol>(flowBoxAccessible other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxAccessibleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxAccessibleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxAccessibleProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxAccessibleProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxAccessibleProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxAccessibleProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxAccessibleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxAccessibleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum FlowBoxAccessiblePropertyName: String, PropertyNameProtocol {
    case accessibleComponentLayer = "accessible-component-layer"
    case accessibleComponentMdiZorder = "accessible-component-mdi-zorder"
    case accessibleDescription = "accessible-description"
    case accessibleHypertextNlinks = "accessible-hypertext-nlinks"
    case accessibleName = "accessible-name"
    case accessibleParent = "accessible-parent"
    case accessibleRole = "accessible-role"
    /// Table caption.
    ///
    /// **accessible-table-caption is deprecated:**
    /// Since 1.3. Use table-caption-object instead.
    case accessibleTableCaption = "accessible-table-caption"
    case accessibleTableCaptionObject = "accessible-table-caption-object"
    /// Accessible table column description.
    ///
    /// **accessible-table-column-description is deprecated:**
    /// Since 2.12. Use atk_table_get_column_description()
    /// and atk_table_set_column_description() instead.
    case accessibleTableColumnDescription = "accessible-table-column-description"
    /// Accessible table column header.
    ///
    /// **accessible-table-column-header is deprecated:**
    /// Since 2.12. Use atk_table_get_column_header() and
    /// atk_table_set_column_header() instead.
    case accessibleTableColumnHeader = "accessible-table-column-header"
    /// Accessible table row description.
    ///
    /// **accessible-table-row-description is deprecated:**
    /// Since 2.12. Use atk_table_get_row_description() and
    /// atk_table_set_row_description() instead.
    case accessibleTableRowDescription = "accessible-table-row-description"
    /// Accessible table row header.
    ///
    /// **accessible-table-row-header is deprecated:**
    /// Since 2.12. Use atk_table_get_row_header() and
    /// atk_table_set_row_header() instead.
    case accessibleTableRowHeader = "accessible-table-row-header"
    case accessibleTableSummary = "accessible-table-summary"
    /// Numeric value of this object, in case being and AtkValue.
    ///
    /// **accessible-value is deprecated:**
    /// Since 2.12. Use atk_value_get_value_and_text() to get
    /// the value, and value-changed signal to be notified on their value
    /// changes.
    case accessibleValue = "accessible-value"
    case widget = "widget"
}

public extension FlowBoxAccessibleProtocol {
    /// Bind a `FlowBoxAccessiblePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: FlowBoxAccessiblePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
        }

        let rv = _bind(source_property.name, to: target, target_property.name, flags: f, holder: BindingClosureHolder(transform_from, transform_to), transformFrom: {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_from(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }) {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_to(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }
        return rv
    }

    /// Get the value of a FlowBoxAccessible property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: FlowBoxAccessiblePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a FlowBoxAccessible property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: FlowBoxAccessiblePropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: FlowBoxAccessible has no signals// MARK: FlowBoxAccessible Class: FlowBoxAccessibleProtocol extension (methods and fields)
public extension FlowBoxAccessibleProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFlowBoxAccessible` instance.
    @inlinable var flow_box_accessible_ptr: UnsafeMutablePointer<GtkFlowBoxAccessible>! { return ptr?.assumingMemoryBound(to: GtkFlowBoxAccessible.self) }


    @inlinable var parent: GtkContainerAccessible {
        get {
            let rv = flow_box_accessible_ptr.pointee.parent
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - FlowBoxChild Class

/// The `FlowBoxChildProtocol` protocol exposes the methods and properties of an underlying `GtkFlowBoxChild` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FlowBoxChild`.
/// Alternatively, use `FlowBoxChildRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FlowBoxChildProtocol: BinProtocol {
        /// Untyped pointer to the underlying `GtkFlowBoxChild` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkFlowBoxChild` instance.
    var flow_box_child_ptr: UnsafeMutablePointer<GtkFlowBoxChild>! { get }

}

/// The `FlowBoxChildRef` type acts as a lightweight Swift reference to an underlying `GtkFlowBoxChild` instance.
/// It exposes methods that can operate on this data type through `FlowBoxChildProtocol` conformance.
/// Use `FlowBoxChildRef` only as an `unowned` reference to an existing `GtkFlowBoxChild` instance.
///

public struct FlowBoxChildRef: FlowBoxChildProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkFlowBoxChild` instance.
    /// For type-safe access, use the generated, typed pointer `flow_box_child_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FlowBoxChildRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkFlowBoxChild>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkFlowBoxChild>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkFlowBoxChild>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkFlowBoxChild>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `FlowBoxChildProtocol`
    @inlinable init<T: FlowBoxChildProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: FlowBoxChildProtocol>(_ other: T) -> FlowBoxChildRef { FlowBoxChildRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxChildProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxChildProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxChildProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxChildProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxChildProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkFlowBoxChild`, to be used as a child
    /// of a `GtkFlowBox`.
    @inlinable init() {
        let rv = gtk_flow_box_child_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `FlowBoxChild` type acts as a reference-counted owner of an underlying `GtkFlowBoxChild` instance.
/// It provides the methods that can operate on this data type through `FlowBoxChildProtocol` conformance.
/// Use `FlowBoxChild` as a strong reference or owner of a `GtkFlowBoxChild` instance.
///

open class FlowBoxChild: Bin, FlowBoxChildProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FlowBoxChild` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkFlowBoxChild>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FlowBoxChild` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkFlowBoxChild>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FlowBoxChild` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FlowBoxChild` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FlowBoxChild` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkFlowBoxChild>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FlowBoxChild` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkFlowBoxChild>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkFlowBoxChild`.
    /// i.e., ownership is transferred to the `FlowBoxChild` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkFlowBoxChild>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `FlowBoxChildProtocol`
    /// Will retain `GtkFlowBoxChild`.
    /// - Parameter other: an instance of a related type that implements `FlowBoxChildProtocol`
    @inlinable public init<T: FlowBoxChildProtocol>(flowBoxChild other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxChildProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxChildProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxChildProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxChildProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxChildProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxChildProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxChildProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxChildProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkFlowBoxChild`, to be used as a child
    /// of a `GtkFlowBox`.
    @inlinable public init() {
        let rv = gtk_flow_box_child_new()
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum FlowBoxChildPropertyName: String, PropertyNameProtocol {
    case appPaintable = "app-paintable"
    case borderWidth = "border-width"
    case canDefault = "can-default"
    case canFocus = "can-focus"
    case child = "child"
    case compositeChild = "composite-child"
    /// Whether the widget is double buffered.
    ///
    /// **double-buffered is deprecated:**
    /// Widgets should not use this property.
    case doubleBuffered = "double-buffered"
    case events = "events"
    /// Whether to expand in both directions. Setting this sets both `GtkWidget:hexpand` and `GtkWidget:vexpand`
    case expand = "expand"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    /// 
    /// Before 3.20, several widgets (GtkButton, GtkFileChooserButton,
    /// GtkComboBox) implemented this property individually.
    case focusOnClick = "focus-on-click"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case halign = "halign"
    case hasDefault = "has-default"
    case hasFocus = "has-focus"
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case hasTooltip = "has-tooltip"
    case heightRequest = "height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case hexpand = "hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case hexpandSet = "hexpand-set"
    case isFocus = "is-focus"
    /// Sets all four sides' margin at once. If read, returns max
    /// margin on any side.
    case margin = "margin"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginBottom = "margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginEnd = "margin-end"
    /// Margin on left side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-left is deprecated:**
    /// Use #GtkWidget:margin-start instead.
    case marginLeft = "margin-left"
    /// Margin on right side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-right is deprecated:**
    /// Use #GtkWidget:margin-end instead.
    case marginRight = "margin-right"
    /// Margin on start of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginStart = "margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginTop = "margin-top"
    case name = "name"
    case noShowAll = "no-show-all"
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case opacity = "opacity"
    case parent = "parent"
    case receivesDefault = "receives-default"
    case resizeMode = "resize-mode"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case sensitive = "sensitive"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case style = "style"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language](#PangoMarkupFormat).
    /// Also see `gtk_tooltip_set_markup()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case tooltipMarkup = "tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see `gtk_tooltip_set_text()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case tooltipText = "tooltip-text"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case valign = "valign"
    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    case vexpand = "vexpand"
    /// Whether to use the `GtkWidget:vexpand` property. See `gtk_widget_get_vexpand_set()`.
    case vexpandSet = "vexpand-set"
    case visible = "visible"
    case widthRequest = "width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case window = "window"
}

public extension FlowBoxChildProtocol {
    /// Bind a `FlowBoxChildPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: FlowBoxChildPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
        }

        let rv = _bind(source_property.name, to: target, target_property.name, flags: f, holder: BindingClosureHolder(transform_from, transform_to), transformFrom: {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_from(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }) {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_to(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }
        return rv
    }

    /// Get the value of a FlowBoxChild property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: FlowBoxChildPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a FlowBoxChild property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: FlowBoxChildPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: Signals of FlowBoxChild
public extension FlowBoxChildProtocol {
    /// The `activate` signal is emitted when the user activates
    /// a child widget in a `GtkFlowBox`, either by clicking or
    /// double-clicking, or by using the Space or Enter key.
    /// 
    /// While this signal is used as a
    /// [keybinding signal](#GtkBindingSignal),
    /// it can be used by applications for their own purposes.
    /// - Note: Representation of signal named `activate`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onActivate(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: FlowBoxChildRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<FlowBoxChildRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(FlowBoxChildRef(raw: unownedSelf))
            return output
        }
        return signalConnectData(
            detailedSignal: "activate", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    
}

// MARK: FlowBoxChild Class: FlowBoxChildProtocol extension (methods and fields)
public extension FlowBoxChildProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFlowBoxChild` instance.
    @inlinable var flow_box_child_ptr: UnsafeMutablePointer<GtkFlowBoxChild>! { return ptr?.assumingMemoryBound(to: GtkFlowBoxChild.self) }

    /// Marks `child` as changed, causing any state that depends on this
    /// to be updated. This affects sorting and filtering.
    /// 
    /// Note that calls to this method must be in sync with the data
    /// used for the sorting and filtering functions. For instance, if
    /// the list is mirroring some external data set, and *two* children
    /// changed in the external data set when you call
    /// `gtk_flow_box_child_changed()` on the first child, the sort function
    /// must only read the new data for the first of the two changed
    /// children, otherwise the resorting of the children will be wrong.
    /// 
    /// This generally means that if you don’t fully control the data
    /// model, you have to duplicate the data that affects the sorting
    /// and filtering functions into the widgets themselves. Another
    /// alternative is to call `gtk_flow_box_invalidate_sort()` on any
    /// model change, but that is more expensive.
    @inlinable func changed() {
        gtk_flow_box_child_changed(flow_box_child_ptr)
    
    }

    /// Gets the current index of the `child` in its `GtkFlowBox` container.
    @inlinable func getIndex() -> Int {
        let rv = Int(gtk_flow_box_child_get_index(flow_box_child_ptr))
        return rv
    }
    /// Gets the current index of the `child` in its `GtkFlowBox` container.
    @inlinable var index: Int {
        /// Gets the current index of the `child` in its `GtkFlowBox` container.
        get {
            let rv = Int(gtk_flow_box_child_get_index(flow_box_child_ptr))
            return rv
        }
    }

    /// Returns whether the `child` is currently selected in its
    /// `GtkFlowBox` container.
    @inlinable var isSelected: Bool {
        /// Returns whether the `child` is currently selected in its
        /// `GtkFlowBox` container.
        get {
            let rv = ((gtk_flow_box_child_is_selected(flow_box_child_ptr)) != 0)
            return rv
        }
    }

    @inlinable var parentInstance: GtkBin {
        get {
            let rv = flow_box_child_ptr.pointee.parent_instance
            return rv
        }
    }

}



// MARK: - FlowBoxChildAccessible Class

/// The `FlowBoxChildAccessibleProtocol` protocol exposes the methods and properties of an underlying `GtkFlowBoxChildAccessible` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FlowBoxChildAccessible`.
/// Alternatively, use `FlowBoxChildAccessibleRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FlowBoxChildAccessibleProtocol: ContainerAccessibleProtocol {
        /// Untyped pointer to the underlying `GtkFlowBoxChildAccessible` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkFlowBoxChildAccessible` instance.
    var flow_box_child_accessible_ptr: UnsafeMutablePointer<GtkFlowBoxChildAccessible>! { get }

}

/// The `FlowBoxChildAccessibleRef` type acts as a lightweight Swift reference to an underlying `GtkFlowBoxChildAccessible` instance.
/// It exposes methods that can operate on this data type through `FlowBoxChildAccessibleProtocol` conformance.
/// Use `FlowBoxChildAccessibleRef` only as an `unowned` reference to an existing `GtkFlowBoxChildAccessible` instance.
///

public struct FlowBoxChildAccessibleRef: FlowBoxChildAccessibleProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkFlowBoxChildAccessible` instance.
    /// For type-safe access, use the generated, typed pointer `flow_box_child_accessible_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FlowBoxChildAccessibleRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkFlowBoxChildAccessible>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkFlowBoxChildAccessible>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkFlowBoxChildAccessible>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkFlowBoxChildAccessible>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `FlowBoxChildAccessibleProtocol`
    @inlinable init<T: FlowBoxChildAccessibleProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: FlowBoxChildAccessibleProtocol>(_ other: T) -> FlowBoxChildAccessibleRef { FlowBoxChildAccessibleRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxChildAccessibleProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxChildAccessibleProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxChildAccessibleProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxChildAccessibleProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxChildAccessibleProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FlowBoxChildAccessible` type acts as a reference-counted owner of an underlying `GtkFlowBoxChildAccessible` instance.
/// It provides the methods that can operate on this data type through `FlowBoxChildAccessibleProtocol` conformance.
/// Use `FlowBoxChildAccessible` as a strong reference or owner of a `GtkFlowBoxChildAccessible` instance.
///

open class FlowBoxChildAccessible: ContainerAccessible, FlowBoxChildAccessibleProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FlowBoxChildAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkFlowBoxChildAccessible>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FlowBoxChildAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkFlowBoxChildAccessible>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FlowBoxChildAccessible` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FlowBoxChildAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FlowBoxChildAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkFlowBoxChildAccessible>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FlowBoxChildAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkFlowBoxChildAccessible>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkFlowBoxChildAccessible`.
    /// i.e., ownership is transferred to the `FlowBoxChildAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkFlowBoxChildAccessible>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `FlowBoxChildAccessibleProtocol`
    /// Will retain `GtkFlowBoxChildAccessible`.
    /// - Parameter other: an instance of a related type that implements `FlowBoxChildAccessibleProtocol`
    @inlinable public init<T: FlowBoxChildAccessibleProtocol>(flowBoxChildAccessible other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxChildAccessibleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxChildAccessibleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxChildAccessibleProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxChildAccessibleProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxChildAccessibleProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxChildAccessibleProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxChildAccessibleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlowBoxChildAccessibleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum FlowBoxChildAccessiblePropertyName: String, PropertyNameProtocol {
    case accessibleComponentLayer = "accessible-component-layer"
    case accessibleComponentMdiZorder = "accessible-component-mdi-zorder"
    case accessibleDescription = "accessible-description"
    case accessibleHypertextNlinks = "accessible-hypertext-nlinks"
    case accessibleName = "accessible-name"
    case accessibleParent = "accessible-parent"
    case accessibleRole = "accessible-role"
    /// Table caption.
    ///
    /// **accessible-table-caption is deprecated:**
    /// Since 1.3. Use table-caption-object instead.
    case accessibleTableCaption = "accessible-table-caption"
    case accessibleTableCaptionObject = "accessible-table-caption-object"
    /// Accessible table column description.
    ///
    /// **accessible-table-column-description is deprecated:**
    /// Since 2.12. Use atk_table_get_column_description()
    /// and atk_table_set_column_description() instead.
    case accessibleTableColumnDescription = "accessible-table-column-description"
    /// Accessible table column header.
    ///
    /// **accessible-table-column-header is deprecated:**
    /// Since 2.12. Use atk_table_get_column_header() and
    /// atk_table_set_column_header() instead.
    case accessibleTableColumnHeader = "accessible-table-column-header"
    /// Accessible table row description.
    ///
    /// **accessible-table-row-description is deprecated:**
    /// Since 2.12. Use atk_table_get_row_description() and
    /// atk_table_set_row_description() instead.
    case accessibleTableRowDescription = "accessible-table-row-description"
    /// Accessible table row header.
    ///
    /// **accessible-table-row-header is deprecated:**
    /// Since 2.12. Use atk_table_get_row_header() and
    /// atk_table_set_row_header() instead.
    case accessibleTableRowHeader = "accessible-table-row-header"
    case accessibleTableSummary = "accessible-table-summary"
    /// Numeric value of this object, in case being and AtkValue.
    ///
    /// **accessible-value is deprecated:**
    /// Since 2.12. Use atk_value_get_value_and_text() to get
    /// the value, and value-changed signal to be notified on their value
    /// changes.
    case accessibleValue = "accessible-value"
    case widget = "widget"
}

public extension FlowBoxChildAccessibleProtocol {
    /// Bind a `FlowBoxChildAccessiblePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: FlowBoxChildAccessiblePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
        }

        let rv = _bind(source_property.name, to: target, target_property.name, flags: f, holder: BindingClosureHolder(transform_from, transform_to), transformFrom: {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_from(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }) {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_to(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }
        return rv
    }

    /// Get the value of a FlowBoxChildAccessible property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: FlowBoxChildAccessiblePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a FlowBoxChildAccessible property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: FlowBoxChildAccessiblePropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: FlowBoxChildAccessible has no signals// MARK: FlowBoxChildAccessible Class: FlowBoxChildAccessibleProtocol extension (methods and fields)
public extension FlowBoxChildAccessibleProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFlowBoxChildAccessible` instance.
    @inlinable var flow_box_child_accessible_ptr: UnsafeMutablePointer<GtkFlowBoxChildAccessible>! { return ptr?.assumingMemoryBound(to: GtkFlowBoxChildAccessible.self) }


    @inlinable var parent: GtkContainerAccessible {
        get {
            let rv = flow_box_child_accessible_ptr.pointee.parent
            return rv
        }
    }

}



// MARK: - FontButton Class

/// The `FontButtonProtocol` protocol exposes the methods and properties of an underlying `GtkFontButton` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FontButton`.
/// Alternatively, use `FontButtonRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GtkFontButton` is a button which displays the currently selected
/// font an allows to open a font chooser dialog to change the font.
/// It is suitable widget for selecting a font in a preference dialog.
/// 
/// # CSS nodes
/// 
/// GtkFontButton has a single CSS node with name button and style class .font.
public protocol FontButtonProtocol: ButtonProtocol, FontChooserProtocol {
        /// Untyped pointer to the underlying `GtkFontButton` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkFontButton` instance.
    var font_button_ptr: UnsafeMutablePointer<GtkFontButton>! { get }

}

/// The `FontButtonRef` type acts as a lightweight Swift reference to an underlying `GtkFontButton` instance.
/// It exposes methods that can operate on this data type through `FontButtonProtocol` conformance.
/// Use `FontButtonRef` only as an `unowned` reference to an existing `GtkFontButton` instance.
///
/// The `GtkFontButton` is a button which displays the currently selected
/// font an allows to open a font chooser dialog to change the font.
/// It is suitable widget for selecting a font in a preference dialog.
/// 
/// # CSS nodes
/// 
/// GtkFontButton has a single CSS node with name button and style class .font.
public struct FontButtonRef: FontButtonProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkFontButton` instance.
    /// For type-safe access, use the generated, typed pointer `font_button_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FontButtonRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkFontButton>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkFontButton>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkFontButton>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkFontButton>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `FontButtonProtocol`
    @inlinable init<T: FontButtonProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: FontButtonProtocol>(_ other: T) -> FontButtonRef { FontButtonRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontButtonProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontButtonProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontButtonProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontButtonProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontButtonProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new font picker widget.
    @inlinable init() {
        let rv = gtk_font_button_new()
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new font picker widget.
    @inlinable init(font fontname: UnsafePointer<gchar>!) {
        let rv = gtk_font_button_new_with_font(fontname)
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a new font picker widget.
    @inlinable static func newWith(font fontname: UnsafePointer<gchar>!) -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_font_button_new_with_font(fontname))) else { return nil }
        return rv
    }
}

/// The `FontButton` type acts as a reference-counted owner of an underlying `GtkFontButton` instance.
/// It provides the methods that can operate on this data type through `FontButtonProtocol` conformance.
/// Use `FontButton` as a strong reference or owner of a `GtkFontButton` instance.
///
/// The `GtkFontButton` is a button which displays the currently selected
/// font an allows to open a font chooser dialog to change the font.
/// It is suitable widget for selecting a font in a preference dialog.
/// 
/// # CSS nodes
/// 
/// GtkFontButton has a single CSS node with name button and style class .font.
open class FontButton: Button, FontButtonProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontButton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkFontButton>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontButton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkFontButton>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontButton` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontButton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontButton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkFontButton>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontButton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkFontButton>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkFontButton`.
    /// i.e., ownership is transferred to the `FontButton` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkFontButton>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `FontButtonProtocol`
    /// Will retain `GtkFontButton`.
    /// - Parameter other: an instance of a related type that implements `FontButtonProtocol`
    @inlinable public init<T: FontButtonProtocol>(fontButton other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontButtonProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontButtonProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontButtonProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontButtonProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontButtonProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontButtonProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontButtonProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontButtonProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new font picker widget.
    @inlinable override public init() {
        let rv = gtk_font_button_new()
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new font picker widget.
    @inlinable public init(font fontname: UnsafePointer<gchar>!) {
        let rv = gtk_font_button_new_with_font(fontname)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new font picker widget.
    @inlinable public static func newWith(font fontname: UnsafePointer<gchar>!) -> Widget! {
        guard let rv = Widget(gconstpointer: gconstpointer(gtk_font_button_new_with_font(fontname))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

}

public enum FontButtonPropertyName: String, PropertyNameProtocol {
    /// If `true`, the button will ignore the `GtkSettings:gtk`-button-images
    /// setting and always show the image, if available.
    /// 
    /// Use this property if the button would be useless or hard to use
    /// without the image.
    case alwaysShowImage = "always-show-image"
    case appPaintable = "app-paintable"
    case borderWidth = "border-width"
    case canDefault = "can-default"
    case canFocus = "can-focus"
    case child = "child"
    case compositeChild = "composite-child"
    /// Whether the widget is double buffered.
    ///
    /// **double-buffered is deprecated:**
    /// Widgets should not use this property.
    case doubleBuffered = "double-buffered"
    case events = "events"
    /// Whether to expand in both directions. Setting this sets both `GtkWidget:hexpand` and `GtkWidget:vexpand`
    case expand = "expand"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    /// 
    /// Before 3.20, several widgets (GtkButton, GtkFileChooserButton,
    /// GtkComboBox) implemented this property individually.
    case focusOnClick = "focus-on-click"
    /// The name of the currently selected font.
    ///
    /// **font-name is deprecated:**
    /// Use the #GtkFontChooser::font property instead
    case fontName = "font-name"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case halign = "halign"
    case hasDefault = "has-default"
    case hasFocus = "has-focus"
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case hasTooltip = "has-tooltip"
    case heightRequest = "height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case hexpand = "hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case hexpandSet = "hexpand-set"
    /// The child widget to appear next to the button text.
    case image = "image"
    /// The position of the image relative to the text inside the button.
    case imagePosition = "image-position"
    case isFocus = "is-focus"
    case label = "label"
    /// Sets all four sides' margin at once. If read, returns max
    /// margin on any side.
    case margin = "margin"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginBottom = "margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginEnd = "margin-end"
    /// Margin on left side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-left is deprecated:**
    /// Use #GtkWidget:margin-start instead.
    case marginLeft = "margin-left"
    /// Margin on right side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-right is deprecated:**
    /// Use #GtkWidget:margin-end instead.
    case marginRight = "margin-right"
    /// Margin on start of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginStart = "margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginTop = "margin-top"
    case name = "name"
    case noShowAll = "no-show-all"
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case opacity = "opacity"
    case parent = "parent"
    case receivesDefault = "receives-default"
    case relief = "relief"
    case resizeMode = "resize-mode"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case sensitive = "sensitive"
    /// If this property is set to `true`, the selected font size will be shown
    /// in the label. For a more WYSIWYG way to show the selected size, see the
    /// `use`-size property.
    case showSize = "show-size"
    /// If this property is set to `true`, the name of the selected font style
    /// will be shown in the label. For a more WYSIWYG way to show the selected
    /// style, see the `use`-font property.
    case showStyle = "show-style"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case style = "style"
    /// The title of the font chooser dialog.
    case title = "title"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language](#PangoMarkupFormat).
    /// Also see `gtk_tooltip_set_markup()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case tooltipMarkup = "tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see `gtk_tooltip_set_text()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case tooltipText = "tooltip-text"
    /// If this property is set to `true`, the label will be drawn
    /// in the selected font.
    case useFont = "use-font"
    /// If this property is set to `true`, the label will be drawn
    /// with the selected font size.
    case useSize = "use-size"

    ///
    /// **use-stock is deprecated:**
    /// This method is deprecated.
    case useStock = "use-stock"
    case useUnderline = "use-underline"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case valign = "valign"
    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    case vexpand = "vexpand"
    /// Whether to use the `GtkWidget:vexpand` property. See `gtk_widget_get_vexpand_set()`.
    case vexpandSet = "vexpand-set"
    case visible = "visible"
    case widthRequest = "width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case window = "window"
    /// If the child of the button is a `GtkMisc` or `GtkAlignment`, this property
    /// can be used to control its horizontal alignment. 0.0 is left aligned,
    /// 1.0 is right aligned.
    ///
    /// **xalign is deprecated:**
    /// Access the child widget directly if you need to control
    /// its alignment.
    case xalign = "xalign"
    /// If the child of the button is a `GtkMisc` or `GtkAlignment`, this property
    /// can be used to control its vertical alignment. 0.0 is top aligned,
    /// 1.0 is bottom aligned.
    ///
    /// **yalign is deprecated:**
    /// Access the child widget directly if you need to control
    /// its alignment.
    case yalign = "yalign"
}

public extension FontButtonProtocol {
    /// Bind a `FontButtonPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: FontButtonPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
        }

        let rv = _bind(source_property.name, to: target, target_property.name, flags: f, holder: BindingClosureHolder(transform_from, transform_to), transformFrom: {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_from(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }) {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_to(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }
        return rv
    }

    /// Get the value of a FontButton property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: FontButtonPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a FontButton property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: FontButtonPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: Signals of FontButton
public extension FontButtonProtocol {
    /// The `font`-set signal is emitted when the user selects a font.
    /// When handling this signal, use `gtk_font_chooser_get_font()`
    /// to find out which font was just selected.
    /// 
    /// Note that this signal is only emitted when the user
    /// changes the font. If you need to react to programmatic font changes
    /// as well, use the notify`font` signal.
    /// - Note: Representation of signal named `font-set`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    @discardableResult
    func onFontSet(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: FontButtonRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<FontButtonRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(FontButtonRef(raw: unownedSelf))
            return output
        }
        return signalConnectData(
            detailedSignal: "font-set", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: Representation of signal named `notify::font-name`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyFontName(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: FontButtonRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<FontButtonRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(FontButtonRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::font-name", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: Representation of signal named `notify::show-size`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyShowSize(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: FontButtonRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<FontButtonRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(FontButtonRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::show-size", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: Representation of signal named `notify::show-style`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyShowStyle(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: FontButtonRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<FontButtonRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(FontButtonRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::show-style", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: Representation of signal named `notify::title`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyTitle(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: FontButtonRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<FontButtonRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(FontButtonRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::title", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: Representation of signal named `notify::use-font`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyUseFont(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: FontButtonRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<FontButtonRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(FontButtonRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::use-font", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: Representation of signal named `notify::use-size`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyUseSize(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: FontButtonRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<FontButtonRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(FontButtonRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::use-size", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
}

// MARK: FontButton Class: FontButtonProtocol extension (methods and fields)
public extension FontButtonProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFontButton` instance.
    @inlinable var font_button_ptr: UnsafeMutablePointer<GtkFontButton>! { return ptr?.assumingMemoryBound(to: GtkFontButton.self) }

    /// Retrieves the name of the currently selected font. This name includes
    /// style and size information as well. If you want to render something
    /// with the font, use this string with `pango_font_description_from_string()` .
    /// If you’re interested in peeking certain values (family name,
    /// style, size, weight) just query these properties from the
    /// `PangoFontDescription` object.
    ///
    /// **get_font_name is deprecated:**
    /// Use gtk_font_chooser_get_font() instead
    @available(*, deprecated)
    @inlinable func getFontName() -> String! {
        let rv = gtk_font_button_get_font_name(font_button_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Returns whether the font size will be shown in the label.
    @inlinable func getShowSize() -> Bool {
        let rv = ((gtk_font_button_get_show_size(font_button_ptr)) != 0)
        return rv
    }

    /// Returns whether the name of the font style will be shown in the label.
    @inlinable func getShowStyle() -> Bool {
        let rv = ((gtk_font_button_get_show_style(font_button_ptr)) != 0)
        return rv
    }

    /// Retrieves the title of the font chooser dialog.
    @inlinable func getTitle() -> String! {
        let rv = gtk_font_button_get_title(font_button_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Returns whether the selected font is used in the label.
    @inlinable func getUseFont() -> Bool {
        let rv = ((gtk_font_button_get_use_font(font_button_ptr)) != 0)
        return rv
    }

    /// Returns whether the selected size is used in the label.
    @inlinable func getUseSize() -> Bool {
        let rv = ((gtk_font_button_get_use_size(font_button_ptr)) != 0)
        return rv
    }

    /// Sets or updates the currently-displayed font in font picker dialog.
    ///
    /// **set_font_name is deprecated:**
    /// Use gtk_font_chooser_set_font() instead
    @available(*, deprecated)
    @inlinable func setFontName(fontname: UnsafePointer<gchar>!) -> Bool {
        let rv = ((gtk_font_button_set_font_name(font_button_ptr, fontname)) != 0)
        return rv
    }

    /// If `show_size` is `true`, the font size will be displayed along with the name of the selected font.
    @inlinable func set(showSize: Bool) {
        gtk_font_button_set_show_size(font_button_ptr, gboolean((showSize) ? 1 : 0))
    
    }

    /// If `show_style` is `true`, the font style will be displayed along with name of the selected font.
    @inlinable func set(showStyle: Bool) {
        gtk_font_button_set_show_style(font_button_ptr, gboolean((showStyle) ? 1 : 0))
    
    }

    /// Sets the title for the font chooser dialog.
    @inlinable func set(title: UnsafePointer<gchar>!) {
        gtk_font_button_set_title(font_button_ptr, title)
    
    }

    /// If `use_font` is `true`, the font name will be written using the selected font.
    @inlinable func set(useFont: Bool) {
        gtk_font_button_set_use_font(font_button_ptr, gboolean((useFont) ? 1 : 0))
    
    }

    /// If `use_size` is `true`, the font name will be written using the selected size.
    @inlinable func set(useSize: Bool) {
        gtk_font_button_set_use_size(font_button_ptr, gboolean((useSize) ? 1 : 0))
    
    }
    /// Retrieves the name of the currently selected font. This name includes
    /// style and size information as well. If you want to render something
    /// with the font, use this string with `pango_font_description_from_string()` .
    /// If you’re interested in peeking certain values (family name,
    /// style, size, weight) just query these properties from the
    /// `PangoFontDescription` object.
    ///
    /// **get_font_name is deprecated:**
    /// Use gtk_font_chooser_get_font() instead
    @inlinable var fontName: String! {
        /// Retrieves the name of the currently selected font. This name includes
        /// style and size information as well. If you want to render something
        /// with the font, use this string with `pango_font_description_from_string()` .
        /// If you’re interested in peeking certain values (family name,
        /// style, size, weight) just query these properties from the
        /// `PangoFontDescription` object.
        ///
        /// **get_font_name is deprecated:**
        /// Use gtk_font_chooser_get_font() instead
        @available(*, deprecated)
    get {
            let rv = gtk_font_button_get_font_name(font_button_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets or updates the currently-displayed font in font picker dialog.
        ///
        /// **set_font_name is deprecated:**
        /// Use gtk_font_chooser_set_font() instead
        @available(*, deprecated)
    nonmutating set {
            _ = gtk_font_button_set_font_name(font_button_ptr, newValue)
        }
    }

    /// Returns whether the font size will be shown in the label.
    @inlinable var showSize: Bool {
        /// Returns whether the font size will be shown in the label.
        get {
            let rv = ((gtk_font_button_get_show_size(font_button_ptr)) != 0)
            return rv
        }
        /// If `show_size` is `true`, the font size will be displayed along with the name of the selected font.
        nonmutating set {
            gtk_font_button_set_show_size(font_button_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Returns whether the name of the font style will be shown in the label.
    @inlinable var showStyle: Bool {
        /// Returns whether the name of the font style will be shown in the label.
        get {
            let rv = ((gtk_font_button_get_show_style(font_button_ptr)) != 0)
            return rv
        }
        /// If `show_style` is `true`, the font style will be displayed along with name of the selected font.
        nonmutating set {
            gtk_font_button_set_show_style(font_button_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// The title of the font chooser dialog.
    @inlinable var title: String! {
        /// Retrieves the title of the font chooser dialog.
        get {
            let rv = gtk_font_button_get_title(font_button_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the title for the font chooser dialog.
        nonmutating set {
            gtk_font_button_set_title(font_button_ptr, newValue)
        }
    }

    /// Returns whether the selected font is used in the label.
    @inlinable var useFont: Bool {
        /// Returns whether the selected font is used in the label.
        get {
            let rv = ((gtk_font_button_get_use_font(font_button_ptr)) != 0)
            return rv
        }
        /// If `use_font` is `true`, the font name will be written using the selected font.
        nonmutating set {
            gtk_font_button_set_use_font(font_button_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Returns whether the selected size is used in the label.
    @inlinable var useSize: Bool {
        /// Returns whether the selected size is used in the label.
        get {
            let rv = ((gtk_font_button_get_use_size(font_button_ptr)) != 0)
            return rv
        }
        /// If `use_size` is `true`, the font name will be written using the selected size.
        nonmutating set {
            gtk_font_button_set_use_size(font_button_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    @inlinable var button: GtkButton {
        get {
            let rv = font_button_ptr.pointee.button
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - FontChooserDialog Class

/// The `FontChooserDialogProtocol` protocol exposes the methods and properties of an underlying `GtkFontChooserDialog` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FontChooserDialog`.
/// Alternatively, use `FontChooserDialogRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GtkFontChooserDialog` widget is a dialog for selecting a font.
/// It implements the `GtkFontChooser` interface.
/// 
/// # GtkFontChooserDialog as GtkBuildable
/// 
/// The GtkFontChooserDialog implementation of the `GtkBuildable`
/// interface exposes the buttons with the names “select_button”
/// and “cancel_button”.
public protocol FontChooserDialogProtocol: DialogProtocol, FontChooserProtocol {
        /// Untyped pointer to the underlying `GtkFontChooserDialog` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkFontChooserDialog` instance.
    var font_chooser_dialog_ptr: UnsafeMutablePointer<GtkFontChooserDialog>! { get }

}

/// The `FontChooserDialogRef` type acts as a lightweight Swift reference to an underlying `GtkFontChooserDialog` instance.
/// It exposes methods that can operate on this data type through `FontChooserDialogProtocol` conformance.
/// Use `FontChooserDialogRef` only as an `unowned` reference to an existing `GtkFontChooserDialog` instance.
///
/// The `GtkFontChooserDialog` widget is a dialog for selecting a font.
/// It implements the `GtkFontChooser` interface.
/// 
/// # GtkFontChooserDialog as GtkBuildable
/// 
/// The GtkFontChooserDialog implementation of the `GtkBuildable`
/// interface exposes the buttons with the names “select_button”
/// and “cancel_button”.
public struct FontChooserDialogRef: FontChooserDialogProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkFontChooserDialog` instance.
    /// For type-safe access, use the generated, typed pointer `font_chooser_dialog_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FontChooserDialogRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkFontChooserDialog>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkFontChooserDialog>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkFontChooserDialog>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkFontChooserDialog>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `FontChooserDialogProtocol`
    @inlinable init<T: FontChooserDialogProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: FontChooserDialogProtocol>(_ other: T) -> FontChooserDialogRef { FontChooserDialogRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserDialogProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserDialogProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserDialogProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserDialogProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserDialogProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkFontChooserDialog`.
    @inlinable init<WindowT: WindowProtocol>( title: UnsafePointer<gchar>? = nil, parent: WindowT?) {
        let rv = gtk_font_chooser_dialog_new(title, parent?.window_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `FontChooserDialog` type acts as a reference-counted owner of an underlying `GtkFontChooserDialog` instance.
/// It provides the methods that can operate on this data type through `FontChooserDialogProtocol` conformance.
/// Use `FontChooserDialog` as a strong reference or owner of a `GtkFontChooserDialog` instance.
///
/// The `GtkFontChooserDialog` widget is a dialog for selecting a font.
/// It implements the `GtkFontChooser` interface.
/// 
/// # GtkFontChooserDialog as GtkBuildable
/// 
/// The GtkFontChooserDialog implementation of the `GtkBuildable`
/// interface exposes the buttons with the names “select_button”
/// and “cancel_button”.
open class FontChooserDialog: Dialog, FontChooserDialogProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontChooserDialog` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkFontChooserDialog>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontChooserDialog` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkFontChooserDialog>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontChooserDialog` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontChooserDialog` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontChooserDialog` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkFontChooserDialog>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontChooserDialog` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkFontChooserDialog>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkFontChooserDialog`.
    /// i.e., ownership is transferred to the `FontChooserDialog` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkFontChooserDialog>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `FontChooserDialogProtocol`
    /// Will retain `GtkFontChooserDialog`.
    /// - Parameter other: an instance of a related type that implements `FontChooserDialogProtocol`
    @inlinable public init<T: FontChooserDialogProtocol>(fontChooserDialog other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserDialogProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserDialogProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserDialogProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserDialogProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserDialogProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserDialogProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserDialogProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserDialogProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkFontChooserDialog`.
    @inlinable public init<WindowT: WindowProtocol>( title: UnsafePointer<gchar>? = nil, parent: WindowT?) {
        let rv = gtk_font_chooser_dialog_new(title, parent?.window_ptr)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum FontChooserDialogPropertyName: String, PropertyNameProtocol {
    /// Whether the window should receive the input focus.
    case acceptFocus = "accept-focus"
    case appPaintable = "app-paintable"
    /// The `GtkApplication` associated with the window.
    /// 
    /// The application will be kept alive for at least as long as it
    /// has any windows associated with it (see `g_application_hold()`
    /// for a way to keep it alive without windows).
    /// 
    /// Normally, the connection between the application and the window
    /// will remain until the window is destroyed, but you can explicitly
    /// remove it by setting the :application property to `nil`.
    case application = "application"
    /// The widget to which this window is attached.
    /// See `gtk_window_set_attached_to()`.
    /// 
    /// Examples of places where specifying this relation is useful are
    /// for instance a `GtkMenu` created by a `GtkComboBox`, a completion
    /// popup window created by `GtkEntry` or a typeahead search entry
    /// created by `GtkTreeView`.
    case attachedTo = "attached-to"
    case borderWidth = "border-width"
    case canDefault = "can-default"
    case canFocus = "can-focus"
    case child = "child"
    case compositeChild = "composite-child"
    /// Whether the window should be decorated by the window manager.
    case decorated = "decorated"
    case defaultHeight = "default-height"
    case defaultWidth = "default-width"
    /// Whether the window frame should have a close button.
    case deletable = "deletable"
    case destroyWithParent = "destroy-with-parent"
    /// Whether the widget is double buffered.
    ///
    /// **double-buffered is deprecated:**
    /// Widgets should not use this property.
    case doubleBuffered = "double-buffered"
    case events = "events"
    /// Whether to expand in both directions. Setting this sets both `GtkWidget:hexpand` and `GtkWidget:vexpand`
    case expand = "expand"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    /// 
    /// Before 3.20, several widgets (GtkButton, GtkFileChooserButton,
    /// GtkComboBox) implemented this property individually.
    case focusOnClick = "focus-on-click"
    /// Whether the window should receive the input focus when mapped.
    case focusOnMap = "focus-on-map"
    /// Whether 'focus rectangles' are currently visible in this window.
    /// 
    /// This property is maintained by GTK+ based on user input
    /// and should not be set by applications.
    case focusVisible = "focus-visible"
    /// The window gravity of the window. See `gtk_window_move()` and `GdkGravity` for
    /// more details about window gravity.
    case gravity = "gravity"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case halign = "halign"
    case hasDefault = "has-default"
    case hasFocus = "has-focus"
    /// Whether the window has a corner resize grip.
    /// 
    /// Note that the resize grip is only shown if the window is
    /// actually resizable and not maximized. Use
    /// `GtkWindow:resize`-grip-visible to find out if the resize
    /// grip is currently shown.
    ///
    /// **has-resize-grip is deprecated:**
    /// Resize grips have been removed.
    case hasResizeGrip = "has-resize-grip"
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case hasTooltip = "has-tooltip"
    case hasToplevelFocus = "has-toplevel-focus"
    case heightRequest = "height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case hexpand = "hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case hexpandSet = "hexpand-set"
    /// Whether the titlebar should be hidden during maximization.
    case hideTitlebarWhenMaximized = "hide-titlebar-when-maximized"
    case icon = "icon"
    /// The :icon-name property specifies the name of the themed icon to
    /// use as the window icon. See `GtkIconTheme` for more details.
    case iconName = "icon-name"
    case isActive = "is-active"
    case isFocus = "is-focus"
    case isMaximized = "is-maximized"
    /// Sets all four sides' margin at once. If read, returns max
    /// margin on any side.
    case margin = "margin"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginBottom = "margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginEnd = "margin-end"
    /// Margin on left side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-left is deprecated:**
    /// Use #GtkWidget:margin-start instead.
    case marginLeft = "margin-left"
    /// Margin on right side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-right is deprecated:**
    /// Use #GtkWidget:margin-end instead.
    case marginRight = "margin-right"
    /// Margin on start of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginStart = "margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginTop = "margin-top"
    /// Whether mnemonics are currently visible in this window.
    /// 
    /// This property is maintained by GTK+ based on user input,
    /// and should not be set by applications.
    case mnemonicsVisible = "mnemonics-visible"
    case modal = "modal"
    case name = "name"
    case noShowAll = "no-show-all"
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case opacity = "opacity"
    case parent = "parent"
    case receivesDefault = "receives-default"
    case resizable = "resizable"
    /// Whether a corner resize grip is currently shown.
    ///
    /// **resize-grip-visible is deprecated:**
    /// Resize grips have been removed.
    case resizeGripVisible = "resize-grip-visible"
    case resizeMode = "resize-mode"
    case role = "role"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case screen = "screen"
    case sensitive = "sensitive"
    case skipPagerHint = "skip-pager-hint"
    case skipTaskbarHint = "skip-taskbar-hint"
    /// The :startup-id is a write-only property for setting window's
    /// startup notification identifier. See `gtk_window_set_startup_id()`
    /// for more details.
    case startupID = "startup-id"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case style = "style"
    case title = "title"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language](#PangoMarkupFormat).
    /// Also see `gtk_tooltip_set_markup()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case tooltipMarkup = "tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see `gtk_tooltip_set_text()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case tooltipText = "tooltip-text"
    /// The transient parent of the window. See `gtk_window_set_transient_for()` for
    /// more details about transient windows.
    case transientFor = "transient-for"
    case type = "type"
    case typeHint = "type-hint"
    case urgencyHint = "urgency-hint"
    /// `true` if the dialog uses a `GtkHeaderBar` for action buttons
    /// instead of the action-area.
    /// 
    /// For technical reasons, this property is declared as an integer
    /// property, but you should only set it to `true` or `false`.
    case useHeaderBar = "use-header-bar"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case valign = "valign"
    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    case vexpand = "vexpand"
    /// Whether to use the `GtkWidget:vexpand` property. See `gtk_widget_get_vexpand_set()`.
    case vexpandSet = "vexpand-set"
    case visible = "visible"
    case widthRequest = "width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case window = "window"
    case windowPosition = "window-position"
}

public extension FontChooserDialogProtocol {
    /// Bind a `FontChooserDialogPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: FontChooserDialogPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
        }

        let rv = _bind(source_property.name, to: target, target_property.name, flags: f, holder: BindingClosureHolder(transform_from, transform_to), transformFrom: {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_from(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }) {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_to(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }
        return rv
    }

    /// Get the value of a FontChooserDialog property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: FontChooserDialogPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a FontChooserDialog property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: FontChooserDialogPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: FontChooserDialog has no signals// MARK: FontChooserDialog Class: FontChooserDialogProtocol extension (methods and fields)
public extension FontChooserDialogProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFontChooserDialog` instance.
    @inlinable var font_chooser_dialog_ptr: UnsafeMutablePointer<GtkFontChooserDialog>! { return ptr?.assumingMemoryBound(to: GtkFontChooserDialog.self) }


    @inlinable var parentInstance: GtkDialog {
        get {
            let rv = font_chooser_dialog_ptr.pointee.parent_instance
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - FontChooserWidget Class

/// The `FontChooserWidgetProtocol` protocol exposes the methods and properties of an underlying `GtkFontChooserWidget` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FontChooserWidget`.
/// Alternatively, use `FontChooserWidgetRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GtkFontChooserWidget` widget lists the available fonts,
/// styles and sizes, allowing the user to select a font. It is
/// used in the `GtkFontChooserDialog` widget to provide a
/// dialog box for selecting fonts.
/// 
/// To set the font which is initially selected, use
/// `gtk_font_chooser_set_font()` or `gtk_font_chooser_set_font_desc()`.
/// 
/// To get the selected font use `gtk_font_chooser_get_font()` or
/// `gtk_font_chooser_get_font_desc()`.
/// 
/// To change the text which is shown in the preview area, use
/// `gtk_font_chooser_set_preview_text()`.
/// 
/// # CSS nodes
/// 
/// GtkFontChooserWidget has a single CSS node with name fontchooser.
public protocol FontChooserWidgetProtocol: BoxProtocol, FontChooserProtocol {
        /// Untyped pointer to the underlying `GtkFontChooserWidget` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkFontChooserWidget` instance.
    var font_chooser_widget_ptr: UnsafeMutablePointer<GtkFontChooserWidget>! { get }

}

/// The `FontChooserWidgetRef` type acts as a lightweight Swift reference to an underlying `GtkFontChooserWidget` instance.
/// It exposes methods that can operate on this data type through `FontChooserWidgetProtocol` conformance.
/// Use `FontChooserWidgetRef` only as an `unowned` reference to an existing `GtkFontChooserWidget` instance.
///
/// The `GtkFontChooserWidget` widget lists the available fonts,
/// styles and sizes, allowing the user to select a font. It is
/// used in the `GtkFontChooserDialog` widget to provide a
/// dialog box for selecting fonts.
/// 
/// To set the font which is initially selected, use
/// `gtk_font_chooser_set_font()` or `gtk_font_chooser_set_font_desc()`.
/// 
/// To get the selected font use `gtk_font_chooser_get_font()` or
/// `gtk_font_chooser_get_font_desc()`.
/// 
/// To change the text which is shown in the preview area, use
/// `gtk_font_chooser_set_preview_text()`.
/// 
/// # CSS nodes
/// 
/// GtkFontChooserWidget has a single CSS node with name fontchooser.
public struct FontChooserWidgetRef: FontChooserWidgetProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkFontChooserWidget` instance.
    /// For type-safe access, use the generated, typed pointer `font_chooser_widget_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FontChooserWidgetRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkFontChooserWidget>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkFontChooserWidget>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkFontChooserWidget>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkFontChooserWidget>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `FontChooserWidgetProtocol`
    @inlinable init<T: FontChooserWidgetProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: FontChooserWidgetProtocol>(_ other: T) -> FontChooserWidgetRef { FontChooserWidgetRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserWidgetProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserWidgetProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserWidgetProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserWidgetProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserWidgetProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkFontChooserWidget`.
    @inlinable init() {
        let rv = gtk_font_chooser_widget_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `FontChooserWidget` type acts as a reference-counted owner of an underlying `GtkFontChooserWidget` instance.
/// It provides the methods that can operate on this data type through `FontChooserWidgetProtocol` conformance.
/// Use `FontChooserWidget` as a strong reference or owner of a `GtkFontChooserWidget` instance.
///
/// The `GtkFontChooserWidget` widget lists the available fonts,
/// styles and sizes, allowing the user to select a font. It is
/// used in the `GtkFontChooserDialog` widget to provide a
/// dialog box for selecting fonts.
/// 
/// To set the font which is initially selected, use
/// `gtk_font_chooser_set_font()` or `gtk_font_chooser_set_font_desc()`.
/// 
/// To get the selected font use `gtk_font_chooser_get_font()` or
/// `gtk_font_chooser_get_font_desc()`.
/// 
/// To change the text which is shown in the preview area, use
/// `gtk_font_chooser_set_preview_text()`.
/// 
/// # CSS nodes
/// 
/// GtkFontChooserWidget has a single CSS node with name fontchooser.
open class FontChooserWidget: Box, FontChooserWidgetProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontChooserWidget` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkFontChooserWidget>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontChooserWidget` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkFontChooserWidget>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontChooserWidget` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontChooserWidget` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontChooserWidget` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkFontChooserWidget>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontChooserWidget` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkFontChooserWidget>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkFontChooserWidget`.
    /// i.e., ownership is transferred to the `FontChooserWidget` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkFontChooserWidget>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `FontChooserWidgetProtocol`
    /// Will retain `GtkFontChooserWidget`.
    /// - Parameter other: an instance of a related type that implements `FontChooserWidgetProtocol`
    @inlinable public init<T: FontChooserWidgetProtocol>(fontChooserWidget other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserWidgetProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserWidgetProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserWidgetProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserWidgetProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserWidgetProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserWidgetProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserWidgetProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserWidgetProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkFontChooserWidget`.
    @inlinable public init() {
        let rv = gtk_font_chooser_widget_new()
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum FontChooserWidgetPropertyName: String, PropertyNameProtocol {
    case appPaintable = "app-paintable"
    case baselinePosition = "baseline-position"
    case borderWidth = "border-width"
    case canDefault = "can-default"
    case canFocus = "can-focus"
    case child = "child"
    case compositeChild = "composite-child"
    /// Whether the widget is double buffered.
    ///
    /// **double-buffered is deprecated:**
    /// Widgets should not use this property.
    case doubleBuffered = "double-buffered"
    case events = "events"
    /// Whether to expand in both directions. Setting this sets both `GtkWidget:hexpand` and `GtkWidget:vexpand`
    case expand = "expand"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    /// 
    /// Before 3.20, several widgets (GtkButton, GtkFileChooserButton,
    /// GtkComboBox) implemented this property individually.
    case focusOnClick = "focus-on-click"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case halign = "halign"
    case hasDefault = "has-default"
    case hasFocus = "has-focus"
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case hasTooltip = "has-tooltip"
    case heightRequest = "height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case hexpand = "hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case hexpandSet = "hexpand-set"
    case homogeneous = "homogeneous"
    case isFocus = "is-focus"
    /// Sets all four sides' margin at once. If read, returns max
    /// margin on any side.
    case margin = "margin"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginBottom = "margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginEnd = "margin-end"
    /// Margin on left side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-left is deprecated:**
    /// Use #GtkWidget:margin-start instead.
    case marginLeft = "margin-left"
    /// Margin on right side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-right is deprecated:**
    /// Use #GtkWidget:margin-end instead.
    case marginRight = "margin-right"
    /// Margin on start of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginStart = "margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginTop = "margin-top"
    case name = "name"
    case noShowAll = "no-show-all"
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case opacity = "opacity"
    case parent = "parent"
    case receivesDefault = "receives-default"
    case resizeMode = "resize-mode"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case sensitive = "sensitive"
    case spacing = "spacing"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case style = "style"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language](#PangoMarkupFormat).
    /// Also see `gtk_tooltip_set_markup()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case tooltipMarkup = "tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see `gtk_tooltip_set_text()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case tooltipText = "tooltip-text"
    /// A toggle action that can be used to switch to the tweak page
    /// of the font chooser widget, which lets the user tweak the
    /// OpenType features and variation axes of the selected font.
    /// 
    /// The action will be enabled or disabled depending on whether
    /// the selected font has any features or axes.
    case tweakAction = "tweak-action"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case valign = "valign"
    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    case vexpand = "vexpand"
    /// Whether to use the `GtkWidget:vexpand` property. See `gtk_widget_get_vexpand_set()`.
    case vexpandSet = "vexpand-set"
    case visible = "visible"
    case widthRequest = "width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case window = "window"
}

public extension FontChooserWidgetProtocol {
    /// Bind a `FontChooserWidgetPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: FontChooserWidgetPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
        }

        let rv = _bind(source_property.name, to: target, target_property.name, flags: f, holder: BindingClosureHolder(transform_from, transform_to), transformFrom: {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_from(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }) {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_to(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }
        return rv
    }

    /// Get the value of a FontChooserWidget property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: FontChooserWidgetPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a FontChooserWidget property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: FontChooserWidgetPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: FontChooserWidget has no signals// MARK: FontChooserWidget Class: FontChooserWidgetProtocol extension (methods and fields)
public extension FontChooserWidgetProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFontChooserWidget` instance.
    @inlinable var font_chooser_widget_ptr: UnsafeMutablePointer<GtkFontChooserWidget>! { return ptr?.assumingMemoryBound(to: GtkFontChooserWidget.self) }


    @inlinable var parentInstance: GtkBox {
        get {
            let rv = font_chooser_widget_ptr.pointee.parent_instance
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - FontSelection Class

/// The `FontSelectionProtocol` protocol exposes the methods and properties of an underlying `GtkFontSelection` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FontSelection`.
/// Alternatively, use `FontSelectionRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FontSelectionProtocol: BoxProtocol {
        /// Untyped pointer to the underlying `GtkFontSelection` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkFontSelection` instance.
    var font_selection_ptr: UnsafeMutablePointer<GtkFontSelection>! { get }

}

/// The `FontSelectionRef` type acts as a lightweight Swift reference to an underlying `GtkFontSelection` instance.
/// It exposes methods that can operate on this data type through `FontSelectionProtocol` conformance.
/// Use `FontSelectionRef` only as an `unowned` reference to an existing `GtkFontSelection` instance.
///

public struct FontSelectionRef: FontSelectionProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkFontSelection` instance.
    /// For type-safe access, use the generated, typed pointer `font_selection_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FontSelectionRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkFontSelection>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkFontSelection>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkFontSelection>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkFontSelection>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `FontSelectionProtocol`
    @inlinable init<T: FontSelectionProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: FontSelectionProtocol>(_ other: T) -> FontSelectionRef { FontSelectionRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontSelectionProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontSelectionProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontSelectionProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontSelectionProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontSelectionProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkFontSelection`.
    ///
    /// **new is deprecated:**
    /// Use #GtkFontChooserWidget instead
    @available(*, deprecated)
    @inlinable init() {
        let rv = gtk_font_selection_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `FontSelection` type acts as a reference-counted owner of an underlying `GtkFontSelection` instance.
/// It provides the methods that can operate on this data type through `FontSelectionProtocol` conformance.
/// Use `FontSelection` as a strong reference or owner of a `GtkFontSelection` instance.
///

open class FontSelection: Box, FontSelectionProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontSelection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkFontSelection>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontSelection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkFontSelection>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontSelection` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontSelection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontSelection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkFontSelection>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontSelection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkFontSelection>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkFontSelection`.
    /// i.e., ownership is transferred to the `FontSelection` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkFontSelection>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `FontSelectionProtocol`
    /// Will retain `GtkFontSelection`.
    /// - Parameter other: an instance of a related type that implements `FontSelectionProtocol`
    @inlinable public init<T: FontSelectionProtocol>(fontSelection other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontSelectionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontSelectionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontSelectionProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontSelectionProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontSelectionProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontSelectionProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontSelectionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontSelectionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkFontSelection`.
    ///
    /// **new is deprecated:**
    /// Use #GtkFontChooserWidget instead
    @available(*, deprecated)
    @inlinable public init() {
        let rv = gtk_font_selection_new()
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum FontSelectionPropertyName: String, PropertyNameProtocol {
    case appPaintable = "app-paintable"
    case baselinePosition = "baseline-position"
    case borderWidth = "border-width"
    case canDefault = "can-default"
    case canFocus = "can-focus"
    case child = "child"
    case compositeChild = "composite-child"
    /// Whether the widget is double buffered.
    ///
    /// **double-buffered is deprecated:**
    /// Widgets should not use this property.
    case doubleBuffered = "double-buffered"
    case events = "events"
    /// Whether to expand in both directions. Setting this sets both `GtkWidget:hexpand` and `GtkWidget:vexpand`
    case expand = "expand"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    /// 
    /// Before 3.20, several widgets (GtkButton, GtkFileChooserButton,
    /// GtkComboBox) implemented this property individually.
    case focusOnClick = "focus-on-click"
    case fontName = "font-name"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case halign = "halign"
    case hasDefault = "has-default"
    case hasFocus = "has-focus"
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case hasTooltip = "has-tooltip"
    case heightRequest = "height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case hexpand = "hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case hexpandSet = "hexpand-set"
    case homogeneous = "homogeneous"
    case isFocus = "is-focus"
    /// Sets all four sides' margin at once. If read, returns max
    /// margin on any side.
    case margin = "margin"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginBottom = "margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginEnd = "margin-end"
    /// Margin on left side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-left is deprecated:**
    /// Use #GtkWidget:margin-start instead.
    case marginLeft = "margin-left"
    /// Margin on right side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-right is deprecated:**
    /// Use #GtkWidget:margin-end instead.
    case marginRight = "margin-right"
    /// Margin on start of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginStart = "margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginTop = "margin-top"
    case name = "name"
    case noShowAll = "no-show-all"
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case opacity = "opacity"
    case parent = "parent"
    case previewText = "preview-text"
    case receivesDefault = "receives-default"
    case resizeMode = "resize-mode"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case sensitive = "sensitive"
    case spacing = "spacing"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case style = "style"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language](#PangoMarkupFormat).
    /// Also see `gtk_tooltip_set_markup()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case tooltipMarkup = "tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see `gtk_tooltip_set_text()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case tooltipText = "tooltip-text"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case valign = "valign"
    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    case vexpand = "vexpand"
    /// Whether to use the `GtkWidget:vexpand` property. See `gtk_widget_get_vexpand_set()`.
    case vexpandSet = "vexpand-set"
    case visible = "visible"
    case widthRequest = "width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case window = "window"
}

public extension FontSelectionProtocol {
    /// Bind a `FontSelectionPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: FontSelectionPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
        }

        let rv = _bind(source_property.name, to: target, target_property.name, flags: f, holder: BindingClosureHolder(transform_from, transform_to), transformFrom: {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_from(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }) {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_to(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }
        return rv
    }

    /// Get the value of a FontSelection property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: FontSelectionPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a FontSelection property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: FontSelectionPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: FontSelection has no signals// MARK: FontSelection Class: FontSelectionProtocol extension (methods and fields)
public extension FontSelectionProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFontSelection` instance.
    @inlinable var font_selection_ptr: UnsafeMutablePointer<GtkFontSelection>! { return ptr?.assumingMemoryBound(to: GtkFontSelection.self) }

    /// Gets the `PangoFontFace` representing the selected font group
    /// details (i.e. family, slant, weight, width, etc).
    ///
    /// **get_face is deprecated:**
    /// Use #GtkFontChooser
    @available(*, deprecated)
    @inlinable func getFace() -> Pango.FontFaceRef! {
        let rv = Pango.FontFaceRef(gtk_font_selection_get_face(font_selection_ptr))
        return rv
    }

    /// This returns the `GtkTreeView` which lists all styles available for
    /// the selected font. For example, “Regular”, “Bold”, etc.
    ///
    /// **get_face_list is deprecated:**
    /// Use #GtkFontChooser
    @available(*, deprecated)
    @inlinable func getFaceList() -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_font_selection_get_face_list(font_selection_ptr))) else { return nil }
        return rv
    }

    /// Gets the `PangoFontFamily` representing the selected font family.
    ///
    /// **get_family is deprecated:**
    /// Use #GtkFontChooser
    @available(*, deprecated)
    @inlinable func getFamily() -> Pango.FontFamilyRef! {
        let rv = Pango.FontFamilyRef(gtk_font_selection_get_family(font_selection_ptr))
        return rv
    }

    /// This returns the `GtkTreeView` that lists font families, for
    /// example, “Sans”, “Serif”, etc.
    ///
    /// **get_family_list is deprecated:**
    /// Use #GtkFontChooser
    @available(*, deprecated)
    @inlinable func getFamilyList() -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_font_selection_get_family_list(font_selection_ptr))) else { return nil }
        return rv
    }

    /// Gets the currently-selected font name.
    /// 
    /// Note that this can be a different string than what you set with
    /// `gtk_font_selection_set_font_name()`, as the font selection widget may
    /// normalize font names and thus return a string with a different structure.
    /// For example, “Helvetica Italic Bold 12” could be normalized to
    /// “Helvetica Bold Italic 12”. Use `pango_font_description_equal()`
    /// if you want to compare two font descriptions.
    ///
    /// **get_font_name is deprecated:**
    /// Use #GtkFontChooser
    @available(*, deprecated)
    @inlinable func getFontName() -> String! {
        let rv = gtk_font_selection_get_font_name(font_selection_ptr).map({ String(cString: $0) })
        return rv
    }

    /// This returns the `GtkEntry` used to display the font as a preview.
    ///
    /// **get_preview_entry is deprecated:**
    /// Use #GtkFontChooser
    @available(*, deprecated)
    @inlinable func getPreviewEntry() -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_font_selection_get_preview_entry(font_selection_ptr))) else { return nil }
        return rv
    }

    /// Gets the text displayed in the preview area.
    ///
    /// **get_preview_text is deprecated:**
    /// Use #GtkFontChooser
    @available(*, deprecated)
    @inlinable func getPreviewText() -> String! {
        let rv = gtk_font_selection_get_preview_text(font_selection_ptr).map({ String(cString: $0) })
        return rv
    }

    /// The selected font size.
    ///
    /// **get_size is deprecated:**
    /// Use #GtkFontChooser
    @available(*, deprecated)
    @inlinable func getSize() -> Int {
        let rv = Int(gtk_font_selection_get_size(font_selection_ptr))
        return rv
    }

    /// This returns the `GtkEntry` used to allow the user to edit the font
    /// number manually instead of selecting it from the list of font sizes.
    ///
    /// **get_size_entry is deprecated:**
    /// Use #GtkFontChooser
    @available(*, deprecated)
    @inlinable func getSizeEntry() -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_font_selection_get_size_entry(font_selection_ptr))) else { return nil }
        return rv
    }

    /// This returns the `GtkTreeView` used to list font sizes.
    ///
    /// **get_size_list is deprecated:**
    /// Use #GtkFontChooser
    @available(*, deprecated)
    @inlinable func getSizeList() -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_font_selection_get_size_list(font_selection_ptr))) else { return nil }
        return rv
    }

    /// Sets the currently-selected font.
    /// 
    /// Note that the `fontsel` needs to know the screen in which it will appear
    /// for this to work; this can be guaranteed by simply making sure that the
    /// `fontsel` is inserted in a toplevel window before you call this function.
    ///
    /// **set_font_name is deprecated:**
    /// Use #GtkFontChooser
    @available(*, deprecated)
    @inlinable func setFontName(fontname: UnsafePointer<gchar>!) -> Bool {
        let rv = ((gtk_font_selection_set_font_name(font_selection_ptr, fontname)) != 0)
        return rv
    }

    /// Sets the text displayed in the preview area.
    /// The `text` is used to show how the selected font looks.
    ///
    /// **set_preview_text is deprecated:**
    /// Use #GtkFontChooser
    @available(*, deprecated)
    @inlinable func setPreview(text: UnsafePointer<gchar>!) {
        gtk_font_selection_set_preview_text(font_selection_ptr, text)
    
    }
    /// Gets the `PangoFontFace` representing the selected font group
    /// details (i.e. family, slant, weight, width, etc).
    ///
    /// **get_face is deprecated:**
    /// Use #GtkFontChooser
    @inlinable var face: Pango.FontFaceRef! {
        /// Gets the `PangoFontFace` representing the selected font group
        /// details (i.e. family, slant, weight, width, etc).
        ///
        /// **get_face is deprecated:**
        /// Use #GtkFontChooser
        @available(*, deprecated)
    get {
            let rv = Pango.FontFaceRef(gtk_font_selection_get_face(font_selection_ptr))
            return rv
        }
    }

    /// This returns the `GtkTreeView` which lists all styles available for
    /// the selected font. For example, “Regular”, “Bold”, etc.
    ///
    /// **get_face_list is deprecated:**
    /// Use #GtkFontChooser
    @inlinable var faceList: WidgetRef! {
        /// This returns the `GtkTreeView` which lists all styles available for
        /// the selected font. For example, “Regular”, “Bold”, etc.
        ///
        /// **get_face_list is deprecated:**
        /// Use #GtkFontChooser
        @available(*, deprecated)
    get {
            guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_font_selection_get_face_list(font_selection_ptr))) else { return nil }
            return rv
        }
    }

    /// Gets the `PangoFontFamily` representing the selected font family.
    ///
    /// **get_family is deprecated:**
    /// Use #GtkFontChooser
    @inlinable var family: Pango.FontFamilyRef! {
        /// Gets the `PangoFontFamily` representing the selected font family.
        ///
        /// **get_family is deprecated:**
        /// Use #GtkFontChooser
        @available(*, deprecated)
    get {
            let rv = Pango.FontFamilyRef(gtk_font_selection_get_family(font_selection_ptr))
            return rv
        }
    }

    /// This returns the `GtkTreeView` that lists font families, for
    /// example, “Sans”, “Serif”, etc.
    ///
    /// **get_family_list is deprecated:**
    /// Use #GtkFontChooser
    @inlinable var familyList: WidgetRef! {
        /// This returns the `GtkTreeView` that lists font families, for
        /// example, “Sans”, “Serif”, etc.
        ///
        /// **get_family_list is deprecated:**
        /// Use #GtkFontChooser
        @available(*, deprecated)
    get {
            guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_font_selection_get_family_list(font_selection_ptr))) else { return nil }
            return rv
        }
    }

    /// Gets the currently-selected font name.
    /// 
    /// Note that this can be a different string than what you set with
    /// `gtk_font_selection_set_font_name()`, as the font selection widget may
    /// normalize font names and thus return a string with a different structure.
    /// For example, “Helvetica Italic Bold 12” could be normalized to
    /// “Helvetica Bold Italic 12”. Use `pango_font_description_equal()`
    /// if you want to compare two font descriptions.
    ///
    /// **get_font_name is deprecated:**
    /// Use #GtkFontChooser
    @inlinable var fontName: String! {
        /// Gets the currently-selected font name.
        /// 
        /// Note that this can be a different string than what you set with
        /// `gtk_font_selection_set_font_name()`, as the font selection widget may
        /// normalize font names and thus return a string with a different structure.
        /// For example, “Helvetica Italic Bold 12” could be normalized to
        /// “Helvetica Bold Italic 12”. Use `pango_font_description_equal()`
        /// if you want to compare two font descriptions.
        ///
        /// **get_font_name is deprecated:**
        /// Use #GtkFontChooser
        @available(*, deprecated)
    get {
            let rv = gtk_font_selection_get_font_name(font_selection_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the currently-selected font.
        /// 
        /// Note that the `fontsel` needs to know the screen in which it will appear
        /// for this to work; this can be guaranteed by simply making sure that the
        /// `fontsel` is inserted in a toplevel window before you call this function.
        ///
        /// **set_font_name is deprecated:**
        /// Use #GtkFontChooser
        @available(*, deprecated)
    nonmutating set {
            _ = gtk_font_selection_set_font_name(font_selection_ptr, newValue)
        }
    }

    /// This returns the `GtkEntry` used to display the font as a preview.
    ///
    /// **get_preview_entry is deprecated:**
    /// Use #GtkFontChooser
    @inlinable var previewEntry: WidgetRef! {
        /// This returns the `GtkEntry` used to display the font as a preview.
        ///
        /// **get_preview_entry is deprecated:**
        /// Use #GtkFontChooser
        @available(*, deprecated)
    get {
            guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_font_selection_get_preview_entry(font_selection_ptr))) else { return nil }
            return rv
        }
    }

    /// Gets the text displayed in the preview area.
    ///
    /// **get_preview_text is deprecated:**
    /// Use #GtkFontChooser
    @inlinable var previewText: String! {
        /// Gets the text displayed in the preview area.
        ///
        /// **get_preview_text is deprecated:**
        /// Use #GtkFontChooser
        @available(*, deprecated)
    get {
            let rv = gtk_font_selection_get_preview_text(font_selection_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the text displayed in the preview area.
        /// The `text` is used to show how the selected font looks.
        ///
        /// **set_preview_text is deprecated:**
        /// Use #GtkFontChooser
        @available(*, deprecated)
    nonmutating set {
            gtk_font_selection_set_preview_text(font_selection_ptr, newValue)
        }
    }

    /// The selected font size.
    ///
    /// **get_size is deprecated:**
    /// Use #GtkFontChooser
    @inlinable var size: Int {
        /// The selected font size.
        ///
        /// **get_size is deprecated:**
        /// Use #GtkFontChooser
        @available(*, deprecated)
    get {
            let rv = Int(gtk_font_selection_get_size(font_selection_ptr))
            return rv
        }
    }

    /// This returns the `GtkEntry` used to allow the user to edit the font
    /// number manually instead of selecting it from the list of font sizes.
    ///
    /// **get_size_entry is deprecated:**
    /// Use #GtkFontChooser
    @inlinable var sizeEntry: WidgetRef! {
        /// This returns the `GtkEntry` used to allow the user to edit the font
        /// number manually instead of selecting it from the list of font sizes.
        ///
        /// **get_size_entry is deprecated:**
        /// Use #GtkFontChooser
        @available(*, deprecated)
    get {
            guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_font_selection_get_size_entry(font_selection_ptr))) else { return nil }
            return rv
        }
    }

    /// This returns the `GtkTreeView` used to list font sizes.
    ///
    /// **get_size_list is deprecated:**
    /// Use #GtkFontChooser
    @inlinable var sizeList: WidgetRef! {
        /// This returns the `GtkTreeView` used to list font sizes.
        ///
        /// **get_size_list is deprecated:**
        /// Use #GtkFontChooser
        @available(*, deprecated)
    get {
            guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_font_selection_get_size_list(font_selection_ptr))) else { return nil }
            return rv
        }
    }

    @inlinable var parentInstance: GtkBox {
        get {
            let rv = font_selection_ptr.pointee.parent_instance
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - FontSelectionDialog Class

/// The `FontSelectionDialogProtocol` protocol exposes the methods and properties of an underlying `GtkFontSelectionDialog` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FontSelectionDialog`.
/// Alternatively, use `FontSelectionDialogRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FontSelectionDialogProtocol: DialogProtocol {
        /// Untyped pointer to the underlying `GtkFontSelectionDialog` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkFontSelectionDialog` instance.
    var font_selection_dialog_ptr: UnsafeMutablePointer<GtkFontSelectionDialog>! { get }

}

/// The `FontSelectionDialogRef` type acts as a lightweight Swift reference to an underlying `GtkFontSelectionDialog` instance.
/// It exposes methods that can operate on this data type through `FontSelectionDialogProtocol` conformance.
/// Use `FontSelectionDialogRef` only as an `unowned` reference to an existing `GtkFontSelectionDialog` instance.
///

public struct FontSelectionDialogRef: FontSelectionDialogProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkFontSelectionDialog` instance.
    /// For type-safe access, use the generated, typed pointer `font_selection_dialog_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FontSelectionDialogRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkFontSelectionDialog>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkFontSelectionDialog>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkFontSelectionDialog>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkFontSelectionDialog>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `FontSelectionDialogProtocol`
    @inlinable init<T: FontSelectionDialogProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: FontSelectionDialogProtocol>(_ other: T) -> FontSelectionDialogRef { FontSelectionDialogRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontSelectionDialogProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontSelectionDialogProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontSelectionDialogProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontSelectionDialogProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontSelectionDialogProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkFontSelectionDialog`.
    ///
    /// **new is deprecated:**
    /// Use #GtkFontChooserDialog
    @available(*, deprecated)
    @inlinable init( title: UnsafePointer<gchar>!) {
        let rv = gtk_font_selection_dialog_new(title)
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `FontSelectionDialog` type acts as a reference-counted owner of an underlying `GtkFontSelectionDialog` instance.
/// It provides the methods that can operate on this data type through `FontSelectionDialogProtocol` conformance.
/// Use `FontSelectionDialog` as a strong reference or owner of a `GtkFontSelectionDialog` instance.
///

open class FontSelectionDialog: Dialog, FontSelectionDialogProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontSelectionDialog` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkFontSelectionDialog>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontSelectionDialog` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkFontSelectionDialog>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontSelectionDialog` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontSelectionDialog` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontSelectionDialog` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkFontSelectionDialog>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontSelectionDialog` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkFontSelectionDialog>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkFontSelectionDialog`.
    /// i.e., ownership is transferred to the `FontSelectionDialog` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkFontSelectionDialog>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `FontSelectionDialogProtocol`
    /// Will retain `GtkFontSelectionDialog`.
    /// - Parameter other: an instance of a related type that implements `FontSelectionDialogProtocol`
    @inlinable public init<T: FontSelectionDialogProtocol>(fontSelectionDialog other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontSelectionDialogProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontSelectionDialogProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontSelectionDialogProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontSelectionDialogProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontSelectionDialogProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontSelectionDialogProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontSelectionDialogProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontSelectionDialogProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkFontSelectionDialog`.
    ///
    /// **new is deprecated:**
    /// Use #GtkFontChooserDialog
    @available(*, deprecated)
    @inlinable public init( title: UnsafePointer<gchar>!) {
        let rv = gtk_font_selection_dialog_new(title)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum FontSelectionDialogPropertyName: String, PropertyNameProtocol {
    /// Whether the window should receive the input focus.
    case acceptFocus = "accept-focus"
    case appPaintable = "app-paintable"
    /// The `GtkApplication` associated with the window.
    /// 
    /// The application will be kept alive for at least as long as it
    /// has any windows associated with it (see `g_application_hold()`
    /// for a way to keep it alive without windows).
    /// 
    /// Normally, the connection between the application and the window
    /// will remain until the window is destroyed, but you can explicitly
    /// remove it by setting the :application property to `nil`.
    case application = "application"
    /// The widget to which this window is attached.
    /// See `gtk_window_set_attached_to()`.
    /// 
    /// Examples of places where specifying this relation is useful are
    /// for instance a `GtkMenu` created by a `GtkComboBox`, a completion
    /// popup window created by `GtkEntry` or a typeahead search entry
    /// created by `GtkTreeView`.
    case attachedTo = "attached-to"
    case borderWidth = "border-width"
    case canDefault = "can-default"
    case canFocus = "can-focus"
    case child = "child"
    case compositeChild = "composite-child"
    /// Whether the window should be decorated by the window manager.
    case decorated = "decorated"
    case defaultHeight = "default-height"
    case defaultWidth = "default-width"
    /// Whether the window frame should have a close button.
    case deletable = "deletable"
    case destroyWithParent = "destroy-with-parent"
    /// Whether the widget is double buffered.
    ///
    /// **double-buffered is deprecated:**
    /// Widgets should not use this property.
    case doubleBuffered = "double-buffered"
    case events = "events"
    /// Whether to expand in both directions. Setting this sets both `GtkWidget:hexpand` and `GtkWidget:vexpand`
    case expand = "expand"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    /// 
    /// Before 3.20, several widgets (GtkButton, GtkFileChooserButton,
    /// GtkComboBox) implemented this property individually.
    case focusOnClick = "focus-on-click"
    /// Whether the window should receive the input focus when mapped.
    case focusOnMap = "focus-on-map"
    /// Whether 'focus rectangles' are currently visible in this window.
    /// 
    /// This property is maintained by GTK+ based on user input
    /// and should not be set by applications.
    case focusVisible = "focus-visible"
    /// The window gravity of the window. See `gtk_window_move()` and `GdkGravity` for
    /// more details about window gravity.
    case gravity = "gravity"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case halign = "halign"
    case hasDefault = "has-default"
    case hasFocus = "has-focus"
    /// Whether the window has a corner resize grip.
    /// 
    /// Note that the resize grip is only shown if the window is
    /// actually resizable and not maximized. Use
    /// `GtkWindow:resize`-grip-visible to find out if the resize
    /// grip is currently shown.
    ///
    /// **has-resize-grip is deprecated:**
    /// Resize grips have been removed.
    case hasResizeGrip = "has-resize-grip"
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case hasTooltip = "has-tooltip"
    case hasToplevelFocus = "has-toplevel-focus"
    case heightRequest = "height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case hexpand = "hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case hexpandSet = "hexpand-set"
    /// Whether the titlebar should be hidden during maximization.
    case hideTitlebarWhenMaximized = "hide-titlebar-when-maximized"
    case icon = "icon"
    /// The :icon-name property specifies the name of the themed icon to
    /// use as the window icon. See `GtkIconTheme` for more details.
    case iconName = "icon-name"
    case isActive = "is-active"
    case isFocus = "is-focus"
    case isMaximized = "is-maximized"
    /// Sets all four sides' margin at once. If read, returns max
    /// margin on any side.
    case margin = "margin"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginBottom = "margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginEnd = "margin-end"
    /// Margin on left side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-left is deprecated:**
    /// Use #GtkWidget:margin-start instead.
    case marginLeft = "margin-left"
    /// Margin on right side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-right is deprecated:**
    /// Use #GtkWidget:margin-end instead.
    case marginRight = "margin-right"
    /// Margin on start of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginStart = "margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginTop = "margin-top"
    /// Whether mnemonics are currently visible in this window.
    /// 
    /// This property is maintained by GTK+ based on user input,
    /// and should not be set by applications.
    case mnemonicsVisible = "mnemonics-visible"
    case modal = "modal"
    case name = "name"
    case noShowAll = "no-show-all"
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case opacity = "opacity"
    case parent = "parent"
    case receivesDefault = "receives-default"
    case resizable = "resizable"
    /// Whether a corner resize grip is currently shown.
    ///
    /// **resize-grip-visible is deprecated:**
    /// Resize grips have been removed.
    case resizeGripVisible = "resize-grip-visible"
    case resizeMode = "resize-mode"
    case role = "role"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case screen = "screen"
    case sensitive = "sensitive"
    case skipPagerHint = "skip-pager-hint"
    case skipTaskbarHint = "skip-taskbar-hint"
    /// The :startup-id is a write-only property for setting window's
    /// startup notification identifier. See `gtk_window_set_startup_id()`
    /// for more details.
    case startupID = "startup-id"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case style = "style"
    case title = "title"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language](#PangoMarkupFormat).
    /// Also see `gtk_tooltip_set_markup()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case tooltipMarkup = "tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see `gtk_tooltip_set_text()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case tooltipText = "tooltip-text"
    /// The transient parent of the window. See `gtk_window_set_transient_for()` for
    /// more details about transient windows.
    case transientFor = "transient-for"
    case type = "type"
    case typeHint = "type-hint"
    case urgencyHint = "urgency-hint"
    /// `true` if the dialog uses a `GtkHeaderBar` for action buttons
    /// instead of the action-area.
    /// 
    /// For technical reasons, this property is declared as an integer
    /// property, but you should only set it to `true` or `false`.
    case useHeaderBar = "use-header-bar"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case valign = "valign"
    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    case vexpand = "vexpand"
    /// Whether to use the `GtkWidget:vexpand` property. See `gtk_widget_get_vexpand_set()`.
    case vexpandSet = "vexpand-set"
    case visible = "visible"
    case widthRequest = "width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case window = "window"
    case windowPosition = "window-position"
}

public extension FontSelectionDialogProtocol {
    /// Bind a `FontSelectionDialogPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: FontSelectionDialogPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
        }

        let rv = _bind(source_property.name, to: target, target_property.name, flags: f, holder: BindingClosureHolder(transform_from, transform_to), transformFrom: {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_from(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }) {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_to(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }
        return rv
    }

    /// Get the value of a FontSelectionDialog property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: FontSelectionDialogPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a FontSelectionDialog property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: FontSelectionDialogPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: FontSelectionDialog has no signals// MARK: FontSelectionDialog Class: FontSelectionDialogProtocol extension (methods and fields)
public extension FontSelectionDialogProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFontSelectionDialog` instance.
    @inlinable var font_selection_dialog_ptr: UnsafeMutablePointer<GtkFontSelectionDialog>! { return ptr?.assumingMemoryBound(to: GtkFontSelectionDialog.self) }

    /// Gets the “Cancel” button.
    ///
    /// **get_cancel_button is deprecated:**
    /// Use #GtkFontChooserDialog
    @available(*, deprecated)
    @inlinable func getCancelButton() -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_font_selection_dialog_get_cancel_button(font_selection_dialog_ptr))) else { return nil }
        return rv
    }

    /// Gets the currently-selected font name.
    /// 
    /// Note that this can be a different string than what you set with
    /// `gtk_font_selection_dialog_set_font_name()`, as the font selection widget
    /// may normalize font names and thus return a string with a different
    /// structure. For example, “Helvetica Italic Bold 12” could be normalized
    /// to “Helvetica Bold Italic 12”.  Use `pango_font_description_equal()`
    /// if you want to compare two font descriptions.
    ///
    /// **get_font_name is deprecated:**
    /// Use #GtkFontChooserDialog
    @available(*, deprecated)
    @inlinable func getFontName() -> String! {
        let rv = gtk_font_selection_dialog_get_font_name(font_selection_dialog_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Retrieves the `GtkFontSelection` widget embedded in the dialog.
    ///
    /// **get_font_selection is deprecated:**
    /// Use #GtkFontChooserDialog
    @available(*, deprecated)
    @inlinable func getFontSelection() -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_font_selection_dialog_get_font_selection(font_selection_dialog_ptr))) else { return nil }
        return rv
    }

    /// Gets the “OK” button.
    ///
    /// **get_ok_button is deprecated:**
    /// Use #GtkFontChooserDialog
    @available(*, deprecated)
    @inlinable func getOkButton() -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_font_selection_dialog_get_ok_button(font_selection_dialog_ptr))) else { return nil }
        return rv
    }

    /// Gets the text displayed in the preview area.
    ///
    /// **get_preview_text is deprecated:**
    /// Use #GtkFontChooserDialog
    @available(*, deprecated)
    @inlinable func getPreviewText() -> String! {
        let rv = gtk_font_selection_dialog_get_preview_text(font_selection_dialog_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Sets the currently selected font.
    ///
    /// **set_font_name is deprecated:**
    /// Use #GtkFontChooserDialog
    @available(*, deprecated)
    @inlinable func setFontName(fontname: UnsafePointer<gchar>!) -> Bool {
        let rv = ((gtk_font_selection_dialog_set_font_name(font_selection_dialog_ptr, fontname)) != 0)
        return rv
    }

    /// Sets the text displayed in the preview area.
    ///
    /// **set_preview_text is deprecated:**
    /// Use #GtkFontChooserDialog
    @available(*, deprecated)
    @inlinable func setPreview(text: UnsafePointer<gchar>!) {
        gtk_font_selection_dialog_set_preview_text(font_selection_dialog_ptr, text)
    
    }
    /// Gets the “Cancel” button.
    ///
    /// **get_cancel_button is deprecated:**
    /// Use #GtkFontChooserDialog
    @inlinable var cancelButton: WidgetRef! {
        /// Gets the “Cancel” button.
        ///
        /// **get_cancel_button is deprecated:**
        /// Use #GtkFontChooserDialog
        @available(*, deprecated)
    get {
            guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_font_selection_dialog_get_cancel_button(font_selection_dialog_ptr))) else { return nil }
            return rv
        }
    }

    /// Gets the currently-selected font name.
    /// 
    /// Note that this can be a different string than what you set with
    /// `gtk_font_selection_dialog_set_font_name()`, as the font selection widget
    /// may normalize font names and thus return a string with a different
    /// structure. For example, “Helvetica Italic Bold 12” could be normalized
    /// to “Helvetica Bold Italic 12”.  Use `pango_font_description_equal()`
    /// if you want to compare two font descriptions.
    ///
    /// **get_font_name is deprecated:**
    /// Use #GtkFontChooserDialog
    @inlinable var fontName: String! {
        /// Gets the currently-selected font name.
        /// 
        /// Note that this can be a different string than what you set with
        /// `gtk_font_selection_dialog_set_font_name()`, as the font selection widget
        /// may normalize font names and thus return a string with a different
        /// structure. For example, “Helvetica Italic Bold 12” could be normalized
        /// to “Helvetica Bold Italic 12”.  Use `pango_font_description_equal()`
        /// if you want to compare two font descriptions.
        ///
        /// **get_font_name is deprecated:**
        /// Use #GtkFontChooserDialog
        @available(*, deprecated)
    get {
            let rv = gtk_font_selection_dialog_get_font_name(font_selection_dialog_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the currently selected font.
        ///
        /// **set_font_name is deprecated:**
        /// Use #GtkFontChooserDialog
        @available(*, deprecated)
    nonmutating set {
            _ = gtk_font_selection_dialog_set_font_name(font_selection_dialog_ptr, newValue)
        }
    }

    /// Retrieves the `GtkFontSelection` widget embedded in the dialog.
    ///
    /// **get_font_selection is deprecated:**
    /// Use #GtkFontChooserDialog
    @inlinable var fontSelection: WidgetRef! {
        /// Retrieves the `GtkFontSelection` widget embedded in the dialog.
        ///
        /// **get_font_selection is deprecated:**
        /// Use #GtkFontChooserDialog
        @available(*, deprecated)
    get {
            guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_font_selection_dialog_get_font_selection(font_selection_dialog_ptr))) else { return nil }
            return rv
        }
    }

    /// Gets the “OK” button.
    ///
    /// **get_ok_button is deprecated:**
    /// Use #GtkFontChooserDialog
    @inlinable var okButton: WidgetRef! {
        /// Gets the “OK” button.
        ///
        /// **get_ok_button is deprecated:**
        /// Use #GtkFontChooserDialog
        @available(*, deprecated)
    get {
            guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_font_selection_dialog_get_ok_button(font_selection_dialog_ptr))) else { return nil }
            return rv
        }
    }

    /// Gets the text displayed in the preview area.
    ///
    /// **get_preview_text is deprecated:**
    /// Use #GtkFontChooserDialog
    @inlinable var previewText: String! {
        /// Gets the text displayed in the preview area.
        ///
        /// **get_preview_text is deprecated:**
        /// Use #GtkFontChooserDialog
        @available(*, deprecated)
    get {
            let rv = gtk_font_selection_dialog_get_preview_text(font_selection_dialog_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the text displayed in the preview area.
        ///
        /// **set_preview_text is deprecated:**
        /// Use #GtkFontChooserDialog
        @available(*, deprecated)
    nonmutating set {
            gtk_font_selection_dialog_set_preview_text(font_selection_dialog_ptr, newValue)
        }
    }

    @inlinable var parentInstance: GtkDialog {
        get {
            let rv = font_selection_dialog_ptr.pointee.parent_instance
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - Frame Class

/// The `FrameProtocol` protocol exposes the methods and properties of an underlying `GtkFrame` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Frame`.
/// Alternatively, use `FrameRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The frame widget is a bin that surrounds its child with a decorative
/// frame and an optional label. If present, the label is drawn in a gap
/// in the top side of the frame. The position of the label can be
/// controlled with `gtk_frame_set_label_align()`.
/// 
/// # GtkFrame as GtkBuildable
/// 
/// The GtkFrame implementation of the GtkBuildable interface supports
/// placing a child in the label position by specifying “label” as the
/// “type” attribute of a <child> element. A normal content child can
/// be specified without specifying a <child> type attribute.
/// 
/// An example of a UI definition fragment with GtkFrame:
/// ```
/// <object class="GtkFrame">
///   <child type="label">
///     <object class="GtkLabel" id="frame-label"/>
///   </child>
///   <child>
///     <object class="GtkEntry" id="frame-content"/>
///   </child>
/// </object>
/// ```
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
/// frame
/// ├── border[.flat]
/// ├── <label widget>
/// ╰── <child>
/// ```
/// 
/// GtkFrame has a main CSS node named “frame” and a subnode named “border”. The
/// “border” node is used to draw the visible border. You can set the appearance
/// of the border using CSS properties like “border-style” on the “border” node.
/// 
/// The border node can be given the style class “.flat”, which is used by themes
/// to disable drawing of the border. To do this from code, call
/// `gtk_frame_set_shadow_type()` with `GTK_SHADOW_NONE` to add the “.flat” class or
/// any other shadow type to remove it.
public protocol FrameProtocol: BinProtocol {
        /// Untyped pointer to the underlying `GtkFrame` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkFrame` instance.
    var frame_ptr: UnsafeMutablePointer<GtkFrame>! { get }

}

/// The `FrameRef` type acts as a lightweight Swift reference to an underlying `GtkFrame` instance.
/// It exposes methods that can operate on this data type through `FrameProtocol` conformance.
/// Use `FrameRef` only as an `unowned` reference to an existing `GtkFrame` instance.
///
/// The frame widget is a bin that surrounds its child with a decorative
/// frame and an optional label. If present, the label is drawn in a gap
/// in the top side of the frame. The position of the label can be
/// controlled with `gtk_frame_set_label_align()`.
/// 
/// # GtkFrame as GtkBuildable
/// 
/// The GtkFrame implementation of the GtkBuildable interface supports
/// placing a child in the label position by specifying “label” as the
/// “type” attribute of a <child> element. A normal content child can
/// be specified without specifying a <child> type attribute.
/// 
/// An example of a UI definition fragment with GtkFrame:
/// ```
/// <object class="GtkFrame">
///   <child type="label">
///     <object class="GtkLabel" id="frame-label"/>
///   </child>
///   <child>
///     <object class="GtkEntry" id="frame-content"/>
///   </child>
/// </object>
/// ```
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
/// frame
/// ├── border[.flat]
/// ├── <label widget>
/// ╰── <child>
/// ```
/// 
/// GtkFrame has a main CSS node named “frame” and a subnode named “border”. The
/// “border” node is used to draw the visible border. You can set the appearance
/// of the border using CSS properties like “border-style” on the “border” node.
/// 
/// The border node can be given the style class “.flat”, which is used by themes
/// to disable drawing of the border. To do this from code, call
/// `gtk_frame_set_shadow_type()` with `GTK_SHADOW_NONE` to add the “.flat” class or
/// any other shadow type to remove it.
public struct FrameRef: FrameProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkFrame` instance.
    /// For type-safe access, use the generated, typed pointer `frame_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FrameRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkFrame>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkFrame>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkFrame>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkFrame>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `FrameProtocol`
    @inlinable init<T: FrameProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: FrameProtocol>(_ other: T) -> FrameRef { FrameRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkFrame`, with optional label `label`.
    /// If `label` is `nil`, the label is omitted.
    @inlinable init( label: UnsafePointer<gchar>? = nil) {
        let rv = gtk_frame_new(label)
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `Frame` type acts as a reference-counted owner of an underlying `GtkFrame` instance.
/// It provides the methods that can operate on this data type through `FrameProtocol` conformance.
/// Use `Frame` as a strong reference or owner of a `GtkFrame` instance.
///
/// The frame widget is a bin that surrounds its child with a decorative
/// frame and an optional label. If present, the label is drawn in a gap
/// in the top side of the frame. The position of the label can be
/// controlled with `gtk_frame_set_label_align()`.
/// 
/// # GtkFrame as GtkBuildable
/// 
/// The GtkFrame implementation of the GtkBuildable interface supports
/// placing a child in the label position by specifying “label” as the
/// “type” attribute of a <child> element. A normal content child can
/// be specified without specifying a <child> type attribute.
/// 
/// An example of a UI definition fragment with GtkFrame:
/// ```
/// <object class="GtkFrame">
///   <child type="label">
///     <object class="GtkLabel" id="frame-label"/>
///   </child>
///   <child>
///     <object class="GtkEntry" id="frame-content"/>
///   </child>
/// </object>
/// ```
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
/// frame
/// ├── border[.flat]
/// ├── <label widget>
/// ╰── <child>
/// ```
/// 
/// GtkFrame has a main CSS node named “frame” and a subnode named “border”. The
/// “border” node is used to draw the visible border. You can set the appearance
/// of the border using CSS properties like “border-style” on the “border” node.
/// 
/// The border node can be given the style class “.flat”, which is used by themes
/// to disable drawing of the border. To do this from code, call
/// `gtk_frame_set_shadow_type()` with `GTK_SHADOW_NONE` to add the “.flat” class or
/// any other shadow type to remove it.
open class Frame: Bin, FrameProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Frame` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkFrame>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Frame` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkFrame>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Frame` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Frame` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Frame` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkFrame>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Frame` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkFrame>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkFrame`.
    /// i.e., ownership is transferred to the `Frame` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkFrame>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `FrameProtocol`
    /// Will retain `GtkFrame`.
    /// - Parameter other: an instance of a related type that implements `FrameProtocol`
    @inlinable public init<T: FrameProtocol>(frame other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkFrame`, with optional label `label`.
    /// If `label` is `nil`, the label is omitted.
    @inlinable public init( label: UnsafePointer<gchar>? = nil) {
        let rv = gtk_frame_new(label)
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum FramePropertyName: String, PropertyNameProtocol {
    case appPaintable = "app-paintable"
    case borderWidth = "border-width"
    case canDefault = "can-default"
    case canFocus = "can-focus"
    case child = "child"
    case compositeChild = "composite-child"
    /// Whether the widget is double buffered.
    ///
    /// **double-buffered is deprecated:**
    /// Widgets should not use this property.
    case doubleBuffered = "double-buffered"
    case events = "events"
    /// Whether to expand in both directions. Setting this sets both `GtkWidget:hexpand` and `GtkWidget:vexpand`
    case expand = "expand"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    /// 
    /// Before 3.20, several widgets (GtkButton, GtkFileChooserButton,
    /// GtkComboBox) implemented this property individually.
    case focusOnClick = "focus-on-click"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case halign = "halign"
    case hasDefault = "has-default"
    case hasFocus = "has-focus"
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case hasTooltip = "has-tooltip"
    case heightRequest = "height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case hexpand = "hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case hexpandSet = "hexpand-set"
    case isFocus = "is-focus"
    case label = "label"
    case labelWidget = "label-widget"
    case labelXalign = "label-xalign"
    case labelYalign = "label-yalign"
    /// Sets all four sides' margin at once. If read, returns max
    /// margin on any side.
    case margin = "margin"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginBottom = "margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginEnd = "margin-end"
    /// Margin on left side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-left is deprecated:**
    /// Use #GtkWidget:margin-start instead.
    case marginLeft = "margin-left"
    /// Margin on right side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-right is deprecated:**
    /// Use #GtkWidget:margin-end instead.
    case marginRight = "margin-right"
    /// Margin on start of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginStart = "margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginTop = "margin-top"
    case name = "name"
    case noShowAll = "no-show-all"
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case opacity = "opacity"
    case parent = "parent"
    case receivesDefault = "receives-default"
    case resizeMode = "resize-mode"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case sensitive = "sensitive"
    case shadowType = "shadow-type"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case style = "style"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language](#PangoMarkupFormat).
    /// Also see `gtk_tooltip_set_markup()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case tooltipMarkup = "tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see `gtk_tooltip_set_text()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case tooltipText = "tooltip-text"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case valign = "valign"
    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    case vexpand = "vexpand"
    /// Whether to use the `GtkWidget:vexpand` property. See `gtk_widget_get_vexpand_set()`.
    case vexpandSet = "vexpand-set"
    case visible = "visible"
    case widthRequest = "width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case window = "window"
}

public extension FrameProtocol {
    /// Bind a `FramePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: FramePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
        }

        let rv = _bind(source_property.name, to: target, target_property.name, flags: f, holder: BindingClosureHolder(transform_from, transform_to), transformFrom: {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_from(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }) {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_to(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }
        return rv
    }

    /// Get the value of a Frame property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: FramePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Frame property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: FramePropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: Frame has no signals// MARK: Frame Class: FrameProtocol extension (methods and fields)
public extension FrameProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFrame` instance.
    @inlinable var frame_ptr: UnsafeMutablePointer<GtkFrame>! { return ptr?.assumingMemoryBound(to: GtkFrame.self) }

    /// If the frame’s label widget is a `GtkLabel`, returns the
    /// text in the label widget. (The frame will have a `GtkLabel`
    /// for the label widget if a non-`nil` argument was passed
    /// to `gtk_frame_new()`.)
    @inlinable func getLabel() -> String! {
        let rv = gtk_frame_get_label(frame_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Retrieves the X and Y alignment of the frame’s label. See
    /// `gtk_frame_set_label_align()`.
    @inlinable func getLabelAlign(xalign: UnsafeMutablePointer<gfloat>! = nil, yalign: UnsafeMutablePointer<gfloat>! = nil) {
        gtk_frame_get_label_align(frame_ptr, xalign, yalign)
    
    }

    /// Retrieves the label widget for the frame. See
    /// `gtk_frame_set_label_widget()`.
    @inlinable func getLabelWidget() -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_frame_get_label_widget(frame_ptr))) else { return nil }
        return rv
    }

    /// Retrieves the shadow type of the frame. See
    /// `gtk_frame_set_shadow_type()`.
    @inlinable func getShadowType() -> GtkShadowType {
        let rv = gtk_frame_get_shadow_type(frame_ptr)
        return rv
    }

    /// Removes the current `GtkFrame:label`-widget. If `label` is not `nil`, creates a
    /// new `GtkLabel` with that text and adds it as the `GtkFrame:label`-widget.
    @inlinable func set(label: UnsafePointer<gchar>? = nil) {
        gtk_frame_set_label(frame_ptr, label)
    
    }

    /// Sets the alignment of the frame widget’s label. The
    /// default values for a newly created frame are 0.0 and 0.5.
    @inlinable func setLabelAlign(xalign: Double, yalign: Double) {
        gtk_frame_set_label_align(frame_ptr, gfloat(xalign), gfloat(yalign))
    
    }

    /// Sets the `GtkFrame:label`-widget for the frame. This is the widget that
    /// will appear embedded in the top edge of the frame as a title.
    @inlinable func set(labelWidget: WidgetRef? = nil) {
        gtk_frame_set_label_widget(frame_ptr, labelWidget?.widget_ptr)
    
    }
    /// Sets the `GtkFrame:label`-widget for the frame. This is the widget that
    /// will appear embedded in the top edge of the frame as a title.
    @inlinable func set<WidgetT: WidgetProtocol>(labelWidget: WidgetT?) {
        gtk_frame_set_label_widget(frame_ptr, labelWidget?.widget_ptr)
    
    }

    /// Sets the `GtkFrame:shadow`-type for `frame`, i.e. whether it is drawn without
    /// (`GTK_SHADOW_NONE`) or with (other values) a visible border. Values other than
    /// `GTK_SHADOW_NONE` are treated identically by GtkFrame. The chosen type is
    /// applied by removing or adding the .flat class to the CSS node named border.
    @inlinable func setShadow(type: GtkShadowType) {
        gtk_frame_set_shadow_type(frame_ptr, type)
    
    }
    @inlinable var label: String! {
        /// If the frame’s label widget is a `GtkLabel`, returns the
        /// text in the label widget. (The frame will have a `GtkLabel`
        /// for the label widget if a non-`nil` argument was passed
        /// to `gtk_frame_new()`.)
        get {
            let rv = gtk_frame_get_label(frame_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Removes the current `GtkFrame:label`-widget. If `label` is not `nil`, creates a
        /// new `GtkLabel` with that text and adds it as the `GtkFrame:label`-widget.
        nonmutating set {
            gtk_frame_set_label(frame_ptr, newValue)
        }
    }

    /// Retrieves the label widget for the frame. See
    /// `gtk_frame_set_label_widget()`.
    @inlinable var labelWidget: WidgetRef! {
        /// Retrieves the label widget for the frame. See
        /// `gtk_frame_set_label_widget()`.
        get {
            guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_frame_get_label_widget(frame_ptr))) else { return nil }
            return rv
        }
        /// Sets the `GtkFrame:label`-widget for the frame. This is the widget that
        /// will appear embedded in the top edge of the frame as a title.
        nonmutating set {
            gtk_frame_set_label_widget(frame_ptr, UnsafeMutablePointer<GtkWidget>(newValue?.widget_ptr))
        }
    }

    /// Retrieves the shadow type of the frame. See
    /// `gtk_frame_set_shadow_type()`.
    @inlinable var shadowType: GtkShadowType {
        /// Retrieves the shadow type of the frame. See
        /// `gtk_frame_set_shadow_type()`.
        get {
            let rv = gtk_frame_get_shadow_type(frame_ptr)
            return rv
        }
        /// Sets the `GtkFrame:shadow`-type for `frame`, i.e. whether it is drawn without
        /// (`GTK_SHADOW_NONE`) or with (other values) a visible border. Values other than
        /// `GTK_SHADOW_NONE` are treated identically by GtkFrame. The chosen type is
        /// applied by removing or adding the .flat class to the CSS node named border.
        nonmutating set {
            gtk_frame_set_shadow_type(frame_ptr, newValue)
        }
    }

    @inlinable var bin: GtkBin {
        get {
            let rv = frame_ptr.pointee.bin
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - FrameAccessible Class

/// The `FrameAccessibleProtocol` protocol exposes the methods and properties of an underlying `GtkFrameAccessible` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FrameAccessible`.
/// Alternatively, use `FrameAccessibleRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FrameAccessibleProtocol: ContainerAccessibleProtocol {
        /// Untyped pointer to the underlying `GtkFrameAccessible` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkFrameAccessible` instance.
    var frame_accessible_ptr: UnsafeMutablePointer<GtkFrameAccessible>! { get }

}

/// The `FrameAccessibleRef` type acts as a lightweight Swift reference to an underlying `GtkFrameAccessible` instance.
/// It exposes methods that can operate on this data type through `FrameAccessibleProtocol` conformance.
/// Use `FrameAccessibleRef` only as an `unowned` reference to an existing `GtkFrameAccessible` instance.
///

public struct FrameAccessibleRef: FrameAccessibleProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkFrameAccessible` instance.
    /// For type-safe access, use the generated, typed pointer `frame_accessible_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FrameAccessibleRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkFrameAccessible>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkFrameAccessible>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkFrameAccessible>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkFrameAccessible>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `FrameAccessibleProtocol`
    @inlinable init<T: FrameAccessibleProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: FrameAccessibleProtocol>(_ other: T) -> FrameAccessibleRef { FrameAccessibleRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameAccessibleProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameAccessibleProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameAccessibleProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameAccessibleProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameAccessibleProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FrameAccessible` type acts as a reference-counted owner of an underlying `GtkFrameAccessible` instance.
/// It provides the methods that can operate on this data type through `FrameAccessibleProtocol` conformance.
/// Use `FrameAccessible` as a strong reference or owner of a `GtkFrameAccessible` instance.
///

open class FrameAccessible: ContainerAccessible, FrameAccessibleProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FrameAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkFrameAccessible>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FrameAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkFrameAccessible>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FrameAccessible` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FrameAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FrameAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkFrameAccessible>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FrameAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkFrameAccessible>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkFrameAccessible`.
    /// i.e., ownership is transferred to the `FrameAccessible` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkFrameAccessible>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `FrameAccessibleProtocol`
    /// Will retain `GtkFrameAccessible`.
    /// - Parameter other: an instance of a related type that implements `FrameAccessibleProtocol`
    @inlinable public init<T: FrameAccessibleProtocol>(frameAccessible other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameAccessibleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameAccessibleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameAccessibleProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameAccessibleProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameAccessibleProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameAccessibleProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameAccessibleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FrameAccessibleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum FrameAccessiblePropertyName: String, PropertyNameProtocol {
    case accessibleComponentLayer = "accessible-component-layer"
    case accessibleComponentMdiZorder = "accessible-component-mdi-zorder"
    case accessibleDescription = "accessible-description"
    case accessibleHypertextNlinks = "accessible-hypertext-nlinks"
    case accessibleName = "accessible-name"
    case accessibleParent = "accessible-parent"
    case accessibleRole = "accessible-role"
    /// Table caption.
    ///
    /// **accessible-table-caption is deprecated:**
    /// Since 1.3. Use table-caption-object instead.
    case accessibleTableCaption = "accessible-table-caption"
    case accessibleTableCaptionObject = "accessible-table-caption-object"
    /// Accessible table column description.
    ///
    /// **accessible-table-column-description is deprecated:**
    /// Since 2.12. Use atk_table_get_column_description()
    /// and atk_table_set_column_description() instead.
    case accessibleTableColumnDescription = "accessible-table-column-description"
    /// Accessible table column header.
    ///
    /// **accessible-table-column-header is deprecated:**
    /// Since 2.12. Use atk_table_get_column_header() and
    /// atk_table_set_column_header() instead.
    case accessibleTableColumnHeader = "accessible-table-column-header"
    /// Accessible table row description.
    ///
    /// **accessible-table-row-description is deprecated:**
    /// Since 2.12. Use atk_table_get_row_description() and
    /// atk_table_set_row_description() instead.
    case accessibleTableRowDescription = "accessible-table-row-description"
    /// Accessible table row header.
    ///
    /// **accessible-table-row-header is deprecated:**
    /// Since 2.12. Use atk_table_get_row_header() and
    /// atk_table_set_row_header() instead.
    case accessibleTableRowHeader = "accessible-table-row-header"
    case accessibleTableSummary = "accessible-table-summary"
    /// Numeric value of this object, in case being and AtkValue.
    ///
    /// **accessible-value is deprecated:**
    /// Since 2.12. Use atk_value_get_value_and_text() to get
    /// the value, and value-changed signal to be notified on their value
    /// changes.
    case accessibleValue = "accessible-value"
    case widget = "widget"
}

public extension FrameAccessibleProtocol {
    /// Bind a `FrameAccessiblePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: FrameAccessiblePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
        }

        let rv = _bind(source_property.name, to: target, target_property.name, flags: f, holder: BindingClosureHolder(transform_from, transform_to), transformFrom: {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_from(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }) {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_to(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }
        return rv
    }

    /// Get the value of a FrameAccessible property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: FrameAccessiblePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a FrameAccessible property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: FrameAccessiblePropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: FrameAccessible has no signals// MARK: FrameAccessible Class: FrameAccessibleProtocol extension (methods and fields)
public extension FrameAccessibleProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFrameAccessible` instance.
    @inlinable var frame_accessible_ptr: UnsafeMutablePointer<GtkFrameAccessible>! { return ptr?.assumingMemoryBound(to: GtkFrameAccessible.self) }


    @inlinable var parent: GtkContainerAccessible {
        get {
            let rv = frame_accessible_ptr.pointee.parent
            return rv
        }
    }

    // var priv is unavailable because priv is private

}



// MARK: - GLArea Class

/// The `GLAreaProtocol` protocol exposes the methods and properties of an underlying `GtkGLArea` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `GLArea`.
/// Alternatively, use `GLAreaRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkGLArea` is a widget that allows drawing with OpenGL.
/// 
/// `GtkGLArea` sets up its own `GdkGLContext` for the window it creates, and
/// creates a custom GL framebuffer that the widget will do GL rendering onto.
/// It also ensures that this framebuffer is the default GL rendering target
/// when rendering.
/// 
/// In order to draw, you have to connect to the `GtkGLArea::render` signal,
/// or subclass `GtkGLArea` and override the `GtkGLAreaClass.render``()` virtual
/// function.
/// 
/// The `GtkGLArea` widget ensures that the `GdkGLContext` is associated with
/// the widget's drawing area, and it is kept updated when the size and
/// position of the drawing area changes.
/// 
/// ## Drawing with GtkGLArea ##
/// 
/// The simplest way to draw using OpenGL commands in a `GtkGLArea` is to
/// create a widget instance and connect to the `GtkGLArea::render` signal:
/// 
/// (C Language Example):
/// ```C
///   // create a GtkGLArea instance
///   GtkWidget *gl_area = gtk_gl_area_new ();
/// 
///   // connect to the "render" signal
///   g_signal_connect (gl_area, "render", G_CALLBACK (render), NULL);
/// ```
/// 
/// The ``render()`` function will be called when the `GtkGLArea` is ready
/// for you to draw its content:
/// 
/// (C Language Example):
/// ```C
///   static gboolean
///   render (GtkGLArea *area, GdkGLContext *context)
///   {
///     // inside this function it's safe to use GL; the given
///     // #GdkGLContext has been made current to the drawable
///     // surface used by the #GtkGLArea and the viewport has
///     // already been set to be the size of the allocation
/// 
///     // we can start by clearing the buffer
///     glClearColor (0, 0, 0, 0);
///     glClear (GL_COLOR_BUFFER_BIT);
/// 
///     // draw your object
///     draw_an_object ();
/// 
///     // we completed our drawing; the draw commands will be
///     // flushed at the end of the signal emission chain, and
///     // the buffers will be drawn on the window
///     return TRUE;
///   }
/// ```
/// 
/// If you need to initialize OpenGL state, e.g. buffer objects or
/// shaders, you should use the `GtkWidget::realize` signal; you
/// can use the `GtkWidget::unrealize` signal to clean up. Since the
/// `GdkGLContext` creation and initialization may fail, you will
/// need to check for errors, using `gtk_gl_area_get_error()`. An example
/// of how to safely initialize the GL state is:
/// 
/// (C Language Example):
/// ```C
///   static void
///   on_realize (GtkGLarea *area)
///   {
///     // We need to make the context current if we want to
///     // call GL API
///     gtk_gl_area_make_current (area);
/// 
///     // If there were errors during the initialization or
///     // when trying to make the context current, this
///     // function will return a #GError for you to catch
///     if (gtk_gl_area_get_error (area) != NULL)
///       return;
/// 
///     // You can also use gtk_gl_area_set_error() in order
///     // to show eventual initialization errors on the
///     // GtkGLArea widget itself
///     GError *internal_error = NULL;
///     init_buffer_objects (&error);
///     if (error != NULL)
///       {
///         gtk_gl_area_set_error (area, error);
///         g_error_free (error);
///         return;
///       }
/// 
///     init_shaders (&error);
///     if (error != NULL)
///       {
///         gtk_gl_area_set_error (area, error);
///         g_error_free (error);
///         return;
///       }
///   }
/// ```
/// 
/// If you need to change the options for creating the `GdkGLContext`
/// you should use the `GtkGLArea::create`-context signal.
public protocol GLAreaProtocol: WidgetProtocol {
        /// Untyped pointer to the underlying `GtkGLArea` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkGLArea` instance.
    var gl_area_ptr: UnsafeMutablePointer<GtkGLArea>! { get }

}

/// The `GLAreaRef` type acts as a lightweight Swift reference to an underlying `GtkGLArea` instance.
/// It exposes methods that can operate on this data type through `GLAreaProtocol` conformance.
/// Use `GLAreaRef` only as an `unowned` reference to an existing `GtkGLArea` instance.
///
/// `GtkGLArea` is a widget that allows drawing with OpenGL.
/// 
/// `GtkGLArea` sets up its own `GdkGLContext` for the window it creates, and
/// creates a custom GL framebuffer that the widget will do GL rendering onto.
/// It also ensures that this framebuffer is the default GL rendering target
/// when rendering.
/// 
/// In order to draw, you have to connect to the `GtkGLArea::render` signal,
/// or subclass `GtkGLArea` and override the `GtkGLAreaClass.render``()` virtual
/// function.
/// 
/// The `GtkGLArea` widget ensures that the `GdkGLContext` is associated with
/// the widget's drawing area, and it is kept updated when the size and
/// position of the drawing area changes.
/// 
/// ## Drawing with GtkGLArea ##
/// 
/// The simplest way to draw using OpenGL commands in a `GtkGLArea` is to
/// create a widget instance and connect to the `GtkGLArea::render` signal:
/// 
/// (C Language Example):
/// ```C
///   // create a GtkGLArea instance
///   GtkWidget *gl_area = gtk_gl_area_new ();
/// 
///   // connect to the "render" signal
///   g_signal_connect (gl_area, "render", G_CALLBACK (render), NULL);
/// ```
/// 
/// The ``render()`` function will be called when the `GtkGLArea` is ready
/// for you to draw its content:
/// 
/// (C Language Example):
/// ```C
///   static gboolean
///   render (GtkGLArea *area, GdkGLContext *context)
///   {
///     // inside this function it's safe to use GL; the given
///     // #GdkGLContext has been made current to the drawable
///     // surface used by the #GtkGLArea and the viewport has
///     // already been set to be the size of the allocation
/// 
///     // we can start by clearing the buffer
///     glClearColor (0, 0, 0, 0);
///     glClear (GL_COLOR_BUFFER_BIT);
/// 
///     // draw your object
///     draw_an_object ();
/// 
///     // we completed our drawing; the draw commands will be
///     // flushed at the end of the signal emission chain, and
///     // the buffers will be drawn on the window
///     return TRUE;
///   }
/// ```
/// 
/// If you need to initialize OpenGL state, e.g. buffer objects or
/// shaders, you should use the `GtkWidget::realize` signal; you
/// can use the `GtkWidget::unrealize` signal to clean up. Since the
/// `GdkGLContext` creation and initialization may fail, you will
/// need to check for errors, using `gtk_gl_area_get_error()`. An example
/// of how to safely initialize the GL state is:
/// 
/// (C Language Example):
/// ```C
///   static void
///   on_realize (GtkGLarea *area)
///   {
///     // We need to make the context current if we want to
///     // call GL API
///     gtk_gl_area_make_current (area);
/// 
///     // If there were errors during the initialization or
///     // when trying to make the context current, this
///     // function will return a #GError for you to catch
///     if (gtk_gl_area_get_error (area) != NULL)
///       return;
/// 
///     // You can also use gtk_gl_area_set_error() in order
///     // to show eventual initialization errors on the
///     // GtkGLArea widget itself
///     GError *internal_error = NULL;
///     init_buffer_objects (&error);
///     if (error != NULL)
///       {
///         gtk_gl_area_set_error (area, error);
///         g_error_free (error);
///         return;
///       }
/// 
///     init_shaders (&error);
///     if (error != NULL)
///       {
///         gtk_gl_area_set_error (area, error);
///         g_error_free (error);
///         return;
///       }
///   }
/// ```
/// 
/// If you need to change the options for creating the `GdkGLContext`
/// you should use the `GtkGLArea::create`-context signal.
public struct GLAreaRef: GLAreaProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkGLArea` instance.
    /// For type-safe access, use the generated, typed pointer `gl_area_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension GLAreaRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkGLArea>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkGLArea>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkGLArea>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkGLArea>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `GLAreaProtocol`
    @inlinable init<T: GLAreaProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: GLAreaProtocol>(_ other: T) -> GLAreaRef { GLAreaRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLAreaProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLAreaProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLAreaProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLAreaProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLAreaProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkGLArea` widget.
    @inlinable init() {
        let rv = gtk_gl_area_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `GLArea` type acts as a reference-counted owner of an underlying `GtkGLArea` instance.
/// It provides the methods that can operate on this data type through `GLAreaProtocol` conformance.
/// Use `GLArea` as a strong reference or owner of a `GtkGLArea` instance.
///
/// `GtkGLArea` is a widget that allows drawing with OpenGL.
/// 
/// `GtkGLArea` sets up its own `GdkGLContext` for the window it creates, and
/// creates a custom GL framebuffer that the widget will do GL rendering onto.
/// It also ensures that this framebuffer is the default GL rendering target
/// when rendering.
/// 
/// In order to draw, you have to connect to the `GtkGLArea::render` signal,
/// or subclass `GtkGLArea` and override the `GtkGLAreaClass.render``()` virtual
/// function.
/// 
/// The `GtkGLArea` widget ensures that the `GdkGLContext` is associated with
/// the widget's drawing area, and it is kept updated when the size and
/// position of the drawing area changes.
/// 
/// ## Drawing with GtkGLArea ##
/// 
/// The simplest way to draw using OpenGL commands in a `GtkGLArea` is to
/// create a widget instance and connect to the `GtkGLArea::render` signal:
/// 
/// (C Language Example):
/// ```C
///   // create a GtkGLArea instance
///   GtkWidget *gl_area = gtk_gl_area_new ();
/// 
///   // connect to the "render" signal
///   g_signal_connect (gl_area, "render", G_CALLBACK (render), NULL);
/// ```
/// 
/// The ``render()`` function will be called when the `GtkGLArea` is ready
/// for you to draw its content:
/// 
/// (C Language Example):
/// ```C
///   static gboolean
///   render (GtkGLArea *area, GdkGLContext *context)
///   {
///     // inside this function it's safe to use GL; the given
///     // #GdkGLContext has been made current to the drawable
///     // surface used by the #GtkGLArea and the viewport has
///     // already been set to be the size of the allocation
/// 
///     // we can start by clearing the buffer
///     glClearColor (0, 0, 0, 0);
///     glClear (GL_COLOR_BUFFER_BIT);
/// 
///     // draw your object
///     draw_an_object ();
/// 
///     // we completed our drawing; the draw commands will be
///     // flushed at the end of the signal emission chain, and
///     // the buffers will be drawn on the window
///     return TRUE;
///   }
/// ```
/// 
/// If you need to initialize OpenGL state, e.g. buffer objects or
/// shaders, you should use the `GtkWidget::realize` signal; you
/// can use the `GtkWidget::unrealize` signal to clean up. Since the
/// `GdkGLContext` creation and initialization may fail, you will
/// need to check for errors, using `gtk_gl_area_get_error()`. An example
/// of how to safely initialize the GL state is:
/// 
/// (C Language Example):
/// ```C
///   static void
///   on_realize (GtkGLarea *area)
///   {
///     // We need to make the context current if we want to
///     // call GL API
///     gtk_gl_area_make_current (area);
/// 
///     // If there were errors during the initialization or
///     // when trying to make the context current, this
///     // function will return a #GError for you to catch
///     if (gtk_gl_area_get_error (area) != NULL)
///       return;
/// 
///     // You can also use gtk_gl_area_set_error() in order
///     // to show eventual initialization errors on the
///     // GtkGLArea widget itself
///     GError *internal_error = NULL;
///     init_buffer_objects (&error);
///     if (error != NULL)
///       {
///         gtk_gl_area_set_error (area, error);
///         g_error_free (error);
///         return;
///       }
/// 
///     init_shaders (&error);
///     if (error != NULL)
///       {
///         gtk_gl_area_set_error (area, error);
///         g_error_free (error);
///         return;
///       }
///   }
/// ```
/// 
/// If you need to change the options for creating the `GdkGLContext`
/// you should use the `GtkGLArea::create`-context signal.
open class GLArea: Widget, GLAreaProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GLArea` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkGLArea>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GLArea` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkGLArea>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GLArea` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GLArea` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GLArea` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkGLArea>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GLArea` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkGLArea>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkGLArea`.
    /// i.e., ownership is transferred to the `GLArea` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkGLArea>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `GLAreaProtocol`
    /// Will retain `GtkGLArea`.
    /// - Parameter other: an instance of a related type that implements `GLAreaProtocol`
    @inlinable public init<T: GLAreaProtocol>(gLArea other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLAreaProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLAreaProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLAreaProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLAreaProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLAreaProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLAreaProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLAreaProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GLAreaProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkGLArea` widget.
    @inlinable public init() {
        let rv = gtk_gl_area_new()
        super.init(gpointer: (rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum GLAreaPropertyName: String, PropertyNameProtocol {
    case appPaintable = "app-paintable"
    /// If set to `true` the `GtkGLArea::render` signal will be emitted every time
    /// the widget draws. This is the default and is useful if drawing the widget
    /// is faster.
    /// 
    /// If set to `false` the data from previous rendering is kept around and will
    /// be used for drawing the widget the next time, unless the window is resized.
    /// In order to force a rendering `gtk_gl_area_queue_render()` must be called.
    /// This mode is useful when the scene changes seldomly, but takes a long time
    /// to redraw.
    case autoRender = "auto-render"
    case canDefault = "can-default"
    case canFocus = "can-focus"
    case compositeChild = "composite-child"
    /// The `GdkGLContext` used by the `GtkGLArea` widget.
    /// 
    /// The `GtkGLArea` widget is responsible for creating the `GdkGLContext`
    /// instance. If you need to render with other kinds of buffers (stencil,
    /// depth, etc), use render buffers.
    case context = "context"
    /// Whether the widget is double buffered.
    ///
    /// **double-buffered is deprecated:**
    /// Widgets should not use this property.
    case doubleBuffered = "double-buffered"
    case events = "events"
    /// Whether to expand in both directions. Setting this sets both `GtkWidget:hexpand` and `GtkWidget:vexpand`
    case expand = "expand"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    /// 
    /// Before 3.20, several widgets (GtkButton, GtkFileChooserButton,
    /// GtkComboBox) implemented this property individually.
    case focusOnClick = "focus-on-click"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case halign = "halign"
    /// If set to `true` the buffer allocated by the widget will have an alpha channel
    /// component, and when rendering to the window the result will be composited over
    /// whatever is below the widget.
    /// 
    /// If set to `false` there will be no alpha channel, and the buffer will fully
    /// replace anything below the widget.
    case hasAlpha = "has-alpha"
    case hasDefault = "has-default"
    /// If set to `true` the widget will allocate and enable a depth buffer for the
    /// target framebuffer.
    case hasDepthBuffer = "has-depth-buffer"
    case hasFocus = "has-focus"
    /// If set to `true` the widget will allocate and enable a stencil buffer for the
    /// target framebuffer.
    case hasStencilBuffer = "has-stencil-buffer"
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case hasTooltip = "has-tooltip"
    case heightRequest = "height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case hexpand = "hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case hexpandSet = "hexpand-set"
    case isFocus = "is-focus"
    /// Sets all four sides' margin at once. If read, returns max
    /// margin on any side.
    case margin = "margin"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginBottom = "margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginEnd = "margin-end"
    /// Margin on left side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-left is deprecated:**
    /// Use #GtkWidget:margin-start instead.
    case marginLeft = "margin-left"
    /// Margin on right side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-right is deprecated:**
    /// Use #GtkWidget:margin-end instead.
    case marginRight = "margin-right"
    /// Margin on start of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginStart = "margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginTop = "margin-top"
    case name = "name"
    case noShowAll = "no-show-all"
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case opacity = "opacity"
    case parent = "parent"
    case receivesDefault = "receives-default"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case sensitive = "sensitive"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case style = "style"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language](#PangoMarkupFormat).
    /// Also see `gtk_tooltip_set_markup()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case tooltipMarkup = "tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see `gtk_tooltip_set_text()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case tooltipText = "tooltip-text"
    /// If set to `true` the widget will try to create a `GdkGLContext` using
    /// OpenGL ES instead of OpenGL.
    /// 
    /// See also: `gdk_gl_context_set_use_es()`
    case useEs = "use-es"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case valign = "valign"
    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    case vexpand = "vexpand"
    /// Whether to use the `GtkWidget:vexpand` property. See `gtk_widget_get_vexpand_set()`.
    case vexpandSet = "vexpand-set"
    case visible = "visible"
    case widthRequest = "width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case window = "window"
}

public extension GLAreaProtocol {
    /// Bind a `GLAreaPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: GLAreaPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
        }

        let rv = _bind(source_property.name, to: target, target_property.name, flags: f, holder: BindingClosureHolder(transform_from, transform_to), transformFrom: {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_from(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }) {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_to(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }
        return rv
    }

    /// Get the value of a GLArea property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: GLAreaPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a GLArea property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: GLAreaPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: Signals of GLArea
public extension GLAreaProtocol {
    /// The `create`-context signal is emitted when the widget is being
    /// realized, and allows you to override how the GL context is
    /// created. This is useful when you want to reuse an existing GL
    /// context, or if you want to try creating different kinds of GL
    /// options.
    /// 
    /// If context creation fails then the signal handler can use
    /// `gtk_gl_area_set_error()` to register a more detailed error
    /// of how the construction failed.
    /// - Note: Representation of signal named `create-context`
    /// - Parameter flags: Flags
    /// - Parameter handler: a newly created `GdkGLContext`;     the `GtkGLArea` widget will take ownership of the returned value.
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Warning: Wrapper of this signal could not be generated because it contains unimplemented features: { (9)  Record return is not yet supported }
    /// - Note: Use this string for `signalConnectData` method
    static var onCreateContext: String { "create-context" }
    /// The `render` signal is emitted every time the contents
    /// of the `GtkGLArea` should be redrawn.
    /// 
    /// The `context` is bound to the `area` prior to emitting this function,
    /// and the buffers are painted to the window once the emission terminates.
    /// - Note: Representation of signal named `render`
    /// - Parameter flags: Flags
    /// - Parameter handler: `true` to stop other handlers from being invoked for the event.   `false` to propagate the event further.
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter context: the `GdkGLContext` used by `area`
    @discardableResult
    func onRender(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: GLAreaRef, _ context: Gdk.GLContextRef) -> Bool ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<GLAreaRef, Gdk.GLContextRef, Bool>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> gboolean = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output = holder.call(GLAreaRef(raw: unownedSelf), Gdk.GLContextRef(raw: arg1))
            return gboolean((output) ? 1 : 0)
        }
        return signalConnectData(
            detailedSignal: "render", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The `resize` signal is emitted once when the widget is realized, and
    /// then each time the widget is changed while realized. This is useful
    /// in order to keep GL state up to date with the widget size, like for
    /// instance camera properties which may depend on the width/height ratio.
    /// 
    /// The GL context for the area is guaranteed to be current when this signal
    /// is emitted.
    /// 
    /// The default handler sets up the GL viewport.
    /// - Note: Representation of signal named `resize`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter width: the width of the viewport
    /// - Parameter height: the height of the viewport
    @discardableResult
    func onResize(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: GLAreaRef, _ width: Int, _ height: Int) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder3<GLAreaRef, Int, Int, Void>
        let cCallback: @convention(c) (gpointer, gint, gint, gpointer) -> Void = { unownedSelf, arg1, arg2, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(GLAreaRef(raw: unownedSelf), Int(arg1), Int(arg2))
            return output
        }
        return signalConnectData(
            detailedSignal: "resize", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: Representation of signal named `notify::auto-render`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyAutoRender(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: GLAreaRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<GLAreaRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(GLAreaRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::auto-render", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: Representation of signal named `notify::context`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyContext(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: GLAreaRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<GLAreaRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(GLAreaRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::context", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: Representation of signal named `notify::has-alpha`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyHasAlpha(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: GLAreaRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<GLAreaRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(GLAreaRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::has-alpha", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: Representation of signal named `notify::has-depth-buffer`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyHasDepthBuffer(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: GLAreaRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<GLAreaRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(GLAreaRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::has-depth-buffer", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: Representation of signal named `notify::has-stencil-buffer`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyHasStencilBuffer(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: GLAreaRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<GLAreaRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(GLAreaRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::has-stencil-buffer", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: Representation of signal named `notify::use-es`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyUseEs(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: GLAreaRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<GLAreaRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(GLAreaRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::use-es", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
}

// MARK: GLArea Class: GLAreaProtocol extension (methods and fields)
public extension GLAreaProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkGLArea` instance.
    @inlinable var gl_area_ptr: UnsafeMutablePointer<GtkGLArea>! { return ptr?.assumingMemoryBound(to: GtkGLArea.self) }

    /// Ensures that the `area` framebuffer object is made the current draw
    /// and read target, and that all the required buffers for the `area`
    /// are created and bound to the frambuffer.
    /// 
    /// This function is automatically called before emitting the
    /// `GtkGLArea::render` signal, and doesn't normally need to be called
    /// by application code.
    @inlinable func attachBuffers() {
        gtk_gl_area_attach_buffers(gl_area_ptr)
    
    }

    /// Returns whether the area is in auto render mode or not.
    @inlinable func getAutoRender() -> Bool {
        let rv = ((gtk_gl_area_get_auto_render(gl_area_ptr)) != 0)
        return rv
    }

    /// Retrieves the `GdkGLContext` used by `area`.
    @inlinable func getContext() -> Gdk.GLContextRef! {
        let rv = Gdk.GLContextRef(gtk_gl_area_get_context(gl_area_ptr))
        return rv
    }

    /// Gets the current error set on the `area`.
    @inlinable func getError() -> GLib.ErrorRef! {
        let rv = GLib.ErrorRef(gtk_gl_area_get_error(gl_area_ptr))
        return rv
    }

    /// Returns whether the area has an alpha component.
    @inlinable func getHasAlpha() -> Bool {
        let rv = ((gtk_gl_area_get_has_alpha(gl_area_ptr)) != 0)
        return rv
    }

    /// Returns whether the area has a depth buffer.
    @inlinable func getHasDepthBuffer() -> Bool {
        let rv = ((gtk_gl_area_get_has_depth_buffer(gl_area_ptr)) != 0)
        return rv
    }

    /// Returns whether the area has a stencil buffer.
    @inlinable func getHasStencilBuffer() -> Bool {
        let rv = ((gtk_gl_area_get_has_stencil_buffer(gl_area_ptr)) != 0)
        return rv
    }

    /// Retrieves the required version of OpenGL set
    /// using `gtk_gl_area_set_required_version()`.
    @inlinable func getRequiredVersion(major: UnsafeMutablePointer<gint>!, minor: UnsafeMutablePointer<gint>!) {
        gtk_gl_area_get_required_version(gl_area_ptr, major, minor)
    
    }

    /// Retrieves the value set by `gtk_gl_area_set_use_es()`.
    @inlinable func getUseEs() -> Bool {
        let rv = ((gtk_gl_area_get_use_es(gl_area_ptr)) != 0)
        return rv
    }

    /// Ensures that the `GdkGLContext` used by `area` is associated with
    /// the `GtkGLArea`.
    /// 
    /// This function is automatically called before emitting the
    /// `GtkGLArea::render` signal, and doesn't normally need to be called
    /// by application code.
    @inlinable func makeCurrent() {
        gtk_gl_area_make_current(gl_area_ptr)
    
    }

    /// Marks the currently rendered data (if any) as invalid, and queues
    /// a redraw of the widget, ensuring that the `GtkGLArea::render` signal
    /// is emitted during the draw.
    /// 
    /// This is only needed when the `gtk_gl_area_set_auto_render()` has
    /// been called with a `false` value. The default behaviour is to
    /// emit `GtkGLArea::render` on each draw.
    @inlinable func queueRender() {
        gtk_gl_area_queue_render(gl_area_ptr)
    
    }

    /// If `auto_render` is `true` the `GtkGLArea::render` signal will be
    /// emitted every time the widget draws. This is the default and is
    /// useful if drawing the widget is faster.
    /// 
    /// If `auto_render` is `false` the data from previous rendering is kept
    /// around and will be used for drawing the widget the next time,
    /// unless the window is resized. In order to force a rendering
    /// `gtk_gl_area_queue_render()` must be called. This mode is useful when
    /// the scene changes seldomly, but takes a long time to redraw.
    @inlinable func set(autoRender: Bool) {
        gtk_gl_area_set_auto_render(gl_area_ptr, gboolean((autoRender) ? 1 : 0))
    
    }

    /// Sets an error on the area which will be shown instead of the
    /// GL rendering. This is useful in the `GtkGLArea::create`-context
    /// signal if GL context creation fails.
    @inlinable func set(error: ErrorRef? = nil) {
        gtk_gl_area_set_error(gl_area_ptr, error?.error_ptr)
    
    }
    /// Sets an error on the area which will be shown instead of the
    /// GL rendering. This is useful in the `GtkGLArea::create`-context
    /// signal if GL context creation fails.
    @inlinable func set<GLibErrorT: ErrorProtocol>(error: GLibErrorT?) {
        gtk_gl_area_set_error(gl_area_ptr, error?.error_ptr)
    
    }

    /// If `has_alpha` is `true` the buffer allocated by the widget will have
    /// an alpha channel component, and when rendering to the window the
    /// result will be composited over whatever is below the widget.
    /// 
    /// If `has_alpha` is `false` there will be no alpha channel, and the
    /// buffer will fully replace anything below the widget.
    @inlinable func set(hasAlpha: Bool) {
        gtk_gl_area_set_has_alpha(gl_area_ptr, gboolean((hasAlpha) ? 1 : 0))
    
    }

    /// If `has_depth_buffer` is `true` the widget will allocate and
    /// enable a depth buffer for the target framebuffer. Otherwise
    /// there will be none.
    @inlinable func set(hasDepthBuffer: Bool) {
        gtk_gl_area_set_has_depth_buffer(gl_area_ptr, gboolean((hasDepthBuffer) ? 1 : 0))
    
    }

    /// If `has_stencil_buffer` is `true` the widget will allocate and
    /// enable a stencil buffer for the target framebuffer. Otherwise
    /// there will be none.
    @inlinable func set(hasStencilBuffer: Bool) {
        gtk_gl_area_set_has_stencil_buffer(gl_area_ptr, gboolean((hasStencilBuffer) ? 1 : 0))
    
    }

    /// Sets the required version of OpenGL to be used when creating the context
    /// for the widget.
    /// 
    /// This function must be called before the area has been realized.
    @inlinable func setRequiredVersion(major: Int, minor: Int) {
        gtk_gl_area_set_required_version(gl_area_ptr, gint(major), gint(minor))
    
    }

    /// Sets whether the `area` should create an OpenGL or an OpenGL ES context.
    /// 
    /// You should check the capabilities of the `GdkGLContext` before drawing
    /// with either API.
    @inlinable func set(useEs: Bool) {
        gtk_gl_area_set_use_es(gl_area_ptr, gboolean((useEs) ? 1 : 0))
    
    }
    /// Returns whether the area is in auto render mode or not.
    @inlinable var autoRender: Bool {
        /// Returns whether the area is in auto render mode or not.
        get {
            let rv = ((gtk_gl_area_get_auto_render(gl_area_ptr)) != 0)
            return rv
        }
        /// If `auto_render` is `true` the `GtkGLArea::render` signal will be
        /// emitted every time the widget draws. This is the default and is
        /// useful if drawing the widget is faster.
        /// 
        /// If `auto_render` is `false` the data from previous rendering is kept
        /// around and will be used for drawing the widget the next time,
        /// unless the window is resized. In order to force a rendering
        /// `gtk_gl_area_queue_render()` must be called. This mode is useful when
        /// the scene changes seldomly, but takes a long time to redraw.
        nonmutating set {
            gtk_gl_area_set_auto_render(gl_area_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// The `GdkGLContext` used by the `GtkGLArea` widget.
    /// 
    /// The `GtkGLArea` widget is responsible for creating the `GdkGLContext`
    /// instance. If you need to render with other kinds of buffers (stencil,
    /// depth, etc), use render buffers.
    @inlinable var context: Gdk.GLContextRef! {
        /// Retrieves the `GdkGLContext` used by `area`.
        get {
            let rv = Gdk.GLContextRef(gtk_gl_area_get_context(gl_area_ptr))
            return rv
        }
    }

    /// Gets the current error set on the `area`.
    @inlinable var error: GLib.ErrorRef! {
        /// Gets the current error set on the `area`.
        get {
            let rv = GLib.ErrorRef(gtk_gl_area_get_error(gl_area_ptr))
            return rv
        }
        /// Sets an error on the area which will be shown instead of the
        /// GL rendering. This is useful in the `GtkGLArea::create`-context
        /// signal if GL context creation fails.
        nonmutating set {
            gtk_gl_area_set_error(gl_area_ptr, UnsafePointer<GError>(newValue?.error_ptr))
        }
    }

    /// Returns whether the area has an alpha component.
    @inlinable var hasAlpha: Bool {
        /// Returns whether the area has an alpha component.
        get {
            let rv = ((gtk_gl_area_get_has_alpha(gl_area_ptr)) != 0)
            return rv
        }
        /// If `has_alpha` is `true` the buffer allocated by the widget will have
        /// an alpha channel component, and when rendering to the window the
        /// result will be composited over whatever is below the widget.
        /// 
        /// If `has_alpha` is `false` there will be no alpha channel, and the
        /// buffer will fully replace anything below the widget.
        nonmutating set {
            gtk_gl_area_set_has_alpha(gl_area_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Returns whether the area has a depth buffer.
    @inlinable var hasDepthBuffer: Bool {
        /// Returns whether the area has a depth buffer.
        get {
            let rv = ((gtk_gl_area_get_has_depth_buffer(gl_area_ptr)) != 0)
            return rv
        }
        /// If `has_depth_buffer` is `true` the widget will allocate and
        /// enable a depth buffer for the target framebuffer. Otherwise
        /// there will be none.
        nonmutating set {
            gtk_gl_area_set_has_depth_buffer(gl_area_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Returns whether the area has a stencil buffer.
    @inlinable var hasStencilBuffer: Bool {
        /// Returns whether the area has a stencil buffer.
        get {
            let rv = ((gtk_gl_area_get_has_stencil_buffer(gl_area_ptr)) != 0)
            return rv
        }
        /// If `has_stencil_buffer` is `true` the widget will allocate and
        /// enable a stencil buffer for the target framebuffer. Otherwise
        /// there will be none.
        nonmutating set {
            gtk_gl_area_set_has_stencil_buffer(gl_area_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Retrieves the value set by `gtk_gl_area_set_use_es()`.
    @inlinable var useEs: Bool {
        /// Retrieves the value set by `gtk_gl_area_set_use_es()`.
        get {
            let rv = ((gtk_gl_area_get_use_es(gl_area_ptr)) != 0)
            return rv
        }
        /// Sets whether the `area` should create an OpenGL or an OpenGL ES context.
        /// 
        /// You should check the capabilities of the `GdkGLContext` before drawing
        /// with either API.
        nonmutating set {
            gtk_gl_area_set_use_es(gl_area_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    // var parentInstance is unavailable because parent_instance is private

}



