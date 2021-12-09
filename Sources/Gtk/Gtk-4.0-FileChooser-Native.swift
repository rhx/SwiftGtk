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

// MARK: - FileChooser Interface

/// `GtkFileChooser` is an interface that can be implemented by file
/// selection widgets.
/// 
/// In GTK, the main objects that implement this interface are
/// [class`Gtk.FileChooserWidget`] and [class`Gtk.FileChooserDialog`].
/// 
/// You do not need to write an object that implements the `GtkFileChooser`
/// interface unless you are trying to adapt an existing file selector to
/// expose a standard programming interface.
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
/// When the user is finished selecting files in a `GtkFileChooser`, your
/// program can get the selected filenames as `GFile`s.
/// 
/// # Adding options
/// 
/// You can add extra widgets to a file chooser to provide options
/// that are not present in the default design, by using
/// [method`Gtk.FileChooser.add_choice`]. Each choice has an identifier and
/// a user visible label; additionally, each choice can have multiple
/// options. If a choice has no option, it will be rendered as a
/// check button with the given label; if a choice has options, it will
/// be rendered as a combo box.
///
/// The `FileChooserProtocol` protocol exposes the methods and properties of an underlying `GtkFileChooser` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FileChooser`.
/// Alternatively, use `FileChooserRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol FileChooserProtocol {
        /// Untyped pointer to the underlying `GtkFileChooser` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkFileChooser` instance.
    var file_chooser_ptr: UnsafeMutablePointer<GtkFileChooser>! { get }

    /// Required Initialiser for types conforming to `FileChooserProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GtkFileChooser` is an interface that can be implemented by file
/// selection widgets.
/// 
/// In GTK, the main objects that implement this interface are
/// [class`Gtk.FileChooserWidget`] and [class`Gtk.FileChooserDialog`].
/// 
/// You do not need to write an object that implements the `GtkFileChooser`
/// interface unless you are trying to adapt an existing file selector to
/// expose a standard programming interface.
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
/// When the user is finished selecting files in a `GtkFileChooser`, your
/// program can get the selected filenames as `GFile`s.
/// 
/// # Adding options
/// 
/// You can add extra widgets to a file chooser to provide options
/// that are not present in the default design, by using
/// [method`Gtk.FileChooser.add_choice`]. Each choice has an identifier and
/// a user visible label; additionally, each choice can have multiple
/// options. If a choice has no option, it will be rendered as a
/// check button with the given label; if a choice has options, it will
/// be rendered as a combo box.
///
/// The `FileChooserRef` type acts as a lightweight Swift reference to an underlying `GtkFileChooser` instance.
/// It exposes methods that can operate on this data type through `FileChooserProtocol` conformance.
/// Use `FileChooserRef` only as an `unowned` reference to an existing `GtkFileChooser` instance.
///
public struct FileChooserRef: FileChooserProtocol {
        /// Untyped pointer to the underlying `GtkFileChooser` instance.
    /// For type-safe access, use the generated, typed pointer `file_chooser_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FileChooserRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkFileChooser>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkFileChooser>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkFileChooser>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkFileChooser>?) {
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

    /// Reference intialiser for a related type that implements `FileChooserProtocol`
    @inlinable init<T: FileChooserProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// `GtkFileChooser` is an interface that can be implemented by file
/// selection widgets.
/// 
/// In GTK, the main objects that implement this interface are
/// [class`Gtk.FileChooserWidget`] and [class`Gtk.FileChooserDialog`].
/// 
/// You do not need to write an object that implements the `GtkFileChooser`
/// interface unless you are trying to adapt an existing file selector to
/// expose a standard programming interface.
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
/// When the user is finished selecting files in a `GtkFileChooser`, your
/// program can get the selected filenames as `GFile`s.
/// 
/// # Adding options
/// 
/// You can add extra widgets to a file chooser to provide options
/// that are not present in the default design, by using
/// [method`Gtk.FileChooser.add_choice`]. Each choice has an identifier and
/// a user visible label; additionally, each choice can have multiple
/// options. If a choice has no option, it will be rendered as a
/// check button with the given label; if a choice has options, it will
/// be rendered as a combo box.
///
/// The `FileChooser` type acts as an owner of an underlying `GtkFileChooser` instance.
/// It provides the methods that can operate on this data type through `FileChooserProtocol` conformance.
/// Use `FileChooser` as a strong reference or owner of a `GtkFileChooser` instance.
///
open class FileChooser: FileChooserProtocol {
        /// Untyped pointer to the underlying `GtkFileChooser` instance.
    /// For type-safe access, use the generated, typed pointer `file_chooser_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileChooser` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkFileChooser>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileChooser` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkFileChooser>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileChooser` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileChooser` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileChooser` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkFileChooser>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FileChooser` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkFileChooser>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GtkFileChooser` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `FileChooser` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkFileChooser>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GtkFileChooser, cannot ref(file_chooser_ptr)
    }

    /// Reference intialiser for a related type that implements `FileChooserProtocol`
    /// `GtkFileChooser` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `FileChooserProtocol`
    @inlinable public init<T: FileChooserProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GtkFileChooser, cannot ref(file_chooser_ptr)
    }

    /// Do-nothing destructor for `GtkFileChooser`.
    deinit {
        // no reference counting for GtkFileChooser, cannot unref(file_chooser_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GtkFileChooser, cannot ref(file_chooser_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GtkFileChooser, cannot ref(file_chooser_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GtkFileChooser, cannot ref(file_chooser_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FileChooserProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GtkFileChooser, cannot ref(file_chooser_ptr)
    }



}

public enum FileChooserPropertyName: String, PropertyNameProtocol {
    /// The type of operation that the file chooser is performing.
    case action = "action"
    /// Whether a file chooser not in `GTK_FILE_CHOOSER_ACTION_OPEN` mode
    /// will offer the user to create new folders.
    case createFolders = "create-folders"
    /// The current filter for selecting files that are displayed.
    case filter = "filter"
    /// A `GListModel` containing the filters that have been
    /// added with `gtk_file_chooser_add_filter()`.
    /// 
    /// The returned object should not be modified. It may
    /// or may not be updated for later changes.
    case filters = "filters"
    /// Whether to allow multiple files to be selected.
    case selectMultiple = "select-multiple"
    /// A `GListModel` containing the shortcut folders that have been
    /// added with `gtk_file_chooser_add_shortcut_folder()`.
    /// 
    /// The returned object should not be modified. It may
    /// or may not be updated for later changes.
    case shortcutFolders = "shortcut-folders"
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
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: FileChooserPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a FileChooser property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: FileChooserPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a FileChooser property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: FileChooserPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum FileChooserSignalName: String, SignalNameProtocol {

    /// The type of operation that the file chooser is performing.
    case notifyAction = "notify::action"
    /// Whether a file chooser not in `GTK_FILE_CHOOSER_ACTION_OPEN` mode
    /// will offer the user to create new folders.
    case notifyCreateFolders = "notify::create-folders"
    /// The current filter for selecting files that are displayed.
    case notifyFilter = "notify::filter"
    /// A `GListModel` containing the filters that have been
    /// added with `gtk_file_chooser_add_filter()`.
    /// 
    /// The returned object should not be modified. It may
    /// or may not be updated for later changes.
    case notifyFilters = "notify::filters"
    /// Whether to allow multiple files to be selected.
    case notifySelectMultiple = "notify::select-multiple"
    /// A `GListModel` containing the shortcut folders that have been
    /// added with `gtk_file_chooser_add_shortcut_folder()`.
    /// 
    /// The returned object should not be modified. It may
    /// or may not be updated for later changes.
    case notifyShortcutFolders = "notify::shortcut-folders"
}

// MARK: FileChooser has no signals
// MARK: FileChooser Interface: FileChooserProtocol extension (methods and fields)
public extension FileChooserProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFileChooser` instance.
    @inlinable var file_chooser_ptr: UnsafeMutablePointer<GtkFileChooser>! { return ptr?.assumingMemoryBound(to: GtkFileChooser.self) }

    /// Adds a 'choice' to the file chooser.
    /// 
    /// This is typically implemented as a combobox or, for boolean choices,
    /// as a checkbutton. You can select a value using
    /// [method`Gtk.FileChooser.set_choice`] before the dialog is shown,
    /// and you can obtain the user-selected value in the
    /// [signal`Gtk.Dialog::response`] signal handler using
    /// [method`Gtk.FileChooser.get_choice`].
    @inlinable func addChoice(id: UnsafePointer<CChar>!, label: UnsafePointer<CChar>!, options: UnsafeMutablePointer<UnsafePointer<CChar>?>! = nil, optionLabels: UnsafeMutablePointer<UnsafePointer<CChar>?>! = nil) {
        gtk_file_chooser_add_choice(file_chooser_ptr, id, label, options, optionLabels)
    
    }

    /// Adds `filter` to the list of filters that the user can select between.
    /// 
    /// When a filter is selected, only files that are passed by that
    /// filter are displayed.
    /// 
    /// Note that the `chooser` takes ownership of the filter if it is floating,
    /// so you have to ref and sink it if you want to keep a reference.
    @inlinable func add<FileFilterT: FileFilterProtocol>(filter: FileFilterT) {
        gtk_file_chooser_add_filter(file_chooser_ptr, filter.file_filter_ptr)
    
    }

    /// Adds a folder to be displayed with the shortcut folders
    /// in a file chooser.
    @inlinable func addShortcut<FileT: GIO.FileProtocol>(folder: FileT) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((gtk_file_chooser_add_shortcut_folder(file_chooser_ptr, folder.file_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Gets the type of operation that the file chooser is performing.
    @inlinable func getAction() -> GtkFileChooserAction {
        let rv = gtk_file_chooser_get_action(file_chooser_ptr)
        return rv
    }

    /// Gets the currently selected option in the 'choice' with the given ID.
    @inlinable func getChoice(id: UnsafePointer<CChar>!) -> String! {
        let rv = gtk_file_chooser_get_choice(file_chooser_ptr, id).map({ String(cString: $0) })
        return rv
    }

    /// Gets whether file chooser will offer to create new folders.
    @inlinable func getCreateFolders() -> Bool {
        let rv = ((gtk_file_chooser_get_create_folders(file_chooser_ptr)) != 0)
        return rv
    }

    /// Gets the current folder of `chooser` as `GFile`.
    @inlinable func getCurrentFolder() -> GIO.FileRef! {
        let rv = GIO.FileRef(gtk_file_chooser_get_current_folder(file_chooser_ptr))
        return rv
    }

    /// Gets the current name in the file selector, as entered by the user.
    /// 
    /// This is meant to be used in save dialogs, to get the currently typed
    /// filename when the file itself does not exist yet.
    @inlinable func getCurrentName() -> String! {
        let rv = gtk_file_chooser_get_current_name(file_chooser_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the `GFile` for the currently selected file in
    /// the file selector.
    /// 
    /// If multiple files are selected, one of the files will be
    /// returned at random.
    /// 
    /// If the file chooser is in folder mode, this function returns
    /// the selected folder.
    @inlinable func getFile() -> GIO.FileRef! {
        let rv = GIO.FileRef(gtk_file_chooser_get_file(file_chooser_ptr))
        return rv
    }

    /// Lists all the selected files and subfolders in the current folder
    /// of `chooser` as `GFile`.
    @inlinable func getFiles() -> GIO.ListModelRef! {
        let rv = GIO.ListModelRef(gtk_file_chooser_get_files(file_chooser_ptr))
        return rv
    }

    /// Gets the current filter.
    @inlinable func getFilter() -> FileFilterRef! {
        let rv = FileFilterRef(gconstpointer: gconstpointer(gtk_file_chooser_get_filter(file_chooser_ptr)))
        return rv
    }

    /// Gets the current set of user-selectable filters, as a list model.
    /// 
    /// See [method`Gtk.FileChooser.add_filter`] and
    /// [method`Gtk.FileChooser.remove_filter`] for changing individual filters.
    /// 
    /// You should not modify the returned list model. Future changes to
    /// `chooser` may or may not affect the returned model.
    @inlinable func getFilters() -> GIO.ListModelRef! {
        let rv = GIO.ListModelRef(gtk_file_chooser_get_filters(file_chooser_ptr))
        return rv
    }

    /// Gets whether multiple files can be selected in the file
    /// chooser.
    @inlinable func getSelectMultiple() -> Bool {
        let rv = ((gtk_file_chooser_get_select_multiple(file_chooser_ptr)) != 0)
        return rv
    }

    /// Queries the list of shortcut folders in the file chooser.
    /// 
    /// You should not modify the returned list model. Future changes to
    /// `chooser` may or may not affect the returned model.
    @inlinable func getShortcutFolders() -> GIO.ListModelRef! {
        let rv = GIO.ListModelRef(gtk_file_chooser_get_shortcut_folders(file_chooser_ptr))
        return rv
    }

    /// Removes a 'choice' that has been added with `gtk_file_chooser_add_choice()`.
    @inlinable func removeChoice(id: UnsafePointer<CChar>!) {
        gtk_file_chooser_remove_choice(file_chooser_ptr, id)
    
    }

    /// Removes `filter` from the list of filters that the user can select between.
    @inlinable func remove<FileFilterT: FileFilterProtocol>(filter: FileFilterT) {
        gtk_file_chooser_remove_filter(file_chooser_ptr, filter.file_filter_ptr)
    
    }

    /// Removes a folder from the shortcut folders in a file chooser.
    @inlinable func removeShortcut<FileT: GIO.FileProtocol>(folder: FileT) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((gtk_file_chooser_remove_shortcut_folder(file_chooser_ptr, folder.file_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Sets the type of operation that the chooser is performing.
    /// 
    /// The user interface is adapted to suit the selected action.
    /// 
    /// For example, an option to create a new folder might be shown
    /// if the action is `GTK_FILE_CHOOSER_ACTION_SAVE` but not if the
    /// action is `GTK_FILE_CHOOSER_ACTION_OPEN`.
    @inlinable func set(action: GtkFileChooserAction) {
        gtk_file_chooser_set_action(file_chooser_ptr, action)
    
    }

    /// Selects an option in a 'choice' that has been added with
    /// `gtk_file_chooser_add_choice()`.
    /// 
    /// For a boolean choice, the possible options are "true" and "false".
    @inlinable func setChoice(id: UnsafePointer<CChar>!, option: UnsafePointer<CChar>!) {
        gtk_file_chooser_set_choice(file_chooser_ptr, id, option)
    
    }

    /// Sets whether file chooser will offer to create new folders.
    /// 
    /// This is only relevant if the action is not set to be
    /// `GTK_FILE_CHOOSER_ACTION_OPEN`.
    @inlinable func set(createFolders: Bool) {
        gtk_file_chooser_set_create_folders(file_chooser_ptr, gboolean((createFolders) ? 1 : 0))
    
    }

    /// Sets the current folder for `chooser` from a `GFile`.
    @inlinable func setCurrentFolder<FileT: GIO.FileProtocol>(file: FileT) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((gtk_file_chooser_set_current_folder(file_chooser_ptr, file.file_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Sets the current name in the file selector, as if entered
    /// by the user.
    /// 
    /// Note that the name passed in here is a UTF-8 string rather
    /// than a filename. This function is meant for such uses as a
    /// suggested name in a “Save As...” dialog.  You can pass
    /// “Untitled.doc” or a similarly suitable suggestion for the `name`.
    /// 
    /// If you want to preselect a particular existing file, you should
    /// use [method`Gtk.FileChooser.set_file`] instead.
    /// 
    /// Please see the documentation for those functions for an example
    /// of using [method`Gtk.FileChooser.set_current_name`] as well.
    @inlinable func setCurrent(name: UnsafePointer<CChar>!) {
        gtk_file_chooser_set_current_name(file_chooser_ptr, name)
    
    }

    /// Sets `file` as the current filename for the file chooser.
    /// 
    /// This includes changing to the file’s parent folder and actually selecting
    /// the file in list. If the `chooser` is in `GTK_FILE_CHOOSER_ACTION_SAVE` mode,
    /// the file’s base name will also appear in the dialog’s file name entry.
    /// 
    /// If the file name isn’t in the current folder of `chooser`, then the current
    /// folder of `chooser` will be changed to the folder containing `file`.
    /// 
    /// Note that the file must exist, or nothing will be done except
    /// for the directory change.
    /// 
    /// If you are implementing a save dialog, you should use this function if
    /// you already have a file name to which the user may save; for example,
    /// when the user opens an existing file and then does “Save As…”. If you
    /// don’t have a file name already — for example, if the user just created
    /// a new file and is saving it for the first time, do not call this function.
    /// 
    /// Instead, use something similar to this:
    /// 
    /// ```c
    /// static void
    /// prepare_file_chooser (GtkFileChooser *chooser,
    ///                       GFile          *existing_file)
    /// {
    ///   gboolean document_is_new = (existing_file == NULL);
    /// 
    ///   if (document_is_new)
    ///     {
    ///       GFile *default_file_for_saving = g_file_new_for_path ("./out.txt");
    ///       // the user just created a new document
    ///       gtk_file_chooser_set_current_folder (chooser, default_file_for_saving, NULL);
    ///       gtk_file_chooser_set_current_name (chooser, "Untitled document");
    ///       g_object_unref (default_file_for_saving);
    ///     }
    ///   else
    ///     {
    ///       // the user edited an existing document
    ///       gtk_file_chooser_set_file (chooser, existing_file, NULL);
    ///     }
    /// }
    /// ```
    @inlinable func set<FileT: GIO.FileProtocol>(file: FileT) throws -> Bool {
        var error: UnsafeMutablePointer<GError>?
        let rv = ((gtk_file_chooser_set_file(file_chooser_ptr, file.file_ptr, &error)) != 0)
        if let error = error { throw GLibError(error) }
        return rv
    }

    /// Sets the current filter.
    /// 
    /// Only the files that pass the filter will be displayed.
    /// If the user-selectable list of filters is non-empty, then
    /// the filter should be one of the filters in that list.
    /// 
    /// Setting the current filter when the list of filters is
    /// empty is useful if you want to restrict the displayed
    /// set of files without letting the user change it.
    @inlinable func set<FileFilterT: FileFilterProtocol>(filter: FileFilterT) {
        gtk_file_chooser_set_filter(file_chooser_ptr, filter.file_filter_ptr)
    
    }

    /// Sets whether multiple files can be selected in the file chooser.
    /// 
    /// This is only relevant if the action is set to be
    /// `GTK_FILE_CHOOSER_ACTION_OPEN` or
    /// `GTK_FILE_CHOOSER_ACTION_SELECT_FOLDER`.
    @inlinable func set(selectMultiple: Bool) {
        gtk_file_chooser_set_select_multiple(file_chooser_ptr, gboolean((selectMultiple) ? 1 : 0))
    
    }
    /// The type of operation that the file chooser is performing.
    @inlinable var action: GtkFileChooserAction {
        /// Gets the type of operation that the file chooser is performing.
        get {
            let rv = gtk_file_chooser_get_action(file_chooser_ptr)
            return rv
        }
        /// Sets the type of operation that the chooser is performing.
        /// 
        /// The user interface is adapted to suit the selected action.
        /// 
        /// For example, an option to create a new folder might be shown
        /// if the action is `GTK_FILE_CHOOSER_ACTION_SAVE` but not if the
        /// action is `GTK_FILE_CHOOSER_ACTION_OPEN`.
        nonmutating set {
            gtk_file_chooser_set_action(file_chooser_ptr, newValue)
        }
    }

    /// Gets whether file chooser will offer to create new folders.
    @inlinable var createFolders: Bool {
        /// Gets whether file chooser will offer to create new folders.
        get {
            let rv = ((gtk_file_chooser_get_create_folders(file_chooser_ptr)) != 0)
            return rv
        }
        /// Sets whether file chooser will offer to create new folders.
        /// 
        /// This is only relevant if the action is not set to be
        /// `GTK_FILE_CHOOSER_ACTION_OPEN`.
        nonmutating set {
            gtk_file_chooser_set_create_folders(file_chooser_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Gets the current folder of `chooser` as `GFile`.
    @inlinable var currentFolder: GIO.FileRef! {
        /// Gets the current folder of `chooser` as `GFile`.
        get {
            let rv = GIO.FileRef(gtk_file_chooser_get_current_folder(file_chooser_ptr))
            return rv
        }
        /// Sets the current folder for `chooser` from a `GFile`.
        nonmutating set {
            var error: UnsafeMutablePointer<GError>?
            _ = gtk_file_chooser_set_current_folder(file_chooser_ptr, UnsafeMutablePointer<GFile>(newValue?.file_ptr), &error)
            g_log(messagePtr: error?.pointee.message, level: .error)
        }
    }

    /// Gets the current name in the file selector, as entered by the user.
    /// 
    /// This is meant to be used in save dialogs, to get the currently typed
    /// filename when the file itself does not exist yet.
    @inlinable var currentName: String! {
        /// Gets the current name in the file selector, as entered by the user.
        /// 
        /// This is meant to be used in save dialogs, to get the currently typed
        /// filename when the file itself does not exist yet.
        get {
            let rv = gtk_file_chooser_get_current_name(file_chooser_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the current name in the file selector, as if entered
        /// by the user.
        /// 
        /// Note that the name passed in here is a UTF-8 string rather
        /// than a filename. This function is meant for such uses as a
        /// suggested name in a “Save As...” dialog.  You can pass
        /// “Untitled.doc” or a similarly suitable suggestion for the `name`.
        /// 
        /// If you want to preselect a particular existing file, you should
        /// use [method`Gtk.FileChooser.set_file`] instead.
        /// 
        /// Please see the documentation for those functions for an example
        /// of using [method`Gtk.FileChooser.set_current_name`] as well.
        nonmutating set {
            gtk_file_chooser_set_current_name(file_chooser_ptr, newValue)
        }
    }

    /// Gets the `GFile` for the currently selected file in
    /// the file selector.
    /// 
    /// If multiple files are selected, one of the files will be
    /// returned at random.
    /// 
    /// If the file chooser is in folder mode, this function returns
    /// the selected folder.
    @inlinable var file: GIO.FileRef! {
        /// Gets the `GFile` for the currently selected file in
        /// the file selector.
        /// 
        /// If multiple files are selected, one of the files will be
        /// returned at random.
        /// 
        /// If the file chooser is in folder mode, this function returns
        /// the selected folder.
        get {
            let rv = GIO.FileRef(gtk_file_chooser_get_file(file_chooser_ptr))
            return rv
        }
        /// Sets `file` as the current filename for the file chooser.
        /// 
        /// This includes changing to the file’s parent folder and actually selecting
        /// the file in list. If the `chooser` is in `GTK_FILE_CHOOSER_ACTION_SAVE` mode,
        /// the file’s base name will also appear in the dialog’s file name entry.
        /// 
        /// If the file name isn’t in the current folder of `chooser`, then the current
        /// folder of `chooser` will be changed to the folder containing `file`.
        /// 
        /// Note that the file must exist, or nothing will be done except
        /// for the directory change.
        /// 
        /// If you are implementing a save dialog, you should use this function if
        /// you already have a file name to which the user may save; for example,
        /// when the user opens an existing file and then does “Save As…”. If you
        /// don’t have a file name already — for example, if the user just created
        /// a new file and is saving it for the first time, do not call this function.
        /// 
        /// Instead, use something similar to this:
        /// 
        /// ```c
        /// static void
        /// prepare_file_chooser (GtkFileChooser *chooser,
        ///                       GFile          *existing_file)
        /// {
        ///   gboolean document_is_new = (existing_file == NULL);
        /// 
        ///   if (document_is_new)
        ///     {
        ///       GFile *default_file_for_saving = g_file_new_for_path ("./out.txt");
        ///       // the user just created a new document
        ///       gtk_file_chooser_set_current_folder (chooser, default_file_for_saving, NULL);
        ///       gtk_file_chooser_set_current_name (chooser, "Untitled document");
        ///       g_object_unref (default_file_for_saving);
        ///     }
        ///   else
        ///     {
        ///       // the user edited an existing document
        ///       gtk_file_chooser_set_file (chooser, existing_file, NULL);
        ///     }
        /// }
        /// ```
        nonmutating set {
            var error: UnsafeMutablePointer<GError>?
            _ = gtk_file_chooser_set_file(file_chooser_ptr, UnsafeMutablePointer<GFile>(newValue?.file_ptr), &error)
            g_log(messagePtr: error?.pointee.message, level: .error)
        }
    }

    /// Lists all the selected files and subfolders in the current folder
    /// of `chooser` as `GFile`.
    @inlinable var files: GIO.ListModelRef! {
        /// Lists all the selected files and subfolders in the current folder
        /// of `chooser` as `GFile`.
        get {
            let rv = GIO.ListModelRef(gtk_file_chooser_get_files(file_chooser_ptr))
            return rv
        }
    }

    /// The current filter for selecting files that are displayed.
    @inlinable var filter: FileFilterRef! {
        /// Gets the current filter.
        get {
            let rv = FileFilterRef(gconstpointer: gconstpointer(gtk_file_chooser_get_filter(file_chooser_ptr)))
            return rv
        }
        /// Sets the current filter.
        /// 
        /// Only the files that pass the filter will be displayed.
        /// If the user-selectable list of filters is non-empty, then
        /// the filter should be one of the filters in that list.
        /// 
        /// Setting the current filter when the list of filters is
        /// empty is useful if you want to restrict the displayed
        /// set of files without letting the user change it.
        nonmutating set {
            gtk_file_chooser_set_filter(file_chooser_ptr, UnsafeMutablePointer<GtkFileFilter>(newValue?.file_filter_ptr))
        }
    }

    /// A `GListModel` containing the filters that have been
    /// added with `gtk_file_chooser_add_filter()`.
    /// 
    /// The returned object should not be modified. It may
    /// or may not be updated for later changes.
    @inlinable var filters: GIO.ListModelRef! {
        /// Gets the current set of user-selectable filters, as a list model.
        /// 
        /// See [method`Gtk.FileChooser.add_filter`] and
        /// [method`Gtk.FileChooser.remove_filter`] for changing individual filters.
        /// 
        /// You should not modify the returned list model. Future changes to
        /// `chooser` may or may not affect the returned model.
        get {
            let rv = GIO.ListModelRef(gtk_file_chooser_get_filters(file_chooser_ptr))
            return rv
        }
    }

    /// Gets whether multiple files can be selected in the file
    /// chooser.
    @inlinable var selectMultiple: Bool {
        /// Gets whether multiple files can be selected in the file
        /// chooser.
        get {
            let rv = ((gtk_file_chooser_get_select_multiple(file_chooser_ptr)) != 0)
            return rv
        }
        /// Sets whether multiple files can be selected in the file chooser.
        /// 
        /// This is only relevant if the action is set to be
        /// `GTK_FILE_CHOOSER_ACTION_OPEN` or
        /// `GTK_FILE_CHOOSER_ACTION_SELECT_FOLDER`.
        nonmutating set {
            gtk_file_chooser_set_select_multiple(file_chooser_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Queries the list of shortcut folders in the file chooser.
    /// 
    /// You should not modify the returned list model. Future changes to
    /// `chooser` may or may not affect the returned model.
    @inlinable var shortcutFolders: GIO.ListModelRef! {
        /// Queries the list of shortcut folders in the file chooser.
        /// 
        /// You should not modify the returned list model. Future changes to
        /// `chooser` may or may not affect the returned model.
        get {
            let rv = GIO.ListModelRef(gtk_file_chooser_get_shortcut_folders(file_chooser_ptr))
            return rv
        }
    }


}



// MARK: - FontChooser Interface

/// `GtkFontChooser` is an interface that can be implemented by widgets
/// for choosing fonts.
/// 
/// In GTK, the main objects that implement this interface are
/// [class`Gtk.FontChooserWidget`], [class`Gtk.FontChooserDialog`] and
/// [class`Gtk.FontButton`].
///
/// The `FontChooserProtocol` protocol exposes the methods and properties of an underlying `GtkFontChooser` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FontChooser`.
/// Alternatively, use `FontChooserRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol FontChooserProtocol {
        /// Untyped pointer to the underlying `GtkFontChooser` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkFontChooser` instance.
    var font_chooser_ptr: UnsafeMutablePointer<GtkFontChooser>! { get }

    /// Required Initialiser for types conforming to `FontChooserProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GtkFontChooser` is an interface that can be implemented by widgets
/// for choosing fonts.
/// 
/// In GTK, the main objects that implement this interface are
/// [class`Gtk.FontChooserWidget`], [class`Gtk.FontChooserDialog`] and
/// [class`Gtk.FontButton`].
///
/// The `FontChooserRef` type acts as a lightweight Swift reference to an underlying `GtkFontChooser` instance.
/// It exposes methods that can operate on this data type through `FontChooserProtocol` conformance.
/// Use `FontChooserRef` only as an `unowned` reference to an existing `GtkFontChooser` instance.
///
public struct FontChooserRef: FontChooserProtocol {
        /// Untyped pointer to the underlying `GtkFontChooser` instance.
    /// For type-safe access, use the generated, typed pointer `font_chooser_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FontChooserRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkFontChooser>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkFontChooser>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkFontChooser>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkFontChooser>?) {
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

    /// Reference intialiser for a related type that implements `FontChooserProtocol`
    @inlinable init<T: FontChooserProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// `GtkFontChooser` is an interface that can be implemented by widgets
/// for choosing fonts.
/// 
/// In GTK, the main objects that implement this interface are
/// [class`Gtk.FontChooserWidget`], [class`Gtk.FontChooserDialog`] and
/// [class`Gtk.FontButton`].
///
/// The `FontChooser` type acts as an owner of an underlying `GtkFontChooser` instance.
/// It provides the methods that can operate on this data type through `FontChooserProtocol` conformance.
/// Use `FontChooser` as a strong reference or owner of a `GtkFontChooser` instance.
///
open class FontChooser: FontChooserProtocol {
        /// Untyped pointer to the underlying `GtkFontChooser` instance.
    /// For type-safe access, use the generated, typed pointer `font_chooser_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontChooser` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkFontChooser>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontChooser` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkFontChooser>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontChooser` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontChooser` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontChooser` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkFontChooser>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FontChooser` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkFontChooser>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GtkFontChooser` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `FontChooser` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkFontChooser>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GtkFontChooser, cannot ref(font_chooser_ptr)
    }

    /// Reference intialiser for a related type that implements `FontChooserProtocol`
    /// `GtkFontChooser` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `FontChooserProtocol`
    @inlinable public init<T: FontChooserProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GtkFontChooser, cannot ref(font_chooser_ptr)
    }

    /// Do-nothing destructor for `GtkFontChooser`.
    deinit {
        // no reference counting for GtkFontChooser, cannot unref(font_chooser_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GtkFontChooser, cannot ref(font_chooser_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GtkFontChooser, cannot ref(font_chooser_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GtkFontChooser, cannot ref(font_chooser_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FontChooserProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GtkFontChooser, cannot ref(font_chooser_ptr)
    }



}

public enum FontChooserPropertyName: String, PropertyNameProtocol {
    /// The font description as a string, e.g. "Sans Italic 12".
    case font = "font"
    /// The font description as a `PangoFontDescription`.
    case fontDesc = "font-desc"
    /// The selected font features.
    /// 
    /// The format of the string is compatible with
    /// CSS and with Pango attributes.
    case fontFeatures = "font-features"
    /// The language for which the font features were selected.
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
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: FontChooserPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a FontChooser property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: FontChooserPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a FontChooser property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: FontChooserPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum FontChooserSignalName: String, SignalNameProtocol {
    /// Emitted when a font is activated.
    /// 
    /// This usually happens when the user double clicks an item,
    /// or an item is selected and the user presses one of the keys
    /// Space, Shift+Space, Return or Enter.
    case fontActivated = "font-activated"
    /// The font description as a string, e.g. "Sans Italic 12".
    case notifyFont = "notify::font"
    /// The font description as a `PangoFontDescription`.
    case notifyFontDesc = "notify::font-desc"
    /// The selected font features.
    /// 
    /// The format of the string is compatible with
    /// CSS and with Pango attributes.
    case notifyFontFeatures = "notify::font-features"
    /// The language for which the font features were selected.
    case notifyLanguage = "notify::language"
    /// The level of granularity to offer for selecting fonts.
    case notifyLevel = "notify::level"
    /// The string with which to preview the font.
    case notifyPreviewText = "notify::preview-text"
    /// Whether to show an entry to change the preview text.
    case notifyShowPreviewEntry = "notify::show-preview-entry"
}

// MARK: FontChooser signals
public extension FontChooserProtocol {
    /// Connect a Swift signal handler to the given, typed `FontChooserSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - handler: The Swift signal handler (function or callback) to invoke on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: FontChooserSignalName, flags f: ConnectFlags = ConnectFlags(0), handler h: @escaping SignalHandler) -> Int {
        GLibObject.ObjectRef(raw: ptr).connect(s, flags: f, handler: h)
    }
    
    
    /// Connect a C signal handler to the given, typed `FontChooserSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - signalHandler: The C function to be called on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: FontChooserSignalName, flags f: ConnectFlags = ConnectFlags(0), data userData: gpointer!, destroyData destructor: GClosureNotify? = nil, signalHandler h: @escaping GCallback) -> Int {
        GLibObject.ObjectRef(raw: ptr).connectSignal(s, flags: f, data: userData, destroyData: destructor, handler: h)
    }
    
    
    /// Emitted when a font is activated.
    /// 
    /// This usually happens when the user double clicks an item,
    /// or an item is selected and the user presses one of the keys
    /// Space, Shift+Space, Return or Enter.
    /// - Note: This represents the underlying `font-activated` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter fontname: the font name
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `fontActivated` signal is emitted
    @discardableResult @inlinable func onFontActivated(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: FontChooserRef, _ fontname: String) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<FontChooserRef, String, Void>
        let cCallback: @convention(c) (gpointer, UnsafeMutablePointer<gchar>?, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(FontChooserRef(raw: unownedSelf), arg1.map({ String(cString: $0) })!)
            return output
        }
        return connect(
            signal: .fontActivated,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `font-activated` signal for using the `connect(signal:)` methods
    static var fontActivatedSignal: FontChooserSignalName { .fontActivated }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::font` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyFont` signal is emitted
    @discardableResult @inlinable func onNotifyFont(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: FontChooserRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<FontChooserRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(FontChooserRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyFont,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::font` signal for using the `connect(signal:)` methods
    static var notifyFontSignal: FontChooserSignalName { .notifyFont }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::font-desc` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyFontDesc` signal is emitted
    @discardableResult @inlinable func onNotifyFontDesc(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: FontChooserRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<FontChooserRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(FontChooserRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyFontDesc,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::font-desc` signal for using the `connect(signal:)` methods
    static var notifyFontDescSignal: FontChooserSignalName { .notifyFontDesc }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::font-features` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyFontFeatures` signal is emitted
    @discardableResult @inlinable func onNotifyFontFeatures(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: FontChooserRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<FontChooserRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(FontChooserRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyFontFeatures,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::font-features` signal for using the `connect(signal:)` methods
    static var notifyFontFeaturesSignal: FontChooserSignalName { .notifyFontFeatures }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::language` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyLanguage` signal is emitted
    @discardableResult @inlinable func onNotifyLanguage(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: FontChooserRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<FontChooserRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(FontChooserRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyLanguage,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::language` signal for using the `connect(signal:)` methods
    static var notifyLanguageSignal: FontChooserSignalName { .notifyLanguage }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::level` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyLevel` signal is emitted
    @discardableResult @inlinable func onNotifyLevel(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: FontChooserRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<FontChooserRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(FontChooserRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyLevel,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::level` signal for using the `connect(signal:)` methods
    static var notifyLevelSignal: FontChooserSignalName { .notifyLevel }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::preview-text` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyPreviewText` signal is emitted
    @discardableResult @inlinable func onNotifyPreviewText(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: FontChooserRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<FontChooserRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(FontChooserRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyPreviewText,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::preview-text` signal for using the `connect(signal:)` methods
    static var notifyPreviewTextSignal: FontChooserSignalName { .notifyPreviewText }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::show-preview-entry` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyShowPreviewEntry` signal is emitted
    @discardableResult @inlinable func onNotifyShowPreviewEntry(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: FontChooserRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<FontChooserRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(FontChooserRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyShowPreviewEntry,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::show-preview-entry` signal for using the `connect(signal:)` methods
    static var notifyShowPreviewEntrySignal: FontChooserSignalName { .notifyShowPreviewEntry }
    
}

// MARK: FontChooser Interface: FontChooserProtocol extension (methods and fields)
public extension FontChooserProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkFontChooser` instance.
    @inlinable var font_chooser_ptr: UnsafeMutablePointer<GtkFontChooser>! { return ptr?.assumingMemoryBound(to: GtkFontChooser.self) }

    /// Gets the currently-selected font name.
    /// 
    /// Note that this can be a different string than what you set with
    /// [method`Gtk.FontChooser.set_font`], as the font chooser widget may
    /// normalize font names and thus return a string with a different
    /// structure. For example, “Helvetica Italic Bold 12” could be
    /// normalized to “Helvetica Bold Italic 12”.
    /// 
    /// Use [method`Pango.FontDescription.equal`] if you want to compare two
    /// font descriptions.
    @inlinable func getFont() -> String! {
        let rv = gtk_font_chooser_get_font(font_chooser_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the currently-selected font.
    /// 
    /// Note that this can be a different string than what you set with
    /// [method`Gtk.FontChooser.set_font`], as the font chooser widget may
    /// normalize font names and thus return a string with a different
    /// structure. For example, “Helvetica Italic Bold 12” could be
    /// normalized to “Helvetica Bold Italic 12”.
    /// 
    /// Use [method`Pango.FontDescription.equal`] if you want to compare two
    /// font descriptions.
    @inlinable func getFontDesc() -> Pango.FontDescriptionRef! {
        let rv = Pango.FontDescriptionRef(gtk_font_chooser_get_font_desc(font_chooser_ptr))
        return rv
    }

    /// Gets the `PangoFontFace` representing the selected font group
    /// details (i.e. family, slant, weight, width, etc).
    /// 
    /// If the selected font is not installed, returns `nil`.
    @inlinable func getFontFace() -> Pango.FontFaceRef! {
        let rv = Pango.FontFaceRef(gtk_font_chooser_get_font_face(font_chooser_ptr))
        return rv
    }

    /// Gets the `PangoFontFamily` representing the selected font family.
    /// 
    /// Font families are a collection of font faces.
    /// 
    /// If the selected font is not installed, returns `nil`.
    @inlinable func getFontFamily() -> Pango.FontFamilyRef! {
        let rv = Pango.FontFamilyRef(gtk_font_chooser_get_font_family(font_chooser_ptr))
        return rv
    }

    /// Gets the currently-selected font features.
    @inlinable func getFontFeatures() -> String! {
        let rv = gtk_font_chooser_get_font_features(font_chooser_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the custom font map of this font chooser widget,
    /// or `nil` if it does not have one.
    @inlinable func getFontMap() -> Pango.FontMapRef! {
        let rv = Pango.FontMapRef(gtk_font_chooser_get_font_map(font_chooser_ptr))
        return rv
    }

    /// The selected font size.
    @inlinable func getFontSize() -> Int {
        let rv = Int(gtk_font_chooser_get_font_size(font_chooser_ptr))
        return rv
    }

    /// Gets the language that is used for font features.
    @inlinable func getLanguage() -> String! {
        let rv = gtk_font_chooser_get_language(font_chooser_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Returns the current level of granularity for selecting fonts.
    @inlinable func getLevel() -> FontChooserLevel {
        let rv = FontChooserLevel(gtk_font_chooser_get_level(font_chooser_ptr))
        return rv
    }

    /// Gets the text displayed in the preview area.
    @inlinable func getPreviewText() -> String! {
        let rv = gtk_font_chooser_get_preview_text(font_chooser_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Returns whether the preview entry is shown or not.
    @inlinable func getShowPreviewEntry() -> Bool {
        let rv = ((gtk_font_chooser_get_show_preview_entry(font_chooser_ptr)) != 0)
        return rv
    }

    /// Adds a filter function that decides which fonts to display
    /// in the font chooser.
    @inlinable func setFilterFunc(filter: GtkFontFilterFunc? = nil, userData: gpointer! = nil, destroy: GDestroyNotify?) {
        gtk_font_chooser_set_filter_func(font_chooser_ptr, filter, userData, destroy)
    
    }

    /// Sets the currently-selected font.
    @inlinable func setFont(fontname: UnsafePointer<CChar>!) {
        gtk_font_chooser_set_font(font_chooser_ptr, fontname)
    
    }

    /// Sets the currently-selected font from `font_desc`.
    @inlinable func set<FontDescriptionT: Pango.FontDescriptionProtocol>(fontDesc: FontDescriptionT) {
        gtk_font_chooser_set_font_desc(font_chooser_ptr, fontDesc.font_description_ptr)
    
    }

    /// Sets a custom font map to use for this font chooser widget.
    /// 
    /// A custom font map can be used to present application-specific
    /// fonts instead of or in addition to the normal system fonts.
    /// 
    /// ```c
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
    /// Note that other GTK widgets will only be able to use the
    /// application-specific font if it is present in the font map they use:
    /// 
    /// ```c
    /// context = gtk_widget_get_pango_context (label);
    /// pango_context_set_font_map (context, fontmap);
    /// ```
    @inlinable func setFontMap(fontmap: Pango.FontMapRef? = nil) {
        gtk_font_chooser_set_font_map(font_chooser_ptr, fontmap?.font_map_ptr)
    
    }
    /// Sets a custom font map to use for this font chooser widget.
    /// 
    /// A custom font map can be used to present application-specific
    /// fonts instead of or in addition to the normal system fonts.
    /// 
    /// ```c
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
    /// Note that other GTK widgets will only be able to use the
    /// application-specific font if it is present in the font map they use:
    /// 
    /// ```c
    /// context = gtk_widget_get_pango_context (label);
    /// pango_context_set_font_map (context, fontmap);
    /// ```
    @inlinable func setFontMap<FontMapT: Pango.FontMapProtocol>(fontmap: FontMapT?) {
        gtk_font_chooser_set_font_map(font_chooser_ptr, fontmap?.font_map_ptr)
    
    }

    /// Sets the language to use for font features.
    @inlinable func set(language: UnsafePointer<CChar>!) {
        gtk_font_chooser_set_language(font_chooser_ptr, language)
    
    }

    /// Sets the desired level of granularity for selecting fonts.
    @inlinable func set(level: FontChooserLevel) {
        gtk_font_chooser_set_level(font_chooser_ptr, level.value)
    
    }

    /// Sets the text displayed in the preview area.
    /// 
    /// The `text` is used to show how the selected font looks.
    @inlinable func setPreview(text: UnsafePointer<CChar>!) {
        gtk_font_chooser_set_preview_text(font_chooser_ptr, text)
    
    }

    /// Shows or hides the editable preview entry.
    @inlinable func set(showPreviewEntry: Bool) {
        gtk_font_chooser_set_show_preview_entry(font_chooser_ptr, gboolean((showPreviewEntry) ? 1 : 0))
    
    }
    /// The font description as a string, e.g. "Sans Italic 12".
    @inlinable var font: String! {
        /// Gets the currently-selected font name.
        /// 
        /// Note that this can be a different string than what you set with
        /// [method`Gtk.FontChooser.set_font`], as the font chooser widget may
        /// normalize font names and thus return a string with a different
        /// structure. For example, “Helvetica Italic Bold 12” could be
        /// normalized to “Helvetica Bold Italic 12”.
        /// 
        /// Use [method`Pango.FontDescription.equal`] if you want to compare two
        /// font descriptions.
        get {
            let rv = gtk_font_chooser_get_font(font_chooser_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the currently-selected font.
        nonmutating set {
            gtk_font_chooser_set_font(font_chooser_ptr, newValue)
        }
    }

    /// Gets the currently-selected font.
    /// 
    /// Note that this can be a different string than what you set with
    /// [method`Gtk.FontChooser.set_font`], as the font chooser widget may
    /// normalize font names and thus return a string with a different
    /// structure. For example, “Helvetica Italic Bold 12” could be
    /// normalized to “Helvetica Bold Italic 12”.
    /// 
    /// Use [method`Pango.FontDescription.equal`] if you want to compare two
    /// font descriptions.
    @inlinable var fontDesc: Pango.FontDescriptionRef! {
        /// Gets the currently-selected font.
        /// 
        /// Note that this can be a different string than what you set with
        /// [method`Gtk.FontChooser.set_font`], as the font chooser widget may
        /// normalize font names and thus return a string with a different
        /// structure. For example, “Helvetica Italic Bold 12” could be
        /// normalized to “Helvetica Bold Italic 12”.
        /// 
        /// Use [method`Pango.FontDescription.equal`] if you want to compare two
        /// font descriptions.
        get {
            let rv = Pango.FontDescriptionRef(gtk_font_chooser_get_font_desc(font_chooser_ptr))
            return rv
        }
        /// Sets the currently-selected font from `font_desc`.
        nonmutating set {
            gtk_font_chooser_set_font_desc(font_chooser_ptr, UnsafePointer<PangoFontDescription>(newValue?.font_description_ptr))
        }
    }

    /// Gets the `PangoFontFace` representing the selected font group
    /// details (i.e. family, slant, weight, width, etc).
    /// 
    /// If the selected font is not installed, returns `nil`.
    @inlinable var fontFace: Pango.FontFaceRef! {
        /// Gets the `PangoFontFace` representing the selected font group
        /// details (i.e. family, slant, weight, width, etc).
        /// 
        /// If the selected font is not installed, returns `nil`.
        get {
            let rv = Pango.FontFaceRef(gtk_font_chooser_get_font_face(font_chooser_ptr))
            return rv
        }
    }

    /// Gets the `PangoFontFamily` representing the selected font family.
    /// 
    /// Font families are a collection of font faces.
    /// 
    /// If the selected font is not installed, returns `nil`.
    @inlinable var fontFamily: Pango.FontFamilyRef! {
        /// Gets the `PangoFontFamily` representing the selected font family.
        /// 
        /// Font families are a collection of font faces.
        /// 
        /// If the selected font is not installed, returns `nil`.
        get {
            let rv = Pango.FontFamilyRef(gtk_font_chooser_get_font_family(font_chooser_ptr))
            return rv
        }
    }

    /// Gets the currently-selected font features.
    @inlinable var fontFeatures: String! {
        /// Gets the currently-selected font features.
        get {
            let rv = gtk_font_chooser_get_font_features(font_chooser_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets the custom font map of this font chooser widget,
    /// or `nil` if it does not have one.
    @inlinable var fontMap: Pango.FontMapRef! {
        /// Gets the custom font map of this font chooser widget,
        /// or `nil` if it does not have one.
        get {
            let rv = Pango.FontMapRef(gtk_font_chooser_get_font_map(font_chooser_ptr))
            return rv
        }
        /// Sets a custom font map to use for this font chooser widget.
        /// 
        /// A custom font map can be used to present application-specific
        /// fonts instead of or in addition to the normal system fonts.
        /// 
        /// ```c
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
        /// Note that other GTK widgets will only be able to use the
        /// application-specific font if it is present in the font map they use:
        /// 
        /// ```c
        /// context = gtk_widget_get_pango_context (label);
        /// pango_context_set_font_map (context, fontmap);
        /// ```
        nonmutating set {
            gtk_font_chooser_set_font_map(font_chooser_ptr, UnsafeMutablePointer<PangoFontMap>(newValue?.font_map_ptr))
        }
    }

    /// The selected font size.
    @inlinable var fontSize: Int {
        /// The selected font size.
        get {
            let rv = Int(gtk_font_chooser_get_font_size(font_chooser_ptr))
            return rv
        }
    }

    /// The language for which the font features were selected.
    @inlinable var language: String! {
        /// Gets the language that is used for font features.
        get {
            let rv = gtk_font_chooser_get_language(font_chooser_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the language to use for font features.
        nonmutating set {
            gtk_font_chooser_set_language(font_chooser_ptr, newValue)
        }
    }

    /// The level of granularity to offer for selecting fonts.
    @inlinable var level: FontChooserLevel {
        /// Returns the current level of granularity for selecting fonts.
        get {
            let rv = FontChooserLevel(gtk_font_chooser_get_level(font_chooser_ptr))
            return rv
        }
        /// Sets the desired level of granularity for selecting fonts.
        nonmutating set {
            gtk_font_chooser_set_level(font_chooser_ptr, newValue.value)
        }
    }

    /// Gets the text displayed in the preview area.
    @inlinable var previewText: String! {
        /// Gets the text displayed in the preview area.
        get {
            let rv = gtk_font_chooser_get_preview_text(font_chooser_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the text displayed in the preview area.
        /// 
        /// The `text` is used to show how the selected font looks.
        nonmutating set {
            gtk_font_chooser_set_preview_text(font_chooser_ptr, newValue)
        }
    }

    /// Returns whether the preview entry is shown or not.
    @inlinable var showPreviewEntry: Bool {
        /// Returns whether the preview entry is shown or not.
        get {
            let rv = ((gtk_font_chooser_get_show_preview_entry(font_chooser_ptr)) != 0)
            return rv
        }
        /// Shows or hides the editable preview entry.
        nonmutating set {
            gtk_font_chooser_set_show_preview_entry(font_chooser_ptr, gboolean((newValue) ? 1 : 0))
        }
    }


}



// MARK: - Native Interface

/// `GtkNative` is the interface implemented by all widgets that have
/// their own `GdkSurface`.
/// 
/// The obvious example of a `GtkNative` is `GtkWindow`.
/// 
/// Every widget that is not itself a `GtkNative` is contained in one,
/// and you can get it with [method`Gtk.Widget.get_native`].
/// 
/// To get the surface of a `GtkNative`, use [method`Gtk.Native.get_surface`].
/// It is also possible to find the `GtkNative` to which a surface
/// belongs, with [func`Gtk.Native.get_for_surface`].
/// 
/// In addition to a [class`Gdk.Surface`], a `GtkNative` also provides
/// a [class`Gsk.Renderer`] for rendering on that surface. To get the
/// renderer, use [method`Gtk.Native.get_renderer`].
///
/// The `NativeProtocol` protocol exposes the methods and properties of an underlying `GtkNative` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Native`.
/// Alternatively, use `NativeRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol NativeProtocol: WidgetProtocol {
        /// Untyped pointer to the underlying `GtkNative` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkNative` instance.
    var native_ptr: UnsafeMutablePointer<GtkNative>! { get }

    /// Required Initialiser for types conforming to `NativeProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GtkNative` is the interface implemented by all widgets that have
/// their own `GdkSurface`.
/// 
/// The obvious example of a `GtkNative` is `GtkWindow`.
/// 
/// Every widget that is not itself a `GtkNative` is contained in one,
/// and you can get it with [method`Gtk.Widget.get_native`].
/// 
/// To get the surface of a `GtkNative`, use [method`Gtk.Native.get_surface`].
/// It is also possible to find the `GtkNative` to which a surface
/// belongs, with [func`Gtk.Native.get_for_surface`].
/// 
/// In addition to a [class`Gdk.Surface`], a `GtkNative` also provides
/// a [class`Gsk.Renderer`] for rendering on that surface. To get the
/// renderer, use [method`Gtk.Native.get_renderer`].
///
/// The `NativeRef` type acts as a lightweight Swift reference to an underlying `GtkNative` instance.
/// It exposes methods that can operate on this data type through `NativeProtocol` conformance.
/// Use `NativeRef` only as an `unowned` reference to an existing `GtkNative` instance.
///
public struct NativeRef: NativeProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkNative` instance.
    /// For type-safe access, use the generated, typed pointer `native_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension NativeRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkNative>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkNative>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkNative>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkNative>?) {
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

    /// Reference intialiser for a related type that implements `NativeProtocol`
    @inlinable init<T: NativeProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: NativeProtocol>(_ other: T) -> NativeRef { NativeRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Finds the `GtkNative` associated with the surface.
    @inlinable static func getFor<SurfaceT: Gdk.SurfaceProtocol>(surface: SurfaceT) -> NativeRef! {
        guard let rv = NativeRef(gconstpointer: gconstpointer(gtk_native_get_for_surface(surface.surface_ptr))) else { return nil }
        return rv
    }
}

/// `GtkNative` is the interface implemented by all widgets that have
/// their own `GdkSurface`.
/// 
/// The obvious example of a `GtkNative` is `GtkWindow`.
/// 
/// Every widget that is not itself a `GtkNative` is contained in one,
/// and you can get it with [method`Gtk.Widget.get_native`].
/// 
/// To get the surface of a `GtkNative`, use [method`Gtk.Native.get_surface`].
/// It is also possible to find the `GtkNative` to which a surface
/// belongs, with [func`Gtk.Native.get_for_surface`].
/// 
/// In addition to a [class`Gdk.Surface`], a `GtkNative` also provides
/// a [class`Gsk.Renderer`] for rendering on that surface. To get the
/// renderer, use [method`Gtk.Native.get_renderer`].
///
/// The `Native` type acts as a reference-counted owner of an underlying `GtkNative` instance.
/// It provides the methods that can operate on this data type through `NativeProtocol` conformance.
/// Use `Native` as a strong reference or owner of a `GtkNative` instance.
///
open class Native: Widget, NativeProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Native` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkNative>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Native` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkNative>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Native` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Native` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Native` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkNative>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Native` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkNative>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkNative`.
    /// i.e., ownership is transferred to the `Native` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkNative>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `NativeProtocol`
    /// Will retain `GtkNative`.
    /// - Parameter other: an instance of a related type that implements `NativeProtocol`
    @inlinable public init<T: NativeProtocol>(native other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `NativeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }


    /// Finds the `GtkNative` associated with the surface.
    @inlinable public static func getFor<SurfaceT: Gdk.SurfaceProtocol>(surface: SurfaceT) -> Native! {
        guard let rv = Native(gconstpointer: gconstpointer(gtk_native_get_for_surface(surface.surface_ptr))) else { return nil }
        if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
        return rv
    }

}

public enum NativePropertyName: String, PropertyNameProtocol {
    /// Whether the widget or any of its descendents can accept
    /// the input focus.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case canFocus = "can-focus"
    /// Whether the widget can receive pointer events.
    case canTarget = "can-target"
    /// A list of css classes applied to this widget.
    case cssClasses = "css-classes"
    /// The name of this widget in the CSS tree.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case cssName = "css-name"
    /// The cursor used by `widget`.
    case cursor = "cursor"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    case focusOnClick = "focus-on-click"
    /// Whether this widget itself will accept the input focus.
    case focusable = "focusable"
    /// How to distribute horizontal space if widget gets extra space.
    case halign = "halign"
    /// Whether the widget is the default widget.
    case hasDefault = "has-default"
    /// Whether the widget has the input focus.
    case hasFocus = "has-focus"
    /// Enables or disables the emission of the `query-tooltip` signal on `widget`.
    /// 
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using [signal`Gtk.Widget::query-tooltip`] to
    /// determine whether it will provide a tooltip or not.
    case hasTooltip = "has-tooltip"
    /// Override for height request of the widget.
    /// 
    /// If this is -1, the natural request will be used.
    case heightRequest = "height-request"
    /// Whether to expand horizontally.
    case hexpand = "hexpand"
    /// Whether to use the `hexpand` property.
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
    /// [method`Gtk.Widget.set_size_request`] for example.
    case marginBottom = "margin-bottom"
    /// Margin on end of widget, horizontally.
    /// 
    /// This property supports left-to-right and right-to-left text
    /// directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case marginEnd = "margin-end"
    /// Margin on start of widget, horizontally.
    /// 
    /// This property supports left-to-right and right-to-left text
    /// directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case marginStart = "margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case marginTop = "margin-top"
    /// The name of the widget.
    case name = "name"
    /// The requested opacity of the widget.
    case opacity = "opacity"
    /// How content outside the widget's content area is treated.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case overflow = "overflow"
    /// The parent widget of this widget.
    case parent = "parent"
    /// Whether the widget will receive the default action when it is focused.
    case receivesDefault = "receives-default"
    /// The `GtkRoot` widget of the widget tree containing this widget.
    /// 
    /// This will be `nil` if the widget is not contained in a root widget.
    case root = "root"
    /// The scale factor of the widget.
    case scaleFactor = "scale-factor"
    /// Whether the widget responds to input.
    case sensitive = "sensitive"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with Pango markup.
    /// 
    /// Also see [method`Gtk.Tooltip.set_markup`].
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`:
    /// [property`Gtk.Widget:has-tooltip`] will automatically be set to `true`
    /// and there will be taken care of [signal`Gtk.Widget::query-tooltip`] in
    /// the default signal handler.
    /// 
    /// Note that if both [property`Gtk.Widget:tooltip-text`] and
    /// [property`Gtk.Widget:tooltip-markup`] are set, the last one wins.
    case tooltipMarkup = "tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see [method`Gtk.Tooltip.set_text`].
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`:
    /// [property`Gtk.Widget:has-tooltip`] will automatically be set to `true`
    /// and there will be taken care of [signal`Gtk.Widget::query-tooltip`] in
    /// the default signal handler.
    /// 
    /// Note that if both [property`Gtk.Widget:tooltip-text`] and
    /// [property`Gtk.Widget:tooltip-markup`] are set, the last one wins.
    case tooltipText = "tooltip-text"
    /// How to distribute vertical space if widget gets extra space.
    case valign = "valign"
    /// Whether to expand vertically.
    case vexpand = "vexpand"
    /// Whether to use the `vexpand` property.
    case vexpandSet = "vexpand-set"
    /// Whether the widget is visible.
    case visible = "visible"
    /// Override for width request of the widget.
    /// 
    /// If this is -1, the natural request will be used.
    case widthRequest = "width-request"
}

public extension NativeProtocol {
    /// Bind a `NativePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: NativePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
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

    /// Get the value of a Native property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: NativePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Native property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: NativePropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum NativeSignalName: String, SignalNameProtocol {
    /// Signals that all holders of a reference to the widget should release
    /// the reference that they hold.
    /// 
    /// May result in finalization of the widget if all references are released.
    /// 
    /// This signal is not suitable for saving widget state.
    case destroy = "destroy"
    /// Emitted when the text direction of a widget changes.
    case directionChanged = "direction-changed"
    /// Emitted when `widget` is hidden.
    case hide = "hide"
    /// Emitted if keyboard navigation fails.
    /// 
    /// See [method`Gtk.Widget.keynav_failed`] for details.
    case keynavFailed = "keynav-failed"
    /// Emitted when `widget` is going to be mapped.
    /// 
    /// A widget is mapped when the widget is visible (which is controlled with
    /// [property`Gtk.Widget:visible`]) and all its parents up to the toplevel widget
    /// are also visible.
    /// 
    /// The `map` signal can be used to determine whether a widget will be drawn,
    /// for instance it can resume an animation that was stopped during the
    /// emission of [signal`Gtk.Widget::unmap`].
    case map = "map"
    /// Emitted when a widget is activated via a mnemonic.
    /// 
    /// The default handler for this signal activates `widget` if `group_cycling`
    /// is `false`, or just makes `widget` grab focus if `group_cycling` is `true`.
    case mnemonicActivate = "mnemonic-activate"
    /// Emitted when the focus is moved.
    case moveFocus = "move-focus"
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// Emitted when the widgets tooltip is about to be shown.
    /// 
    /// This happens when the [property`Gtk.Widget:has-tooltip`] property
    /// is `true` and the hover timeout has expired with the cursor hovering
    /// "above" `widget`; or emitted when `widget` got focus in keyboard mode.
    /// 
    /// Using the given coordinates, the signal handler should determine
    /// whether a tooltip should be shown for `widget`. If this is the case
    /// `true` should be returned, `false` otherwise.  Note that if
    /// `keyboard_mode` is `true`, the values of `x` and `y` are undefined and
    /// should not be used.
    /// 
    /// The signal handler is free to manipulate `tooltip` with the therefore
    /// destined function calls.
    case queryTooltip = "query-tooltip"
    /// Emitted when `widget` is associated with a `GdkSurface`.
    /// 
    /// This means that [method`Gtk.Widget.realize`] has been called
    /// or the widget has been mapped (that is, it is going to be drawn).
    case realize = "realize"
    /// Emitted when `widget` is shown.
    case show = "show"
    /// Emitted when the widget state changes.
    /// 
    /// See [method`Gtk.Widget.get_state_flags`].
    case stateFlagsChanged = "state-flags-changed"
    /// Emitted when `widget` is going to be unmapped.
    /// 
    /// A widget is unmapped when either it or any of its parents up to the
    /// toplevel widget have been set as hidden.
    /// 
    /// As `unmap` indicates that a widget will not be shown any longer,
    /// it can be used to, for example, stop an animation on the widget.
    case unmap = "unmap"
    /// Emitted when the `GdkSurface` associated with `widget` is destroyed.
    /// 
    /// This means that [method`Gtk.Widget.unrealize`] has been called
    /// or the widget has been unmapped (that is, it is going to be hidden).
    case unrealize = "unrealize"
    /// Whether the widget or any of its descendents can accept
    /// the input focus.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyCanFocus = "notify::can-focus"
    /// Whether the widget can receive pointer events.
    case notifyCanTarget = "notify::can-target"
    /// A list of css classes applied to this widget.
    case notifyCssClasses = "notify::css-classes"
    /// The name of this widget in the CSS tree.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyCssName = "notify::css-name"
    /// The cursor used by `widget`.
    case notifyCursor = "notify::cursor"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    case notifyFocusOnClick = "notify::focus-on-click"
    /// Whether this widget itself will accept the input focus.
    case notifyFocusable = "notify::focusable"
    /// How to distribute horizontal space if widget gets extra space.
    case notifyHalign = "notify::halign"
    /// Whether the widget is the default widget.
    case notifyHasDefault = "notify::has-default"
    /// Whether the widget has the input focus.
    case notifyHasFocus = "notify::has-focus"
    /// Enables or disables the emission of the `query-tooltip` signal on `widget`.
    /// 
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using [signal`Gtk.Widget::query-tooltip`] to
    /// determine whether it will provide a tooltip or not.
    case notifyHasTooltip = "notify::has-tooltip"
    /// Override for height request of the widget.
    /// 
    /// If this is -1, the natural request will be used.
    case notifyHeightRequest = "notify::height-request"
    /// Whether to expand horizontally.
    case notifyHexpand = "notify::hexpand"
    /// Whether to use the `hexpand` property.
    case notifyHexpandSet = "notify::hexpand-set"
    /// The `GtkLayoutManager` instance to use to compute the preferred size
    /// of the widget, and allocate its children.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyLayoutManager = "notify::layout-manager"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case notifyMarginBottom = "notify::margin-bottom"
    /// Margin on end of widget, horizontally.
    /// 
    /// This property supports left-to-right and right-to-left text
    /// directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case notifyMarginEnd = "notify::margin-end"
    /// Margin on start of widget, horizontally.
    /// 
    /// This property supports left-to-right and right-to-left text
    /// directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case notifyMarginStart = "notify::margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case notifyMarginTop = "notify::margin-top"
    /// The name of the widget.
    case notifyName = "notify::name"
    /// The requested opacity of the widget.
    case notifyOpacity = "notify::opacity"
    /// How content outside the widget's content area is treated.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyOverflow = "notify::overflow"
    /// The parent widget of this widget.
    case notifyParent = "notify::parent"
    /// Whether the widget will receive the default action when it is focused.
    case notifyReceivesDefault = "notify::receives-default"
    /// The `GtkRoot` widget of the widget tree containing this widget.
    /// 
    /// This will be `nil` if the widget is not contained in a root widget.
    case notifyRoot = "notify::root"
    /// The scale factor of the widget.
    case notifyScaleFactor = "notify::scale-factor"
    /// Whether the widget responds to input.
    case notifySensitive = "notify::sensitive"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with Pango markup.
    /// 
    /// Also see [method`Gtk.Tooltip.set_markup`].
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`:
    /// [property`Gtk.Widget:has-tooltip`] will automatically be set to `true`
    /// and there will be taken care of [signal`Gtk.Widget::query-tooltip`] in
    /// the default signal handler.
    /// 
    /// Note that if both [property`Gtk.Widget:tooltip-text`] and
    /// [property`Gtk.Widget:tooltip-markup`] are set, the last one wins.
    case notifyTooltipMarkup = "notify::tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see [method`Gtk.Tooltip.set_text`].
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`:
    /// [property`Gtk.Widget:has-tooltip`] will automatically be set to `true`
    /// and there will be taken care of [signal`Gtk.Widget::query-tooltip`] in
    /// the default signal handler.
    /// 
    /// Note that if both [property`Gtk.Widget:tooltip-text`] and
    /// [property`Gtk.Widget:tooltip-markup`] are set, the last one wins.
    case notifyTooltipText = "notify::tooltip-text"
    /// How to distribute vertical space if widget gets extra space.
    case notifyValign = "notify::valign"
    /// Whether to expand vertically.
    case notifyVexpand = "notify::vexpand"
    /// Whether to use the `vexpand` property.
    case notifyVexpandSet = "notify::vexpand-set"
    /// Whether the widget is visible.
    case notifyVisible = "notify::visible"
    /// Override for width request of the widget.
    /// 
    /// If this is -1, the natural request will be used.
    case notifyWidthRequest = "notify::width-request"
}

// MARK: Native has no signals
// MARK: Native Interface: NativeProtocol extension (methods and fields)
public extension NativeProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkNative` instance.
    @inlinable var native_ptr: UnsafeMutablePointer<GtkNative>! { return ptr?.assumingMemoryBound(to: GtkNative.self) }

    /// Returns the renderer that is used for this `GtkNative`.
    @inlinable func getRenderer() -> UnsafeMutablePointer<GskRenderer>! {
        let rv = gtk_native_get_renderer(native_ptr)
        return rv
    }

    /// Returns the surface of this `GtkNative`.
    @inlinable func getSurface() -> Gdk.SurfaceRef! {
        let rv = Gdk.SurfaceRef(gtk_native_get_surface(native_ptr))
        return rv
    }

    /// Retrieves the surface transform of `self`.
    /// 
    /// This is the translation from `self`'s surface coordinates into
    /// `self`'s widget coordinates.
    @inlinable func getSurfaceTransform(x: UnsafeMutablePointer<CDouble>!, y: UnsafeMutablePointer<CDouble>!) {
        gtk_native_get_surface_transform(native_ptr, x, y)
    
    }

    /// Realizes a `GtkNative`.
    /// 
    /// This should only be used by subclasses.
    @inlinable func realize() {
        gtk_native_realize(native_ptr)
    
    }

    /// Unrealizes a `GtkNative`.
    /// 
    /// This should only be used by subclasses.
    @inlinable func unrealize() {
        gtk_native_unrealize(native_ptr)
    
    }
    /// Returns the renderer that is used for this `GtkNative`.
    @inlinable var renderer: UnsafeMutablePointer<GskRenderer>! {
        /// Returns the renderer that is used for this `GtkNative`.
        get {
            let rv = gtk_native_get_renderer(native_ptr)
            return rv
        }
    }

    /// Returns the surface of this `GtkNative`.
    @inlinable var surface: Gdk.SurfaceRef! {
        /// Returns the surface of this `GtkNative`.
        get {
            let rv = Gdk.SurfaceRef(gtk_native_get_surface(native_ptr))
            return rv
        }
    }


}



