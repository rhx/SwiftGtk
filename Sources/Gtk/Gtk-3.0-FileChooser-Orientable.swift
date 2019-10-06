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

// MARK: - FileChooser Interface

/// The `FileChooserProtocol` protocol exposes the methods and properties of an underlying `GtkFileChooser` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FileChooser`.
/// Alternatively, use `FileChooserRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkFileChooser` is an interface that can be implemented by file
/// selection widgets.  In GTK+, the main objects that implement this
/// interface are `GtkFileChooserWidget`, `GtkFileChooserDialog`, and
/// `GtkFileChooserButton`.  You do not need to write an object that
/// implements the `GtkFileChooser` interface unless you are trying to
/// adapt an existing file selector to expose a standard programming
/// interface.
/// 
/// `GtkFileChooser` allows for shortcuts to various places in the filesystem.
/// In the default implementation these are displayed in the left pane. It
/// may be a bit confusing at first that these shortcuts come from various
/// sources and in various flavours, so lets explain the terminology here:
/// 
/// - Bookmarks: are created by the user, by dragging folders from the
///   right pane to the left pane, or by using the “Add”. Bookmarks
///   can be renamed and deleted by the user.
/// 
/// - Shortcuts: can be provided by the application. For example, a Paint
///   program may want to add a shortcut for a Clipart folder. Shortcuts
///   cannot be modified by the user.
/// 
/// - Volumes: are provided by the underlying filesystem abstraction. They are
///   the “roots” of the filesystem.
/// 
/// # File Names and Encodings
/// 
/// When the user is finished selecting files in a
/// `GtkFileChooser`, your program can get the selected names
/// either as filenames or as URIs.  For URIs, the normal escaping
/// rules are applied if the URI contains non-ASCII characters.
/// However, filenames are always returned in
/// the character set specified by the
/// `G_FILENAME_ENCODING` environment variable.
/// Please see the GLib documentation for more details about this
/// variable.
/// 
/// This means that while you can pass the result of
/// `gtk_file_chooser_get_filename()` to `open()` or `fopen()`,
/// you may not be able to directly set it as the text of a
/// `GtkLabel` widget unless you convert it first to UTF-8,
/// which all GTK+ widgets expect. You should use `g_filename_to_utf8()`
/// to convert filenames into strings that can be passed to GTK+
/// widgets.
/// 
/// # Adding a Preview Widget
/// 
/// You can add a custom preview widget to a file chooser and then
/// get notification about when the preview needs to be updated.
/// To install a preview widget, use
/// `gtk_file_chooser_set_preview_widget()`.  Then, connect to the
/// `GtkFileChooser::update`-preview signal to get notified when
/// you need to update the contents of the preview.
/// 
/// Your callback should use
/// `gtk_file_chooser_get_preview_filename()` to see what needs
/// previewing.  Once you have generated the preview for the
/// corresponding file, you must call
/// `gtk_file_chooser_set_preview_widget_active()` with a boolean
/// flag that indicates whether your callback could successfully
/// generate a preview.
/// 
/// ## Example: Using a Preview Widget ## <a name="gtkfilechooser-preview"></a>
/// (C Language Example):
/// ```C
/// {
///   GtkImage *preview;
/// 
///   ...
/// 
///   preview = gtk_image_new ();
/// 
///   gtk_file_chooser_set_preview_widget (my_file_chooser, preview);
///   g_signal_connect (my_file_chooser, "update-preview",
/// 		    G_CALLBACK (update_preview_cb), preview);
/// }
/// 
/// static void
/// update_preview_cb (GtkFileChooser *file_chooser, gpointer data)
/// {
///   GtkWidget *preview;
///   char *filename;
///   GdkPixbuf *pixbuf;
///   gboolean have_preview;
/// 
///   preview = GTK_WIDGET (data);
///   filename = gtk_file_chooser_get_preview_filename (file_chooser);
/// 
///   pixbuf = gdk_pixbuf_new_from_file_at_size (filename, 128, 128, NULL);
///   have_preview = (pixbuf != NULL);
///   g_free (filename);
/// 
///   gtk_image_set_from_pixbuf (GTK_IMAGE (preview), pixbuf);
///   if (pixbuf)
///     g_object_unref (pixbuf);
/// 
///   gtk_file_chooser_set_preview_widget_active (file_chooser, have_preview);
/// }
/// ```
/// 
/// # Adding Extra Widgets
/// 
/// You can add extra widgets to a file chooser to provide options
/// that are not present in the default design.  For example, you
/// can add a toggle button to give the user the option to open a
/// file in read-only mode.  You can use
/// `gtk_file_chooser_set_extra_widget()` to insert additional
/// widgets in a file chooser.
/// 
/// An example for adding extra widgets:
/// (C Language Example):
/// ```C
/// 
///   GtkWidget *toggle;
/// 
///   ...
/// 
///   toggle = gtk_check_button_new_with_label ("Open file read-only");
///   gtk_widget_show (toggle);
///   gtk_file_chooser_set_extra_widget (my_file_chooser, toggle);
/// }
/// ```
/// 
/// If you want to set more than one extra widget in the file
/// chooser, you can a container such as a `GtkBox` or a `GtkGrid`
/// and include your widgets in it.  Then, set the container as
/// the whole extra widget.
public protocol FileChooserProtocol {
    /// Untyped pointer to the underlying `GtkFileChooser` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkFileChooser` instance.
    var file_chooser_ptr: UnsafeMutablePointer<GtkFileChooser> { get }
}

/// The `FileChooserRef` type acts as a lightweight Swift reference to an underlying `GtkFileChooser` instance.
/// It exposes methods that can operate on this data type through `FileChooserProtocol` conformance.
/// Use `FileChooserRef` only as an `unowned` reference to an existing `GtkFileChooser` instance.
///
/// `GtkFileChooser` is an interface that can be implemented by file
/// selection widgets.  In GTK+, the main objects that implement this
/// interface are `GtkFileChooserWidget`, `GtkFileChooserDialog`, and
/// `GtkFileChooserButton`.  You do not need to write an object that
/// implements the `GtkFileChooser` interface unless you are trying to
/// adapt an existing file selector to expose a standard programming
/// interface.
/// 
/// `GtkFileChooser` allows for shortcuts to various places in the filesystem.
/// In the default implementation these are displayed in the left pane. It
/// may be a bit confusing at first that these shortcuts come from various
/// sources and in various flavours, so lets explain the terminology here:
/// 
/// - Bookmarks: are created by the user, by dragging folders from the
///   right pane to the left pane, or by using the “Add”. Bookmarks
///   can be renamed and deleted by the user.
/// 
/// - Shortcuts: can be provided by the application. For example, a Paint
///   program may want to add a shortcut for a Clipart folder. Shortcuts
///   cannot be modified by the user.
/// 
/// - Volumes: are provided by the underlying filesystem abstraction. They are
///   the “roots” of the filesystem.
/// 
/// # File Names and Encodings
/// 
/// When the user is finished selecting files in a
/// `GtkFileChooser`, your program can get the selected names
/// either as filenames or as URIs.  For URIs, the normal escaping
/// rules are applied if the URI contains non-ASCII characters.
/// However, filenames are always returned in
/// the character set specified by the
/// `G_FILENAME_ENCODING` environment variable.
/// Please see the GLib documentation for more details about this
/// variable.
/// 
/// This means that while you can pass the result of
/// `gtk_file_chooser_get_filename()` to `open()` or `fopen()`,
/// you may not be able to directly set it as the text of a
/// `GtkLabel` widget unless you convert it first to UTF-8,
/// which all GTK+ widgets expect. You should use `g_filename_to_utf8()`
/// to convert filenames into strings that can be passed to GTK+
/// widgets.
/// 
/// # Adding a Preview Widget
/// 
/// You can add a custom preview widget to a file chooser and then
/// get notification about when the preview needs to be updated.
/// To install a preview widget, use
/// `gtk_file_chooser_set_preview_widget()`.  Then, connect to the
/// `GtkFileChooser::update`-preview signal to get notified when
/// you need to update the contents of the preview.
/// 
/// Your callback should use
/// `gtk_file_chooser_get_preview_filename()` to see what needs
/// previewing.  Once you have generated the preview for the
/// corresponding file, you must call
/// `gtk_file_chooser_set_preview_widget_active()` with a boolean
/// flag that indicates whether your callback could successfully
/// generate a preview.
/// 
/// ## Example: Using a Preview Widget ## <a name="gtkfilechooser-preview"></a>
/// (C Language Example):
/// ```C
/// {
///   GtkImage *preview;
/// 
///   ...
/// 
///   preview = gtk_image_new ();
/// 
///   gtk_file_chooser_set_preview_widget (my_file_chooser, preview);
///   g_signal_connect (my_file_chooser, "update-preview",
/// 		    G_CALLBACK (update_preview_cb), preview);
/// }
/// 
/// static void
/// update_preview_cb (GtkFileChooser *file_chooser, gpointer data)
/// {
///   GtkWidget *preview;
///   char *filename;
///   GdkPixbuf *pixbuf;
///   gboolean have_preview;
/// 
///   preview = GTK_WIDGET (data);
///   filename = gtk_file_chooser_get_preview_filename (file_chooser);
/// 
///   pixbuf = gdk_pixbuf_new_from_file_at_size (filename, 128, 128, NULL);
///   have_preview = (pixbuf != NULL);
///   g_free (filename);
/// 
///   gtk_image_set_from_pixbuf (GTK_IMAGE (preview), pixbuf);
///   if (pixbuf)
///     g_object_unref (pixbuf);
/// 
///   gtk_file_chooser_set_preview_widget_active (file_chooser, have_preview);
/// }
/// ```
/// 
/// # Adding Extra Widgets
/// 
/// You can add extra widgets to a file chooser to provide options
/// that are not present in the default design.  For example, you
/// can add a toggle button to give the user the option to open a
/// file in read-only mode.  You can use
/// `gtk_file_chooser_set_extra_widget()` to insert additional
/// widgets in a file chooser.
/// 
/// An example for adding extra widgets:
/// (C Language Example):
/// ```C
/// 
///   GtkWidget *toggle;
/// 
///   ...
/// 
///   toggle = gtk_check_button_new_with_label ("Open file read-only");
///   gtk_widget_show (toggle);
///   gtk_file_chooser_set_extra_widget (my_file_chooser, toggle);
/// }
/// ```
/// 
/// If you want to set more than one extra widget in the file
/// chooser, you can a container such as a `GtkBox` or a `GtkGrid`
/// and include your widgets in it.  Then, set the container as
/// the whole extra widget.
public struct FileChooserRef: FileChooserProtocol {
    /// Untyped pointer to the underlying `GtkFileChooser` instance.
    /// For type-safe access, use the generated, typed pointer `file_chooser_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension FileChooserRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkFileChooser>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FileChooserProtocol`
    init<T: FileChooserProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FileChooser` type acts as an owner of an underlying `GtkFileChooser` instance.
/// It provides the methods that can operate on this data type through `FileChooserProtocol` conformance.
/// Use `FileChooser` as a strong reference or owner of a `GtkFileChooser` instance.
///
/// `GtkFileChooser` is an interface that can be implemented by file
/// selection widgets.  In GTK+, the main objects that implement this
/// interface are `GtkFileChooserWidget`, `GtkFileChooserDialog`, and
/// `GtkFileChooserButton`.  You do not need to write an object that
/// implements the `GtkFileChooser` interface unless you are trying to
/// adapt an existing file selector to expose a standard programming
/// interface.
/// 
/// `GtkFileChooser` allows for shortcuts to various places in the filesystem.
/// In the default implementation these are displayed in the left pane. It
/// may be a bit confusing at first that these shortcuts come from various
/// sources and in various flavours, so lets explain the terminology here:
/// 
/// - Bookmarks: are created by the user, by dragging folders from the
///   right pane to the left pane, or by using the “Add”. Bookmarks
///   can be renamed and deleted by the user.
/// 
/// - Shortcuts: can be provided by the application. For example, a Paint
///   program may want to add a shortcut for a Clipart folder. Shortcuts
///   cannot be modified by the user.
/// 
/// - Volumes: are provided by the underlying filesystem abstraction. They are
///   the “roots” of the filesystem.
/// 
/// # File Names and Encodings
/// 
/// When the user is finished selecting files in a
/// `GtkFileChooser`, your program can get the selected names
/// either as filenames or as URIs.  For URIs, the normal escaping
/// rules are applied if the URI contains non-ASCII characters.
/// However, filenames are always returned in
/// the character set specified by the
/// `G_FILENAME_ENCODING` environment variable.
/// Please see the GLib documentation for more details about this
/// variable.
/// 
/// This means that while you can pass the result of
/// `gtk_file_chooser_get_filename()` to `open()` or `fopen()`,
/// you may not be able to directly set it as the text of a
/// `GtkLabel` widget unless you convert it first to UTF-8,
/// which all GTK+ widgets expect. You should use `g_filename_to_utf8()`
/// to convert filenames into strings that can be passed to GTK+
/// widgets.
/// 
/// # Adding a Preview Widget
/// 
/// You can add a custom preview widget to a file chooser and then
/// get notification about when the preview needs to be updated.
/// To install a preview widget, use
/// `gtk_file_chooser_set_preview_widget()`.  Then, connect to the
/// `GtkFileChooser::update`-preview signal to get notified when
/// you need to update the contents of the preview.
/// 
/// Your callback should use
/// `gtk_file_chooser_get_preview_filename()` to see what needs
/// previewing.  Once you have generated the preview for the
/// corresponding file, you must call
/// `gtk_file_chooser_set_preview_widget_active()` with a boolean
/// flag that indicates whether your callback could successfully
/// generate a preview.
/// 
/// ## Example: Using a Preview Widget ## <a name="gtkfilechooser-preview"></a>
/// (C Language Example):
/// ```C
/// {
///   GtkImage *preview;
/// 
///   ...
/// 
///   preview = gtk_image_new ();
/// 
///   gtk_file_chooser_set_preview_widget (my_file_chooser, preview);
///   g_signal_connect (my_file_chooser, "update-preview",
/// 		    G_CALLBACK (update_preview_cb), preview);
/// }
/// 
/// static void
/// update_preview_cb (GtkFileChooser *file_chooser, gpointer data)
/// {
///   GtkWidget *preview;
///   char *filename;
///   GdkPixbuf *pixbuf;
///   gboolean have_preview;
/// 
///   preview = GTK_WIDGET (data);
///   filename = gtk_file_chooser_get_preview_filename (file_chooser);
/// 
///   pixbuf = gdk_pixbuf_new_from_file_at_size (filename, 128, 128, NULL);
///   have_preview = (pixbuf != NULL);
///   g_free (filename);
/// 
///   gtk_image_set_from_pixbuf (GTK_IMAGE (preview), pixbuf);
///   if (pixbuf)
///     g_object_unref (pixbuf);
/// 
///   gtk_file_chooser_set_preview_widget_active (file_chooser, have_preview);
/// }
/// ```
/// 
/// # Adding Extra Widgets
/// 
/// You can add extra widgets to a file chooser to provide options
/// that are not present in the default design.  For example, you
/// can add a toggle button to give the user the option to open a
/// file in read-only mode.  You can use
/// `gtk_file_chooser_set_extra_widget()` to insert additional
/// widgets in a file chooser.
/// 
/// An example for adding extra widgets:
/// (C Language Example):
/// ```C
/// 
///   GtkWidget *toggle;
/// 
///   ...
/// 
///   toggle = gtk_check_button_new_with_label ("Open file read-only");
///   gtk_widget_show (toggle);
///   gtk_file_chooser_set_extra_widget (my_file_chooser, toggle);
/// }
/// ```
/// 
/// If you want to set more than one extra widget in the file
/// chooser, you can a container such as a `GtkBox` or a `GtkGrid`
/// and include your widgets in it.  Then, set the container as
/// the whole extra widget.
open class FileChooser: FileChooserProtocol {
    /// Untyped pointer to the underlying `GtkFileChooser` instance.
    /// For type-safe access, use the generated, typed pointer `file_chooser_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `FileChooser` instance.
    public init(_ op: UnsafeMutablePointer<GtkFileChooser>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `FileChooserProtocol`
    /// `GtkFileChooser` does not allow reference counting.
    public convenience init<T: FileChooserProtocol>(_ other: T) {
        self.init(cast(other.file_chooser_ptr))
        // no reference counting for GtkFileChooser, cannot ref(cast(file_chooser_ptr))
    }

    /// Do-nothing destructor for`GtkFileChooser`.
    deinit {
        // no reference counting for GtkFileChooser, cannot unref(cast(file_chooser_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkFileChooser.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkFileChooser.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkFileChooser.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkFileChooser>(opaquePointer))
    }



}

public enum FileChooserPropertyName: String, PropertyNameProtocol {
    case action = "action"
    /// Whether a file chooser not in `GTK_FILE_CHOOSER_ACTION_OPEN` mode
    /// will offer the user to create new folders.
    case createFolders = "create-folders"
    /// Whether a file chooser in `GTK_FILE_CHOOSER_ACTION_SAVE` mode
    /// will present an overwrite confirmation dialog if the user
    /// selects a file name that already exists.
    case doOverwriteConfirmation = "do-overwrite-confirmation"
    case extraWidget = "extra-widget"
    case filter = "filter"
    case localOnly = "local-only"
    case previewWidget = "preview-widget"
    case previewWidgetActive = "preview-widget-active"
    case selectMultiple = "select-multiple"
    case showHidden = "show-hidden"
    case usePreviewLabel = "use-preview-label"
}

public extension FileChooserProtocol {
    /// Bind a `FileChooserPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: FileChooserPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(file_chooser_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef(cast($0)) }
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
}

public enum FileChooserSignalName: String, SignalNameProtocol {
    /// This signal gets emitted whenever it is appropriate to present a
    /// confirmation dialog when the user has selected a file name that
    /// already exists.  The signal only gets emitted when the file
    /// chooser is in `GTK_FILE_CHOOSER_ACTION_SAVE` mode.
    /// 
    /// Most applications just need to turn on the
    /// `GtkFileChooser:do`-overwrite-confirmation property (or call the
    /// `gtk_file_chooser_set_do_overwrite_confirmation()` function), and
    /// they will automatically get a stock confirmation dialog.
    /// Applications which need to customize this behavior should do
    /// that, and also connect to the `GtkFileChooser::confirm`-overwrite
    /// signal.
    /// 
    /// A signal handler for this signal must return a
    /// `GtkFileChooserConfirmation` value, which indicates the action to
    /// take.  If the handler determines that the user wants to select a
    /// different filename, it should return
    /// `GTK_FILE_CHOOSER_CONFIRMATION_SELECT_AGAIN`.  If it determines
    /// that the user is satisfied with his choice of file name, it
    /// should return `GTK_FILE_CHOOSER_CONFIRMATION_ACCEPT_FILENAME`.
    /// On the other hand, if it determines that the stock confirmation
    /// dialog should be used, it should return
    /// `GTK_FILE_CHOOSER_CONFIRMATION_CONFIRM`. The following example
    /// illustrates this.
    /// 
    /// ## Custom confirmation ## <a name="gtkfilechooser-confirmation"></a>
    /// 
    /// (C Language Example):
    /// ```C
    /// static GtkFileChooserConfirmation
    /// confirm_overwrite_callback (GtkFileChooser *chooser, gpointer data)
    /// {
    ///   char *uri;
    /// 
    ///   uri = gtk_file_chooser_get_uri (chooser);
    /// 
    ///   if (is_uri_read_only (uri))
    ///     {
    ///       if (user_wants_to_replace_read_only_file (uri))
    ///         return GTK_FILE_CHOOSER_CONFIRMATION_ACCEPT_FILENAME;
    ///       else
    ///         return GTK_FILE_CHOOSER_CONFIRMATION_SELECT_AGAIN;
    ///     } else
    ///       return GTK_FILE_CHOOSER_CONFIRMATION_CONFIRM; // fall back to the default dialog
    /// }
    /// 
    /// ...
    /// 
    /// chooser = gtk_file_chooser_dialog_new (...);
    /// 
    /// gtk_file_chooser_set_do_overwrite_confirmation (GTK_FILE_CHOOSER (dialog), TRUE);
    /// g_signal_connect (chooser, "confirm-overwrite",
    ///                   G_CALLBACK (confirm_overwrite_callback), NULL);
    /// 
    /// if (gtk_dialog_run (chooser) == GTK_RESPONSE_ACCEPT)
    ///         save_to_file (gtk_file_chooser_get_filename (GTK_FILE_CHOOSER (chooser));
    /// 
    /// gtk_widget_destroy (chooser);
    /// ```
    /// 
    case confirmOverwrite = "confirm-overwrite"
    /// This signal is emitted when the current folder in a `GtkFileChooser`
    /// changes.  This can happen due to the user performing some action that
    /// changes folders, such as selecting a bookmark or visiting a folder on the
    /// file list.  It can also happen as a result of calling a function to
    /// explicitly change the current folder in a file chooser.
    /// 
    /// Normally you do not need to connect to this signal, unless you need to keep
    /// track of which folder a file chooser is showing.
    /// 
    /// See also:  `gtk_file_chooser_set_current_folder()`,
    /// `gtk_file_chooser_get_current_folder()`,
    /// `gtk_file_chooser_set_current_folder_uri()`,
    /// `gtk_file_chooser_get_current_folder_uri()`.
    case currentFolderChanged = "current-folder-changed"
    /// This signal is emitted when the user "activates" a file in the file
    /// chooser.  This can happen by double-clicking on a file in the file list, or
    /// by pressing `Enter`.
    /// 
    /// Normally you do not need to connect to this signal.  It is used internally
    /// by `GtkFileChooserDialog` to know when to activate the default button in the
    /// dialog.
    /// 
    /// See also: `gtk_file_chooser_get_filename()`,
    /// `gtk_file_chooser_get_filenames()`, `gtk_file_chooser_get_uri()`,
    /// `gtk_file_chooser_get_uris()`.
    case fileActivated = "file-activated"
    /// This signal is emitted when there is a change in the set of selected files
    /// in a `GtkFileChooser`.  This can happen when the user modifies the selection
    /// with the mouse or the keyboard, or when explicitly calling functions to
    /// change the selection.
    /// 
    /// Normally you do not need to connect to this signal, as it is easier to wait
    /// for the file chooser to finish running, and then to get the list of
    /// selected files using the functions mentioned below.
    /// 
    /// See also: `gtk_file_chooser_select_filename()`,
    /// `gtk_file_chooser_unselect_filename()`, `gtk_file_chooser_get_filename()`,
    /// `gtk_file_chooser_get_filenames()`, `gtk_file_chooser_select_uri()`,
    /// `gtk_file_chooser_unselect_uri()`, `gtk_file_chooser_get_uri()`,
    /// `gtk_file_chooser_get_uris()`.
    case selectionChanged = "selection-changed"
    /// This signal is emitted when the preview in a file chooser should be
    /// regenerated.  For example, this can happen when the currently selected file
    /// changes.  You should use this signal if you want your file chooser to have
    /// a preview widget.
    /// 
    /// Once you have installed a preview widget with
    /// `gtk_file_chooser_set_preview_widget()`, you should update it when this
    /// signal is emitted.  You can use the functions
    /// `gtk_file_chooser_get_preview_filename()` or
    /// `gtk_file_chooser_get_preview_uri()` to get the name of the file to preview.
    /// Your widget may not be able to preview all kinds of files; your callback
    /// must call `gtk_file_chooser_set_preview_widget_active()` to inform the file
    /// chooser about whether the preview was generated successfully or not.
    /// 
    /// Please see the example code in
    /// [Using a Preview Widget](#gtkfilechooser-preview).
    /// 
    /// See also: `gtk_file_chooser_set_preview_widget()`,
    /// `gtk_file_chooser_set_preview_widget_active()`,
    /// `gtk_file_chooser_set_use_preview_label()`,
    /// `gtk_file_chooser_get_preview_filename()`,
    /// `gtk_file_chooser_get_preview_uri()`.
    case updatePreview = "update-preview"
    case notifyAction = "notify::action"
    /// Whether a file chooser not in `GTK_FILE_CHOOSER_ACTION_OPEN` mode
    /// will offer the user to create new folders.
    case notifyCreateFolders = "notify::create-folders"
    /// Whether a file chooser in `GTK_FILE_CHOOSER_ACTION_SAVE` mode
    /// will present an overwrite confirmation dialog if the user
    /// selects a file name that already exists.
    case notifyDoOverwriteConfirmation = "notify::do-overwrite-confirmation"
    case notifyExtraWidget = "notify::extra-widget"
    case notifyFilter = "notify::filter"
    case notifyLocalOnly = "notify::local-only"
    case notifyPreviewWidget = "notify::preview-widget"
    case notifyPreviewWidgetActive = "notify::preview-widget-active"
    case notifySelectMultiple = "notify::select-multiple"
    case notifyShowHidden = "notify::show-hidden"
    case notifyUsePreviewLabel = "notify::use-preview-label"
}

public extension FileChooserProtocol {
    /// Connect a `FileChooserSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: FileChooserSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(file_chooser_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

public extension FileChooserProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFileChooser` instance.
    var file_chooser_ptr: UnsafeMutablePointer<GtkFileChooser> { return ptr.assumingMemoryBound(to: GtkFileChooser.self) }

    /// Adds a 'choice' to the file chooser. This is typically implemented
    /// as a combobox or, for boolean choices, as a checkbutton. You can select
    /// a value using `gtk_file_chooser_set_choice()` before the dialog is shown,
    /// and you can obtain the user-selected value in the `response` signal handler
    /// using `gtk_file_chooser_get_choice()`.
    /// 
    /// Compare `gtk_file_chooser_set_extra_widget()`.
    func addChoice(id: UnsafePointer<CChar>, label: UnsafePointer<CChar>, options: UnsafePointer<UnsafePointer<CChar>>, optionLabels option_labels: UnsafePointer<UnsafePointer<CChar>>) {
        gtk_file_chooser_add_choice(cast(file_chooser_ptr), id, label, cast(options), cast(option_labels))
    
    }

    /// Adds `filter` to the list of filters that the user can select between.
    /// When a filter is selected, only files that are passed by that
    /// filter are displayed.
    /// 
    /// Note that the `chooser` takes ownership of the filter, so you have to
    /// ref and sink it if you want to keep a reference.
    func add(filter: FileFilterProtocol) {
        gtk_file_chooser_add_filter(cast(file_chooser_ptr), cast(filter.ptr))
    
    }

    /// Adds a folder to be displayed with the shortcut folders in a file chooser.
    /// Note that shortcut folders do not get saved, as they are provided by the
    /// application.  For example, you can use this to add a
    /// “/usr/share/mydrawprogram/Clipart” folder to the volume list.
    func addShortcut(folder: UnsafePointer<CChar>) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = gtk_file_chooser_add_shortcut_folder(cast(file_chooser_ptr), folder, &error)
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
        let rv = gtk_file_chooser_add_shortcut_folder_uri(cast(file_chooser_ptr), uri, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Gets the type of operation that the file chooser is performing; see
    /// `gtk_file_chooser_set_action()`.
    func getAction() -> GtkFileChooserAction {
        let rv = gtk_file_chooser_get_action(cast(file_chooser_ptr))
        return rv
    }

    /// Gets the currently selected option in the 'choice' with the given ID.
    func getChoice(id: UnsafePointer<CChar>) -> String! {
        let rv = gtk_file_chooser_get_choice(cast(file_chooser_ptr), id)
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets whether file choser will offer to create new folders.
    /// See `gtk_file_chooser_set_create_folders()`.
    func getCreateFolders() -> Bool {
        let rv = gtk_file_chooser_get_create_folders(cast(file_chooser_ptr))
        return Bool(rv != 0)
    }

    /// Gets the current folder of `chooser` as a local filename.
    /// See `gtk_file_chooser_set_current_folder()`.
    /// 
    /// Note that this is the folder that the file chooser is currently displaying
    /// (e.g. "/home/username/Documents"), which is not the same
    /// as the currently-selected folder if the chooser is in
    /// `GTK_FILE_CHOOSER_ACTION_SELECT_FOLDER` mode
    /// (e.g. "/home/username/Documents/selected-folder/".  To get the
    /// currently-selected folder in that mode, use `gtk_file_chooser_get_uri()` as the
    /// usual way to get the selection.
    func getCurrentFolder() -> String! {
        let rv = gtk_file_chooser_get_current_folder(cast(file_chooser_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets the current folder of `chooser` as `GFile`.
    /// See `gtk_file_chooser_get_current_folder_uri()`.
    func getCurrentFolderFile() -> UnsafeMutablePointer<GFile>! {
        let rv = gtk_file_chooser_get_current_folder_file(cast(file_chooser_ptr))
        return cast(rv)
    }

    /// Gets the current folder of `chooser` as an URI.
    /// See `gtk_file_chooser_set_current_folder_uri()`.
    /// 
    /// Note that this is the folder that the file chooser is currently displaying
    /// (e.g. "file:///home/username/Documents"), which is not the same
    /// as the currently-selected folder if the chooser is in
    /// `GTK_FILE_CHOOSER_ACTION_SELECT_FOLDER` mode
    /// (e.g. "file:///home/username/Documents/selected-folder/".  To get the
    /// currently-selected folder in that mode, use `gtk_file_chooser_get_uri()` as the
    /// usual way to get the selection.
    func getCurrentFolderURI() -> String! {
        let rv = gtk_file_chooser_get_current_folder_uri(cast(file_chooser_ptr))
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
        let rv = gtk_file_chooser_get_current_name(cast(file_chooser_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Queries whether a file chooser is set to confirm for overwriting when the user
    /// types a file name that already exists.
    func getDoOverwriteConfirmation() -> Bool {
        let rv = gtk_file_chooser_get_do_overwrite_confirmation(cast(file_chooser_ptr))
        return Bool(rv != 0)
    }

    /// Gets the current extra widget; see
    /// `gtk_file_chooser_set_extra_widget()`.
    func getExtraWidget() -> UnsafeMutablePointer<GtkWidget>! {
        let rv = gtk_file_chooser_get_extra_widget(cast(file_chooser_ptr))
        return cast(rv)
    }

    /// Gets the `GFile` for the currently selected file in
    /// the file selector. If multiple files are selected,
    /// one of the files will be returned at random.
    /// 
    /// If the file chooser is in folder mode, this function returns the selected
    /// folder.
    func getFile() -> UnsafeMutablePointer<GFile>! {
        let rv = gtk_file_chooser_get_file(cast(file_chooser_ptr))
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
        let rv = gtk_file_chooser_get_filename(cast(file_chooser_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Lists all the selected files and subfolders in the current folder of
    /// `chooser`. The returned names are full absolute paths. If files in the current
    /// folder cannot be represented as local filenames they will be ignored. (See
    /// `gtk_file_chooser_get_uris()`)
    func getFilenames() -> SListRef! {
        let rv = gtk_file_chooser_get_filenames(cast(file_chooser_ptr))
        return cast(rv.map { SListRef($0) })
    }

    /// Lists all the selected files and subfolders in the current folder of `chooser`
    /// as `GFile`. An internal function, see `gtk_file_chooser_get_uris()`.
    func getFiles() -> SListRef! {
        let rv = gtk_file_chooser_get_files(cast(file_chooser_ptr))
        return cast(rv.map { SListRef($0) })
    }

    /// Gets the current filter; see `gtk_file_chooser_set_filter()`.
    func getFilter() -> UnsafeMutablePointer<GtkFileFilter>! {
        let rv = gtk_file_chooser_get_filter(cast(file_chooser_ptr))
        return cast(rv)
    }

    /// Gets whether only local files can be selected in the
    /// file selector. See `gtk_file_chooser_set_local_only()`
    func getLocalOnly() -> Bool {
        let rv = gtk_file_chooser_get_local_only(cast(file_chooser_ptr))
        return Bool(rv != 0)
    }

    /// Gets the `GFile` that should be previewed in a custom preview
    /// Internal function, see `gtk_file_chooser_get_preview_uri()`.
    func getPreviewFile() -> UnsafeMutablePointer<GFile>! {
        let rv = gtk_file_chooser_get_preview_file(cast(file_chooser_ptr))
        return cast(rv)
    }

    /// Gets the filename that should be previewed in a custom preview
    /// widget. See `gtk_file_chooser_set_preview_widget()`.
    func getPreviewFilename() -> String! {
        let rv = gtk_file_chooser_get_preview_filename(cast(file_chooser_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets the URI that should be previewed in a custom preview
    /// widget. See `gtk_file_chooser_set_preview_widget()`.
    func getPreviewURI() -> String! {
        let rv = gtk_file_chooser_get_preview_uri(cast(file_chooser_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets the current preview widget; see
    /// `gtk_file_chooser_set_preview_widget()`.
    func getPreviewWidget() -> UnsafeMutablePointer<GtkWidget>! {
        let rv = gtk_file_chooser_get_preview_widget(cast(file_chooser_ptr))
        return cast(rv)
    }

    /// Gets whether the preview widget set by `gtk_file_chooser_set_preview_widget()`
    /// should be shown for the current filename. See
    /// `gtk_file_chooser_set_preview_widget_active()`.
    func getPreviewWidgetActive() -> Bool {
        let rv = gtk_file_chooser_get_preview_widget_active(cast(file_chooser_ptr))
        return Bool(rv != 0)
    }

    /// Gets whether multiple files can be selected in the file
    /// selector. See `gtk_file_chooser_set_select_multiple()`.
    func getSelectMultiple() -> Bool {
        let rv = gtk_file_chooser_get_select_multiple(cast(file_chooser_ptr))
        return Bool(rv != 0)
    }

    /// Gets whether hidden files and folders are displayed in the file selector.
    /// See `gtk_file_chooser_set_show_hidden()`.
    func getShowHidden() -> Bool {
        let rv = gtk_file_chooser_get_show_hidden(cast(file_chooser_ptr))
        return Bool(rv != 0)
    }

    /// Gets the URI for the currently selected file in
    /// the file selector. If multiple files are selected,
    /// one of the filenames will be returned at random.
    /// 
    /// If the file chooser is in folder mode, this function returns the selected
    /// folder.
    func getURI() -> String! {
        let rv = gtk_file_chooser_get_uri(cast(file_chooser_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Lists all the selected files and subfolders in the current folder of
    /// `chooser`. The returned names are full absolute URIs.
    func getURIs() -> SListRef! {
        let rv = gtk_file_chooser_get_uris(cast(file_chooser_ptr))
        return cast(rv.map { SListRef($0) })
    }

    /// Gets whether a stock label should be drawn with the name of the previewed
    /// file.  See `gtk_file_chooser_set_use_preview_label()`.
    func getUsePreviewLabel() -> Bool {
        let rv = gtk_file_chooser_get_use_preview_label(cast(file_chooser_ptr))
        return Bool(rv != 0)
    }

    /// Lists the current set of user-selectable filters; see
    /// `gtk_file_chooser_add_filter()`, `gtk_file_chooser_remove_filter()`.
    func listFilters() -> SListRef! {
        let rv = gtk_file_chooser_list_filters(cast(file_chooser_ptr))
        return cast(rv.map { SListRef($0) })
    }

    /// Queries the list of shortcut folders in the file chooser, as set by
    /// `gtk_file_chooser_add_shortcut_folder_uri()`.
    func listShortcutFolderURIs() -> SListRef! {
        let rv = gtk_file_chooser_list_shortcut_folder_uris(cast(file_chooser_ptr))
        return cast(rv.map { SListRef($0) })
    }

    /// Queries the list of shortcut folders in the file chooser, as set by
    /// `gtk_file_chooser_add_shortcut_folder()`.
    func listShortcutFolders() -> SListRef! {
        let rv = gtk_file_chooser_list_shortcut_folders(cast(file_chooser_ptr))
        return cast(rv.map { SListRef($0) })
    }

    /// Removes a 'choice' that has been added with `gtk_file_chooser_add_choice()`.
    func removeChoice(id: UnsafePointer<CChar>) {
        gtk_file_chooser_remove_choice(cast(file_chooser_ptr), id)
    
    }

    /// Removes `filter` from the list of filters that the user can select between.
    func remove(filter: FileFilterProtocol) {
        gtk_file_chooser_remove_filter(cast(file_chooser_ptr), cast(filter.ptr))
    
    }

    /// Removes a folder from a file chooser’s list of shortcut folders.
    func removeShortcut(folder: UnsafePointer<CChar>) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = gtk_file_chooser_remove_shortcut_folder(cast(file_chooser_ptr), folder, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Removes a folder URI from a file chooser’s list of shortcut folders.
    func removeShortcutFolder(uri: UnsafePointer<CChar>) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = gtk_file_chooser_remove_shortcut_folder_uri(cast(file_chooser_ptr), uri, &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Selects all the files in the current folder of a file chooser.
    func selectAll() {
        gtk_file_chooser_select_all(cast(file_chooser_ptr))
    
    }

    /// Selects the file referred to by `file`. An internal function. See
    /// `_gtk_file_chooser_select_uri()`.
    func select(file: FileProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = gtk_file_chooser_select_file(cast(file_chooser_ptr), cast(file.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Selects a filename. If the file name isn’t in the current
    /// folder of `chooser`, then the current folder of `chooser` will
    /// be changed to the folder containing `filename`.
    func selectFilename(String_: UnsafePointer<CChar>) -> Bool {
        let rv = gtk_file_chooser_select_filename(cast(file_chooser_ptr), String_)
        return Bool(rv != 0)
    }

    /// Selects the file to by `uri`. If the URI doesn’t refer to a
    /// file in the current folder of `chooser`, then the current folder of
    /// `chooser` will be changed to the folder containing `filename`.
    func select(uri: UnsafePointer<CChar>) -> Bool {
        let rv = gtk_file_chooser_select_uri(cast(file_chooser_ptr), uri)
        return Bool(rv != 0)
    }

    /// Sets the type of operation that the chooser is performing; the
    /// user interface is adapted to suit the selected action. For example,
    /// an option to create a new folder might be shown if the action is
    /// `GTK_FILE_CHOOSER_ACTION_SAVE` but not if the action is
    /// `GTK_FILE_CHOOSER_ACTION_OPEN`.
    func set(action: FileChooserAction) {
        gtk_file_chooser_set_action(cast(file_chooser_ptr), action)
    
    }

    /// Selects an option in a 'choice' that has been added with
    /// `gtk_file_chooser_add_choice()`. For a boolean choice, the
    /// possible options are "true" and "false".
    func setChoice(id: UnsafePointer<CChar>, option: UnsafePointer<CChar>) {
        gtk_file_chooser_set_choice(cast(file_chooser_ptr), id, option)
    
    }

    /// Sets whether file choser will offer to create new folders.
    /// This is only relevant if the action is not set to be
    /// `GTK_FILE_CHOOSER_ACTION_OPEN`.
    func set(createFolders create_folders: Bool) {
        gtk_file_chooser_set_create_folders(cast(file_chooser_ptr), gboolean(create_folders ? 1 : 0))
    
    }

    /// Sets the current folder for `chooser` from a local filename.
    /// The user will be shown the full contents of the current folder,
    /// plus user interface elements for navigating to other folders.
    /// 
    /// In general, you should not use this function.  See the
    /// [section on setting up a file chooser dialog](#gtkfilechooserdialog-setting-up)
    /// for the rationale behind this.
    func setCurrentFolder(String_: UnsafePointer<gchar>) -> Bool {
        let rv = gtk_file_chooser_set_current_folder(cast(file_chooser_ptr), String_)
        return Bool(rv != 0)
    }

    /// Sets the current folder for `chooser` from a `GFile`.
    /// Internal function, see `gtk_file_chooser_set_current_folder_uri()`.
    func setCurrentFolder(file: FileProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = gtk_file_chooser_set_current_folder_file(cast(file_chooser_ptr), cast(file.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Sets the current folder for `chooser` from an URI.
    /// The user will be shown the full contents of the current folder,
    /// plus user interface elements for navigating to other folders.
    /// 
    /// In general, you should not use this function.  See the
    /// [section on setting up a file chooser dialog](#gtkfilechooserdialog-setting-up)
    /// for the rationale behind this.
    func setCurrentFolder(uri: UnsafePointer<gchar>) -> Bool {
        let rv = gtk_file_chooser_set_current_folder_uri(cast(file_chooser_ptr), uri)
        return Bool(rv != 0)
    }

    /// Sets the current name in the file selector, as if entered
    /// by the user. Note that the name passed in here is a UTF-8
    /// string rather than a filename. This function is meant for
    /// such uses as a suggested name in a “Save As...” dialog.  You can
    /// pass “Untitled.doc” or a similarly suitable suggestion for the `name`.
    /// 
    /// If you want to preselect a particular existing file, you should use
    /// `gtk_file_chooser_set_filename()` or `gtk_file_chooser_set_uri()` instead.
    /// Please see the documentation for those functions for an example of using
    /// `gtk_file_chooser_set_current_name()` as well.
    func setCurrent(name: UnsafePointer<gchar>) {
        gtk_file_chooser_set_current_name(cast(file_chooser_ptr), name)
    
    }

    /// Sets whether a file chooser in `GTK_FILE_CHOOSER_ACTION_SAVE` mode will present
    /// a confirmation dialog if the user types a file name that already exists.  This
    /// is `false` by default.
    /// 
    /// If set to `true`, the `chooser` will emit the
    /// `GtkFileChooser::confirm`-overwrite signal when appropriate.
    /// 
    /// If all you need is the stock confirmation dialog, set this property to `true`.
    /// You can override the way confirmation is done by actually handling the
    /// `GtkFileChooser::confirm`-overwrite signal; please refer to its documentation
    /// for the details.
    func set(doOverwriteConfirmation do_overwrite_confirmation: Bool) {
        gtk_file_chooser_set_do_overwrite_confirmation(cast(file_chooser_ptr), gboolean(do_overwrite_confirmation ? 1 : 0))
    
    }

    /// Sets an application-supplied widget to provide extra options to the user.
    func set(extraWidget extra_widget: WidgetProtocol) {
        gtk_file_chooser_set_extra_widget(cast(file_chooser_ptr), cast(extra_widget.ptr))
    
    }

    /// Sets `file` as the current filename for the file chooser, by changing
    /// to the file’s parent folder and actually selecting the file in list.  If
    /// the `chooser` is in `GTK_FILE_CHOOSER_ACTION_SAVE` mode, the file’s base name
    /// will also appear in the dialog’s file name entry.
    /// 
    /// If the file name isn’t in the current folder of `chooser`, then the current
    /// folder of `chooser` will be changed to the folder containing `filename`. This
    /// is equivalent to a sequence of `gtk_file_chooser_unselect_all()` followed by
    /// `gtk_file_chooser_select_filename()`.
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
    /// (C Language Example):
    /// ```C
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
    /// ```
    /// 
    func set(file: FileProtocol) throws -> Bool {
        var error: Optional<UnsafeMutablePointer<GError>> = nil
        let rv = gtk_file_chooser_set_file(cast(file_chooser_ptr), cast(file.ptr), &error)
        if let error = error {
                throw ErrorType(error)
        }
        return Bool(rv != 0)
    }

    /// Sets `filename` as the current filename for the file chooser, by changing to
    /// the file’s parent folder and actually selecting the file in list; all other
    /// files will be unselected.  If the `chooser` is in
    /// `GTK_FILE_CHOOSER_ACTION_SAVE` mode, the file’s base name will also appear in
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
    /// (C Language Example):
    /// ```C
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
    /// ```
    /// 
    /// In the first case, the file chooser will present the user with useful suggestions
    /// as to where to save his new file.  In the second case, the file’s existing location
    /// is already known, so the file chooser will use it.
    func setFilename(String_: UnsafePointer<CChar>) -> Bool {
        let rv = gtk_file_chooser_set_filename(cast(file_chooser_ptr), String_)
        return Bool(rv != 0)
    }

    /// Sets the current filter; only the files that pass the
    /// filter will be displayed. If the user-selectable list of filters
    /// is non-empty, then the filter should be one of the filters
    /// in that list. Setting the current filter when the list of
    /// filters is empty is useful if you want to restrict the displayed
    /// set of files without letting the user change it.
    func set(filter: FileFilterProtocol) {
        gtk_file_chooser_set_filter(cast(file_chooser_ptr), cast(filter.ptr))
    
    }

    /// Sets whether only local files can be selected in the
    /// file selector. If `local_only` is `true` (the default),
    /// then the selected file or files are guaranteed to be
    /// accessible through the operating systems native file
    /// system and therefore the application only
    /// needs to worry about the filename functions in
    /// `GtkFileChooser`, like `gtk_file_chooser_get_filename()`,
    /// rather than the URI functions like
    /// `gtk_file_chooser_get_uri()`,
    /// 
    /// On some systems non-native files may still be
    /// available using the native filesystem via a userspace
    /// filesystem (FUSE).
    func set(localOnly local_only: Bool) {
        gtk_file_chooser_set_local_only(cast(file_chooser_ptr), gboolean(local_only ? 1 : 0))
    
    }

    /// Sets an application-supplied widget to use to display a custom preview
    /// of the currently selected file. To implement a preview, after setting the
    /// preview widget, you connect to the `GtkFileChooser::update`-preview
    /// signal, and call `gtk_file_chooser_get_preview_filename()` or
    /// `gtk_file_chooser_get_preview_uri()` on each change. If you can
    /// display a preview of the new file, update your widget and
    /// set the preview active using `gtk_file_chooser_set_preview_widget_active()`.
    /// Otherwise, set the preview inactive.
    /// 
    /// When there is no application-supplied preview widget, or the
    /// application-supplied preview widget is not active, the file chooser
    /// will display no preview at all.
    func set(previewWidget preview_widget: WidgetProtocol) {
        gtk_file_chooser_set_preview_widget(cast(file_chooser_ptr), cast(preview_widget.ptr))
    
    }

    /// Sets whether the preview widget set by
    /// `gtk_file_chooser_set_preview_widget()` should be shown for the
    /// current filename. When `active` is set to false, the file chooser
    /// may display an internally generated preview of the current file
    /// or it may display no preview at all. See
    /// `gtk_file_chooser_set_preview_widget()` for more details.
    func setPreviewWidget(active: Bool) {
        gtk_file_chooser_set_preview_widget_active(cast(file_chooser_ptr), gboolean(active ? 1 : 0))
    
    }

    /// Sets whether multiple files can be selected in the file selector.  This is
    /// only relevant if the action is set to be `GTK_FILE_CHOOSER_ACTION_OPEN` or
    /// `GTK_FILE_CHOOSER_ACTION_SELECT_FOLDER`.
    func set(selectMultiple select_multiple: Bool) {
        gtk_file_chooser_set_select_multiple(cast(file_chooser_ptr), gboolean(select_multiple ? 1 : 0))
    
    }

    /// Sets whether hidden files and folders are displayed in the file selector.
    func set(showHidden show_hidden: Bool) {
        gtk_file_chooser_set_show_hidden(cast(file_chooser_ptr), gboolean(show_hidden ? 1 : 0))
    
    }

    /// Sets the file referred to by `uri` as the current file for the file chooser,
    /// by changing to the URI’s parent folder and actually selecting the URI in the
    /// list.  If the `chooser` is `GTK_FILE_CHOOSER_ACTION_SAVE` mode, the URI’s base
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
    /// (C Language Example):
    /// ```C
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
    /// ```
    /// 
    /// 
    /// In the first case, the file chooser will present the user with useful suggestions
    /// as to where to save his new file.  In the second case, the file’s existing location
    /// is already known, so the file chooser will use it.
    func set(uri: UnsafePointer<CChar>) -> Bool {
        let rv = gtk_file_chooser_set_uri(cast(file_chooser_ptr), uri)
        return Bool(rv != 0)
    }

    /// Sets whether the file chooser should display a stock label with the name of
    /// the file that is being previewed; the default is `true`.  Applications that
    /// want to draw the whole preview area themselves should set this to `false` and
    /// display the name themselves in their preview widget.
    /// 
    /// See also: `gtk_file_chooser_set_preview_widget()`
    func setUsePreviewLabel(useLabel use_label: Bool) {
        gtk_file_chooser_set_use_preview_label(cast(file_chooser_ptr), gboolean(use_label ? 1 : 0))
    
    }

    /// Unselects all the files in the current folder of a file chooser.
    func unselectAll() {
        gtk_file_chooser_unselect_all(cast(file_chooser_ptr))
    
    }

    /// Unselects the file referred to by `file`. If the file is not in the current
    /// directory, does not exist, or is otherwise not currently selected, does nothing.
    func unselect(file: FileProtocol) {
        gtk_file_chooser_unselect_file(cast(file_chooser_ptr), cast(file.ptr))
    
    }

    /// Unselects a currently selected filename. If the filename
    /// is not in the current directory, does not exist, or
    /// is otherwise not currently selected, does nothing.
    func unselectFilename(String_: UnsafePointer<CChar>) {
        gtk_file_chooser_unselect_filename(cast(file_chooser_ptr), String_)
    
    }

    /// Unselects the file referred to by `uri`. If the file
    /// is not in the current directory, does not exist, or
    /// is otherwise not currently selected, does nothing.
    func unselect(uri: UnsafePointer<CChar>) {
        gtk_file_chooser_unselect_uri(cast(file_chooser_ptr), uri)
    
    }
    var action: GtkFileChooserAction {
        /// Gets the type of operation that the file chooser is performing; see
        /// `gtk_file_chooser_set_action()`.
        get {
            let rv = gtk_file_chooser_get_action(cast(file_chooser_ptr))
            return rv
        }
        /// Sets the type of operation that the chooser is performing; the
        /// user interface is adapted to suit the selected action. For example,
        /// an option to create a new folder might be shown if the action is
        /// `GTK_FILE_CHOOSER_ACTION_SAVE` but not if the action is
        /// `GTK_FILE_CHOOSER_ACTION_OPEN`.
        nonmutating set {
            gtk_file_chooser_set_action(cast(file_chooser_ptr), newValue)
        }
    }

    /// Gets whether file choser will offer to create new folders.
    /// See `gtk_file_chooser_set_create_folders()`.
    var createFolders: Bool {
        /// Gets whether file choser will offer to create new folders.
        /// See `gtk_file_chooser_set_create_folders()`.
        get {
            let rv = gtk_file_chooser_get_create_folders(cast(file_chooser_ptr))
            return Bool(rv != 0)
        }
        /// Sets whether file choser will offer to create new folders.
        /// This is only relevant if the action is not set to be
        /// `GTK_FILE_CHOOSER_ACTION_OPEN`.
        nonmutating set {
            gtk_file_chooser_set_create_folders(cast(file_chooser_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Gets the current folder of `chooser` as a local filename.
    /// See `gtk_file_chooser_set_current_folder()`.
    /// 
    /// Note that this is the folder that the file chooser is currently displaying
    /// (e.g. "/home/username/Documents"), which is not the same
    /// as the currently-selected folder if the chooser is in
    /// `GTK_FILE_CHOOSER_ACTION_SELECT_FOLDER` mode
    /// (e.g. "/home/username/Documents/selected-folder/".  To get the
    /// currently-selected folder in that mode, use `gtk_file_chooser_get_uri()` as the
    /// usual way to get the selection.
    var currentFolder: String! {
        /// Gets the current folder of `chooser` as a local filename.
        /// See `gtk_file_chooser_set_current_folder()`.
        /// 
        /// Note that this is the folder that the file chooser is currently displaying
        /// (e.g. "/home/username/Documents"), which is not the same
        /// as the currently-selected folder if the chooser is in
        /// `GTK_FILE_CHOOSER_ACTION_SELECT_FOLDER` mode
        /// (e.g. "/home/username/Documents/selected-folder/".  To get the
        /// currently-selected folder in that mode, use `gtk_file_chooser_get_uri()` as the
        /// usual way to get the selection.
        get {
            let rv = gtk_file_chooser_get_current_folder(cast(file_chooser_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
        /// Sets the current folder for `chooser` from a local filename.
        /// The user will be shown the full contents of the current folder,
        /// plus user interface elements for navigating to other folders.
        /// 
        /// In general, you should not use this function.  See the
        /// [section on setting up a file chooser dialog](#gtkfilechooserdialog-setting-up)
        /// for the rationale behind this.
        nonmutating set {
            let _ = gtk_file_chooser_set_current_folder(cast(file_chooser_ptr), newValue)
        }
    }

    /// Gets the current folder of `chooser` as `GFile`.
    /// See `gtk_file_chooser_get_current_folder_uri()`.
    var currentFolderFile: UnsafeMutablePointer<GFile>! {
        /// Gets the current folder of `chooser` as `GFile`.
        /// See `gtk_file_chooser_get_current_folder_uri()`.
        get {
            let rv = gtk_file_chooser_get_current_folder_file(cast(file_chooser_ptr))
            return cast(rv)
        }
    }

    /// Gets the current folder of `chooser` as an URI.
    /// See `gtk_file_chooser_set_current_folder_uri()`.
    /// 
    /// Note that this is the folder that the file chooser is currently displaying
    /// (e.g. "file:///home/username/Documents"), which is not the same
    /// as the currently-selected folder if the chooser is in
    /// `GTK_FILE_CHOOSER_ACTION_SELECT_FOLDER` mode
    /// (e.g. "file:///home/username/Documents/selected-folder/".  To get the
    /// currently-selected folder in that mode, use `gtk_file_chooser_get_uri()` as the
    /// usual way to get the selection.
    var currentFolderURI: String! {
        /// Gets the current folder of `chooser` as an URI.
        /// See `gtk_file_chooser_set_current_folder_uri()`.
        /// 
        /// Note that this is the folder that the file chooser is currently displaying
        /// (e.g. "file:///home/username/Documents"), which is not the same
        /// as the currently-selected folder if the chooser is in
        /// `GTK_FILE_CHOOSER_ACTION_SELECT_FOLDER` mode
        /// (e.g. "file:///home/username/Documents/selected-folder/".  To get the
        /// currently-selected folder in that mode, use `gtk_file_chooser_get_uri()` as the
        /// usual way to get the selection.
        get {
            let rv = gtk_file_chooser_get_current_folder_uri(cast(file_chooser_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
        /// Sets the current folder for `chooser` from an URI.
        /// The user will be shown the full contents of the current folder,
        /// plus user interface elements for navigating to other folders.
        /// 
        /// In general, you should not use this function.  See the
        /// [section on setting up a file chooser dialog](#gtkfilechooserdialog-setting-up)
        /// for the rationale behind this.
        nonmutating set {
            let _ = gtk_file_chooser_set_current_folder_uri(cast(file_chooser_ptr), newValue)
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
            let rv = gtk_file_chooser_get_current_name(cast(file_chooser_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
        /// Sets the current name in the file selector, as if entered
        /// by the user. Note that the name passed in here is a UTF-8
        /// string rather than a filename. This function is meant for
        /// such uses as a suggested name in a “Save As...” dialog.  You can
        /// pass “Untitled.doc” or a similarly suitable suggestion for the `name`.
        /// 
        /// If you want to preselect a particular existing file, you should use
        /// `gtk_file_chooser_set_filename()` or `gtk_file_chooser_set_uri()` instead.
        /// Please see the documentation for those functions for an example of using
        /// `gtk_file_chooser_set_current_name()` as well.
        nonmutating set {
            gtk_file_chooser_set_current_name(cast(file_chooser_ptr), newValue)
        }
    }

    /// Queries whether a file chooser is set to confirm for overwriting when the user
    /// types a file name that already exists.
    var doOverwriteConfirmation: Bool {
        /// Queries whether a file chooser is set to confirm for overwriting when the user
        /// types a file name that already exists.
        get {
            let rv = gtk_file_chooser_get_do_overwrite_confirmation(cast(file_chooser_ptr))
            return Bool(rv != 0)
        }
        /// Sets whether a file chooser in `GTK_FILE_CHOOSER_ACTION_SAVE` mode will present
        /// a confirmation dialog if the user types a file name that already exists.  This
        /// is `false` by default.
        /// 
        /// If set to `true`, the `chooser` will emit the
        /// `GtkFileChooser::confirm`-overwrite signal when appropriate.
        /// 
        /// If all you need is the stock confirmation dialog, set this property to `true`.
        /// You can override the way confirmation is done by actually handling the
        /// `GtkFileChooser::confirm`-overwrite signal; please refer to its documentation
        /// for the details.
        nonmutating set {
            gtk_file_chooser_set_do_overwrite_confirmation(cast(file_chooser_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Gets the current extra widget; see
    /// `gtk_file_chooser_set_extra_widget()`.
    var extraWidget: UnsafeMutablePointer<GtkWidget>! {
        /// Gets the current extra widget; see
        /// `gtk_file_chooser_set_extra_widget()`.
        get {
            let rv = gtk_file_chooser_get_extra_widget(cast(file_chooser_ptr))
            return cast(rv)
        }
        /// Sets an application-supplied widget to provide extra options to the user.
        nonmutating set {
            gtk_file_chooser_set_extra_widget(cast(file_chooser_ptr), cast(newValue))
        }
    }

    /// Gets the `GFile` for the currently selected file in
    /// the file selector. If multiple files are selected,
    /// one of the files will be returned at random.
    /// 
    /// If the file chooser is in folder mode, this function returns the selected
    /// folder.
    var file: UnsafeMutablePointer<GFile>! {
        /// Gets the `GFile` for the currently selected file in
        /// the file selector. If multiple files are selected,
        /// one of the files will be returned at random.
        /// 
        /// If the file chooser is in folder mode, this function returns the selected
        /// folder.
        get {
            let rv = gtk_file_chooser_get_file(cast(file_chooser_ptr))
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
            let rv = gtk_file_chooser_get_filename(cast(file_chooser_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
        /// Sets `filename` as the current filename for the file chooser, by changing to
        /// the file’s parent folder and actually selecting the file in list; all other
        /// files will be unselected.  If the `chooser` is in
        /// `GTK_FILE_CHOOSER_ACTION_SAVE` mode, the file’s base name will also appear in
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
        /// (C Language Example):
        /// ```C
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
        /// ```
        /// 
        /// In the first case, the file chooser will present the user with useful suggestions
        /// as to where to save his new file.  In the second case, the file’s existing location
        /// is already known, so the file chooser will use it.
        nonmutating set {
            let _ = gtk_file_chooser_set_filename(cast(file_chooser_ptr), newValue)
        }
    }

    /// Lists all the selected files and subfolders in the current folder of
    /// `chooser`. The returned names are full absolute paths. If files in the current
    /// folder cannot be represented as local filenames they will be ignored. (See
    /// `gtk_file_chooser_get_uris()`)
    var filenames: SListRef! {
        /// Lists all the selected files and subfolders in the current folder of
        /// `chooser`. The returned names are full absolute paths. If files in the current
        /// folder cannot be represented as local filenames they will be ignored. (See
        /// `gtk_file_chooser_get_uris()`)
        get {
            let rv = gtk_file_chooser_get_filenames(cast(file_chooser_ptr))
            return cast(rv.map { SListRef($0) })
        }
    }

    /// Lists all the selected files and subfolders in the current folder of `chooser`
    /// as `GFile`. An internal function, see `gtk_file_chooser_get_uris()`.
    var files: SListRef! {
        /// Lists all the selected files and subfolders in the current folder of `chooser`
        /// as `GFile`. An internal function, see `gtk_file_chooser_get_uris()`.
        get {
            let rv = gtk_file_chooser_get_files(cast(file_chooser_ptr))
            return cast(rv.map { SListRef($0) })
        }
    }

    var filter: UnsafeMutablePointer<GtkFileFilter>! {
        /// Gets the current filter; see `gtk_file_chooser_set_filter()`.
        get {
            let rv = gtk_file_chooser_get_filter(cast(file_chooser_ptr))
            return cast(rv)
        }
        /// Sets the current filter; only the files that pass the
        /// filter will be displayed. If the user-selectable list of filters
        /// is non-empty, then the filter should be one of the filters
        /// in that list. Setting the current filter when the list of
        /// filters is empty is useful if you want to restrict the displayed
        /// set of files without letting the user change it.
        nonmutating set {
            gtk_file_chooser_set_filter(cast(file_chooser_ptr), cast(newValue))
        }
    }

    /// Gets whether only local files can be selected in the
    /// file selector. See `gtk_file_chooser_set_local_only()`
    var localOnly: Bool {
        /// Gets whether only local files can be selected in the
        /// file selector. See `gtk_file_chooser_set_local_only()`
        get {
            let rv = gtk_file_chooser_get_local_only(cast(file_chooser_ptr))
            return Bool(rv != 0)
        }
        /// Sets whether only local files can be selected in the
        /// file selector. If `local_only` is `true` (the default),
        /// then the selected file or files are guaranteed to be
        /// accessible through the operating systems native file
        /// system and therefore the application only
        /// needs to worry about the filename functions in
        /// `GtkFileChooser`, like `gtk_file_chooser_get_filename()`,
        /// rather than the URI functions like
        /// `gtk_file_chooser_get_uri()`,
        /// 
        /// On some systems non-native files may still be
        /// available using the native filesystem via a userspace
        /// filesystem (FUSE).
        nonmutating set {
            gtk_file_chooser_set_local_only(cast(file_chooser_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Gets the `GFile` that should be previewed in a custom preview
    /// Internal function, see `gtk_file_chooser_get_preview_uri()`.
    var previewFile: UnsafeMutablePointer<GFile>! {
        /// Gets the `GFile` that should be previewed in a custom preview
        /// Internal function, see `gtk_file_chooser_get_preview_uri()`.
        get {
            let rv = gtk_file_chooser_get_preview_file(cast(file_chooser_ptr))
            return cast(rv)
        }
    }

    /// Gets the filename that should be previewed in a custom preview
    /// widget. See `gtk_file_chooser_set_preview_widget()`.
    var previewFilename: String! {
        /// Gets the filename that should be previewed in a custom preview
        /// widget. See `gtk_file_chooser_set_preview_widget()`.
        get {
            let rv = gtk_file_chooser_get_preview_filename(cast(file_chooser_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }

    /// Gets the URI that should be previewed in a custom preview
    /// widget. See `gtk_file_chooser_set_preview_widget()`.
    var previewURI: String! {
        /// Gets the URI that should be previewed in a custom preview
        /// widget. See `gtk_file_chooser_set_preview_widget()`.
        get {
            let rv = gtk_file_chooser_get_preview_uri(cast(file_chooser_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }

    /// Gets the current preview widget; see
    /// `gtk_file_chooser_set_preview_widget()`.
    var previewWidget: UnsafeMutablePointer<GtkWidget>! {
        /// Gets the current preview widget; see
        /// `gtk_file_chooser_set_preview_widget()`.
        get {
            let rv = gtk_file_chooser_get_preview_widget(cast(file_chooser_ptr))
            return cast(rv)
        }
        /// Sets an application-supplied widget to use to display a custom preview
        /// of the currently selected file. To implement a preview, after setting the
        /// preview widget, you connect to the `GtkFileChooser::update`-preview
        /// signal, and call `gtk_file_chooser_get_preview_filename()` or
        /// `gtk_file_chooser_get_preview_uri()` on each change. If you can
        /// display a preview of the new file, update your widget and
        /// set the preview active using `gtk_file_chooser_set_preview_widget_active()`.
        /// Otherwise, set the preview inactive.
        /// 
        /// When there is no application-supplied preview widget, or the
        /// application-supplied preview widget is not active, the file chooser
        /// will display no preview at all.
        nonmutating set {
            gtk_file_chooser_set_preview_widget(cast(file_chooser_ptr), cast(newValue))
        }
    }

    /// Gets whether the preview widget set by `gtk_file_chooser_set_preview_widget()`
    /// should be shown for the current filename. See
    /// `gtk_file_chooser_set_preview_widget_active()`.
    var previewWidgetActive: Bool {
        /// Gets whether the preview widget set by `gtk_file_chooser_set_preview_widget()`
        /// should be shown for the current filename. See
        /// `gtk_file_chooser_set_preview_widget_active()`.
        get {
            let rv = gtk_file_chooser_get_preview_widget_active(cast(file_chooser_ptr))
            return Bool(rv != 0)
        }
        /// Sets whether the preview widget set by
        /// `gtk_file_chooser_set_preview_widget()` should be shown for the
        /// current filename. When `active` is set to false, the file chooser
        /// may display an internally generated preview of the current file
        /// or it may display no preview at all. See
        /// `gtk_file_chooser_set_preview_widget()` for more details.
        nonmutating set {
            gtk_file_chooser_set_preview_widget_active(cast(file_chooser_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Gets whether multiple files can be selected in the file
    /// selector. See `gtk_file_chooser_set_select_multiple()`.
    var selectMultiple: Bool {
        /// Gets whether multiple files can be selected in the file
        /// selector. See `gtk_file_chooser_set_select_multiple()`.
        get {
            let rv = gtk_file_chooser_get_select_multiple(cast(file_chooser_ptr))
            return Bool(rv != 0)
        }
        /// Sets whether multiple files can be selected in the file selector.  This is
        /// only relevant if the action is set to be `GTK_FILE_CHOOSER_ACTION_OPEN` or
        /// `GTK_FILE_CHOOSER_ACTION_SELECT_FOLDER`.
        nonmutating set {
            gtk_file_chooser_set_select_multiple(cast(file_chooser_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Gets whether hidden files and folders are displayed in the file selector.
    /// See `gtk_file_chooser_set_show_hidden()`.
    var showHidden: Bool {
        /// Gets whether hidden files and folders are displayed in the file selector.
        /// See `gtk_file_chooser_set_show_hidden()`.
        get {
            let rv = gtk_file_chooser_get_show_hidden(cast(file_chooser_ptr))
            return Bool(rv != 0)
        }
        /// Sets whether hidden files and folders are displayed in the file selector.
        nonmutating set {
            gtk_file_chooser_set_show_hidden(cast(file_chooser_ptr), gboolean(newValue ? 1 : 0))
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
            let rv = gtk_file_chooser_get_uri(cast(file_chooser_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
        /// Sets the file referred to by `uri` as the current file for the file chooser,
        /// by changing to the URI’s parent folder and actually selecting the URI in the
        /// list.  If the `chooser` is `GTK_FILE_CHOOSER_ACTION_SAVE` mode, the URI’s base
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
        /// (C Language Example):
        /// ```C
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
        /// ```
        /// 
        /// 
        /// In the first case, the file chooser will present the user with useful suggestions
        /// as to where to save his new file.  In the second case, the file’s existing location
        /// is already known, so the file chooser will use it.
        nonmutating set {
            let _ = gtk_file_chooser_set_uri(cast(file_chooser_ptr), newValue)
        }
    }

    /// Lists all the selected files and subfolders in the current folder of
    /// `chooser`. The returned names are full absolute URIs.
    var uris: SListRef! {
        /// Lists all the selected files and subfolders in the current folder of
        /// `chooser`. The returned names are full absolute URIs.
        get {
            let rv = gtk_file_chooser_get_uris(cast(file_chooser_ptr))
            return cast(rv.map { SListRef($0) })
        }
    }

    /// Gets whether a stock label should be drawn with the name of the previewed
    /// file.  See `gtk_file_chooser_set_use_preview_label()`.
    var usePreviewLabel: Bool {
        /// Gets whether a stock label should be drawn with the name of the previewed
        /// file.  See `gtk_file_chooser_set_use_preview_label()`.
        get {
            let rv = gtk_file_chooser_get_use_preview_label(cast(file_chooser_ptr))
            return Bool(rv != 0)
        }
        /// Sets whether the file chooser should display a stock label with the name of
        /// the file that is being previewed; the default is `true`.  Applications that
        /// want to draw the whole preview area themselves should set this to `false` and
        /// display the name themselves in their preview widget.
        /// 
        /// See also: `gtk_file_chooser_set_preview_widget()`
        nonmutating set {
            gtk_file_chooser_set_use_preview_label(cast(file_chooser_ptr), gboolean(newValue ? 1 : 0))
        }
    }
}



// MARK: - FontChooser Interface

/// The `FontChooserProtocol` protocol exposes the methods and properties of an underlying `GtkFontChooser` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FontChooser`.
/// Alternatively, use `FontChooserRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkFontChooser` is an interface that can be implemented by widgets
/// displaying the list of fonts. In GTK+, the main objects
/// that implement this interface are `GtkFontChooserWidget`,
/// `GtkFontChooserDialog` and `GtkFontButton`. The GtkFontChooser interface
/// has been introducted in GTK+ 3.2.
public protocol FontChooserProtocol {
    /// Untyped pointer to the underlying `GtkFontChooser` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkFontChooser` instance.
    var font_chooser_ptr: UnsafeMutablePointer<GtkFontChooser> { get }
}

/// The `FontChooserRef` type acts as a lightweight Swift reference to an underlying `GtkFontChooser` instance.
/// It exposes methods that can operate on this data type through `FontChooserProtocol` conformance.
/// Use `FontChooserRef` only as an `unowned` reference to an existing `GtkFontChooser` instance.
///
/// `GtkFontChooser` is an interface that can be implemented by widgets
/// displaying the list of fonts. In GTK+, the main objects
/// that implement this interface are `GtkFontChooserWidget`,
/// `GtkFontChooserDialog` and `GtkFontButton`. The GtkFontChooser interface
/// has been introducted in GTK+ 3.2.
public struct FontChooserRef: FontChooserProtocol {
    /// Untyped pointer to the underlying `GtkFontChooser` instance.
    /// For type-safe access, use the generated, typed pointer `font_chooser_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension FontChooserRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkFontChooser>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FontChooserProtocol`
    init<T: FontChooserProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FontChooser` type acts as an owner of an underlying `GtkFontChooser` instance.
/// It provides the methods that can operate on this data type through `FontChooserProtocol` conformance.
/// Use `FontChooser` as a strong reference or owner of a `GtkFontChooser` instance.
///
/// `GtkFontChooser` is an interface that can be implemented by widgets
/// displaying the list of fonts. In GTK+, the main objects
/// that implement this interface are `GtkFontChooserWidget`,
/// `GtkFontChooserDialog` and `GtkFontButton`. The GtkFontChooser interface
/// has been introducted in GTK+ 3.2.
open class FontChooser: FontChooserProtocol {
    /// Untyped pointer to the underlying `GtkFontChooser` instance.
    /// For type-safe access, use the generated, typed pointer `font_chooser_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `FontChooser` instance.
    public init(_ op: UnsafeMutablePointer<GtkFontChooser>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `FontChooserProtocol`
    /// `GtkFontChooser` does not allow reference counting.
    public convenience init<T: FontChooserProtocol>(_ other: T) {
        self.init(cast(other.font_chooser_ptr))
        // no reference counting for GtkFontChooser, cannot ref(cast(font_chooser_ptr))
    }

    /// Do-nothing destructor for`GtkFontChooser`.
    deinit {
        // no reference counting for GtkFontChooser, cannot unref(cast(font_chooser_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkFontChooser.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkFontChooser.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkFontChooser.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkFontChooser>(opaquePointer))
    }



}

public enum FontChooserPropertyName: String, PropertyNameProtocol {
    /// The font description as a string, e.g. "Sans Italic 12".
    case font = "font"
    /// The font description as a `PangoFontDescription`.
    case fontDesc = "font-desc"
    /// The selected font features, in a format that is compatible with
    /// CSS and with Pango attributes.
    case fontFeatures = "font-features"
    /// The language for which the `GtkFontChooser:font`-features were
    /// selected, in a format that is compatible with CSS and with Pango
    /// attributes.
    case language = "language"
    /// The level of granularity to offer for selecting fonts.
    case level = "level"
    /// The string with which to preview the font.
    case previewText = "preview-text"
    /// Whether to show an entry to change the preview text.
    case showPreviewEntry = "show-preview-entry"
}

public extension FontChooserProtocol {
    /// Bind a `FontChooserPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: FontChooserPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(font_chooser_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef(cast($0)) }
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
}

public enum FontChooserSignalName: String, SignalNameProtocol {
    /// Emitted when a font is activated.
    /// This usually happens when the user double clicks an item,
    /// or an item is selected and the user presses one of the keys
    /// Space, Shift+Space, Return or Enter.
    case fontActivated = "font-activated"
    /// The font description as a string, e.g. "Sans Italic 12".
    case notifyFont = "notify::font"
    /// The font description as a `PangoFontDescription`.
    case notifyFontDesc = "notify::font-desc"
    /// The selected font features, in a format that is compatible with
    /// CSS and with Pango attributes.
    case notifyFontFeatures = "notify::font-features"
    /// The language for which the `GtkFontChooser:font`-features were
    /// selected, in a format that is compatible with CSS and with Pango
    /// attributes.
    case notifyLanguage = "notify::language"
    /// The level of granularity to offer for selecting fonts.
    case notifyLevel = "notify::level"
    /// The string with which to preview the font.
    case notifyPreviewText = "notify::preview-text"
    /// Whether to show an entry to change the preview text.
    case notifyShowPreviewEntry = "notify::show-preview-entry"
}

public extension FontChooserProtocol {
    /// Connect a `FontChooserSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: FontChooserSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(font_chooser_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

public extension FontChooserProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFontChooser` instance.
    var font_chooser_ptr: UnsafeMutablePointer<GtkFontChooser> { return ptr.assumingMemoryBound(to: GtkFontChooser.self) }

    /// Gets the currently-selected font name.
    /// 
    /// Note that this can be a different string than what you set with
    /// `gtk_font_chooser_set_font()`, as the font chooser widget may
    /// normalize font names and thus return a string with a different
    /// structure. For example, “Helvetica Italic Bold 12” could be
    /// normalized to “Helvetica Bold Italic 12”.
    /// 
    /// Use `pango_font_description_equal()` if you want to compare two
    /// font descriptions.
    func getFont() -> String! {
        let rv = gtk_font_chooser_get_font(cast(font_chooser_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets the currently-selected font.
    /// 
    /// Note that this can be a different string than what you set with
    /// `gtk_font_chooser_set_font()`, as the font chooser widget may
    /// normalize font names and thus return a string with a different
    /// structure. For example, “Helvetica Italic Bold 12” could be
    /// normalized to “Helvetica Bold Italic 12”.
    /// 
    /// Use `pango_font_description_equal()` if you want to compare two
    /// font descriptions.
    func getFontDesc() -> UnsafeMutablePointer<PangoFontDescription>! {
        let rv = gtk_font_chooser_get_font_desc(cast(font_chooser_ptr))
        return cast(rv)
    }

    /// Gets the `PangoFontFace` representing the selected font group
    /// details (i.e. family, slant, weight, width, etc).
    /// 
    /// If the selected font is not installed, returns `nil`.
    func getFontFace() -> UnsafeMutablePointer<PangoFontFace>! {
        let rv = gtk_font_chooser_get_font_face(cast(font_chooser_ptr))
        return cast(rv)
    }

    /// Gets the `PangoFontFamily` representing the selected font family.
    /// Font families are a collection of font faces.
    /// 
    /// If the selected font is not installed, returns `nil`.
    func getFontFamily() -> UnsafeMutablePointer<PangoFontFamily>! {
        let rv = gtk_font_chooser_get_font_family(cast(font_chooser_ptr))
        return cast(rv)
    }

    /// Gets the currently-selected font features.
    func getFontFeatures() -> String! {
        let rv = gtk_font_chooser_get_font_features(cast(font_chooser_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets the custom font map of this font chooser widget,
    /// or `nil` if it does not have one.
    func getFontMap() -> UnsafeMutablePointer<PangoFontMap>! {
        let rv = gtk_font_chooser_get_font_map(cast(font_chooser_ptr))
        return cast(rv)
    }

    /// The selected font size.
    func getFontSize() -> CInt {
        let rv = gtk_font_chooser_get_font_size(cast(font_chooser_ptr))
        return CInt(rv)
    }

    /// Gets the language that is used for font features.
    func getLanguage() -> String! {
        let rv = gtk_font_chooser_get_language(cast(font_chooser_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Returns the current level of granularity for selecting fonts.
    func getLevel() -> GtkFontChooserLevel {
        let rv = gtk_font_chooser_get_level(cast(font_chooser_ptr))
        return rv
    }

    /// Gets the text displayed in the preview area.
    func getPreviewText() -> String! {
        let rv = gtk_font_chooser_get_preview_text(cast(font_chooser_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Returns whether the preview entry is shown or not.
    func getShowPreviewEntry() -> Bool {
        let rv = gtk_font_chooser_get_show_preview_entry(cast(font_chooser_ptr))
        return Bool(rv != 0)
    }

    /// Adds a filter function that decides which fonts to display
    /// in the font chooser.
    func setFilterFunc(filter: @escaping FontFilterFunc, userData user_data: UnsafeMutableRawPointer, destroy: @escaping GLib.DestroyNotify) {
        gtk_font_chooser_set_filter_func(cast(font_chooser_ptr), filter, cast(user_data), destroy)
    
    }

    /// Sets the currently-selected font.
    func setFont(fontname: UnsafePointer<gchar>) {
        gtk_font_chooser_set_font(cast(font_chooser_ptr), fontname)
    
    }

    /// Sets the currently-selected font from `font_desc`.
    func set(fontDesc font_desc: FontDescriptionProtocol) {
        gtk_font_chooser_set_font_desc(cast(font_chooser_ptr), cast(font_desc.ptr))
    
    }

    /// Sets a custom font map to use for this font chooser widget.
    /// A custom font map can be used to present application-specific
    /// fonts instead of or in addition to the normal system fonts.
    /// 
    /// (C Language Example):
    /// ```C
    /// FcConfig *config;
    /// PangoFontMap *fontmap;
    /// 
    /// config = FcInitLoadConfigAndFonts ();
    /// FcConfigAppFontAddFile (config, my_app_font_file);
    /// 
    /// fontmap = pango_cairo_font_map_new_for_font_type (CAIRO_FONT_TYPE_FT);
    /// pango_fc_font_map_set_config (PANGO_FC_FONT_MAP (fontmap), config);
    /// 
    /// gtk_font_chooser_set_font_map (font_chooser, fontmap);
    /// ```
    /// 
    /// Note that other GTK+ widgets will only be able to use the application-specific
    /// font if it is present in the font map they use:
    /// 
    /// ```
    /// context = gtk_widget_get_pango_context (label);
    /// pango_context_set_font_map (context, fontmap);
    /// ```
    /// 
    func setFontMap(fontmap: Pango.FontMapProtocol) {
        gtk_font_chooser_set_font_map(cast(font_chooser_ptr), cast(fontmap.ptr))
    
    }

    /// Sets the language to use for font features.
    func set(language: UnsafePointer<CChar>) {
        gtk_font_chooser_set_language(cast(font_chooser_ptr), language)
    
    }

    /// Sets the desired level of granularity for selecting fonts.
    func set(level: FontChooserLevel) {
        gtk_font_chooser_set_level(cast(font_chooser_ptr), level)
    
    }

    /// Sets the text displayed in the preview area.
    /// The `text` is used to show how the selected font looks.
    func setPreview(text: UnsafePointer<gchar>) {
        gtk_font_chooser_set_preview_text(cast(font_chooser_ptr), text)
    
    }

    /// Shows or hides the editable preview entry.
    func set(showPreviewEntry show_preview_entry: Bool) {
        gtk_font_chooser_set_show_preview_entry(cast(font_chooser_ptr), gboolean(show_preview_entry ? 1 : 0))
    
    }
    /// The font description as a string, e.g. "Sans Italic 12".
    var font: String! {
        /// Gets the currently-selected font name.
        /// 
        /// Note that this can be a different string than what you set with
        /// `gtk_font_chooser_set_font()`, as the font chooser widget may
        /// normalize font names and thus return a string with a different
        /// structure. For example, “Helvetica Italic Bold 12” could be
        /// normalized to “Helvetica Bold Italic 12”.
        /// 
        /// Use `pango_font_description_equal()` if you want to compare two
        /// font descriptions.
        get {
            let rv = gtk_font_chooser_get_font(cast(font_chooser_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
        /// Sets the currently-selected font.
        nonmutating set {
            gtk_font_chooser_set_font(cast(font_chooser_ptr), newValue)
        }
    }

    /// Gets the currently-selected font.
    /// 
    /// Note that this can be a different string than what you set with
    /// `gtk_font_chooser_set_font()`, as the font chooser widget may
    /// normalize font names and thus return a string with a different
    /// structure. For example, “Helvetica Italic Bold 12” could be
    /// normalized to “Helvetica Bold Italic 12”.
    /// 
    /// Use `pango_font_description_equal()` if you want to compare two
    /// font descriptions.
    var fontDesc: UnsafeMutablePointer<PangoFontDescription>! {
        /// Gets the currently-selected font.
        /// 
        /// Note that this can be a different string than what you set with
        /// `gtk_font_chooser_set_font()`, as the font chooser widget may
        /// normalize font names and thus return a string with a different
        /// structure. For example, “Helvetica Italic Bold 12” could be
        /// normalized to “Helvetica Bold Italic 12”.
        /// 
        /// Use `pango_font_description_equal()` if you want to compare two
        /// font descriptions.
        get {
            let rv = gtk_font_chooser_get_font_desc(cast(font_chooser_ptr))
            return cast(rv)
        }
        /// Sets the currently-selected font from `font_desc`.
        nonmutating set {
            gtk_font_chooser_set_font_desc(cast(font_chooser_ptr), cast(newValue))
        }
    }

    /// Gets the `PangoFontFace` representing the selected font group
    /// details (i.e. family, slant, weight, width, etc).
    /// 
    /// If the selected font is not installed, returns `nil`.
    var fontFace: UnsafeMutablePointer<PangoFontFace>! {
        /// Gets the `PangoFontFace` representing the selected font group
        /// details (i.e. family, slant, weight, width, etc).
        /// 
        /// If the selected font is not installed, returns `nil`.
        get {
            let rv = gtk_font_chooser_get_font_face(cast(font_chooser_ptr))
            return cast(rv)
        }
    }

    /// Gets the `PangoFontFamily` representing the selected font family.
    /// Font families are a collection of font faces.
    /// 
    /// If the selected font is not installed, returns `nil`.
    var fontFamily: UnsafeMutablePointer<PangoFontFamily>! {
        /// Gets the `PangoFontFamily` representing the selected font family.
        /// Font families are a collection of font faces.
        /// 
        /// If the selected font is not installed, returns `nil`.
        get {
            let rv = gtk_font_chooser_get_font_family(cast(font_chooser_ptr))
            return cast(rv)
        }
    }

    /// Gets the currently-selected font features.
    var fontFeatures: String! {
        /// Gets the currently-selected font features.
        get {
            let rv = gtk_font_chooser_get_font_features(cast(font_chooser_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }

    /// Gets the custom font map of this font chooser widget,
    /// or `nil` if it does not have one.
    var fontMap: UnsafeMutablePointer<PangoFontMap>! {
        /// Gets the custom font map of this font chooser widget,
        /// or `nil` if it does not have one.
        get {
            let rv = gtk_font_chooser_get_font_map(cast(font_chooser_ptr))
            return cast(rv)
        }
        /// Sets a custom font map to use for this font chooser widget.
        /// A custom font map can be used to present application-specific
        /// fonts instead of or in addition to the normal system fonts.
        /// 
        /// (C Language Example):
        /// ```C
        /// FcConfig *config;
        /// PangoFontMap *fontmap;
        /// 
        /// config = FcInitLoadConfigAndFonts ();
        /// FcConfigAppFontAddFile (config, my_app_font_file);
        /// 
        /// fontmap = pango_cairo_font_map_new_for_font_type (CAIRO_FONT_TYPE_FT);
        /// pango_fc_font_map_set_config (PANGO_FC_FONT_MAP (fontmap), config);
        /// 
        /// gtk_font_chooser_set_font_map (font_chooser, fontmap);
        /// ```
        /// 
        /// Note that other GTK+ widgets will only be able to use the application-specific
        /// font if it is present in the font map they use:
        /// 
        /// ```
        /// context = gtk_widget_get_pango_context (label);
        /// pango_context_set_font_map (context, fontmap);
        /// ```
        /// 
        nonmutating set {
            gtk_font_chooser_set_font_map(cast(font_chooser_ptr), cast(newValue))
        }
    }

    /// The selected font size.
    var fontSize: CInt {
        /// The selected font size.
        get {
            let rv = gtk_font_chooser_get_font_size(cast(font_chooser_ptr))
            return CInt(rv)
        }
    }

    /// The language for which the `GtkFontChooser:font`-features were
    /// selected, in a format that is compatible with CSS and with Pango
    /// attributes.
    var language: String! {
        /// Gets the language that is used for font features.
        get {
            let rv = gtk_font_chooser_get_language(cast(font_chooser_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
        /// Sets the language to use for font features.
        nonmutating set {
            gtk_font_chooser_set_language(cast(font_chooser_ptr), newValue)
        }
    }

    /// The level of granularity to offer for selecting fonts.
    var level: GtkFontChooserLevel {
        /// Returns the current level of granularity for selecting fonts.
        get {
            let rv = gtk_font_chooser_get_level(cast(font_chooser_ptr))
            return rv
        }
        /// Sets the desired level of granularity for selecting fonts.
        nonmutating set {
            gtk_font_chooser_set_level(cast(font_chooser_ptr), newValue)
        }
    }

    /// Gets the text displayed in the preview area.
    var previewText: String! {
        /// Gets the text displayed in the preview area.
        get {
            let rv = gtk_font_chooser_get_preview_text(cast(font_chooser_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
        /// Sets the text displayed in the preview area.
        /// The `text` is used to show how the selected font looks.
        nonmutating set {
            gtk_font_chooser_set_preview_text(cast(font_chooser_ptr), newValue)
        }
    }

    /// Returns whether the preview entry is shown or not.
    var showPreviewEntry: Bool {
        /// Returns whether the preview entry is shown or not.
        get {
            let rv = gtk_font_chooser_get_show_preview_entry(cast(font_chooser_ptr))
            return Bool(rv != 0)
        }
        /// Shows or hides the editable preview entry.
        nonmutating set {
            gtk_font_chooser_set_show_preview_entry(cast(font_chooser_ptr), gboolean(newValue ? 1 : 0))
        }
    }
}



// MARK: - Orientable Interface

/// The `OrientableProtocol` protocol exposes the methods and properties of an underlying `GtkOrientable` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Orientable`.
/// Alternatively, use `OrientableRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GtkOrientable` interface is implemented by all widgets that can be
/// oriented horizontally or vertically. Historically, such widgets have been
/// realized as subclasses of a common base class (e.g `GtkBox`/`GtkHBox`/`GtkVBox`
/// or `GtkScale`/`GtkHScale`/`GtkVScale`). `GtkOrientable` is more flexible in that
/// it allows the orientation to be changed at runtime, allowing the widgets
/// to “flip”.
/// 
/// `GtkOrientable` was introduced in GTK+ 2.16.
public protocol OrientableProtocol {
    /// Untyped pointer to the underlying `GtkOrientable` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkOrientable` instance.
    var orientable_ptr: UnsafeMutablePointer<GtkOrientable> { get }
}

/// The `OrientableRef` type acts as a lightweight Swift reference to an underlying `GtkOrientable` instance.
/// It exposes methods that can operate on this data type through `OrientableProtocol` conformance.
/// Use `OrientableRef` only as an `unowned` reference to an existing `GtkOrientable` instance.
///
/// The `GtkOrientable` interface is implemented by all widgets that can be
/// oriented horizontally or vertically. Historically, such widgets have been
/// realized as subclasses of a common base class (e.g `GtkBox`/`GtkHBox`/`GtkVBox`
/// or `GtkScale`/`GtkHScale`/`GtkVScale`). `GtkOrientable` is more flexible in that
/// it allows the orientation to be changed at runtime, allowing the widgets
/// to “flip”.
/// 
/// `GtkOrientable` was introduced in GTK+ 2.16.
public struct OrientableRef: OrientableProtocol {
    /// Untyped pointer to the underlying `GtkOrientable` instance.
    /// For type-safe access, use the generated, typed pointer `orientable_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension OrientableRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkOrientable>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `OrientableProtocol`
    init<T: OrientableProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OrientableProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OrientableProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OrientableProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OrientableProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OrientableProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Orientable` type acts as an owner of an underlying `GtkOrientable` instance.
/// It provides the methods that can operate on this data type through `OrientableProtocol` conformance.
/// Use `Orientable` as a strong reference or owner of a `GtkOrientable` instance.
///
/// The `GtkOrientable` interface is implemented by all widgets that can be
/// oriented horizontally or vertically. Historically, such widgets have been
/// realized as subclasses of a common base class (e.g `GtkBox`/`GtkHBox`/`GtkVBox`
/// or `GtkScale`/`GtkHScale`/`GtkVScale`). `GtkOrientable` is more flexible in that
/// it allows the orientation to be changed at runtime, allowing the widgets
/// to “flip”.
/// 
/// `GtkOrientable` was introduced in GTK+ 2.16.
open class Orientable: OrientableProtocol {
    /// Untyped pointer to the underlying `GtkOrientable` instance.
    /// For type-safe access, use the generated, typed pointer `orientable_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `Orientable` instance.
    public init(_ op: UnsafeMutablePointer<GtkOrientable>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `OrientableProtocol`
    /// `GtkOrientable` does not allow reference counting.
    public convenience init<T: OrientableProtocol>(_ other: T) {
        self.init(cast(other.orientable_ptr))
        // no reference counting for GtkOrientable, cannot ref(cast(orientable_ptr))
    }

    /// Do-nothing destructor for`GtkOrientable`.
    deinit {
        // no reference counting for GtkOrientable, cannot unref(cast(orientable_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OrientableProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkOrientable.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OrientableProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkOrientable.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OrientableProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkOrientable.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `OrientableProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkOrientable>(opaquePointer))
    }



}

public enum OrientablePropertyName: String, PropertyNameProtocol {
    /// The orientation of the orientable.
    case orientation = "orientation"
}

public extension OrientableProtocol {
    /// Bind a `OrientablePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: OrientablePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(orientable_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef(cast($0)) }
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
}

public enum OrientableSignalName: String, SignalNameProtocol {

    /// The orientation of the orientable.
    case notifyOrientation = "notify::orientation"
}

public extension OrientableProtocol {
    /// Connect a `OrientableSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: OrientableSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(orientable_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

public extension OrientableProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkOrientable` instance.
    var orientable_ptr: UnsafeMutablePointer<GtkOrientable> { return ptr.assumingMemoryBound(to: GtkOrientable.self) }

    /// Retrieves the orientation of the `orientable`.
    func getOrientation() -> GtkOrientation {
        let rv = gtk_orientable_get_orientation(cast(orientable_ptr))
        return rv
    }

    /// Sets the orientation of the `orientable`.
    func set(orientation: Orientation) {
        gtk_orientable_set_orientation(cast(orientable_ptr), orientation)
    
    }
    /// The orientation of the orientable.
    var orientation: GtkOrientation {
        /// Retrieves the orientation of the `orientable`.
        get {
            let rv = gtk_orientable_get_orientation(cast(orientable_ptr))
            return rv
        }
        /// Sets the orientation of the `orientable`.
        nonmutating set {
            gtk_orientable_set_orientation(cast(orientable_ptr), newValue)
        }
    }
}



