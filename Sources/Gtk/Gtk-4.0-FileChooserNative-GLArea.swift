import CGLib
import CCairo
import CPango
import CGdkPixbuf
import CGdk
import CGtk
import GLib
import GLibObject
import GIO
import Pango
import Cairo
import PangoCairo
import GdkPixbuf
import Gdk

// MARK: - FileChooserNative Class

/// The `FileChooserNativeProtocol` protocol exposes the methods and properties of an underlying `GtkFileChooserNative` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FileChooserNative`.
/// Alternatively, use `FileChooserNativeRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkFileChooserNative` is an abstraction of a dialog box suitable
/// for use with “File Open” or “File Save as” commands. By default, this
/// just uses a `GtkFileChooserDialog` to implement the actual dialog.
/// However, on certain platforms, such as Windows and macOS, the native platform
/// file chooser is used instead. When the application is running in a
/// sandboxed environment without direct filesystem access (such as Flatpak),
/// `GtkFileChooserNative` may call the proper APIs (portals) to let the user
/// choose a file and make it available to the application.
/// 
/// While the API of `GtkFileChooserNative` closely mirrors `GtkFileChooserDialog`,
/// the main difference is that there is no access to any `GtkWindow` or `GtkWidget`
/// for the dialog. This is required, as there may not be one in the case of a
/// platform native dialog.
/// 
/// Showing, hiding and running the dialog is handled by the `GtkNativeDialog`
/// functions.
/// 
/// ## Typical usage ## <a name="gtkfilechoosernative-typical-usage"></a>
/// 
/// In the simplest of cases, you can the following code to use
/// `GtkFileChooserDialog` to select a file for opening:
/// 
/// (C Language Example):
/// ```C
/// static void
/// on_response (GtkNativeDialog *native,
///              int              response)
/// {
///   if (response == GTK_RESPONSE_ACCEPT)
///     {
///       GtkFileChooser *chooser = GTK_FILE_CHOOSER (native);
///       GFile *file = gtk_file_chooser_get_file (chooser);
/// 
///       open_file (file);
/// 
///       g_object_unref (file);
///     }
/// 
///   g_object_unref (native);
/// }
/// 
///   // ...
///   GtkFileChooserNative *native;
///   GtkFileChooserAction action = GTK_FILE_CHOOSER_ACTION_OPEN;
/// 
///   native = gtk_file_chooser_native_new ("Open File",
///                                         parent_window,
///                                         action,
///                                         "_Open",
///                                         "_Cancel");
/// 
///   g_signal_connect (native, "response", G_CALLBACK (on_response), NULL);
///   gtk_native_dialog_show (GTK_NATIVE_DIALOG (native));
/// ```
/// 
/// To use a dialog for saving, you can use this:
/// 
/// (C Language Example):
/// ```C
/// static void
/// on_response (GtkNativeDialog *native,
///              int              response)
/// {
///   if (response == GTK_RESPONSE_ACCEPT)
///     {
///       GtkFileChooser *chooser = GTK_FILE_CHOOSER (native);
///       GFile *file = gtk_file_chooser_get_file (chooser);
/// 
///       save_to_file (file);
/// 
///       g_object_unref (file);
///     }
/// 
///   g_object_unref (native);
/// }
/// 
///   // ...
///   GtkFileChooserNative *native;
///   GtkFileChooser *chooser;
///   GtkFileChooserAction action = GTK_FILE_CHOOSER_ACTION_SAVE;
/// 
///   native = gtk_file_chooser_native_new ("Save File",
///                                         parent_window,
///                                         action,
///                                         "_Save",
///                                         "_Cancel");
///   chooser = GTK_FILE_CHOOSER (native);
/// 
///   if (user_edited_a_new_document)
///     gtk_file_chooser_set_current_name (chooser, _("Untitled document"));
///   else
///     gtk_file_chooser_set_file (chooser, existing_file, NULL);
/// 
///   g_signal_connect (native, "response", G_CALLBACK (on_response), NULL);
///   gtk_native_dialog_show (GTK_NATIVE_DIALOG (native));
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
/// No operations that change the dialog work while the dialog is visible.
/// Set all the properties that are required before showing the dialog.
/// 
/// ## Win32 details ## <a name="gtkfilechooserdialognative-win32"></a>
/// 
/// On windows the IFileDialog implementation (added in Windows Vista) is
/// used. It supports many of the features that `GtkFileChooserDialog`
/// does, but there are some things it does not handle:
/// 
/// * Any `GtkFileFilter` added using a mimetype
/// 
/// If any of these features are used the regular `GtkFileChooserDialog`
/// will be used in place of the native one.
/// 
/// ## Portal details ## <a name="gtkfilechooserdialognative-portal"></a>
/// 
/// When the org.freedesktop.portal.FileChooser portal is available on the
/// session bus, it is used to bring up an out-of-process file chooser. Depending
/// on the kind of session the application is running in, this may or may not
/// be a GTK file chooser.
/// 
/// ## macOS details ## <a name="gtkfilechooserdialognative-macos"></a>
/// 
/// On macOS the NSSavePanel and NSOpenPanel classes are used to provide native
/// file chooser dialogs. Some features provided by `GtkFileChooserDialog` are
/// not supported:
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
/// for use with “File Open” or “File Save as” commands. By default, this
/// just uses a `GtkFileChooserDialog` to implement the actual dialog.
/// However, on certain platforms, such as Windows and macOS, the native platform
/// file chooser is used instead. When the application is running in a
/// sandboxed environment without direct filesystem access (such as Flatpak),
/// `GtkFileChooserNative` may call the proper APIs (portals) to let the user
/// choose a file and make it available to the application.
/// 
/// While the API of `GtkFileChooserNative` closely mirrors `GtkFileChooserDialog`,
/// the main difference is that there is no access to any `GtkWindow` or `GtkWidget`
/// for the dialog. This is required, as there may not be one in the case of a
/// platform native dialog.
/// 
/// Showing, hiding and running the dialog is handled by the `GtkNativeDialog`
/// functions.
/// 
/// ## Typical usage ## <a name="gtkfilechoosernative-typical-usage"></a>
/// 
/// In the simplest of cases, you can the following code to use
/// `GtkFileChooserDialog` to select a file for opening:
/// 
/// (C Language Example):
/// ```C
/// static void
/// on_response (GtkNativeDialog *native,
///              int              response)
/// {
///   if (response == GTK_RESPONSE_ACCEPT)
///     {
///       GtkFileChooser *chooser = GTK_FILE_CHOOSER (native);
///       GFile *file = gtk_file_chooser_get_file (chooser);
/// 
///       open_file (file);
/// 
///       g_object_unref (file);
///     }
/// 
///   g_object_unref (native);
/// }
/// 
///   // ...
///   GtkFileChooserNative *native;
///   GtkFileChooserAction action = GTK_FILE_CHOOSER_ACTION_OPEN;
/// 
///   native = gtk_file_chooser_native_new ("Open File",
///                                         parent_window,
///                                         action,
///                                         "_Open",
///                                         "_Cancel");
/// 
///   g_signal_connect (native, "response", G_CALLBACK (on_response), NULL);
///   gtk_native_dialog_show (GTK_NATIVE_DIALOG (native));
/// ```
/// 
/// To use a dialog for saving, you can use this:
/// 
/// (C Language Example):
/// ```C
/// static void
/// on_response (GtkNativeDialog *native,
///              int              response)
/// {
///   if (response == GTK_RESPONSE_ACCEPT)
///     {
///       GtkFileChooser *chooser = GTK_FILE_CHOOSER (native);
///       GFile *file = gtk_file_chooser_get_file (chooser);
/// 
///       save_to_file (file);
/// 
///       g_object_unref (file);
///     }
/// 
///   g_object_unref (native);
/// }
/// 
///   // ...
///   GtkFileChooserNative *native;
///   GtkFileChooser *chooser;
///   GtkFileChooserAction action = GTK_FILE_CHOOSER_ACTION_SAVE;
/// 
///   native = gtk_file_chooser_native_new ("Save File",
///                                         parent_window,
///                                         action,
///                                         "_Save",
///                                         "_Cancel");
///   chooser = GTK_FILE_CHOOSER (native);
/// 
///   if (user_edited_a_new_document)
///     gtk_file_chooser_set_current_name (chooser, _("Untitled document"));
///   else
///     gtk_file_chooser_set_file (chooser, existing_file, NULL);
/// 
///   g_signal_connect (native, "response", G_CALLBACK (on_response), NULL);
///   gtk_native_dialog_show (GTK_NATIVE_DIALOG (native));
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
/// No operations that change the dialog work while the dialog is visible.
/// Set all the properties that are required before showing the dialog.
/// 
/// ## Win32 details ## <a name="gtkfilechooserdialognative-win32"></a>
/// 
/// On windows the IFileDialog implementation (added in Windows Vista) is
/// used. It supports many of the features that `GtkFileChooserDialog`
/// does, but there are some things it does not handle:
/// 
/// * Any `GtkFileFilter` added using a mimetype
/// 
/// If any of these features are used the regular `GtkFileChooserDialog`
/// will be used in place of the native one.
/// 
/// ## Portal details ## <a name="gtkfilechooserdialognative-portal"></a>
/// 
/// When the org.freedesktop.portal.FileChooser portal is available on the
/// session bus, it is used to bring up an out-of-process file chooser. Depending
/// on the kind of session the application is running in, this may or may not
/// be a GTK file chooser.
/// 
/// ## macOS details ## <a name="gtkfilechooserdialognative-macos"></a>
/// 
/// On macOS the NSSavePanel and NSOpenPanel classes are used to provide native
/// file chooser dialogs. Some features provided by `GtkFileChooserDialog` are
/// not supported:
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
    @inlinable init<WindowT: WindowProtocol>( title: UnsafePointer<CChar>? = nil, parent: WindowT?, action: GtkFileChooserAction, acceptLabel: UnsafePointer<CChar>? = nil, cancelLabel: UnsafePointer<CChar>? = nil) {
        let rv = gtk_file_chooser_native_new(title, parent?.window_ptr, action, acceptLabel, cancelLabel)
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `FileChooserNative` type acts as a reference-counted owner of an underlying `GtkFileChooserNative` instance.
/// It provides the methods that can operate on this data type through `FileChooserNativeProtocol` conformance.
/// Use `FileChooserNative` as a strong reference or owner of a `GtkFileChooserNative` instance.
///
/// `GtkFileChooserNative` is an abstraction of a dialog box suitable
/// for use with “File Open” or “File Save as” commands. By default, this
/// just uses a `GtkFileChooserDialog` to implement the actual dialog.
/// However, on certain platforms, such as Windows and macOS, the native platform
/// file chooser is used instead. When the application is running in a
/// sandboxed environment without direct filesystem access (such as Flatpak),
/// `GtkFileChooserNative` may call the proper APIs (portals) to let the user
/// choose a file and make it available to the application.
/// 
/// While the API of `GtkFileChooserNative` closely mirrors `GtkFileChooserDialog`,
/// the main difference is that there is no access to any `GtkWindow` or `GtkWidget`
/// for the dialog. This is required, as there may not be one in the case of a
/// platform native dialog.
/// 
/// Showing, hiding and running the dialog is handled by the `GtkNativeDialog`
/// functions.
/// 
/// ## Typical usage ## <a name="gtkfilechoosernative-typical-usage"></a>
/// 
/// In the simplest of cases, you can the following code to use
/// `GtkFileChooserDialog` to select a file for opening:
/// 
/// (C Language Example):
/// ```C
/// static void
/// on_response (GtkNativeDialog *native,
///              int              response)
/// {
///   if (response == GTK_RESPONSE_ACCEPT)
///     {
///       GtkFileChooser *chooser = GTK_FILE_CHOOSER (native);
///       GFile *file = gtk_file_chooser_get_file (chooser);
/// 
///       open_file (file);
/// 
///       g_object_unref (file);
///     }
/// 
///   g_object_unref (native);
/// }
/// 
///   // ...
///   GtkFileChooserNative *native;
///   GtkFileChooserAction action = GTK_FILE_CHOOSER_ACTION_OPEN;
/// 
///   native = gtk_file_chooser_native_new ("Open File",
///                                         parent_window,
///                                         action,
///                                         "_Open",
///                                         "_Cancel");
/// 
///   g_signal_connect (native, "response", G_CALLBACK (on_response), NULL);
///   gtk_native_dialog_show (GTK_NATIVE_DIALOG (native));
/// ```
/// 
/// To use a dialog for saving, you can use this:
/// 
/// (C Language Example):
/// ```C
/// static void
/// on_response (GtkNativeDialog *native,
///              int              response)
/// {
///   if (response == GTK_RESPONSE_ACCEPT)
///     {
///       GtkFileChooser *chooser = GTK_FILE_CHOOSER (native);
///       GFile *file = gtk_file_chooser_get_file (chooser);
/// 
///       save_to_file (file);
/// 
///       g_object_unref (file);
///     }
/// 
///   g_object_unref (native);
/// }
/// 
///   // ...
///   GtkFileChooserNative *native;
///   GtkFileChooser *chooser;
///   GtkFileChooserAction action = GTK_FILE_CHOOSER_ACTION_SAVE;
/// 
///   native = gtk_file_chooser_native_new ("Save File",
///                                         parent_window,
///                                         action,
///                                         "_Save",
///                                         "_Cancel");
///   chooser = GTK_FILE_CHOOSER (native);
/// 
///   if (user_edited_a_new_document)
///     gtk_file_chooser_set_current_name (chooser, _("Untitled document"));
///   else
///     gtk_file_chooser_set_file (chooser, existing_file, NULL);
/// 
///   g_signal_connect (native, "response", G_CALLBACK (on_response), NULL);
///   gtk_native_dialog_show (GTK_NATIVE_DIALOG (native));
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
/// No operations that change the dialog work while the dialog is visible.
/// Set all the properties that are required before showing the dialog.
/// 
/// ## Win32 details ## <a name="gtkfilechooserdialognative-win32"></a>
/// 
/// On windows the IFileDialog implementation (added in Windows Vista) is
/// used. It supports many of the features that `GtkFileChooserDialog`
/// does, but there are some things it does not handle:
/// 
/// * Any `GtkFileFilter` added using a mimetype
/// 
/// If any of these features are used the regular `GtkFileChooserDialog`
/// will be used in place of the native one.
/// 
/// ## Portal details ## <a name="gtkfilechooserdialognative-portal"></a>
/// 
/// When the org.freedesktop.portal.FileChooser portal is available on the
/// session bus, it is used to bring up an out-of-process file chooser. Depending
/// on the kind of session the application is running in, this may or may not
/// be a GTK file chooser.
/// 
/// ## macOS details ## <a name="gtkfilechooserdialognative-macos"></a>
/// 
/// On macOS the NSSavePanel and NSOpenPanel classes are used to provide native
/// file chooser dialogs. Some features provided by `GtkFileChooserDialog` are
/// not supported:
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
    @inlinable public init<WindowT: WindowProtocol>( title: UnsafePointer<CChar>? = nil, parent: WindowT?, action: GtkFileChooserAction, acceptLabel: UnsafePointer<CChar>? = nil, cancelLabel: UnsafePointer<CChar>? = nil) {
        let rv = gtk_file_chooser_native_new(title, parent?.window_ptr, action, acceptLabel, cancelLabel)
        super.init(gpointer: gpointer(rv))
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
    /// Whether the window is currently visible.
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
public protocol FileChooserWidgetProtocol: WidgetProtocol, FileChooserProtocol {
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
open class FileChooserWidget: Widget, FileChooserWidgetProtocol {
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
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum FileChooserWidgetPropertyName: String, PropertyNameProtocol {
    /// Whether the widget or any of its descendents can accept
    /// the input focus.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case canFocus = "can-focus"
    case canTarget = "can-target"
    /// A list of css classes applied to this widget.
    case cssClasses = "css-classes"
    /// The name of this widget in the CSS tree.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case cssName = "css-name"
    /// The cursor used by `widget`. See `gtk_widget_set_cursor()` for details.
    case cursor = "cursor"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    case focusOnClick = "focus-on-click"
    /// Whether this widget itself will accept the input focus.
    case focusable = "focusable"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case halign = "halign"
    case hasDefault = "has-default"
    case hasFocus = "has-focus"
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
    /// whether it will provide a tooltip or not.
    case hasTooltip = "has-tooltip"
    case heightRequest = "height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case hexpand = "hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case hexpandSet = "hexpand-set"
    /// The `GtkLayoutManager` instance to use to compute the preferred size
    /// of the widget, and allocate its children.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case layoutManager = "layout-manager"
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
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    case opacity = "opacity"
    /// How content outside the widget's content area is treated.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case overflow = "overflow"
    case parent = "parent"
    case receivesDefault = "receives-default"
    /// The `GtkRoot` widget of the widget tree containing this widget or `nil` if
    /// the widget is not contained in a root widget.
    case root = "root"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case searchMode = "search-mode"
    case sensitive = "sensitive"
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
    /// The `desktop`-folder signal is a [keybinding signal](#GtkSignalAction)
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
    
    /// The `down`-folder signal is a [keybinding signal](#GtkSignalAction)
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
    
    /// The `home`-folder signal is a [keybinding signal](#GtkSignalAction)
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
    
    /// The `location`-popup signal is a [keybinding signal](#GtkSignalAction)
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
    
    /// The `location`-popup-on-paste signal is a [keybinding signal](#GtkSignalAction)
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
    
    /// The `location`-toggle-popup signal is a [keybinding signal](#GtkSignalAction)
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
    
    /// The `places`-shortcut signal is a [keybinding signal](#GtkSignalAction)
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
    
    /// The `quick`-bookmark signal is a [keybinding signal](#GtkSignalAction)
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
    
    /// The `recent`-shortcut signal is a [keybinding signal](#GtkSignalAction)
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
    
    /// The `search`-shortcut signal is a [keybinding signal](#GtkSignalAction)
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
    
    /// The `show`-hidden signal is a [keybinding signal](#GtkSignalAction)
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
    
    /// The `up`-folder signal is a [keybinding signal](#GtkSignalAction)
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



}



// MARK: - FileFilter Class

/// The `FileFilterProtocol` protocol exposes the methods and properties of an underlying `GtkFileFilter` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FileFilter`.
/// Alternatively, use `FileFilterRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A GtkFileFilter can be used to restrict the files being shown in a
/// `GtkFileChooser`. Files can be filtered based on their name (with
/// `gtk_file_filter_add_pattern()`) or on their mime type (with
/// `gtk_file_filter_add_mime_type()`).
/// 
/// Filtering by mime types handles aliasing and subclassing of mime
/// types; e.g. a filter for text/plain also matches a file with mime
/// type application/rtf, since application/rtf is a subclass of
/// text/plain. Note that `GtkFileFilter` allows wildcards for the
/// subtype of a mime type, so you can e.g. filter for image/\*.
/// 
/// Normally, file filters are used by adding them to a `GtkFileChooser`
/// (see `gtk_file_chooser_add_filter()`), but it is also possible to
/// manually use a file filter on any `GtkFilterListModel` containing
/// `GFileInfo` objects.
/// 
/// # GtkFileFilter as GtkBuildable
/// 
/// The GtkFileFilter implementation of the GtkBuildable interface
/// supports adding rules using the <mime-types> and <patterns>
/// elements and listing the rules within. Specifying a <mime-type>
/// or <pattern> has the same effect as as calling
/// `gtk_file_filter_add_mime_type()` or `gtk_file_filter_add_pattern()`.
/// 
/// An example of a UI definition fragment specifying GtkFileFilter
/// rules:
/// ```
/// <object class="GtkFileFilter">
///   <property name="name" translatable="yes">Text and Images</property>
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
public protocol FileFilterProtocol: FilterProtocol, BuildableProtocol {
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
/// `gtk_file_filter_add_pattern()`) or on their mime type (with
/// `gtk_file_filter_add_mime_type()`).
/// 
/// Filtering by mime types handles aliasing and subclassing of mime
/// types; e.g. a filter for text/plain also matches a file with mime
/// type application/rtf, since application/rtf is a subclass of
/// text/plain. Note that `GtkFileFilter` allows wildcards for the
/// subtype of a mime type, so you can e.g. filter for image/\*.
/// 
/// Normally, file filters are used by adding them to a `GtkFileChooser`
/// (see `gtk_file_chooser_add_filter()`), but it is also possible to
/// manually use a file filter on any `GtkFilterListModel` containing
/// `GFileInfo` objects.
/// 
/// # GtkFileFilter as GtkBuildable
/// 
/// The GtkFileFilter implementation of the GtkBuildable interface
/// supports adding rules using the <mime-types> and <patterns>
/// elements and listing the rules within. Specifying a <mime-type>
/// or <pattern> has the same effect as as calling
/// `gtk_file_filter_add_mime_type()` or `gtk_file_filter_add_pattern()`.
/// 
/// An example of a UI definition fragment specifying GtkFileFilter
/// rules:
/// ```
/// <object class="GtkFileFilter">
///   <property name="name" translatable="yes">Text and Images</property>
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
    /// 
    /// Such a filter doesn’t accept any files, so is not
    /// particularly useful until you add rules with
    /// `gtk_file_filter_add_mime_type()`, `gtk_file_filter_add_pattern()`,
    /// or `gtk_file_filter_add_pixbuf_formats()`.
    /// 
    /// To create a filter that accepts any file, use:
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
/// `gtk_file_filter_add_pattern()`) or on their mime type (with
/// `gtk_file_filter_add_mime_type()`).
/// 
/// Filtering by mime types handles aliasing and subclassing of mime
/// types; e.g. a filter for text/plain also matches a file with mime
/// type application/rtf, since application/rtf is a subclass of
/// text/plain. Note that `GtkFileFilter` allows wildcards for the
/// subtype of a mime type, so you can e.g. filter for image/\*.
/// 
/// Normally, file filters are used by adding them to a `GtkFileChooser`
/// (see `gtk_file_chooser_add_filter()`), but it is also possible to
/// manually use a file filter on any `GtkFilterListModel` containing
/// `GFileInfo` objects.
/// 
/// # GtkFileFilter as GtkBuildable
/// 
/// The GtkFileFilter implementation of the GtkBuildable interface
/// supports adding rules using the <mime-types> and <patterns>
/// elements and listing the rules within. Specifying a <mime-type>
/// or <pattern> has the same effect as as calling
/// `gtk_file_filter_add_mime_type()` or `gtk_file_filter_add_pattern()`.
/// 
/// An example of a UI definition fragment specifying GtkFileFilter
/// rules:
/// ```
/// <object class="GtkFileFilter">
///   <property name="name" translatable="yes">Text and Images</property>
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
open class FileFilter: Filter, FileFilterProtocol {
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
    /// 
    /// Such a filter doesn’t accept any files, so is not
    /// particularly useful until you add rules with
    /// `gtk_file_filter_add_mime_type()`, `gtk_file_filter_add_pattern()`,
    /// or `gtk_file_filter_add_pixbuf_formats()`.
    /// 
    /// To create a filter that accepts any file, use:
    /// (C Language Example):
    /// ```C
    /// GtkFileFilter *filter = gtk_file_filter_new ();
    /// gtk_file_filter_add_pattern (filter, "*");
    /// ```
    /// 
    @inlinable public init() {
        let rv = gtk_file_filter_new()
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Deserialize a file filter from an a{sv} variant in
    /// the format produced by `gtk_file_filter_to_gvariant()`.
    @inlinable public init<VariantT: GLib.VariantProtocol>(gvariant variant: VariantT) {
        let rv = gtk_file_filter_new_from_gvariant(variant.variant_ptr)
        super.init(gpointer: gpointer(rv))
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

public enum FileFilterPropertyName: String, PropertyNameProtocol {
    /// The human-readable name of the filter.
    /// 
    /// This is the string that will be displayed in the file selector user
    /// interface if there is a selectable list of filters.
    case name = "name"
}

public extension FileFilterProtocol {
    /// Bind a `FileFilterPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: FileFilterPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a FileFilter property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: FileFilterPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a FileFilter property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: FileFilterPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: FileFilter has no signals// MARK: FileFilter Class: FileFilterProtocol extension (methods and fields)
public extension FileFilterProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFileFilter` instance.
    @inlinable var file_filter_ptr: UnsafeMutablePointer<GtkFileFilter>! { return ptr?.assumingMemoryBound(to: GtkFileFilter.self) }

    /// Adds a rule allowing a given mime type to `filter`.
    @inlinable func add(mimeType: UnsafePointer<CChar>!) {
        gtk_file_filter_add_mime_type(file_filter_ptr, mimeType)
    
    }

    /// Adds a rule allowing a shell style glob to a filter.
    @inlinable func add(pattern: UnsafePointer<CChar>!) {
        gtk_file_filter_add_pattern(file_filter_ptr, pattern)
    
    }

    /// Adds a rule allowing image files in the formats supported
    /// by GdkPixbuf.
    /// 
    /// This is equivalent to calling `gtk_file_filter_add_mime_type()`
    /// for all the supported mime types.
    @inlinable func addPixbufFormats() {
        gtk_file_filter_add_pixbuf_formats(file_filter_ptr)
    
    }

    /// Gets the attributes that need to be filled in for the `GFileInfo`
    /// passed to this filter.
    /// 
    /// This function will not typically be used by applications;
    /// it is intended principally for use in the implementation
    /// of `GtkFileChooser`.
    @inlinable func getAttributes() -> UnsafeMutablePointer<UnsafePointer<CChar>?>! {
        let rv = gtk_file_filter_get_attributes(file_filter_ptr)
        return rv
    }

    /// Gets the human-readable name for the filter. See `gtk_file_filter_set_name()`.
    @inlinable func getName() -> String! {
        let rv = gtk_file_filter_get_name(file_filter_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Sets a human-readable name of the filter; this is the string
    /// that will be displayed in the file chooser if there is a selectable
    /// list of filters.
    @inlinable func set(name: UnsafePointer<CChar>? = nil) {
        gtk_file_filter_set_name(file_filter_ptr, name)
    
    }

    /// Serialize a file filter to an a{sv} variant.
    @inlinable func toGvariant() -> GLib.VariantRef! {
        let rv = GLib.VariantRef(gtk_file_filter_to_gvariant(file_filter_ptr))
        return rv
    }
    /// Gets the attributes that need to be filled in for the `GFileInfo`
    /// passed to this filter.
    /// 
    /// This function will not typically be used by applications;
    /// it is intended principally for use in the implementation
    /// of `GtkFileChooser`.
    @inlinable var attributes: UnsafeMutablePointer<UnsafePointer<CChar>?>! {
        /// Gets the attributes that need to be filled in for the `GFileInfo`
        /// passed to this filter.
        /// 
        /// This function will not typically be used by applications;
        /// it is intended principally for use in the implementation
        /// of `GtkFileChooser`.
        get {
            let rv = gtk_file_filter_get_attributes(file_filter_ptr)
            return rv
        }
    }

    /// The human-readable name of the filter.
    /// 
    /// This is the string that will be displayed in the file selector user
    /// interface if there is a selectable list of filters.
    @inlinable var name: String! {
        /// Gets the human-readable name for the filter. See `gtk_file_filter_set_name()`.
        get {
            let rv = gtk_file_filter_get_name(file_filter_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets a human-readable name of the filter; this is the string
        /// that will be displayed in the file chooser if there is a selectable
        /// list of filters.
        nonmutating set {
            gtk_file_filter_set_name(file_filter_ptr, newValue)
        }
    }


}



// MARK: - Filter Class

/// The `FilterProtocol` protocol exposes the methods and properties of an underlying `GtkFilter` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Filter`.
/// Alternatively, use `FilterRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GtkFilter` object describes the filtering to be performed by a
/// `GtkFilterListModel`.
/// 
/// The model will use the filter to determine if it should include items
/// or not by calling `gtk_filter_match()` for each item and only keeping the
/// ones that the function returns `true` for.
/// 
/// Filters may change what items they match through their lifetime. In that
/// case, they will emit the `GtkFilter::changed` signal to notify that previous
/// filter results are no longer valid and that items should be checked again
/// via `gtk_filter_match()`.
/// 
/// GTK provides various pre-made filter implementations for common filtering
/// operations. These filters often include properties that can be linked to
/// various widgets to easily allow searches.
/// 
/// However, in particular for large lists or complex search methods, it is
/// also possible to subclass `GtkFilter` and provide one's own filter.
public protocol FilterProtocol: GLibObject.ObjectProtocol {
        /// Untyped pointer to the underlying `GtkFilter` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkFilter` instance.
    var filter_ptr: UnsafeMutablePointer<GtkFilter>! { get }

}

/// The `FilterRef` type acts as a lightweight Swift reference to an underlying `GtkFilter` instance.
/// It exposes methods that can operate on this data type through `FilterProtocol` conformance.
/// Use `FilterRef` only as an `unowned` reference to an existing `GtkFilter` instance.
///
/// A `GtkFilter` object describes the filtering to be performed by a
/// `GtkFilterListModel`.
/// 
/// The model will use the filter to determine if it should include items
/// or not by calling `gtk_filter_match()` for each item and only keeping the
/// ones that the function returns `true` for.
/// 
/// Filters may change what items they match through their lifetime. In that
/// case, they will emit the `GtkFilter::changed` signal to notify that previous
/// filter results are no longer valid and that items should be checked again
/// via `gtk_filter_match()`.
/// 
/// GTK provides various pre-made filter implementations for common filtering
/// operations. These filters often include properties that can be linked to
/// various widgets to easily allow searches.
/// 
/// However, in particular for large lists or complex search methods, it is
/// also possible to subclass `GtkFilter` and provide one's own filter.
public struct FilterRef: FilterProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkFilter` instance.
    /// For type-safe access, use the generated, typed pointer `filter_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FilterRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkFilter>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkFilter>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkFilter>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkFilter>?) {
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

    /// Reference intialiser for a related type that implements `FilterProtocol`
    @inlinable init<T: FilterProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: FilterProtocol>(_ other: T) -> FilterRef { FilterRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Filter` type acts as a reference-counted owner of an underlying `GtkFilter` instance.
/// It provides the methods that can operate on this data type through `FilterProtocol` conformance.
/// Use `Filter` as a strong reference or owner of a `GtkFilter` instance.
///
/// A `GtkFilter` object describes the filtering to be performed by a
/// `GtkFilterListModel`.
/// 
/// The model will use the filter to determine if it should include items
/// or not by calling `gtk_filter_match()` for each item and only keeping the
/// ones that the function returns `true` for.
/// 
/// Filters may change what items they match through their lifetime. In that
/// case, they will emit the `GtkFilter::changed` signal to notify that previous
/// filter results are no longer valid and that items should be checked again
/// via `gtk_filter_match()`.
/// 
/// GTK provides various pre-made filter implementations for common filtering
/// operations. These filters often include properties that can be linked to
/// various widgets to easily allow searches.
/// 
/// However, in particular for large lists or complex search methods, it is
/// also possible to subclass `GtkFilter` and provide one's own filter.
open class Filter: GLibObject.Object, FilterProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Filter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkFilter>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Filter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkFilter>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Filter` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Filter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Filter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkFilter>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Filter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkFilter>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkFilter`.
    /// i.e., ownership is transferred to the `Filter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkFilter>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `FilterProtocol`
    /// Will retain `GtkFilter`.
    /// - Parameter other: an instance of a related type that implements `FilterProtocol`
    @inlinable public init<T: FilterProtocol>(filter other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no Filter properties

// MARK: Signals of Filter
public extension FilterProtocol {
    /// This signal is emitted whenever the filter changed. Users of the filter
    /// should then check items again via `gtk_filter_match()`.
    /// 
    /// `GtkFilterListModel` handles this signal automatically.
    /// 
    /// Depending on the `change` parameter, not all items need to be changed, but
    /// only some. Refer to the `GtkFilterChange` documentation for details.
    /// - Note: Representation of signal named `changed`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter change: how the filter changed
    @discardableResult
    func onChanged(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: FilterRef, _ change: FilterChange) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<FilterRef, FilterChange, Void>
        let cCallback: @convention(c) (gpointer, UInt32, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(FilterRef(raw: unownedSelf), FilterChange(arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "changed", 
            cHandler: unsafeBitCast(cCallback, to: GCallback.self), 
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(), 
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            connectFlags: flags
        )
    }
    
    
}

// MARK: Filter Class: FilterProtocol extension (methods and fields)
public extension FilterProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFilter` instance.
    @inlinable var filter_ptr: UnsafeMutablePointer<GtkFilter>! { return ptr?.assumingMemoryBound(to: GtkFilter.self) }

    /// Emits the `GtkFilter::changed` signal to notify all users of the filter that
    /// the filter changed. Users of the filter should then check items again via
    /// `gtk_filter_match()`.
    /// 
    /// Depending on the `change` parameter, not all items need to be changed, but
    /// only some. Refer to the `GtkFilterChange` documentation for details.
    /// 
    /// This function is intended for implementors of `GtkFilter` subclasses and
    /// should not be called from other functions.
    @inlinable func changed(change: GtkFilterChange) {
        gtk_filter_changed(filter_ptr, change)
    
    }

    /// Gets the known strictness of `filters`. If the strictness is not known,
    /// `GTK_FILTER_MATCH_SOME` is returned.
    /// 
    /// This value may change after emission of the `GtkFilter::changed` signal.
    /// 
    /// This function is meant purely for optimization purposes, filters can
    /// choose to omit implementing it, but `GtkFilterListModel` uses it.
    @inlinable func getStrictness() -> GtkFilterMatch {
        let rv = gtk_filter_get_strictness(filter_ptr)
        return rv
    }

    /// Checks if the given `item` is matched by the filter or not.
    @inlinable func match<ObjectT: GLibObject.ObjectProtocol>(item: ObjectT) -> Bool {
        let rv = ((gtk_filter_match(filter_ptr, item.object_ptr)) != 0)
        return rv
    }
    /// Gets the known strictness of `filters`. If the strictness is not known,
    /// `GTK_FILTER_MATCH_SOME` is returned.
    /// 
    /// This value may change after emission of the `GtkFilter::changed` signal.
    /// 
    /// This function is meant purely for optimization purposes, filters can
    /// choose to omit implementing it, but `GtkFilterListModel` uses it.
    @inlinable var strictness: GtkFilterMatch {
        /// Gets the known strictness of `filters`. If the strictness is not known,
        /// `GTK_FILTER_MATCH_SOME` is returned.
        /// 
        /// This value may change after emission of the `GtkFilter::changed` signal.
        /// 
        /// This function is meant purely for optimization purposes, filters can
        /// choose to omit implementing it, but `GtkFilterListModel` uses it.
        get {
            let rv = gtk_filter_get_strictness(filter_ptr)
            return rv
        }
    }

    @inlinable var parentInstance: GObject {
        get {
            let rv = filter_ptr.pointee.parent_instance
            return rv
        }
    }

}



// MARK: - FilterListModel Class

/// The `FilterListModelProtocol` protocol exposes the methods and properties of an underlying `GtkFilterListModel` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FilterListModel`.
/// Alternatively, use `FilterListModelRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkFilterListModel` is a list model that filters a given other
/// listmodel.
/// It hides some elements from the other model according to
/// criteria given by a `GtkFilter`.
/// 
/// The model can be set up to do incremental searching, so that
/// filtering long lists doesn't block the UI. See
/// `gtk_filter_list_model_set_incremental()` for details.
public protocol FilterListModelProtocol: GLibObject.ObjectProtocol, GIO.ListModelProtocol {
        /// Untyped pointer to the underlying `GtkFilterListModel` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkFilterListModel` instance.
    var filter_list_model_ptr: UnsafeMutablePointer<GtkFilterListModel>! { get }

}

/// The `FilterListModelRef` type acts as a lightweight Swift reference to an underlying `GtkFilterListModel` instance.
/// It exposes methods that can operate on this data type through `FilterListModelProtocol` conformance.
/// Use `FilterListModelRef` only as an `unowned` reference to an existing `GtkFilterListModel` instance.
///
/// `GtkFilterListModel` is a list model that filters a given other
/// listmodel.
/// It hides some elements from the other model according to
/// criteria given by a `GtkFilter`.
/// 
/// The model can be set up to do incremental searching, so that
/// filtering long lists doesn't block the UI. See
/// `gtk_filter_list_model_set_incremental()` for details.
public struct FilterListModelRef: FilterListModelProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkFilterListModel` instance.
    /// For type-safe access, use the generated, typed pointer `filter_list_model_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FilterListModelRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkFilterListModel>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkFilterListModel>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkFilterListModel>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkFilterListModel>?) {
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

    /// Reference intialiser for a related type that implements `FilterListModelProtocol`
    @inlinable init<T: FilterListModelProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: FilterListModelProtocol>(_ other: T) -> FilterListModelRef { FilterListModelRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterListModelProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterListModelProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterListModelProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterListModelProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterListModelProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkFilterListModel` that will filter `model` using the given
    /// `filter`.
    @inlinable init<FilterT: FilterProtocol, ListModelT: GIO.ListModelProtocol>( model: ListModelT?, filter: FilterT?) {
        let rv = gtk_filter_list_model_new(model?.list_model_ptr, filter?.filter_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `FilterListModel` type acts as a reference-counted owner of an underlying `GtkFilterListModel` instance.
/// It provides the methods that can operate on this data type through `FilterListModelProtocol` conformance.
/// Use `FilterListModel` as a strong reference or owner of a `GtkFilterListModel` instance.
///
/// `GtkFilterListModel` is a list model that filters a given other
/// listmodel.
/// It hides some elements from the other model according to
/// criteria given by a `GtkFilter`.
/// 
/// The model can be set up to do incremental searching, so that
/// filtering long lists doesn't block the UI. See
/// `gtk_filter_list_model_set_incremental()` for details.
open class FilterListModel: GLibObject.Object, FilterListModelProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FilterListModel` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkFilterListModel>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FilterListModel` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkFilterListModel>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FilterListModel` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FilterListModel` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FilterListModel` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkFilterListModel>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FilterListModel` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkFilterListModel>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkFilterListModel`.
    /// i.e., ownership is transferred to the `FilterListModel` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkFilterListModel>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `FilterListModelProtocol`
    /// Will retain `GtkFilterListModel`.
    /// - Parameter other: an instance of a related type that implements `FilterListModelProtocol`
    @inlinable public init<T: FilterListModelProtocol>(filterListModel other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterListModelProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterListModelProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterListModelProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterListModelProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterListModelProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterListModelProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterListModelProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FilterListModelProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkFilterListModel` that will filter `model` using the given
    /// `filter`.
    @inlinable public init<FilterT: FilterProtocol, ListModelT: GIO.ListModelProtocol>( model: ListModelT?, filter: FilterT?) {
        let rv = gtk_filter_list_model_new(model?.list_model_ptr, filter?.filter_ptr)
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum FilterListModelPropertyName: String, PropertyNameProtocol {
    /// The filter for this model
    case filter = "filter"
    /// If the model should filter items incrementally
    case incremental = "incremental"
    /// The model being filtered
    case model = "model"
    /// Number of items not yet filtered
    case pending = "pending"
}

public extension FilterListModelProtocol {
    /// Bind a `FilterListModelPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: FilterListModelPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a FilterListModel property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: FilterListModelPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a FilterListModel property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: FilterListModelPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: FilterListModel has no signals// MARK: FilterListModel Class: FilterListModelProtocol extension (methods and fields)
public extension FilterListModelProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFilterListModel` instance.
    @inlinable var filter_list_model_ptr: UnsafeMutablePointer<GtkFilterListModel>! { return ptr?.assumingMemoryBound(to: GtkFilterListModel.self) }

    /// Gets the `GtkFilter` currently set on `self`.
    @inlinable func getFilter() -> FilterRef! {
        let rv = FilterRef(gconstpointer: gconstpointer(gtk_filter_list_model_get_filter(filter_list_model_ptr)))
        return rv
    }

    /// Returns whether incremental filtering was enabled via
    /// `gtk_filter_list_model_set_incremental()`.
    @inlinable func getIncremental() -> Bool {
        let rv = ((gtk_filter_list_model_get_incremental(filter_list_model_ptr)) != 0)
        return rv
    }

    /// Gets the model currently filtered or `nil` if none.
    @inlinable func getModel() -> GIO.ListModelRef! {
        let rv = GIO.ListModelRef(gtk_filter_list_model_get_model(filter_list_model_ptr))
        return rv
    }

    /// Returns the number of items that have not been filtered yet.
    /// 
    /// You can use this value to check if `self` is busy filtering by
    /// comparing the return value to 0 or you can compute the percentage
    /// of the filter remaining by dividing the return value by the total
    /// number of items in the underlying model:
    /// 
    /// ```
    ///   pending = gtk_filter_list_model_get_pending (self);
    ///   model = gtk_filter_list_model_get_model (self);
    ///   percentage = pending / (double) g_list_model_get_n_items (model);
    /// ```
    /// 
    /// If no filter operation is ongoing - in particular when
    /// `GtkFilterListModel:incremental` is `false` - this function returns 0.
    @inlinable func getPending() -> Int {
        let rv = Int(gtk_filter_list_model_get_pending(filter_list_model_ptr))
        return rv
    }

    /// Sets the filter used to filter items.
    @inlinable func set(filter: FilterRef? = nil) {
        gtk_filter_list_model_set_filter(filter_list_model_ptr, filter?.filter_ptr)
    
    }
    /// Sets the filter used to filter items.
    @inlinable func set<FilterT: FilterProtocol>(filter: FilterT?) {
        gtk_filter_list_model_set_filter(filter_list_model_ptr, filter?.filter_ptr)
    
    }

    /// When incremental filtering is enabled, the GtkFilterListModel will not
    /// run filters immediately, but will instead queue an idle handler that
    /// incrementally filters the items and adds them to the list. This of course
    /// means that items are not instantly added to the list, but only appear
    /// incrementally.
    /// 
    /// When your filter blocks the UI while filtering, you might consider
    /// turning this on. Depending on your model and filters, this may become
    /// interesting around 10,000 to 100,000 items.
    /// 
    /// By default, incremental filtering is disabled.
    /// 
    /// See `gtk_filter_list_model_get_pending()` for progress information
    /// about an ongoing incremental filtering operation.
    @inlinable func set(incremental: Bool) {
        gtk_filter_list_model_set_incremental(filter_list_model_ptr, gboolean((incremental) ? 1 : 0))
    
    }

    /// Sets the model to be filtered.
    /// 
    /// Note that GTK makes no effort to ensure that `model` conforms to
    /// the item type of `self`. It assumes that the caller knows what they
    /// are doing and have set up an appropriate filter to ensure that item
    /// types match.
    @inlinable func set(model: GIO.ListModelRef? = nil) {
        gtk_filter_list_model_set_model(filter_list_model_ptr, model?.list_model_ptr)
    
    }
    /// Sets the model to be filtered.
    /// 
    /// Note that GTK makes no effort to ensure that `model` conforms to
    /// the item type of `self`. It assumes that the caller knows what they
    /// are doing and have set up an appropriate filter to ensure that item
    /// types match.
    @inlinable func set<ListModelT: GIO.ListModelProtocol>(model: ListModelT?) {
        gtk_filter_list_model_set_model(filter_list_model_ptr, model?.list_model_ptr)
    
    }
    /// The filter for this model
    @inlinable var filter: FilterRef! {
        /// Gets the `GtkFilter` currently set on `self`.
        get {
            let rv = FilterRef(gconstpointer: gconstpointer(gtk_filter_list_model_get_filter(filter_list_model_ptr)))
            return rv
        }
        /// Sets the filter used to filter items.
        nonmutating set {
            gtk_filter_list_model_set_filter(filter_list_model_ptr, UnsafeMutablePointer<GtkFilter>(newValue?.filter_ptr))
        }
    }

    /// If the model should filter items incrementally
    @inlinable var incremental: Bool {
        /// Returns whether incremental filtering was enabled via
        /// `gtk_filter_list_model_set_incremental()`.
        get {
            let rv = ((gtk_filter_list_model_get_incremental(filter_list_model_ptr)) != 0)
            return rv
        }
        /// When incremental filtering is enabled, the GtkFilterListModel will not
        /// run filters immediately, but will instead queue an idle handler that
        /// incrementally filters the items and adds them to the list. This of course
        /// means that items are not instantly added to the list, but only appear
        /// incrementally.
        /// 
        /// When your filter blocks the UI while filtering, you might consider
        /// turning this on. Depending on your model and filters, this may become
        /// interesting around 10,000 to 100,000 items.
        /// 
        /// By default, incremental filtering is disabled.
        /// 
        /// See `gtk_filter_list_model_get_pending()` for progress information
        /// about an ongoing incremental filtering operation.
        nonmutating set {
            gtk_filter_list_model_set_incremental(filter_list_model_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// The model being filtered
    @inlinable var model: GIO.ListModelRef! {
        /// Gets the model currently filtered or `nil` if none.
        get {
            let rv = GIO.ListModelRef(gtk_filter_list_model_get_model(filter_list_model_ptr))
            return rv
        }
        /// Sets the model to be filtered.
        /// 
        /// Note that GTK makes no effort to ensure that `model` conforms to
        /// the item type of `self`. It assumes that the caller knows what they
        /// are doing and have set up an appropriate filter to ensure that item
        /// types match.
        nonmutating set {
            gtk_filter_list_model_set_model(filter_list_model_ptr, UnsafeMutablePointer<GListModel>(newValue?.list_model_ptr))
        }
    }

    /// Number of items not yet filtered
    @inlinable var pending: Int {
        /// Returns the number of items that have not been filtered yet.
        /// 
        /// You can use this value to check if `self` is busy filtering by
        /// comparing the return value to 0 or you can compute the percentage
        /// of the filter remaining by dividing the return value by the total
        /// number of items in the underlying model:
        /// 
        /// ```
        ///   pending = gtk_filter_list_model_get_pending (self);
        ///   model = gtk_filter_list_model_get_model (self);
        ///   percentage = pending / (double) g_list_model_get_n_items (model);
        /// ```
        /// 
        /// If no filter operation is ongoing - in particular when
        /// `GtkFilterListModel:incremental` is `false` - this function returns 0.
        get {
            let rv = Int(gtk_filter_list_model_get_pending(filter_list_model_ptr))
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
/// such as Hebrew or Arabic. That is: normally GTK will order containers
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
public protocol FixedProtocol: WidgetProtocol {
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
/// such as Hebrew or Arabic. That is: normally GTK will order containers
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
/// such as Hebrew or Arabic. That is: normally GTK will order containers
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
open class Fixed: Widget, FixedProtocol {
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
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum FixedPropertyName: String, PropertyNameProtocol {
    /// Whether the widget or any of its descendents can accept
    /// the input focus.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case canFocus = "can-focus"
    case canTarget = "can-target"
    /// A list of css classes applied to this widget.
    case cssClasses = "css-classes"
    /// The name of this widget in the CSS tree.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case cssName = "css-name"
    /// The cursor used by `widget`. See `gtk_widget_set_cursor()` for details.
    case cursor = "cursor"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    case focusOnClick = "focus-on-click"
    /// Whether this widget itself will accept the input focus.
    case focusable = "focusable"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case halign = "halign"
    case hasDefault = "has-default"
    case hasFocus = "has-focus"
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
    /// whether it will provide a tooltip or not.
    case hasTooltip = "has-tooltip"
    case heightRequest = "height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case hexpand = "hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case hexpandSet = "hexpand-set"
    /// The `GtkLayoutManager` instance to use to compute the preferred size
    /// of the widget, and allocate its children.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case layoutManager = "layout-manager"
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
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    case opacity = "opacity"
    /// How content outside the widget's content area is treated.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case overflow = "overflow"
    case parent = "parent"
    case receivesDefault = "receives-default"
    /// The `GtkRoot` widget of the widget tree containing this widget or `nil` if
    /// the widget is not contained in a root widget.
    case root = "root"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case sensitive = "sensitive"
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

    /// Retrieves the translation transformation of the given child `GtkWidget`
    /// in the given `GtkFixed` container.
    /// 
    /// See also: `gtk_fixed_get_child_transform()`.
    @inlinable func getChildPosition<WidgetT: WidgetProtocol>(widget: WidgetT, x: UnsafeMutablePointer<CDouble>!, y: UnsafeMutablePointer<CDouble>!) {
        gtk_fixed_get_child_position(fixed_ptr, widget.widget_ptr, x, y)
    
    }

    /// Retrieves the transformation for `widget` set using
    /// `gtk_fixed_set_child_transform()`.
    @inlinable func getChildTransform<WidgetT: WidgetProtocol>(widget: WidgetT) -> UnsafeMutablePointer<GskTransform>? {
        let rv = gtk_fixed_get_child_transform(fixed_ptr, widget.widget_ptr)
        return rv
    }

    /// Sets a translation transformation to the given `x` and `y` coordinates to
    /// the child `widget` of the given `GtkFixed` container.
    @inlinable func move<WidgetT: WidgetProtocol>(widget: WidgetT, x: CDouble, y: CDouble) {
        gtk_fixed_move(fixed_ptr, widget.widget_ptr, x, y)
    
    }

    /// Adds a widget to a `GtkFixed` container and assigns a translation
    /// transformation to the given `x` and `y` coordinates to it.
    @inlinable func put<WidgetT: WidgetProtocol>(widget: WidgetT, x: CDouble, y: CDouble) {
        gtk_fixed_put(fixed_ptr, widget.widget_ptr, x, y)
    
    }

    /// Removes a child from `fixed`, after it has been added
    /// with `gtk_fixed_put()`.
    @inlinable func remove<WidgetT: WidgetProtocol>(widget: WidgetT) {
        gtk_fixed_remove(fixed_ptr, widget.widget_ptr)
    
    }

    /// Sets the transformation for `widget`.
    /// 
    /// This is a convenience function that retrieves the `GtkFixedLayoutChild`
    /// instance associated to `widget` and calls `gtk_fixed_layout_child_set_transform()`.
    @inlinable func setChildTransform<WidgetT: WidgetProtocol>(widget: WidgetT, transform: UnsafeMutablePointer<GskTransform>? = nil) {
        gtk_fixed_set_child_transform(fixed_ptr, widget.widget_ptr, transform)
    
    }

    @inlinable var parentInstance: GtkWidget {
        get {
            let rv = fixed_ptr.pointee.parent_instance
            return rv
        }
    }

}



// MARK: - FixedLayout Class

/// The `FixedLayoutProtocol` protocol exposes the methods and properties of an underlying `GtkFixedLayout` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FixedLayout`.
/// Alternatively, use `FixedLayoutRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkFixedLayout` is a layout manager which can place child widgets
/// at fixed positions, and with fixed sizes.
/// 
/// Most applications should never use this layout manager; fixed positioning
/// and sizing requires constant recalculations on where children need to be
/// positioned and sized. Other layout managers perform this kind of work
/// internally so that application developers don't need to do it. Specifically,
/// widgets positioned in a fixed layout manager will need to take into account:
/// 
/// - Themes, which may change widget sizes.
/// 
/// - Fonts other than the one you used to write the app will of course
///   change the size of widgets containing text; keep in mind that
///   users may use a larger font because of difficulty reading the
///   default, or they may be using a different OS that provides different
///   fonts.
/// 
/// - Translation of text into other languages changes its size. Also,
///   display of non-English text will use a different font in many
///   cases.
/// 
/// In addition, `GtkFixedLayout` does not pay attention to text direction and
/// thus may produce unwanted results if your app is run under right-to-left
/// languages such as Hebrew or Arabic. That is: normally GTK will order
/// containers appropriately depending on the text direction, e.g. to put labels
/// to the right of the thing they label when using an RTL language;
/// `GtkFixedLayout` won't be able to do that for you.
/// 
/// Finally, fixed positioning makes it kind of annoying to add/remove GUI
/// elements, since you have to reposition all the other  elements. This is a
/// long-term maintenance problem for your application.
public protocol FixedLayoutProtocol: LayoutManagerProtocol {
        /// Untyped pointer to the underlying `GtkFixedLayout` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkFixedLayout` instance.
    var fixed_layout_ptr: UnsafeMutablePointer<GtkFixedLayout>! { get }

}

/// The `FixedLayoutRef` type acts as a lightweight Swift reference to an underlying `GtkFixedLayout` instance.
/// It exposes methods that can operate on this data type through `FixedLayoutProtocol` conformance.
/// Use `FixedLayoutRef` only as an `unowned` reference to an existing `GtkFixedLayout` instance.
///
/// `GtkFixedLayout` is a layout manager which can place child widgets
/// at fixed positions, and with fixed sizes.
/// 
/// Most applications should never use this layout manager; fixed positioning
/// and sizing requires constant recalculations on where children need to be
/// positioned and sized. Other layout managers perform this kind of work
/// internally so that application developers don't need to do it. Specifically,
/// widgets positioned in a fixed layout manager will need to take into account:
/// 
/// - Themes, which may change widget sizes.
/// 
/// - Fonts other than the one you used to write the app will of course
///   change the size of widgets containing text; keep in mind that
///   users may use a larger font because of difficulty reading the
///   default, or they may be using a different OS that provides different
///   fonts.
/// 
/// - Translation of text into other languages changes its size. Also,
///   display of non-English text will use a different font in many
///   cases.
/// 
/// In addition, `GtkFixedLayout` does not pay attention to text direction and
/// thus may produce unwanted results if your app is run under right-to-left
/// languages such as Hebrew or Arabic. That is: normally GTK will order
/// containers appropriately depending on the text direction, e.g. to put labels
/// to the right of the thing they label when using an RTL language;
/// `GtkFixedLayout` won't be able to do that for you.
/// 
/// Finally, fixed positioning makes it kind of annoying to add/remove GUI
/// elements, since you have to reposition all the other  elements. This is a
/// long-term maintenance problem for your application.
public struct FixedLayoutRef: FixedLayoutProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkFixedLayout` instance.
    /// For type-safe access, use the generated, typed pointer `fixed_layout_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FixedLayoutRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkFixedLayout>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkFixedLayout>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkFixedLayout>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkFixedLayout>?) {
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

    /// Reference intialiser for a related type that implements `FixedLayoutProtocol`
    @inlinable init<T: FixedLayoutProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: FixedLayoutProtocol>(_ other: T) -> FixedLayoutRef { FixedLayoutRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedLayoutProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedLayoutProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedLayoutProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedLayoutProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedLayoutProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkFixedLayout`.
    @inlinable init() {
        let rv = gtk_fixed_layout_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `FixedLayout` type acts as a reference-counted owner of an underlying `GtkFixedLayout` instance.
/// It provides the methods that can operate on this data type through `FixedLayoutProtocol` conformance.
/// Use `FixedLayout` as a strong reference or owner of a `GtkFixedLayout` instance.
///
/// `GtkFixedLayout` is a layout manager which can place child widgets
/// at fixed positions, and with fixed sizes.
/// 
/// Most applications should never use this layout manager; fixed positioning
/// and sizing requires constant recalculations on where children need to be
/// positioned and sized. Other layout managers perform this kind of work
/// internally so that application developers don't need to do it. Specifically,
/// widgets positioned in a fixed layout manager will need to take into account:
/// 
/// - Themes, which may change widget sizes.
/// 
/// - Fonts other than the one you used to write the app will of course
///   change the size of widgets containing text; keep in mind that
///   users may use a larger font because of difficulty reading the
///   default, or they may be using a different OS that provides different
///   fonts.
/// 
/// - Translation of text into other languages changes its size. Also,
///   display of non-English text will use a different font in many
///   cases.
/// 
/// In addition, `GtkFixedLayout` does not pay attention to text direction and
/// thus may produce unwanted results if your app is run under right-to-left
/// languages such as Hebrew or Arabic. That is: normally GTK will order
/// containers appropriately depending on the text direction, e.g. to put labels
/// to the right of the thing they label when using an RTL language;
/// `GtkFixedLayout` won't be able to do that for you.
/// 
/// Finally, fixed positioning makes it kind of annoying to add/remove GUI
/// elements, since you have to reposition all the other  elements. This is a
/// long-term maintenance problem for your application.
open class FixedLayout: LayoutManager, FixedLayoutProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FixedLayout` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkFixedLayout>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FixedLayout` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkFixedLayout>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FixedLayout` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FixedLayout` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FixedLayout` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkFixedLayout>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FixedLayout` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkFixedLayout>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkFixedLayout`.
    /// i.e., ownership is transferred to the `FixedLayout` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkFixedLayout>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `FixedLayoutProtocol`
    /// Will retain `GtkFixedLayout`.
    /// - Parameter other: an instance of a related type that implements `FixedLayoutProtocol`
    @inlinable public init<T: FixedLayoutProtocol>(fixedLayout other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedLayoutProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedLayoutProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedLayoutProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedLayoutProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedLayoutProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedLayoutProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedLayoutProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedLayoutProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkFixedLayout`.
    @inlinable public init() {
        let rv = gtk_fixed_layout_new()
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

// MARK: no FixedLayout properties

// MARK: FixedLayout has no signals// MARK: FixedLayout Class: FixedLayoutProtocol extension (methods and fields)
public extension FixedLayoutProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFixedLayout` instance.
    @inlinable var fixed_layout_ptr: UnsafeMutablePointer<GtkFixedLayout>! { return ptr?.assumingMemoryBound(to: GtkFixedLayout.self) }



}



// MARK: - FixedLayoutChild Class

/// The `FixedLayoutChildProtocol` protocol exposes the methods and properties of an underlying `GtkFixedLayoutChild` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FixedLayoutChild`.
/// Alternatively, use `FixedLayoutChildRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FixedLayoutChildProtocol: LayoutChildProtocol {
        /// Untyped pointer to the underlying `GtkFixedLayoutChild` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkFixedLayoutChild` instance.
    var fixed_layout_child_ptr: UnsafeMutablePointer<GtkFixedLayoutChild>! { get }

}

/// The `FixedLayoutChildRef` type acts as a lightweight Swift reference to an underlying `GtkFixedLayoutChild` instance.
/// It exposes methods that can operate on this data type through `FixedLayoutChildProtocol` conformance.
/// Use `FixedLayoutChildRef` only as an `unowned` reference to an existing `GtkFixedLayoutChild` instance.
///

public struct FixedLayoutChildRef: FixedLayoutChildProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkFixedLayoutChild` instance.
    /// For type-safe access, use the generated, typed pointer `fixed_layout_child_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FixedLayoutChildRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkFixedLayoutChild>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkFixedLayoutChild>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkFixedLayoutChild>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkFixedLayoutChild>?) {
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

    /// Reference intialiser for a related type that implements `FixedLayoutChildProtocol`
    @inlinable init<T: FixedLayoutChildProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: FixedLayoutChildProtocol>(_ other: T) -> FixedLayoutChildRef { FixedLayoutChildRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedLayoutChildProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedLayoutChildProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedLayoutChildProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedLayoutChildProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedLayoutChildProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FixedLayoutChild` type acts as a reference-counted owner of an underlying `GtkFixedLayoutChild` instance.
/// It provides the methods that can operate on this data type through `FixedLayoutChildProtocol` conformance.
/// Use `FixedLayoutChild` as a strong reference or owner of a `GtkFixedLayoutChild` instance.
///

open class FixedLayoutChild: LayoutChild, FixedLayoutChildProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FixedLayoutChild` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkFixedLayoutChild>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FixedLayoutChild` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkFixedLayoutChild>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FixedLayoutChild` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FixedLayoutChild` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FixedLayoutChild` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkFixedLayoutChild>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FixedLayoutChild` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkFixedLayoutChild>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkFixedLayoutChild`.
    /// i.e., ownership is transferred to the `FixedLayoutChild` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkFixedLayoutChild>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `FixedLayoutChildProtocol`
    /// Will retain `GtkFixedLayoutChild`.
    /// - Parameter other: an instance of a related type that implements `FixedLayoutChildProtocol`
    @inlinable public init<T: FixedLayoutChildProtocol>(fixedLayoutChild other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedLayoutChildProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedLayoutChildProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedLayoutChildProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedLayoutChildProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedLayoutChildProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedLayoutChildProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedLayoutChildProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FixedLayoutChildProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum FixedLayoutChildPropertyName: String, PropertyNameProtocol {
    /// The widget that is associated to the `GtkLayoutChild` instance.
    case childWidget = "child-widget"
    /// The layout manager that created the `GtkLayoutChild` instance.
    case layoutManager = "layout-manager"
    case transform = "transform"
}

public extension FixedLayoutChildProtocol {
    /// Bind a `FixedLayoutChildPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: FixedLayoutChildPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a FixedLayoutChild property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: FixedLayoutChildPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a FixedLayoutChild property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: FixedLayoutChildPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: FixedLayoutChild has no signals// MARK: FixedLayoutChild Class: FixedLayoutChildProtocol extension (methods and fields)
public extension FixedLayoutChildProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFixedLayoutChild` instance.
    @inlinable var fixed_layout_child_ptr: UnsafeMutablePointer<GtkFixedLayoutChild>! { return ptr?.assumingMemoryBound(to: GtkFixedLayoutChild.self) }

    /// Retrieves the transformation of the child of a `GtkFixedLayout`.
    @inlinable func getTransform() -> UnsafeMutablePointer<GskTransform>? {
        let rv = gtk_fixed_layout_child_get_transform(fixed_layout_child_ptr)
        return rv
    }

    /// Sets the transformation of the child of a `GtkFixedLayout`.
    @inlinable func set(transform: UnsafeMutablePointer<GskTransform>!) {
        gtk_fixed_layout_child_set_transform(fixed_layout_child_ptr, transform)
    
    }
    @inlinable var transform: UnsafeMutablePointer<GskTransform>? {
        /// Retrieves the transformation of the child of a `GtkFixedLayout`.
        get {
            let rv = gtk_fixed_layout_child_get_transform(fixed_layout_child_ptr)
            return rv
        }
        /// Sets the transformation of the child of a `GtkFixedLayout`.
        nonmutating set {
            gtk_fixed_layout_child_set_transform(fixed_layout_child_ptr, newValue)
        }
    }


}



// MARK: - FlattenListModel Class

/// The `FlattenListModelProtocol` protocol exposes the methods and properties of an underlying `GtkFlattenListModel` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FlattenListModel`.
/// Alternatively, use `FlattenListModelRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkFlattenListModel` is a list model that takes a list model containing
/// list models and flattens it into a single model.
/// 
/// Another term for this is concatenation: `GtkFlattenListModel` takes a
/// list of lists and concatenates them into a single list.
public protocol FlattenListModelProtocol: GLibObject.ObjectProtocol, GIO.ListModelProtocol {
        /// Untyped pointer to the underlying `GtkFlattenListModel` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkFlattenListModel` instance.
    var flatten_list_model_ptr: UnsafeMutablePointer<GtkFlattenListModel>! { get }

}

/// The `FlattenListModelRef` type acts as a lightweight Swift reference to an underlying `GtkFlattenListModel` instance.
/// It exposes methods that can operate on this data type through `FlattenListModelProtocol` conformance.
/// Use `FlattenListModelRef` only as an `unowned` reference to an existing `GtkFlattenListModel` instance.
///
/// `GtkFlattenListModel` is a list model that takes a list model containing
/// list models and flattens it into a single model.
/// 
/// Another term for this is concatenation: `GtkFlattenListModel` takes a
/// list of lists and concatenates them into a single list.
public struct FlattenListModelRef: FlattenListModelProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkFlattenListModel` instance.
    /// For type-safe access, use the generated, typed pointer `flatten_list_model_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FlattenListModelRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkFlattenListModel>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkFlattenListModel>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkFlattenListModel>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkFlattenListModel>?) {
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

    /// Reference intialiser for a related type that implements `FlattenListModelProtocol`
    @inlinable init<T: FlattenListModelProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: FlattenListModelProtocol>(_ other: T) -> FlattenListModelRef { FlattenListModelRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlattenListModelProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlattenListModelProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlattenListModelProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlattenListModelProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlattenListModelProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkFlattenListModel` that flattens `list`.
    @inlinable init<ListModelT: GIO.ListModelProtocol>( model: ListModelT?) {
        let rv = gtk_flatten_list_model_new(model?.list_model_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `FlattenListModel` type acts as a reference-counted owner of an underlying `GtkFlattenListModel` instance.
/// It provides the methods that can operate on this data type through `FlattenListModelProtocol` conformance.
/// Use `FlattenListModel` as a strong reference or owner of a `GtkFlattenListModel` instance.
///
/// `GtkFlattenListModel` is a list model that takes a list model containing
/// list models and flattens it into a single model.
/// 
/// Another term for this is concatenation: `GtkFlattenListModel` takes a
/// list of lists and concatenates them into a single list.
open class FlattenListModel: GLibObject.Object, FlattenListModelProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FlattenListModel` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkFlattenListModel>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FlattenListModel` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkFlattenListModel>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FlattenListModel` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FlattenListModel` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FlattenListModel` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkFlattenListModel>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FlattenListModel` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkFlattenListModel>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkFlattenListModel`.
    /// i.e., ownership is transferred to the `FlattenListModel` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkFlattenListModel>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `FlattenListModelProtocol`
    /// Will retain `GtkFlattenListModel`.
    /// - Parameter other: an instance of a related type that implements `FlattenListModelProtocol`
    @inlinable public init<T: FlattenListModelProtocol>(flattenListModel other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlattenListModelProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlattenListModelProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlattenListModelProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlattenListModelProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlattenListModelProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlattenListModelProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlattenListModelProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlattenListModelProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkFlattenListModel` that flattens `list`.
    @inlinable public init<ListModelT: GIO.ListModelProtocol>( model: ListModelT?) {
        let rv = gtk_flatten_list_model_new(model?.list_model_ptr)
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum FlattenListModelPropertyName: String, PropertyNameProtocol {
    /// The model being flattened
    case model = "model"
}

public extension FlattenListModelProtocol {
    /// Bind a `FlattenListModelPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: FlattenListModelPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a FlattenListModel property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: FlattenListModelPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a FlattenListModel property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: FlattenListModelPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

// MARK: FlattenListModel has no signals// MARK: FlattenListModel Class: FlattenListModelProtocol extension (methods and fields)
public extension FlattenListModelProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFlattenListModel` instance.
    @inlinable var flatten_list_model_ptr: UnsafeMutablePointer<GtkFlattenListModel>! { return ptr?.assumingMemoryBound(to: GtkFlattenListModel.self) }

    /// Gets the model set via `gtk_flatten_list_model_set_model()`.
    @inlinable func getModel() -> GIO.ListModelRef! {
        let rv = GIO.ListModelRef(gtk_flatten_list_model_get_model(flatten_list_model_ptr))
        return rv
    }

    /// Returns the model containing the item at the given position.
    @inlinable func getModelForItem(position: Int) -> GIO.ListModelRef! {
        let rv = GIO.ListModelRef(gtk_flatten_list_model_get_model_for_item(flatten_list_model_ptr, guint(position)))
        return rv
    }

    /// Sets a new model to be flattened.
    @inlinable func set(model: GIO.ListModelRef? = nil) {
        gtk_flatten_list_model_set_model(flatten_list_model_ptr, model?.list_model_ptr)
    
    }
    /// Sets a new model to be flattened.
    @inlinable func set<ListModelT: GIO.ListModelProtocol>(model: ListModelT?) {
        gtk_flatten_list_model_set_model(flatten_list_model_ptr, model?.list_model_ptr)
    
    }
    /// The model being flattened
    @inlinable var model: GIO.ListModelRef! {
        /// Gets the model set via `gtk_flatten_list_model_set_model()`.
        get {
            let rv = GIO.ListModelRef(gtk_flatten_list_model_get_model(flatten_list_model_ptr))
            return rv
        }
        /// Sets a new model to be flattened.
        nonmutating set {
            gtk_flatten_list_model_set_model(flatten_list_model_ptr, UnsafeMutablePointer<GListModel>(newValue?.list_model_ptr))
        }
    }


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
/// you can add any kind of widget to it via `gtk_flow_box_insert()`, and
/// a GtkFlowBoxChild widget will automatically be inserted between
/// the box and the widget.
/// 
/// Also see `GtkListBox`.
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
/// 
/// # Accessibility
/// 
/// GtkFlowBox uses the `GTK_ACCESSIBLE_ROLE_GRID` role, and GtkFlowBoxChild
/// uses the `GTK_ACCESSIBLE_ROLE_GRID_CELL` role.
public protocol FlowBoxProtocol: WidgetProtocol, OrientableProtocol {
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
/// you can add any kind of widget to it via `gtk_flow_box_insert()`, and
/// a GtkFlowBoxChild widget will automatically be inserted between
/// the box and the widget.
/// 
/// Also see `GtkListBox`.
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
/// 
/// # Accessibility
/// 
/// GtkFlowBox uses the `GTK_ACCESSIBLE_ROLE_GRID` role, and GtkFlowBoxChild
/// uses the `GTK_ACCESSIBLE_ROLE_GRID_CELL` role.
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
/// you can add any kind of widget to it via `gtk_flow_box_insert()`, and
/// a GtkFlowBoxChild widget will automatically be inserted between
/// the box and the widget.
/// 
/// Also see `GtkListBox`.
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
/// 
/// # Accessibility
/// 
/// GtkFlowBox uses the `GTK_ACCESSIBLE_ROLE_GRID` role, and GtkFlowBoxChild
/// uses the `GTK_ACCESSIBLE_ROLE_GRID_CELL` role.
open class FlowBox: Widget, FlowBoxProtocol {
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
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum FlowBoxPropertyName: String, PropertyNameProtocol {
    case acceptUnpairedRelease = "accept-unpaired-release"
    /// Determines whether children can be activated with a single
    /// click, or require a double-click.
    case activateOnSingleClick = "activate-on-single-click"
    /// Whether the widget or any of its descendents can accept
    /// the input focus.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case canFocus = "can-focus"
    case canTarget = "can-target"
    /// The amount of horizontal space between two children.
    case columnSpacing = "column-spacing"
    /// A list of css classes applied to this widget.
    case cssClasses = "css-classes"
    /// The name of this widget in the CSS tree.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case cssName = "css-name"
    /// The cursor used by `widget`. See `gtk_widget_set_cursor()` for details.
    case cursor = "cursor"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    case focusOnClick = "focus-on-click"
    /// Whether this widget itself will accept the input focus.
    case focusable = "focusable"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case halign = "halign"
    case hasDefault = "has-default"
    case hasFocus = "has-focus"
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
    /// whether it will provide a tooltip or not.
    case hasTooltip = "has-tooltip"
    case heightRequest = "height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case hexpand = "hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case hexpandSet = "hexpand-set"
    /// Determines whether all children should be allocated the
    /// same size.
    case homogeneous = "homogeneous"
    /// The `GtkLayoutManager` instance to use to compute the preferred size
    /// of the widget, and allocate its children.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case layoutManager = "layout-manager"
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
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    case opacity = "opacity"
    /// How content outside the widget's content area is treated.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case overflow = "overflow"
    case parent = "parent"
    case receivesDefault = "receives-default"
    /// The `GtkRoot` widget of the widget tree containing this widget or `nil` if
    /// the widget is not contained in a root widget.
    case root = "root"
    /// The amount of vertical space between two children.
    case rowSpacing = "row-spacing"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    /// The selection mode used by the flow  box.
    case selectionMode = "selection-mode"
    case sensitive = "sensitive"
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
    /// [keybinding signal](#GtkSignalAction)
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
    /// [keybinding signal](#GtkSignalAction)
    /// which gets emitted when the user initiates a cursor movement.
    /// 
    /// Applications should not connect to it, but may emit it with
    /// `g_signal_emit_by_name()` if they need to control the cursor
    /// programmatically.
    /// 
    /// The default bindings for this signal come in two variants,
    /// the variant with the Shift modifier extends the selection,
    /// the variant without the Shift modifier does not.
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
    /// - Parameter extend: whether to extend the selection
    /// - Parameter modify: whether to modify the selection
    @discardableResult
    func onMoveCursor(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: FlowBoxRef, _ step: MovementStep, _ count: Int, _ extend: Bool, _ modify: Bool) -> Bool ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder5<FlowBoxRef, MovementStep, Int, Bool, Bool, Bool>
        let cCallback: @convention(c) (gpointer, UInt32, gint, gboolean, gboolean, gpointer) -> gboolean = { unownedSelf, arg1, arg2, arg3, arg4, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output = holder.call(FlowBoxRef(raw: unownedSelf), MovementStep(arg1), Int(arg2), ((arg3) != 0), ((arg4) != 0))
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
    /// [keybinding signal](#GtkSignalAction)
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
    /// [keybinding signal](#GtkSignalAction)
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
    /// [keybinding signal](#GtkSignalAction)
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
    /// - Note: Representation of signal named `notify::accept-unpaired-release`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyAcceptUnpairedRelease(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: FlowBoxRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<FlowBoxRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(FlowBoxRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::accept-unpaired-release", 
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
    /// `gtk_flow_box_insert()`) while `box` is bound to a
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
    /// `gtk_flow_box_insert()`) while `box` is bound to a
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

    /// Gets the child in the (`x`, `y`) position. Both `x` and `y` are
    /// assumed to be relative to the origin of `box`.
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
    /// at the calculated position.
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

    /// Removes a child from `box`.
    @inlinable func remove<WidgetT: WidgetProtocol>(widget: WidgetT) {
        gtk_flow_box_remove(flow_box_ptr, widget.widget_ptr)
    
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


}



// MARK: - FlowBoxChild Class

/// The `FlowBoxChildProtocol` protocol exposes the methods and properties of an underlying `GtkFlowBoxChild` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FlowBoxChild`.
/// Alternatively, use `FlowBoxChildRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol FlowBoxChildProtocol: WidgetProtocol {
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

open class FlowBoxChild: Widget, FlowBoxChildProtocol {
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
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum FlowBoxChildPropertyName: String, PropertyNameProtocol {
    /// Whether the widget or any of its descendents can accept
    /// the input focus.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case canFocus = "can-focus"
    case canTarget = "can-target"
    case child = "child"
    /// A list of css classes applied to this widget.
    case cssClasses = "css-classes"
    /// The name of this widget in the CSS tree.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case cssName = "css-name"
    /// The cursor used by `widget`. See `gtk_widget_set_cursor()` for details.
    case cursor = "cursor"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    case focusOnClick = "focus-on-click"
    /// Whether this widget itself will accept the input focus.
    case focusable = "focusable"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case halign = "halign"
    case hasDefault = "has-default"
    case hasFocus = "has-focus"
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
    /// whether it will provide a tooltip or not.
    case hasTooltip = "has-tooltip"
    case heightRequest = "height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case hexpand = "hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case hexpandSet = "hexpand-set"
    /// The `GtkLayoutManager` instance to use to compute the preferred size
    /// of the widget, and allocate its children.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case layoutManager = "layout-manager"
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
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    case opacity = "opacity"
    /// How content outside the widget's content area is treated.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case overflow = "overflow"
    case parent = "parent"
    case receivesDefault = "receives-default"
    /// The `GtkRoot` widget of the widget tree containing this widget or `nil` if
    /// the widget is not contained in a root widget.
    case root = "root"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case sensitive = "sensitive"
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
    /// [keybinding signal](#GtkSignalAction),
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
    /// - Note: Representation of signal named `notify::child`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyChild(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: FlowBoxChildRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<FlowBoxChildRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(FlowBoxChildRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::child", 
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

    /// Gets the child widget of `self`.
    @inlinable func getChild() -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_flow_box_child_get_child(flow_box_child_ptr))) else { return nil }
        return rv
    }

    /// Gets the current index of the `child` in its `GtkFlowBox` container.
    @inlinable func getIndex() -> Int {
        let rv = Int(gtk_flow_box_child_get_index(flow_box_child_ptr))
        return rv
    }

    /// Sets the child widget of `self`.
    @inlinable func set(child: WidgetRef? = nil) {
        gtk_flow_box_child_set_child(flow_box_child_ptr, child?.widget_ptr)
    
    }
    /// Sets the child widget of `self`.
    @inlinable func set<WidgetT: WidgetProtocol>(child: WidgetT?) {
        gtk_flow_box_child_set_child(flow_box_child_ptr, child?.widget_ptr)
    
    }
    @inlinable var child: WidgetRef! {
        /// Gets the child widget of `self`.
        get {
            guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_flow_box_child_get_child(flow_box_child_ptr))) else { return nil }
            return rv
        }
        /// Sets the child widget of `self`.
        nonmutating set {
            gtk_flow_box_child_set_child(flow_box_child_ptr, UnsafeMutablePointer<GtkWidget>(newValue?.widget_ptr))
        }
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

    @inlinable var parentInstance: GtkWidget {
        get {
            let rv = flow_box_child_ptr.pointee.parent_instance
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
/// (plain Language Example):
/// ```plain
/// fontbutton
/// ╰── button.font
///     ╰── [content]
/// ```
/// 
/// GtkFontButton has a single CSS node with name fontbutton which
/// contains a button node with the .font style class.
public protocol FontButtonProtocol: WidgetProtocol, FontChooserProtocol {
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
/// (plain Language Example):
/// ```plain
/// fontbutton
/// ╰── button.font
///     ╰── [content]
/// ```
/// 
/// GtkFontButton has a single CSS node with name fontbutton which
/// contains a button node with the .font style class.
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
    @inlinable init(font fontname: UnsafePointer<CChar>!) {
        let rv = gtk_font_button_new_with_font(fontname)
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a new font picker widget.
    @inlinable static func newWith(font fontname: UnsafePointer<CChar>!) -> WidgetRef! {
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
/// (plain Language Example):
/// ```plain
/// fontbutton
/// ╰── button.font
///     ╰── [content]
/// ```
/// 
/// GtkFontButton has a single CSS node with name fontbutton which
/// contains a button node with the .font style class.
open class FontButton: Widget, FontButtonProtocol {
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
    @inlinable public init() {
        let rv = gtk_font_button_new()
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new font picker widget.
    @inlinable public init(font fontname: UnsafePointer<CChar>!) {
        let rv = gtk_font_button_new_with_font(fontname)
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new font picker widget.
    @inlinable public static func newWith(font fontname: UnsafePointer<CChar>!) -> Widget! {
        guard let rv = Widget(gconstpointer: gconstpointer(gtk_font_button_new_with_font(fontname))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

}

public enum FontButtonPropertyName: String, PropertyNameProtocol {
    /// Whether the widget or any of its descendents can accept
    /// the input focus.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case canFocus = "can-focus"
    case canTarget = "can-target"
    /// A list of css classes applied to this widget.
    case cssClasses = "css-classes"
    /// The name of this widget in the CSS tree.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case cssName = "css-name"
    /// The cursor used by `widget`. See `gtk_widget_set_cursor()` for details.
    case cursor = "cursor"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    case focusOnClick = "focus-on-click"
    /// Whether this widget itself will accept the input focus.
    case focusable = "focusable"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case halign = "halign"
    case hasDefault = "has-default"
    case hasFocus = "has-focus"
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
    /// whether it will provide a tooltip or not.
    case hasTooltip = "has-tooltip"
    case heightRequest = "height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case hexpand = "hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case hexpandSet = "hexpand-set"
    /// The `GtkLayoutManager` instance to use to compute the preferred size
    /// of the widget, and allocate its children.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case layoutManager = "layout-manager"
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
    case modal = "modal"
    case name = "name"
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    case opacity = "opacity"
    /// How content outside the widget's content area is treated.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case overflow = "overflow"
    case parent = "parent"
    case receivesDefault = "receives-default"
    /// The `GtkRoot` widget of the widget tree containing this widget or `nil` if
    /// the widget is not contained in a root widget.
    case root = "root"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case sensitive = "sensitive"
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
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case valign = "valign"
    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    case vexpand = "vexpand"
    /// Whether to use the `GtkWidget:vexpand` property. See `gtk_widget_get_vexpand_set()`.
    case vexpandSet = "vexpand-set"
    case visible = "visible"
    case widthRequest = "width-request"
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
    /// - Note: Representation of signal named `notify::modal`
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    @discardableResult
    func onNotifyModal(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: FontButtonRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<FontButtonRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(FontButtonRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return signalConnectData(
            detailedSignal: "notify::modal", 
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

    /// Gets whether the dialog is modal.
    @inlinable func getModal() -> Bool {
        let rv = ((gtk_font_button_get_modal(font_button_ptr)) != 0)
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

    /// Sets whether the dialog should be modal.
    @inlinable func set(modal: Bool) {
        gtk_font_button_set_modal(font_button_ptr, gboolean((modal) ? 1 : 0))
    
    }

    /// Sets the title for the font chooser dialog.
    @inlinable func set(title: UnsafePointer<CChar>!) {
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
    @inlinable var modal: Bool {
        /// Gets whether the dialog is modal.
        get {
            let rv = ((gtk_font_button_get_modal(font_button_ptr)) != 0)
            return rv
        }
        /// Sets whether the dialog should be modal.
        nonmutating set {
            gtk_font_button_set_modal(font_button_ptr, gboolean((newValue) ? 1 : 0))
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
    @inlinable init<WindowT: WindowProtocol>( title: UnsafePointer<CChar>? = nil, parent: WindowT?) {
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
    @inlinable public init<WindowT: WindowProtocol>( title: UnsafePointer<CChar>? = nil, parent: WindowT?) {
        let rv = gtk_font_chooser_dialog_new(title, parent?.window_ptr)
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum FontChooserDialogPropertyName: String, PropertyNameProtocol {
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
    /// Whether the widget or any of its descendents can accept
    /// the input focus.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case canFocus = "can-focus"
    case canTarget = "can-target"
    case child = "child"
    /// A list of css classes applied to this widget.
    case cssClasses = "css-classes"
    /// The name of this widget in the CSS tree.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case cssName = "css-name"
    /// The cursor used by `widget`. See `gtk_widget_set_cursor()` for details.
    case cursor = "cursor"
    /// Whether the window should be decorated by the window manager.
    case decorated = "decorated"
    case defaultHeight = "default-height"
    case defaultWidget = "default-widget"
    case defaultWidth = "default-width"
    /// Whether the window frame should have a close button.
    case deletable = "deletable"
    case destroyWithParent = "destroy-with-parent"
    case display = "display"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    case focusOnClick = "focus-on-click"
    /// Whether 'focus rectangles' are currently visible in this window.
    /// 
    /// This property is maintained by GTK based on user input
    /// and should not be set by applications.
    case focusVisible = "focus-visible"
    case focusWidget = "focus-widget"
    /// Whether this widget itself will accept the input focus.
    case focusable = "focusable"
    /// Whether the window is fullscreen.
    /// 
    /// Setting this property is the equivalent of calling `gtk_window_fullscreen()`
    /// and `gtk_window_unfullscreen()`; either operation is asynchronous, which
    /// means you will need to connect to the `GObject::notify` signal in order to
    /// know whether the operation was successful.
    case fullscreened = "fullscreened"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case halign = "halign"
    case hasDefault = "has-default"
    case hasFocus = "has-focus"
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
    /// whether it will provide a tooltip or not.
    case hasTooltip = "has-tooltip"
    case heightRequest = "height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case hexpand = "hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case hexpandSet = "hexpand-set"
    case hideOnClose = "hide-on-close"
    /// The :icon-name property specifies the name of the themed icon to
    /// use as the window icon. See `GtkIconTheme` for more details.
    case iconName = "icon-name"
    case isActive = "is-active"
    /// The `GtkLayoutManager` instance to use to compute the preferred size
    /// of the widget, and allocate its children.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case layoutManager = "layout-manager"
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
    /// Whether the window is maximized.
    /// 
    /// Setting this property is the equivalent of calling `gtk_window_maximize()`
    /// and `gtk_window_unmaximize()`; either operation is asynchronous, which
    /// means you will need to connect to the `GObject::notify` signal in order to
    /// know whether the operation was successful.
    case maximized = "maximized"
    /// Whether mnemonics are currently visible in this window.
    /// 
    /// This property is maintained by GTK based on user input,
    /// and should not be set by applications.
    case mnemonicsVisible = "mnemonics-visible"
    case modal = "modal"
    case name = "name"
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    case opacity = "opacity"
    /// How content outside the widget's content area is treated.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case overflow = "overflow"
    case parent = "parent"
    case receivesDefault = "receives-default"
    case resizable = "resizable"
    /// The `GtkRoot` widget of the widget tree containing this widget or `nil` if
    /// the widget is not contained in a root widget.
    case root = "root"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case sensitive = "sensitive"
    /// The :startup-id is a write-only property for setting window's
    /// startup notification identifier. See `gtk_window_set_startup_id()`
    /// for more details.
    case startupId = "startup-id"
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
public protocol FontChooserWidgetProtocol: WidgetProtocol, FontChooserProtocol {
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
open class FontChooserWidget: Widget, FontChooserWidgetProtocol {
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
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum FontChooserWidgetPropertyName: String, PropertyNameProtocol {
    /// Whether the widget or any of its descendents can accept
    /// the input focus.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case canFocus = "can-focus"
    case canTarget = "can-target"
    /// A list of css classes applied to this widget.
    case cssClasses = "css-classes"
    /// The name of this widget in the CSS tree.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case cssName = "css-name"
    /// The cursor used by `widget`. See `gtk_widget_set_cursor()` for details.
    case cursor = "cursor"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    case focusOnClick = "focus-on-click"
    /// Whether this widget itself will accept the input focus.
    case focusable = "focusable"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case halign = "halign"
    case hasDefault = "has-default"
    case hasFocus = "has-focus"
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
    /// whether it will provide a tooltip or not.
    case hasTooltip = "has-tooltip"
    case heightRequest = "height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case hexpand = "hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case hexpandSet = "hexpand-set"
    /// The `GtkLayoutManager` instance to use to compute the preferred size
    /// of the widget, and allocate its children.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case layoutManager = "layout-manager"
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
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    case opacity = "opacity"
    /// How content outside the widget's content area is treated.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case overflow = "overflow"
    case parent = "parent"
    case receivesDefault = "receives-default"
    /// The `GtkRoot` widget of the widget tree containing this widget or `nil` if
    /// the widget is not contained in a root widget.
    case root = "root"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case sensitive = "sensitive"
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



}



// MARK: - Frame Class

/// The `FrameProtocol` protocol exposes the methods and properties of an underlying `GtkFrame` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Frame`.
/// Alternatively, use `FrameRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The frame widget is a widget that surrounds its child with a decorative
/// frame and an optional label. If present, the label is drawn inside
/// the top edge of the frame. The horizontal position of the label can
/// be controlled with `gtk_frame_set_label_align()`.
/// 
/// GtkFrame clips its child. You can use this to add rounded corners to
/// widgets, but be aware that it also cuts off shadows.
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
///     <object class="GtkLabel" id="frame_label"/>
///   </child>
///   <child>
///     <object class="GtkEntry" id="frame_content"/>
///   </child>
/// </object>
/// ```
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
/// frame
/// ├── <label widget>
/// ╰── <child>
/// ```
/// 
/// GtkFrame has a main CSS node with name “frame”, which is used to draw the
/// visible border. You can set the appearance of the border using CSS properties
/// like “border-style” on this node.
public protocol FrameProtocol: WidgetProtocol {
        /// Untyped pointer to the underlying `GtkFrame` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkFrame` instance.
    var frame_ptr: UnsafeMutablePointer<GtkFrame>! { get }

}

/// The `FrameRef` type acts as a lightweight Swift reference to an underlying `GtkFrame` instance.
/// It exposes methods that can operate on this data type through `FrameProtocol` conformance.
/// Use `FrameRef` only as an `unowned` reference to an existing `GtkFrame` instance.
///
/// The frame widget is a widget that surrounds its child with a decorative
/// frame and an optional label. If present, the label is drawn inside
/// the top edge of the frame. The horizontal position of the label can
/// be controlled with `gtk_frame_set_label_align()`.
/// 
/// GtkFrame clips its child. You can use this to add rounded corners to
/// widgets, but be aware that it also cuts off shadows.
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
///     <object class="GtkLabel" id="frame_label"/>
///   </child>
///   <child>
///     <object class="GtkEntry" id="frame_content"/>
///   </child>
/// </object>
/// ```
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
/// frame
/// ├── <label widget>
/// ╰── <child>
/// ```
/// 
/// GtkFrame has a main CSS node with name “frame”, which is used to draw the
/// visible border. You can set the appearance of the border using CSS properties
/// like “border-style” on this node.
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
    @inlinable init( label: UnsafePointer<CChar>? = nil) {
        let rv = gtk_frame_new(label)
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// The `Frame` type acts as a reference-counted owner of an underlying `GtkFrame` instance.
/// It provides the methods that can operate on this data type through `FrameProtocol` conformance.
/// Use `Frame` as a strong reference or owner of a `GtkFrame` instance.
///
/// The frame widget is a widget that surrounds its child with a decorative
/// frame and an optional label. If present, the label is drawn inside
/// the top edge of the frame. The horizontal position of the label can
/// be controlled with `gtk_frame_set_label_align()`.
/// 
/// GtkFrame clips its child. You can use this to add rounded corners to
/// widgets, but be aware that it also cuts off shadows.
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
///     <object class="GtkLabel" id="frame_label"/>
///   </child>
///   <child>
///     <object class="GtkEntry" id="frame_content"/>
///   </child>
/// </object>
/// ```
/// 
/// # CSS nodes
/// 
/// (plain Language Example):
/// ```plain
/// frame
/// ├── <label widget>
/// ╰── <child>
/// ```
/// 
/// GtkFrame has a main CSS node with name “frame”, which is used to draw the
/// visible border. You can set the appearance of the border using CSS properties
/// like “border-style” on this node.
open class Frame: Widget, FrameProtocol {
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
    @inlinable public init( label: UnsafePointer<CChar>? = nil) {
        let rv = gtk_frame_new(label)
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum FramePropertyName: String, PropertyNameProtocol {
    /// Whether the widget or any of its descendents can accept
    /// the input focus.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case canFocus = "can-focus"
    case canTarget = "can-target"
    case child = "child"
    /// A list of css classes applied to this widget.
    case cssClasses = "css-classes"
    /// The name of this widget in the CSS tree.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case cssName = "css-name"
    /// The cursor used by `widget`. See `gtk_widget_set_cursor()` for details.
    case cursor = "cursor"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    case focusOnClick = "focus-on-click"
    /// Whether this widget itself will accept the input focus.
    case focusable = "focusable"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case halign = "halign"
    case hasDefault = "has-default"
    case hasFocus = "has-focus"
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
    /// whether it will provide a tooltip or not.
    case hasTooltip = "has-tooltip"
    case heightRequest = "height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case hexpand = "hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case hexpandSet = "hexpand-set"
    case label = "label"
    case labelWidget = "label-widget"
    case labelXalign = "label-xalign"
    /// The `GtkLayoutManager` instance to use to compute the preferred size
    /// of the widget, and allocate its children.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case layoutManager = "layout-manager"
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
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    case opacity = "opacity"
    /// How content outside the widget's content area is treated.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case overflow = "overflow"
    case parent = "parent"
    case receivesDefault = "receives-default"
    /// The `GtkRoot` widget of the widget tree containing this widget or `nil` if
    /// the widget is not contained in a root widget.
    case root = "root"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case sensitive = "sensitive"
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

    /// Gets the child widget of `frame`.
    @inlinable func getChild() -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_frame_get_child(frame_ptr))) else { return nil }
        return rv
    }

    /// If the frame’s label widget is a `GtkLabel`, returns the
    /// text in the label widget. (The frame will have a `GtkLabel`
    /// for the label widget if a non-`nil` argument was passed
    /// to `gtk_frame_new()`.)
    @inlinable func getLabel() -> String! {
        let rv = gtk_frame_get_label(frame_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Retrieves the X alignment of the frame’s label. See
    /// `gtk_frame_set_label_align()`.
    @inlinable func getLabelAlign() -> CFloat {
        let rv = gtk_frame_get_label_align(frame_ptr)
        return rv
    }

    /// Retrieves the label widget for the frame. See
    /// `gtk_frame_set_label_widget()`.
    @inlinable func getLabelWidget() -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_frame_get_label_widget(frame_ptr))) else { return nil }
        return rv
    }

    /// Sets the child widget of `frame`.
    @inlinable func set(child: WidgetRef? = nil) {
        gtk_frame_set_child(frame_ptr, child?.widget_ptr)
    
    }
    /// Sets the child widget of `frame`.
    @inlinable func set<WidgetT: WidgetProtocol>(child: WidgetT?) {
        gtk_frame_set_child(frame_ptr, child?.widget_ptr)
    
    }

    /// Removes the current `GtkFrame:label`-widget. If `label` is not `nil`, creates a
    /// new `GtkLabel` with that text and adds it as the `GtkFrame:label`-widget.
    @inlinable func set(label: UnsafePointer<CChar>? = nil) {
        gtk_frame_set_label(frame_ptr, label)
    
    }

    /// Sets the X alignment of the frame widget’s label. The
    /// default value for a newly created frame is 0.0.
    @inlinable func setLabelAlign(xalign: CFloat) {
        gtk_frame_set_label_align(frame_ptr, xalign)
    
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
    @inlinable var child: WidgetRef! {
        /// Gets the child widget of `frame`.
        get {
            guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_frame_get_child(frame_ptr))) else { return nil }
            return rv
        }
        /// Sets the child widget of `frame`.
        nonmutating set {
            gtk_frame_set_child(frame_ptr, UnsafeMutablePointer<GtkWidget>(newValue?.widget_ptr))
        }
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

    /// Retrieves the X alignment of the frame’s label. See
    /// `gtk_frame_set_label_align()`.
    @inlinable var labelAlign: CFloat {
        /// Retrieves the X alignment of the frame’s label. See
        /// `gtk_frame_set_label_align()`.
        get {
            let rv = gtk_frame_get_label_align(frame_ptr)
            return rv
        }
        /// Sets the X alignment of the frame widget’s label. The
        /// default value for a newly created frame is 0.0.
        nonmutating set {
            gtk_frame_set_label_align(frame_ptr, newValue)
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

    @inlinable var parentInstance: GtkWidget {
        get {
            let rv = frame_ptr.pointee.parent_instance
            return rv
        }
    }

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
/// 
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
///     // draw_an_object ();
/// 
///     // we completed our drawing; the draw commands will be
///     // flushed at the end of the signal emission chain, and
///     // the buffers will be drawn on the window
///     return TRUE;
///   }
/// 
///   void setup_glarea (void)
///   {
///     // create a GtkGLArea instance
///     GtkWidget *gl_area = gtk_gl_area_new ();
/// 
///     // connect to the "render" signal
///     g_signal_connect (gl_area, "render", G_CALLBACK (render), NULL);
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
/// 
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
///     // draw_an_object ();
/// 
///     // we completed our drawing; the draw commands will be
///     // flushed at the end of the signal emission chain, and
///     // the buffers will be drawn on the window
///     return TRUE;
///   }
/// 
///   void setup_glarea (void)
///   {
///     // create a GtkGLArea instance
///     GtkWidget *gl_area = gtk_gl_area_new ();
/// 
///     // connect to the "render" signal
///     g_signal_connect (gl_area, "render", G_CALLBACK (render), NULL);
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
/// 
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
///     // draw_an_object ();
/// 
///     // we completed our drawing; the draw commands will be
///     // flushed at the end of the signal emission chain, and
///     // the buffers will be drawn on the window
///     return TRUE;
///   }
/// 
///   void setup_glarea (void)
///   {
///     // create a GtkGLArea instance
///     GtkWidget *gl_area = gtk_gl_area_new ();
/// 
///     // connect to the "render" signal
///     g_signal_connect (gl_area, "render", G_CALLBACK (render), NULL);
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
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum GLAreaPropertyName: String, PropertyNameProtocol {
    /// If set to `true` the `GtkGLArea::render` signal will be emitted every time
    /// the widget draws. This is the default and is useful if drawing the widget
    /// is faster.
    /// 
    /// If set to `false` the data from previous rendering is kept around and will
    /// be used for drawing the widget the next time, unless the window is resized.
    /// In order to force a rendering `gtk_gl_area_queue_render()` must be called.
    /// This mode is useful when the scene changes seldom, but takes a long time
    /// to redraw.
    case autoRender = "auto-render"
    /// Whether the widget or any of its descendents can accept
    /// the input focus.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case canFocus = "can-focus"
    case canTarget = "can-target"
    /// The `GdkGLContext` used by the `GtkGLArea` widget.
    /// 
    /// The `GtkGLArea` widget is responsible for creating the `GdkGLContext`
    /// instance. If you need to render with other kinds of buffers (stencil,
    /// depth, etc), use render buffers.
    case context = "context"
    /// A list of css classes applied to this widget.
    case cssClasses = "css-classes"
    /// The name of this widget in the CSS tree.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case cssName = "css-name"
    /// The cursor used by `widget`. See `gtk_widget_set_cursor()` for details.
    case cursor = "cursor"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    case focusOnClick = "focus-on-click"
    /// Whether this widget itself will accept the input focus.
    case focusable = "focusable"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case halign = "halign"
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
    case hasTooltip = "has-tooltip"
    case heightRequest = "height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case hexpand = "hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case hexpandSet = "hexpand-set"
    /// The `GtkLayoutManager` instance to use to compute the preferred size
    /// of the widget, and allocate its children.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case layoutManager = "layout-manager"
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
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    case opacity = "opacity"
    /// How content outside the widget's content area is treated.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case overflow = "overflow"
    case parent = "parent"
    case receivesDefault = "receives-default"
    /// The `GtkRoot` widget of the widget tree containing this widget or `nil` if
    /// the widget is not contained in a root widget.
    case root = "root"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case sensitive = "sensitive"
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
    /// are created and bound to the framebuffer.
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
    /// the scene changes seldom, but takes a long time to redraw.
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
        /// the scene changes seldom, but takes a long time to redraw.
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



