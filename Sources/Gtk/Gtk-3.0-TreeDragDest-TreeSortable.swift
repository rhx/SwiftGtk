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

// MARK: - TreeDragDest Interface

/// The `TreeDragDestProtocol` protocol exposes the methods and properties of an underlying `GtkTreeDragDest` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TreeDragDest`.
/// Alternatively, use `TreeDragDestRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TreeDragDestProtocol {
    /// Untyped pointer to the underlying `GtkTreeDragDest` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkTreeDragDest` instance.
    var tree_drag_dest_ptr: UnsafeMutablePointer<GtkTreeDragDest> { get }
}

/// The `TreeDragDestRef` type acts as a lightweight Swift reference to an underlying `GtkTreeDragDest` instance.
/// It exposes methods that can operate on this data type through `TreeDragDestProtocol` conformance.
/// Use `TreeDragDestRef` only as an `unowned` reference to an existing `GtkTreeDragDest` instance.
///

public struct TreeDragDestRef: TreeDragDestProtocol {
    /// Untyped pointer to the underlying `GtkTreeDragDest` instance.
    /// For type-safe access, use the generated, typed pointer `tree_drag_dest_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TreeDragDestRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkTreeDragDest>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TreeDragDestProtocol`
    init<T: TreeDragDestProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeDragDestProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeDragDestProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeDragDestProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeDragDestProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeDragDestProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TreeDragDest` type acts as an owner of an underlying `GtkTreeDragDest` instance.
/// It provides the methods that can operate on this data type through `TreeDragDestProtocol` conformance.
/// Use `TreeDragDest` as a strong reference or owner of a `GtkTreeDragDest` instance.
///

open class TreeDragDest: TreeDragDestProtocol {
    /// Untyped pointer to the underlying `GtkTreeDragDest` instance.
    /// For type-safe access, use the generated, typed pointer `tree_drag_dest_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `TreeDragDest` instance.
    public init(_ op: UnsafeMutablePointer<GtkTreeDragDest>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `TreeDragDestProtocol`
    /// `GtkTreeDragDest` does not allow reference counting.
    public convenience init<T: TreeDragDestProtocol>(_ other: T) {
        self.init(cast(other.tree_drag_dest_ptr))
        // no reference counting for GtkTreeDragDest, cannot ref(cast(tree_drag_dest_ptr))
    }

    /// Do-nothing destructor for`GtkTreeDragDest`.
    deinit {
        // no reference counting for GtkTreeDragDest, cannot unref(cast(tree_drag_dest_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeDragDestProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkTreeDragDest.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeDragDestProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkTreeDragDest.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeDragDestProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkTreeDragDest.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeDragDestProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkTreeDragDest>(opaquePointer))
    }



}

// MARK: - no TreeDragDest properties

// MARK: - no signals


public extension TreeDragDestProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTreeDragDest` instance.
    var tree_drag_dest_ptr: UnsafeMutablePointer<GtkTreeDragDest> { return ptr.assumingMemoryBound(to: GtkTreeDragDest.self) }

    /// Asks the `GtkTreeDragDest` to insert a row before the path `dest`,
    /// deriving the contents of the row from `selection_data`. If `dest` is
    /// outside the tree so that inserting before it is impossible, `false`
    /// will be returned. Also, `false` may be returned if the new row is
    /// not created for some model-specific reason.  Should robustly handle
    /// a `dest` no longer found in the model!
    func dragDataReceived(dest: TreePathProtocol, selectionData selection_data: SelectionDataProtocol) -> Bool {
        let rv = gtk_tree_drag_dest_drag_data_received(cast(tree_drag_dest_ptr), cast(dest.ptr), cast(selection_data.ptr))
        return Bool(rv != 0)
    }

    /// Determines whether a drop is possible before the given `dest_path`,
    /// at the same depth as `dest_path`. i.e., can we drop the data in
    /// `selection_data` at that location. `dest_path` does not have to
    /// exist; the return value will almost certainly be `false` if the
    /// parent of `dest_path` doesn’t exist, though.
    func rowDropPossible(destPath dest_path: TreePathProtocol, selectionData selection_data: SelectionDataProtocol) -> Bool {
        let rv = gtk_tree_drag_dest_row_drop_possible(cast(tree_drag_dest_ptr), cast(dest_path.ptr), cast(selection_data.ptr))
        return Bool(rv != 0)
    }
}



// MARK: - TreeDragSource Interface

/// The `TreeDragSourceProtocol` protocol exposes the methods and properties of an underlying `GtkTreeDragSource` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TreeDragSource`.
/// Alternatively, use `TreeDragSourceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol TreeDragSourceProtocol {
    /// Untyped pointer to the underlying `GtkTreeDragSource` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkTreeDragSource` instance.
    var tree_drag_source_ptr: UnsafeMutablePointer<GtkTreeDragSource> { get }
}

/// The `TreeDragSourceRef` type acts as a lightweight Swift reference to an underlying `GtkTreeDragSource` instance.
/// It exposes methods that can operate on this data type through `TreeDragSourceProtocol` conformance.
/// Use `TreeDragSourceRef` only as an `unowned` reference to an existing `GtkTreeDragSource` instance.
///

public struct TreeDragSourceRef: TreeDragSourceProtocol {
    /// Untyped pointer to the underlying `GtkTreeDragSource` instance.
    /// For type-safe access, use the generated, typed pointer `tree_drag_source_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TreeDragSourceRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkTreeDragSource>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TreeDragSourceProtocol`
    init<T: TreeDragSourceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeDragSourceProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeDragSourceProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeDragSourceProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeDragSourceProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeDragSourceProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TreeDragSource` type acts as an owner of an underlying `GtkTreeDragSource` instance.
/// It provides the methods that can operate on this data type through `TreeDragSourceProtocol` conformance.
/// Use `TreeDragSource` as a strong reference or owner of a `GtkTreeDragSource` instance.
///

open class TreeDragSource: TreeDragSourceProtocol {
    /// Untyped pointer to the underlying `GtkTreeDragSource` instance.
    /// For type-safe access, use the generated, typed pointer `tree_drag_source_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `TreeDragSource` instance.
    public init(_ op: UnsafeMutablePointer<GtkTreeDragSource>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `TreeDragSourceProtocol`
    /// `GtkTreeDragSource` does not allow reference counting.
    public convenience init<T: TreeDragSourceProtocol>(_ other: T) {
        self.init(cast(other.tree_drag_source_ptr))
        // no reference counting for GtkTreeDragSource, cannot ref(cast(tree_drag_source_ptr))
    }

    /// Do-nothing destructor for`GtkTreeDragSource`.
    deinit {
        // no reference counting for GtkTreeDragSource, cannot unref(cast(tree_drag_source_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeDragSourceProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkTreeDragSource.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeDragSourceProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkTreeDragSource.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeDragSourceProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkTreeDragSource.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeDragSourceProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkTreeDragSource>(opaquePointer))
    }



}

// MARK: - no TreeDragSource properties

// MARK: - no signals


public extension TreeDragSourceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTreeDragSource` instance.
    var tree_drag_source_ptr: UnsafeMutablePointer<GtkTreeDragSource> { return ptr.assumingMemoryBound(to: GtkTreeDragSource.self) }

    /// Asks the `GtkTreeDragSource` to delete the row at `path`, because
    /// it was moved somewhere else via drag-and-drop. Returns `false`
    /// if the deletion fails because `path` no longer exists, or for
    /// some model-specific reason. Should robustly handle a `path` no
    /// longer found in the model!
    func dragDataDelete(path: TreePathProtocol) -> Bool {
        let rv = gtk_tree_drag_source_drag_data_delete(cast(tree_drag_source_ptr), cast(path.ptr))
        return Bool(rv != 0)
    }

    /// Asks the `GtkTreeDragSource` to fill in `selection_data` with a
    /// representation of the row at `path`. `selection_data`->target gives
    /// the required type of the data.  Should robustly handle a `path` no
    /// longer found in the model!
    func dragDataGet(path: TreePathProtocol, selectionData selection_data: SelectionDataProtocol) -> Bool {
        let rv = gtk_tree_drag_source_drag_data_get(cast(tree_drag_source_ptr), cast(path.ptr), cast(selection_data.ptr))
        return Bool(rv != 0)
    }

    /// Asks the `GtkTreeDragSource` whether a particular row can be used as
    /// the source of a DND operation. If the source doesn’t implement
    /// this interface, the row is assumed draggable.
    func rowDraggable(path: TreePathProtocol) -> Bool {
        let rv = gtk_tree_drag_source_row_draggable(cast(tree_drag_source_ptr), cast(path.ptr))
        return Bool(rv != 0)
    }
}



// MARK: - TreeModel Interface

/// The `TreeModelProtocol` protocol exposes the methods and properties of an underlying `GtkTreeModel` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TreeModel`.
/// Alternatively, use `TreeModelRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GtkTreeModel` interface defines a generic tree interface for
/// use by the `GtkTreeView` widget. It is an abstract interface, and
/// is designed to be usable with any appropriate data structure. The
/// programmer just has to implement this interface on their own data
/// type for it to be viewable by a `GtkTreeView` widget.
/// 
/// The model is represented as a hierarchical tree of strongly-typed,
/// columned data. In other words, the model can be seen as a tree where
/// every node has different values depending on which column is being
/// queried. The type of data found in a column is determined by using
/// the GType system (ie. `G_TYPE_INT`, `GTK_TYPE_BUTTON`, `G_TYPE_POINTER`,
/// etc). The types are homogeneous per column across all nodes. It is
/// important to note that this interface only provides a way of examining
/// a model and observing changes. The implementation of each individual
/// model decides how and if changes are made.
/// 
/// In order to make life simpler for programmers who do not need to
/// write their own specialized model, two generic models are provided
/// — the `GtkTreeStore` and the `GtkListStore`. To use these, the
/// developer simply pushes data into these models as necessary. These
/// models provide the data structure as well as all appropriate tree
/// interfaces. As a result, implementing drag and drop, sorting, and
/// storing data is trivial. For the vast majority of trees and lists,
/// these two models are sufficient.
/// 
/// Models are accessed on a node/column level of granularity. One can
/// query for the value of a model at a certain node and a certain
/// column on that node. There are two structures used to reference a
/// particular node in a model. They are the `GtkTreePath`-struct and
/// the `GtkTreeIter`-struct (“iter” is short for iterator). Most of the
/// interface consists of operations on a `GtkTreeIter`-struct.
/// 
/// A path is essentially a potential node. It is a location on a model
/// that may or may not actually correspond to a node on a specific
/// model. The `GtkTreePath`-struct can be converted into either an
/// array of unsigned integers or a string. The string form is a list
/// of numbers separated by a colon. Each number refers to the offset
/// at that level. Thus, the path `0` refers to the root
/// node and the path `2:4` refers to the fifth child of
/// the third node.
/// 
/// By contrast, a `GtkTreeIter`-struct is a reference to a specific node on
/// a specific model. It is a generic struct with an integer and three
/// generic pointers. These are filled in by the model in a model-specific
/// way. One can convert a path to an iterator by calling
/// `gtk_tree_model_get_iter()`. These iterators are the primary way
/// of accessing a model and are similar to the iterators used by
/// `GtkTextBuffer`. They are generally statically allocated on the
/// stack and only used for a short time. The model interface defines
/// a set of operations using them for navigating the model.
/// 
/// It is expected that models fill in the iterator with private data.
/// For example, the `GtkListStore` model, which is internally a simple
/// linked list, stores a list node in one of the pointers. The
/// `GtkTreeModelSort` stores an array and an offset in two of the
/// pointers. Additionally, there is an integer field. This field is
/// generally filled with a unique stamp per model. This stamp is for
/// catching errors resulting from using invalid iterators with a model.
/// 
/// The lifecycle of an iterator can be a little confusing at first.
/// Iterators are expected to always be valid for as long as the model
/// is unchanged (and doesn’t emit a signal). The model is considered
/// to own all outstanding iterators and nothing needs to be done to
/// free them from the user’s point of view. Additionally, some models
/// guarantee that an iterator is valid for as long as the node it refers
/// to is valid (most notably the `GtkTreeStore` and `GtkListStore`).
/// Although generally uninteresting, as one always has to allow for
/// the case where iterators do not persist beyond a signal, some very
/// important performance enhancements were made in the sort model.
/// As a result, the `GTK_TREE_MODEL_ITERS_PERSIST` flag was added to
/// indicate this behavior.
/// 
/// To help show some common operation of a model, some examples are
/// provided. The first example shows three ways of getting the iter at
/// the location `3:2:5`. While the first method shown is
/// easier, the second is much more common, as you often get paths from
/// callbacks.
/// 
/// ## Acquiring a `GtkTreeIter`-struct
/// 
/// (C Language Example):
/// ```C
/// // Three ways of getting the iter pointing to the location
/// GtkTreePath *path;
/// GtkTreeIter iter;
/// GtkTreeIter parent_iter;
/// 
/// // get the iterator from a string
/// gtk_tree_model_get_iter_from_string (model,
///                                      &iter,
///                                      "3:2:5");
/// 
/// // get the iterator from a path
/// path = gtk_tree_path_new_from_string ("3:2:5");
/// gtk_tree_model_get_iter (model, &iter, path);
/// gtk_tree_path_free (path);
/// 
/// // walk the tree to find the iterator
/// gtk_tree_model_iter_nth_child (model, &iter,
///                                NULL, 3);
/// parent_iter = iter;
/// gtk_tree_model_iter_nth_child (model, &iter,
///                                &parent_iter, 2);
/// parent_iter = iter;
/// gtk_tree_model_iter_nth_child (model, &iter,
///                                &parent_iter, 5);
/// ```
/// 
/// This second example shows a quick way of iterating through a list
/// and getting a string and an integer from each row. The
/// `populate_model()` function used below is not
/// shown, as it is specific to the `GtkListStore`. For information on
/// how to write such a function, see the `GtkListStore` documentation.
/// 
/// ## Reading data from a `GtkTreeModel`
/// 
/// (C Language Example):
/// ```C
/// enum
/// {
///   STRING_COLUMN,
///   INT_COLUMN,
///   N_COLUMNS
/// };
/// 
/// ...
/// 
/// GtkTreeModel *list_store;
/// GtkTreeIter iter;
/// gboolean valid;
/// gint row_count = 0;
/// 
/// // make a new list_store
/// list_store = gtk_list_store_new (N_COLUMNS,
///                                  G_TYPE_STRING,
///                                  G_TYPE_INT);
/// 
/// // Fill the list store with data
/// populate_model (list_store);
/// 
/// // Get the first iter in the list, check it is valid and walk
/// // through the list, reading each row.
/// 
/// valid = gtk_tree_model_get_iter_first (list_store,
///                                        &iter);
/// while (valid)
///  {
///    gchar *str_data;
///    gint   int_data;
/// 
///    // Make sure you terminate calls to gtk_tree_model_get() with a “-1” value
///    gtk_tree_model_get (list_store, &iter,
///                        STRING_COLUMN, &str_data,
///                        INT_COLUMN, &int_data,
///                        -1);
/// 
///    // Do something with the data
///    g_print ("Row %d: (%s,%d)\n",
///             row_count, str_data, int_data);
///    g_free (str_data);
/// 
///    valid = gtk_tree_model_iter_next (list_store,
///                                      &iter);
///    row_count++;
///  }
/// ```
/// 
/// The `GtkTreeModel` interface contains two methods for reference
/// counting: `gtk_tree_model_ref_node()` and `gtk_tree_model_unref_node()`.
/// These two methods are optional to implement. The reference counting
/// is meant as a way for views to let models know when nodes are being
/// displayed. `GtkTreeView` will take a reference on a node when it is
/// visible, which means the node is either in the toplevel or expanded.
/// Being displayed does not mean that the node is currently directly
/// visible to the user in the viewport. Based on this reference counting
/// scheme a caching model, for example, can decide whether or not to cache
/// a node based on the reference count. A file-system based model would
/// not want to keep the entire file hierarchy in memory, but just the
/// folders that are currently expanded in every current view.
/// 
/// When working with reference counting, the following rules must be taken
/// into account:
/// 
/// - Never take a reference on a node without owning a reference on its parent.
///   This means that all parent nodes of a referenced node must be referenced
///   as well.
/// 
/// - Outstanding references on a deleted node are not released. This is not
///   possible because the node has already been deleted by the time the
///   row-deleted signal is received.
/// 
/// - Models are not obligated to emit a signal on rows of which none of its
///   siblings are referenced. To phrase this differently, signals are only
///   required for levels in which nodes are referenced. For the root level
///   however, signals must be emitted at all times (however the root level
///   is always referenced when any view is attached).
public protocol TreeModelProtocol {
    /// Untyped pointer to the underlying `GtkTreeModel` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkTreeModel` instance.
    var tree_model_ptr: UnsafeMutablePointer<GtkTreeModel> { get }
}

/// The `TreeModelRef` type acts as a lightweight Swift reference to an underlying `GtkTreeModel` instance.
/// It exposes methods that can operate on this data type through `TreeModelProtocol` conformance.
/// Use `TreeModelRef` only as an `unowned` reference to an existing `GtkTreeModel` instance.
///
/// The `GtkTreeModel` interface defines a generic tree interface for
/// use by the `GtkTreeView` widget. It is an abstract interface, and
/// is designed to be usable with any appropriate data structure. The
/// programmer just has to implement this interface on their own data
/// type for it to be viewable by a `GtkTreeView` widget.
/// 
/// The model is represented as a hierarchical tree of strongly-typed,
/// columned data. In other words, the model can be seen as a tree where
/// every node has different values depending on which column is being
/// queried. The type of data found in a column is determined by using
/// the GType system (ie. `G_TYPE_INT`, `GTK_TYPE_BUTTON`, `G_TYPE_POINTER`,
/// etc). The types are homogeneous per column across all nodes. It is
/// important to note that this interface only provides a way of examining
/// a model and observing changes. The implementation of each individual
/// model decides how and if changes are made.
/// 
/// In order to make life simpler for programmers who do not need to
/// write their own specialized model, two generic models are provided
/// — the `GtkTreeStore` and the `GtkListStore`. To use these, the
/// developer simply pushes data into these models as necessary. These
/// models provide the data structure as well as all appropriate tree
/// interfaces. As a result, implementing drag and drop, sorting, and
/// storing data is trivial. For the vast majority of trees and lists,
/// these two models are sufficient.
/// 
/// Models are accessed on a node/column level of granularity. One can
/// query for the value of a model at a certain node and a certain
/// column on that node. There are two structures used to reference a
/// particular node in a model. They are the `GtkTreePath`-struct and
/// the `GtkTreeIter`-struct (“iter” is short for iterator). Most of the
/// interface consists of operations on a `GtkTreeIter`-struct.
/// 
/// A path is essentially a potential node. It is a location on a model
/// that may or may not actually correspond to a node on a specific
/// model. The `GtkTreePath`-struct can be converted into either an
/// array of unsigned integers or a string. The string form is a list
/// of numbers separated by a colon. Each number refers to the offset
/// at that level. Thus, the path `0` refers to the root
/// node and the path `2:4` refers to the fifth child of
/// the third node.
/// 
/// By contrast, a `GtkTreeIter`-struct is a reference to a specific node on
/// a specific model. It is a generic struct with an integer and three
/// generic pointers. These are filled in by the model in a model-specific
/// way. One can convert a path to an iterator by calling
/// `gtk_tree_model_get_iter()`. These iterators are the primary way
/// of accessing a model and are similar to the iterators used by
/// `GtkTextBuffer`. They are generally statically allocated on the
/// stack and only used for a short time. The model interface defines
/// a set of operations using them for navigating the model.
/// 
/// It is expected that models fill in the iterator with private data.
/// For example, the `GtkListStore` model, which is internally a simple
/// linked list, stores a list node in one of the pointers. The
/// `GtkTreeModelSort` stores an array and an offset in two of the
/// pointers. Additionally, there is an integer field. This field is
/// generally filled with a unique stamp per model. This stamp is for
/// catching errors resulting from using invalid iterators with a model.
/// 
/// The lifecycle of an iterator can be a little confusing at first.
/// Iterators are expected to always be valid for as long as the model
/// is unchanged (and doesn’t emit a signal). The model is considered
/// to own all outstanding iterators and nothing needs to be done to
/// free them from the user’s point of view. Additionally, some models
/// guarantee that an iterator is valid for as long as the node it refers
/// to is valid (most notably the `GtkTreeStore` and `GtkListStore`).
/// Although generally uninteresting, as one always has to allow for
/// the case where iterators do not persist beyond a signal, some very
/// important performance enhancements were made in the sort model.
/// As a result, the `GTK_TREE_MODEL_ITERS_PERSIST` flag was added to
/// indicate this behavior.
/// 
/// To help show some common operation of a model, some examples are
/// provided. The first example shows three ways of getting the iter at
/// the location `3:2:5`. While the first method shown is
/// easier, the second is much more common, as you often get paths from
/// callbacks.
/// 
/// ## Acquiring a `GtkTreeIter`-struct
/// 
/// (C Language Example):
/// ```C
/// // Three ways of getting the iter pointing to the location
/// GtkTreePath *path;
/// GtkTreeIter iter;
/// GtkTreeIter parent_iter;
/// 
/// // get the iterator from a string
/// gtk_tree_model_get_iter_from_string (model,
///                                      &iter,
///                                      "3:2:5");
/// 
/// // get the iterator from a path
/// path = gtk_tree_path_new_from_string ("3:2:5");
/// gtk_tree_model_get_iter (model, &iter, path);
/// gtk_tree_path_free (path);
/// 
/// // walk the tree to find the iterator
/// gtk_tree_model_iter_nth_child (model, &iter,
///                                NULL, 3);
/// parent_iter = iter;
/// gtk_tree_model_iter_nth_child (model, &iter,
///                                &parent_iter, 2);
/// parent_iter = iter;
/// gtk_tree_model_iter_nth_child (model, &iter,
///                                &parent_iter, 5);
/// ```
/// 
/// This second example shows a quick way of iterating through a list
/// and getting a string and an integer from each row. The
/// `populate_model()` function used below is not
/// shown, as it is specific to the `GtkListStore`. For information on
/// how to write such a function, see the `GtkListStore` documentation.
/// 
/// ## Reading data from a `GtkTreeModel`
/// 
/// (C Language Example):
/// ```C
/// enum
/// {
///   STRING_COLUMN,
///   INT_COLUMN,
///   N_COLUMNS
/// };
/// 
/// ...
/// 
/// GtkTreeModel *list_store;
/// GtkTreeIter iter;
/// gboolean valid;
/// gint row_count = 0;
/// 
/// // make a new list_store
/// list_store = gtk_list_store_new (N_COLUMNS,
///                                  G_TYPE_STRING,
///                                  G_TYPE_INT);
/// 
/// // Fill the list store with data
/// populate_model (list_store);
/// 
/// // Get the first iter in the list, check it is valid and walk
/// // through the list, reading each row.
/// 
/// valid = gtk_tree_model_get_iter_first (list_store,
///                                        &iter);
/// while (valid)
///  {
///    gchar *str_data;
///    gint   int_data;
/// 
///    // Make sure you terminate calls to gtk_tree_model_get() with a “-1” value
///    gtk_tree_model_get (list_store, &iter,
///                        STRING_COLUMN, &str_data,
///                        INT_COLUMN, &int_data,
///                        -1);
/// 
///    // Do something with the data
///    g_print ("Row %d: (%s,%d)\n",
///             row_count, str_data, int_data);
///    g_free (str_data);
/// 
///    valid = gtk_tree_model_iter_next (list_store,
///                                      &iter);
///    row_count++;
///  }
/// ```
/// 
/// The `GtkTreeModel` interface contains two methods for reference
/// counting: `gtk_tree_model_ref_node()` and `gtk_tree_model_unref_node()`.
/// These two methods are optional to implement. The reference counting
/// is meant as a way for views to let models know when nodes are being
/// displayed. `GtkTreeView` will take a reference on a node when it is
/// visible, which means the node is either in the toplevel or expanded.
/// Being displayed does not mean that the node is currently directly
/// visible to the user in the viewport. Based on this reference counting
/// scheme a caching model, for example, can decide whether or not to cache
/// a node based on the reference count. A file-system based model would
/// not want to keep the entire file hierarchy in memory, but just the
/// folders that are currently expanded in every current view.
/// 
/// When working with reference counting, the following rules must be taken
/// into account:
/// 
/// - Never take a reference on a node without owning a reference on its parent.
///   This means that all parent nodes of a referenced node must be referenced
///   as well.
/// 
/// - Outstanding references on a deleted node are not released. This is not
///   possible because the node has already been deleted by the time the
///   row-deleted signal is received.
/// 
/// - Models are not obligated to emit a signal on rows of which none of its
///   siblings are referenced. To phrase this differently, signals are only
///   required for levels in which nodes are referenced. For the root level
///   however, signals must be emitted at all times (however the root level
///   is always referenced when any view is attached).
public struct TreeModelRef: TreeModelProtocol {
    /// Untyped pointer to the underlying `GtkTreeModel` instance.
    /// For type-safe access, use the generated, typed pointer `tree_model_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TreeModelRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkTreeModel>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TreeModelProtocol`
    init<T: TreeModelProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TreeModel` type acts as an owner of an underlying `GtkTreeModel` instance.
/// It provides the methods that can operate on this data type through `TreeModelProtocol` conformance.
/// Use `TreeModel` as a strong reference or owner of a `GtkTreeModel` instance.
///
/// The `GtkTreeModel` interface defines a generic tree interface for
/// use by the `GtkTreeView` widget. It is an abstract interface, and
/// is designed to be usable with any appropriate data structure. The
/// programmer just has to implement this interface on their own data
/// type for it to be viewable by a `GtkTreeView` widget.
/// 
/// The model is represented as a hierarchical tree of strongly-typed,
/// columned data. In other words, the model can be seen as a tree where
/// every node has different values depending on which column is being
/// queried. The type of data found in a column is determined by using
/// the GType system (ie. `G_TYPE_INT`, `GTK_TYPE_BUTTON`, `G_TYPE_POINTER`,
/// etc). The types are homogeneous per column across all nodes. It is
/// important to note that this interface only provides a way of examining
/// a model and observing changes. The implementation of each individual
/// model decides how and if changes are made.
/// 
/// In order to make life simpler for programmers who do not need to
/// write their own specialized model, two generic models are provided
/// — the `GtkTreeStore` and the `GtkListStore`. To use these, the
/// developer simply pushes data into these models as necessary. These
/// models provide the data structure as well as all appropriate tree
/// interfaces. As a result, implementing drag and drop, sorting, and
/// storing data is trivial. For the vast majority of trees and lists,
/// these two models are sufficient.
/// 
/// Models are accessed on a node/column level of granularity. One can
/// query for the value of a model at a certain node and a certain
/// column on that node. There are two structures used to reference a
/// particular node in a model. They are the `GtkTreePath`-struct and
/// the `GtkTreeIter`-struct (“iter” is short for iterator). Most of the
/// interface consists of operations on a `GtkTreeIter`-struct.
/// 
/// A path is essentially a potential node. It is a location on a model
/// that may or may not actually correspond to a node on a specific
/// model. The `GtkTreePath`-struct can be converted into either an
/// array of unsigned integers or a string. The string form is a list
/// of numbers separated by a colon. Each number refers to the offset
/// at that level. Thus, the path `0` refers to the root
/// node and the path `2:4` refers to the fifth child of
/// the third node.
/// 
/// By contrast, a `GtkTreeIter`-struct is a reference to a specific node on
/// a specific model. It is a generic struct with an integer and three
/// generic pointers. These are filled in by the model in a model-specific
/// way. One can convert a path to an iterator by calling
/// `gtk_tree_model_get_iter()`. These iterators are the primary way
/// of accessing a model and are similar to the iterators used by
/// `GtkTextBuffer`. They are generally statically allocated on the
/// stack and only used for a short time. The model interface defines
/// a set of operations using them for navigating the model.
/// 
/// It is expected that models fill in the iterator with private data.
/// For example, the `GtkListStore` model, which is internally a simple
/// linked list, stores a list node in one of the pointers. The
/// `GtkTreeModelSort` stores an array and an offset in two of the
/// pointers. Additionally, there is an integer field. This field is
/// generally filled with a unique stamp per model. This stamp is for
/// catching errors resulting from using invalid iterators with a model.
/// 
/// The lifecycle of an iterator can be a little confusing at first.
/// Iterators are expected to always be valid for as long as the model
/// is unchanged (and doesn’t emit a signal). The model is considered
/// to own all outstanding iterators and nothing needs to be done to
/// free them from the user’s point of view. Additionally, some models
/// guarantee that an iterator is valid for as long as the node it refers
/// to is valid (most notably the `GtkTreeStore` and `GtkListStore`).
/// Although generally uninteresting, as one always has to allow for
/// the case where iterators do not persist beyond a signal, some very
/// important performance enhancements were made in the sort model.
/// As a result, the `GTK_TREE_MODEL_ITERS_PERSIST` flag was added to
/// indicate this behavior.
/// 
/// To help show some common operation of a model, some examples are
/// provided. The first example shows three ways of getting the iter at
/// the location `3:2:5`. While the first method shown is
/// easier, the second is much more common, as you often get paths from
/// callbacks.
/// 
/// ## Acquiring a `GtkTreeIter`-struct
/// 
/// (C Language Example):
/// ```C
/// // Three ways of getting the iter pointing to the location
/// GtkTreePath *path;
/// GtkTreeIter iter;
/// GtkTreeIter parent_iter;
/// 
/// // get the iterator from a string
/// gtk_tree_model_get_iter_from_string (model,
///                                      &iter,
///                                      "3:2:5");
/// 
/// // get the iterator from a path
/// path = gtk_tree_path_new_from_string ("3:2:5");
/// gtk_tree_model_get_iter (model, &iter, path);
/// gtk_tree_path_free (path);
/// 
/// // walk the tree to find the iterator
/// gtk_tree_model_iter_nth_child (model, &iter,
///                                NULL, 3);
/// parent_iter = iter;
/// gtk_tree_model_iter_nth_child (model, &iter,
///                                &parent_iter, 2);
/// parent_iter = iter;
/// gtk_tree_model_iter_nth_child (model, &iter,
///                                &parent_iter, 5);
/// ```
/// 
/// This second example shows a quick way of iterating through a list
/// and getting a string and an integer from each row. The
/// `populate_model()` function used below is not
/// shown, as it is specific to the `GtkListStore`. For information on
/// how to write such a function, see the `GtkListStore` documentation.
/// 
/// ## Reading data from a `GtkTreeModel`
/// 
/// (C Language Example):
/// ```C
/// enum
/// {
///   STRING_COLUMN,
///   INT_COLUMN,
///   N_COLUMNS
/// };
/// 
/// ...
/// 
/// GtkTreeModel *list_store;
/// GtkTreeIter iter;
/// gboolean valid;
/// gint row_count = 0;
/// 
/// // make a new list_store
/// list_store = gtk_list_store_new (N_COLUMNS,
///                                  G_TYPE_STRING,
///                                  G_TYPE_INT);
/// 
/// // Fill the list store with data
/// populate_model (list_store);
/// 
/// // Get the first iter in the list, check it is valid and walk
/// // through the list, reading each row.
/// 
/// valid = gtk_tree_model_get_iter_first (list_store,
///                                        &iter);
/// while (valid)
///  {
///    gchar *str_data;
///    gint   int_data;
/// 
///    // Make sure you terminate calls to gtk_tree_model_get() with a “-1” value
///    gtk_tree_model_get (list_store, &iter,
///                        STRING_COLUMN, &str_data,
///                        INT_COLUMN, &int_data,
///                        -1);
/// 
///    // Do something with the data
///    g_print ("Row %d: (%s,%d)\n",
///             row_count, str_data, int_data);
///    g_free (str_data);
/// 
///    valid = gtk_tree_model_iter_next (list_store,
///                                      &iter);
///    row_count++;
///  }
/// ```
/// 
/// The `GtkTreeModel` interface contains two methods for reference
/// counting: `gtk_tree_model_ref_node()` and `gtk_tree_model_unref_node()`.
/// These two methods are optional to implement. The reference counting
/// is meant as a way for views to let models know when nodes are being
/// displayed. `GtkTreeView` will take a reference on a node when it is
/// visible, which means the node is either in the toplevel or expanded.
/// Being displayed does not mean that the node is currently directly
/// visible to the user in the viewport. Based on this reference counting
/// scheme a caching model, for example, can decide whether or not to cache
/// a node based on the reference count. A file-system based model would
/// not want to keep the entire file hierarchy in memory, but just the
/// folders that are currently expanded in every current view.
/// 
/// When working with reference counting, the following rules must be taken
/// into account:
/// 
/// - Never take a reference on a node without owning a reference on its parent.
///   This means that all parent nodes of a referenced node must be referenced
///   as well.
/// 
/// - Outstanding references on a deleted node are not released. This is not
///   possible because the node has already been deleted by the time the
///   row-deleted signal is received.
/// 
/// - Models are not obligated to emit a signal on rows of which none of its
///   siblings are referenced. To phrase this differently, signals are only
///   required for levels in which nodes are referenced. For the root level
///   however, signals must be emitted at all times (however the root level
///   is always referenced when any view is attached).
open class TreeModel: TreeModelProtocol {
    /// Untyped pointer to the underlying `GtkTreeModel` instance.
    /// For type-safe access, use the generated, typed pointer `tree_model_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `TreeModel` instance.
    public init(_ op: UnsafeMutablePointer<GtkTreeModel>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `TreeModelProtocol`
    /// `GtkTreeModel` does not allow reference counting.
    public convenience init<T: TreeModelProtocol>(_ other: T) {
        self.init(cast(other.tree_model_ptr))
        // no reference counting for GtkTreeModel, cannot ref(cast(tree_model_ptr))
    }

    /// Do-nothing destructor for`GtkTreeModel`.
    deinit {
        // no reference counting for GtkTreeModel, cannot unref(cast(tree_model_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkTreeModel.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkTreeModel.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkTreeModel.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeModelProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkTreeModel>(opaquePointer))
    }



}

// MARK: - no TreeModel properties

public enum TreeModelSignalName: String, SignalNameProtocol {
    /// This signal is emitted when a row in the model has changed.
    case rowChanged = "row-changed"
    /// This signal is emitted when a row has been deleted.
    /// 
    /// Note that no iterator is passed to the signal handler,
    /// since the row is already deleted.
    /// 
    /// This should be called by models after a row has been removed.
    /// The location pointed to by `path` should be the location that
    /// the row previously was at. It may not be a valid location anymore.
    case rowDeleted = "row-deleted"
    /// This signal is emitted when a row has gotten the first child
    /// row or lost its last child row.
    case rowHasChildToggled = "row-has-child-toggled"
    /// This signal is emitted when a new row has been inserted in
    /// the model.
    /// 
    /// Note that the row may still be empty at this point, since
    /// it is a common pattern to first insert an empty row, and
    /// then fill it with the desired values.
    case rowInserted = "row-inserted"
    /// This signal is emitted when the children of a node in the
    /// `GtkTreeModel` have been reordered.
    /// 
    /// Note that this signal is not emitted
    /// when rows are reordered by DND, since this is implemented
    /// by removing and then reinserting the row.
    case rowsReordered = "rows-reordered"

}

public extension TreeModelProtocol {
    /// Connect a `TreeModelSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: TreeModelSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(tree_model_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension TreeModelProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTreeModel` instance.
    var tree_model_ptr: UnsafeMutablePointer<GtkTreeModel> { return ptr.assumingMemoryBound(to: GtkTreeModel.self) }

    /// Creates a new `GtkTreeModel`, with `child_model` as the child_model
    /// and `root` as the virtual root.
    func filterNew(root: TreePathProtocol) -> UnsafeMutablePointer<GtkTreeModel>! {
        let rv = gtk_tree_model_filter_new(cast(tree_model_ptr), cast(root.ptr))
        return cast(rv)
    }

    /// Calls func on each node in model in a depth-first fashion.
    /// 
    /// If `func` returns `true`, then the tree ceases to be walked,
    /// and `gtk_tree_model_foreach()` returns.
    func foreach(_ func_: @escaping TreeModelForeachFunc, userData user_data: UnsafeMutableRawPointer) {
        gtk_tree_model_foreach(cast(tree_model_ptr), func_, cast(user_data))
    
    }


    // *** get() is not available because it has a varargs (...) parameter!


    /// Returns the type of the column.
    func getColumnType(index_: CInt) -> GType {
        let rv = gtk_tree_model_get_column_type(cast(tree_model_ptr), gint(index_))
        return rv
    }

    /// Returns a set of flags supported by this interface.
    /// 
    /// The flags are a bitwise combination of `GtkTreeModelFlags`.
    /// The flags supported should not change during the lifetime
    /// of the `tree_model`.
    func getFlags() -> GtkTreeModelFlags {
        let rv = gtk_tree_model_get_flags(cast(tree_model_ptr))
        return rv
    }

    /// Sets `iter` to a valid iterator pointing to `path`.  If `path` does
    /// not exist, `iter` is set to an invalid iterator and `false` is returned.
    func get(iter: TreeIterProtocol, path: TreePathProtocol) -> Bool {
        let rv = gtk_tree_model_get_iter(cast(tree_model_ptr), cast(iter.ptr), cast(path.ptr))
        return Bool(rv != 0)
    }

    /// Initializes `iter` with the first iterator in the tree
    /// (the one at the path "0") and returns `true`. Returns
    /// `false` if the tree is empty.
    func getIterFirst(iter: TreeIterProtocol) -> Bool {
        let rv = gtk_tree_model_get_iter_first(cast(tree_model_ptr), cast(iter.ptr))
        return Bool(rv != 0)
    }

    /// Sets `iter` to a valid iterator pointing to `path_string`, if it
    /// exists. Otherwise, `iter` is left invalid and `false` is returned.
    func getIterFromString(iter: TreeIterProtocol, pathString path_string: UnsafePointer<gchar>) -> Bool {
        let rv = gtk_tree_model_get_iter_from_string(cast(tree_model_ptr), cast(iter.ptr), path_string)
        return Bool(rv != 0)
    }

    /// Returns the number of columns supported by `tree_model`.
    func getNColumns() -> CInt {
        let rv = gtk_tree_model_get_n_columns(cast(tree_model_ptr))
        return CInt(rv)
    }

    /// Returns a newly-created `GtkTreePath`-struct referenced by `iter`.
    /// 
    /// This path should be freed with `gtk_tree_path_free()`.
    func getPath(iter: TreeIterProtocol) -> UnsafeMutablePointer<GtkTreePath>! {
        let rv = gtk_tree_model_get_path(cast(tree_model_ptr), cast(iter.ptr))
        return cast(rv)
    }

    /// Generates a string representation of the iter.
    /// 
    /// This string is a “:” separated list of numbers.
    /// For example, “4:10:0:3” would be an acceptable
    /// return value for this string.
    func getStringFrom(iter: TreeIterProtocol) -> String! {
        let rv = gtk_tree_model_get_string_from_iter(cast(tree_model_ptr), cast(iter.ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// See `gtk_tree_model_get()`, this version takes a va_list
    /// for language bindings to use.
    func getValist(iter: TreeIterProtocol, varArgs var_args: CVaListPointer) {
        gtk_tree_model_get_valist(cast(tree_model_ptr), cast(iter.ptr), var_args)
    
    }

    /// Initializes and sets `value` to that at `column`.
    /// 
    /// When done with `value`, `g_value_unset()` needs to be called
    /// to free any allocated memory.
    func getValue(iter: TreeIterProtocol, column: CInt, value: GLibObject.ValueProtocol) {
        gtk_tree_model_get_value(cast(tree_model_ptr), cast(iter.ptr), gint(column), cast(value.ptr))
    
    }

    /// Sets `iter` to point to the first child of `parent`.
    /// 
    /// If `parent` has no children, `false` is returned and `iter` is
    /// set to be invalid. `parent` will remain a valid node after this
    /// function has been called.
    /// 
    /// If `parent` is `nil` returns the first node, equivalent to
    /// `gtk_tree_model_get_iter_first (tree_model, iter);`
    func iterChildren(iter: TreeIterProtocol, parent: TreeIterProtocol) -> Bool {
        let rv = gtk_tree_model_iter_children(cast(tree_model_ptr), cast(iter.ptr), cast(parent.ptr))
        return Bool(rv != 0)
    }

    /// Returns `true` if `iter` has children, `false` otherwise.
    func iterHasChild(iter: TreeIterProtocol) -> Bool {
        let rv = gtk_tree_model_iter_has_child(cast(tree_model_ptr), cast(iter.ptr))
        return Bool(rv != 0)
    }

    /// Returns the number of children that `iter` has.
    /// 
    /// As a special case, if `iter` is `nil`, then the number
    /// of toplevel nodes is returned.
    func iterNChildren(iter: TreeIterProtocol) -> CInt {
        let rv = gtk_tree_model_iter_n_children(cast(tree_model_ptr), cast(iter.ptr))
        return CInt(rv)
    }

    /// Sets `iter` to point to the node following it at the current level.
    /// 
    /// If there is no next `iter`, `false` is returned and `iter` is set
    /// to be invalid.
    func iterNext(iter: TreeIterProtocol) -> Bool {
        let rv = gtk_tree_model_iter_next(cast(tree_model_ptr), cast(iter.ptr))
        return Bool(rv != 0)
    }

    /// Sets `iter` to be the child of `parent`, using the given index.
    /// 
    /// The first index is 0. If `n` is too big, or `parent` has no children,
    /// `iter` is set to an invalid iterator and `false` is returned. `parent`
    /// will remain a valid node after this function has been called. As a
    /// special case, if `parent` is `nil`, then the `n`-th root node
    /// is set.
    func iterNthChild(iter: TreeIterProtocol, parent: TreeIterProtocol, n: CInt) -> Bool {
        let rv = gtk_tree_model_iter_nth_child(cast(tree_model_ptr), cast(iter.ptr), cast(parent.ptr), gint(n))
        return Bool(rv != 0)
    }

    /// Sets `iter` to be the parent of `child`.
    /// 
    /// If `child` is at the toplevel, and doesn’t have a parent, then
    /// `iter` is set to an invalid iterator and `false` is returned.
    /// `child` will remain a valid node after this function has been
    /// called.
    /// 
    /// `iter` will be initialized before the lookup is performed, so `child`
    /// and `iter` cannot point to the same memory location.
    func iterParent(iter: TreeIterProtocol, child: TreeIterProtocol) -> Bool {
        let rv = gtk_tree_model_iter_parent(cast(tree_model_ptr), cast(iter.ptr), cast(child.ptr))
        return Bool(rv != 0)
    }

    /// Sets `iter` to point to the previous node at the current level.
    /// 
    /// If there is no previous `iter`, `false` is returned and `iter` is
    /// set to be invalid.
    func iterPrevious(iter: TreeIterProtocol) -> Bool {
        let rv = gtk_tree_model_iter_previous(cast(tree_model_ptr), cast(iter.ptr))
        return Bool(rv != 0)
    }

    /// Lets the tree ref the node.
    /// 
    /// This is an optional method for models to implement.
    /// To be more specific, models may ignore this call as it exists
    /// primarily for performance reasons.
    /// 
    /// This function is primarily meant as a way for views to let
    /// caching models know when nodes are being displayed (and hence,
    /// whether or not to cache that node). Being displayed means a node
    /// is in an expanded branch, regardless of whether the node is currently
    /// visible in the viewport. For example, a file-system based model
    /// would not want to keep the entire file-hierarchy in memory,
    /// just the sections that are currently being displayed by
    /// every current view.
    /// 
    /// A model should be expected to be able to get an iter independent
    /// of its reffed state.
    func refNode(iter: TreeIterProtocol) {
        gtk_tree_model_ref_node(cast(tree_model_ptr), cast(iter.ptr))
    
    }

    /// Emits the `GtkTreeModel::row`-changed signal on `tree_model`.
    func rowChanged(path: TreePathProtocol, iter: TreeIterProtocol) {
        gtk_tree_model_row_changed(cast(tree_model_ptr), cast(path.ptr), cast(iter.ptr))
    
    }

    /// Emits the `GtkTreeModel::row`-deleted signal on `tree_model`.
    /// 
    /// This should be called by models after a row has been removed.
    /// The location pointed to by `path` should be the location that
    /// the row previously was at. It may not be a valid location anymore.
    /// 
    /// Nodes that are deleted are not unreffed, this means that any
    /// outstanding references on the deleted node should not be released.
    func rowDeleted(path: TreePathProtocol) {
        gtk_tree_model_row_deleted(cast(tree_model_ptr), cast(path.ptr))
    
    }

    /// Emits the `GtkTreeModel::row`-has-child-toggled signal on
    /// `tree_model`. This should be called by models after the child
    /// state of a node changes.
    func rowHasChildToggled(path: TreePathProtocol, iter: TreeIterProtocol) {
        gtk_tree_model_row_has_child_toggled(cast(tree_model_ptr), cast(path.ptr), cast(iter.ptr))
    
    }

    /// Emits the `GtkTreeModel::row`-inserted signal on `tree_model`.
    func rowInserted(path: TreePathProtocol, iter: TreeIterProtocol) {
        gtk_tree_model_row_inserted(cast(tree_model_ptr), cast(path.ptr), cast(iter.ptr))
    
    }

    /// Emits the `GtkTreeModel::rows`-reordered signal on `tree_model`.
    /// 
    /// This should be called by models when their rows have been
    /// reordered.
    func rowsReordered(path: TreePathProtocol, iter: TreeIterProtocol, newOrder new_order: UnsafeMutablePointer<CInt>) {
        gtk_tree_model_rows_reordered(cast(tree_model_ptr), cast(path.ptr), cast(iter.ptr), cast(new_order))
    
    }

    /// Emits the `GtkTreeModel::rows`-reordered signal on `tree_model`.
    /// 
    /// This should be called by models when their rows have been
    /// reordered.
    func rowsReorderedWithLength(path: TreePathProtocol, iter: TreeIterProtocol, newOrder new_order: UnsafeMutablePointer<CInt>, length: CInt) {
        gtk_tree_model_rows_reordered_with_length(cast(tree_model_ptr), cast(path.ptr), cast(iter.ptr), cast(new_order), gint(length))
    
    }

    /// Lets the tree unref the node.
    /// 
    /// This is an optional method for models to implement.
    /// To be more specific, models may ignore this call as it exists
    /// primarily for performance reasons. For more information on what
    /// this means, see `gtk_tree_model_ref_node()`.
    /// 
    /// Please note that nodes that are deleted are not unreffed.
    func unrefNode(iter: TreeIterProtocol) {
        gtk_tree_model_unref_node(cast(tree_model_ptr), cast(iter.ptr))
    
    }

    /// Obtains a `tree_model` and `path` from selection data of target type
    /// `GTK_TREE_MODEL_ROW`. Normally called from a drag_data_received handler.
    /// This function can only be used if `selection_data` originates from the same
    /// process that’s calling this function, because a pointer to the tree model
    /// is being passed around. If you aren’t in the same process, then you'll
    /// get memory corruption. In the `GtkTreeDragDest` drag_data_received handler,
    /// you can assume that selection data of type `GTK_TREE_MODEL_ROW` is
    /// in from the current process. The returned path must be freed with
    /// `gtk_tree_path_free()`.
    func treeGetRowDragData(selectionData selection_data: SelectionDataProtocol, path: TreePathProtocol) -> Bool {
        let rv = gtk_tree_get_row_drag_data(cast(selection_data.ptr), cast(tree_model_ptr), cast(path.ptr))
        return Bool(rv != 0)
    }

    /// Sets selection data of target type `GTK_TREE_MODEL_ROW`. Normally used
    /// in a drag_data_get handler.
    func treeSetRowDragData(selectionData selection_data: SelectionDataProtocol, path: TreePathProtocol) -> Bool {
        let rv = gtk_tree_set_row_drag_data(cast(selection_data.ptr), cast(tree_model_ptr), cast(path.ptr))
        return Bool(rv != 0)
    }
    /// Returns a set of flags supported by this interface.
    /// 
    /// The flags are a bitwise combination of `GtkTreeModelFlags`.
    /// The flags supported should not change during the lifetime
    /// of the `tree_model`.
    var flags: GtkTreeModelFlags {
        /// Returns a set of flags supported by this interface.
        /// 
        /// The flags are a bitwise combination of `GtkTreeModelFlags`.
        /// The flags supported should not change during the lifetime
        /// of the `tree_model`.
        get {
            let rv = gtk_tree_model_get_flags(cast(tree_model_ptr))
            return rv
        }
    }

    /// Returns the number of columns supported by `tree_model`.
    var nColumns: CInt {
        /// Returns the number of columns supported by `tree_model`.
        get {
            let rv = gtk_tree_model_get_n_columns(cast(tree_model_ptr))
            return CInt(rv)
        }
    }
}



// MARK: - TreeSortable Interface

/// The `TreeSortableProtocol` protocol exposes the methods and properties of an underlying `GtkTreeSortable` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TreeSortable`.
/// Alternatively, use `TreeSortableRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkTreeSortable` is an interface to be implemented by tree models which
/// support sorting. The `GtkTreeView` uses the methods provided by this interface
/// to sort the model.
public protocol TreeSortableProtocol: TreeModelProtocol {
    /// Untyped pointer to the underlying `GtkTreeSortable` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkTreeSortable` instance.
    var tree_sortable_ptr: UnsafeMutablePointer<GtkTreeSortable> { get }
}

/// The `TreeSortableRef` type acts as a lightweight Swift reference to an underlying `GtkTreeSortable` instance.
/// It exposes methods that can operate on this data type through `TreeSortableProtocol` conformance.
/// Use `TreeSortableRef` only as an `unowned` reference to an existing `GtkTreeSortable` instance.
///
/// `GtkTreeSortable` is an interface to be implemented by tree models which
/// support sorting. The `GtkTreeView` uses the methods provided by this interface
/// to sort the model.
public struct TreeSortableRef: TreeSortableProtocol {
    /// Untyped pointer to the underlying `GtkTreeSortable` instance.
    /// For type-safe access, use the generated, typed pointer `tree_sortable_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TreeSortableRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkTreeSortable>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TreeSortableProtocol`
    init<T: TreeSortableProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeSortableProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeSortableProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeSortableProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeSortableProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeSortableProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TreeSortable` type acts as an owner of an underlying `GtkTreeSortable` instance.
/// It provides the methods that can operate on this data type through `TreeSortableProtocol` conformance.
/// Use `TreeSortable` as a strong reference or owner of a `GtkTreeSortable` instance.
///
/// `GtkTreeSortable` is an interface to be implemented by tree models which
/// support sorting. The `GtkTreeView` uses the methods provided by this interface
/// to sort the model.
open class TreeSortable: TreeModel, TreeSortableProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `TreeSortable` instance.
    public init(_ op: UnsafeMutablePointer<GtkTreeSortable>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `TreeSortableProtocol`
    /// `GtkTreeSortable` does not allow reference counting.
    public convenience init<T: TreeSortableProtocol>(_ other: T) {
        self.init(cast(other.tree_sortable_ptr))
        // no reference counting for GtkTreeSortable, cannot ref(cast(tree_sortable_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeSortableProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkTreeSortable.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeSortableProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkTreeSortable.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeSortableProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkTreeSortable.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TreeSortableProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkTreeSortable>(opaquePointer))
    }



}

// MARK: - no TreeSortable properties

public enum TreeSortableSignalName: String, SignalNameProtocol {
    /// This signal is emitted when a row in the model has changed.
    case rowChanged = "row-changed"
    /// This signal is emitted when a row has been deleted.
    /// 
    /// Note that no iterator is passed to the signal handler,
    /// since the row is already deleted.
    /// 
    /// This should be called by models after a row has been removed.
    /// The location pointed to by `path` should be the location that
    /// the row previously was at. It may not be a valid location anymore.
    case rowDeleted = "row-deleted"
    /// This signal is emitted when a row has gotten the first child
    /// row or lost its last child row.
    case rowHasChildToggled = "row-has-child-toggled"
    /// This signal is emitted when a new row has been inserted in
    /// the model.
    /// 
    /// Note that the row may still be empty at this point, since
    /// it is a common pattern to first insert an empty row, and
    /// then fill it with the desired values.
    case rowInserted = "row-inserted"
    /// This signal is emitted when the children of a node in the
    /// `GtkTreeModel` have been reordered.
    /// 
    /// Note that this signal is not emitted
    /// when rows are reordered by DND, since this is implemented
    /// by removing and then reinserting the row.
    case rowsReordered = "rows-reordered"
    /// The `sort`-column-changed signal is emitted when the sort column
    /// or sort order of `sortable` is changed. The signal is emitted before
    /// the contents of `sortable` are resorted.
    case sortColumnChanged = "sort-column-changed"

}

public extension TreeSortableProtocol {
    /// Connect a `TreeSortableSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: TreeSortableSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(tree_sortable_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension TreeSortableProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkTreeSortable` instance.
    var tree_sortable_ptr: UnsafeMutablePointer<GtkTreeSortable> { return ptr.assumingMemoryBound(to: GtkTreeSortable.self) }

    /// Fills in `sort_column_id` and `order` with the current sort column and the
    /// order. It returns `true` unless the `sort_column_id` is
    /// `GTK_TREE_SORTABLE_DEFAULT_SORT_COLUMN_ID` or
    /// `GTK_TREE_SORTABLE_UNSORTED_SORT_COLUMN_ID`.
    func get(sortColumnID sort_column_id: UnsafeMutablePointer<CInt>, order: UnsafeMutablePointer<GtkSortType>) -> Bool {
        let rv = gtk_tree_sortable_get_sort_column_id(cast(tree_sortable_ptr), cast(sort_column_id), cast(order))
        return Bool(rv != 0)
    }

    /// Returns `true` if the model has a default sort function. This is used
    /// primarily by GtkTreeViewColumns in order to determine if a model can
    /// go back to the default state, or not.
    func hasDefaultSortFunc() -> Bool {
        let rv = gtk_tree_sortable_has_default_sort_func(cast(tree_sortable_ptr))
        return Bool(rv != 0)
    }

    /// Sets the default comparison function used when sorting to be `sort_func`.
    /// If the current sort column id of `sortable` is
    /// `GTK_TREE_SORTABLE_DEFAULT_SORT_COLUMN_ID`, then the model will sort using
    /// this function.
    /// 
    /// If `sort_func` is `nil`, then there will be no default comparison function.
    /// This means that once the model  has been sorted, it can’t go back to the
    /// default state. In this case, when the current sort column id of `sortable`
    /// is `GTK_TREE_SORTABLE_DEFAULT_SORT_COLUMN_ID`, the model will be unsorted.
    func setDefault(sortFunc sort_func: @escaping TreeIterCompareFunc, userData user_data: UnsafeMutableRawPointer, destroy: @escaping GLib.DestroyNotify) {
        gtk_tree_sortable_set_default_sort_func(cast(tree_sortable_ptr), sort_func, cast(user_data), destroy)
    
    }

    /// Sets the current sort column to be `sort_column_id`. The `sortable` will
    /// resort itself to reflect this change, after emitting a
    /// `GtkTreeSortable::sort`-column-changed signal. `sort_column_id` may either be
    /// a regular column id, or one of the following special values:
    /// 
    /// - `GTK_TREE_SORTABLE_DEFAULT_SORT_COLUMN_ID:` the default sort function
    ///   will be used, if it is set
    /// 
    /// - `GTK_TREE_SORTABLE_UNSORTED_SORT_COLUMN_ID:` no sorting will occur
    func set(sortColumnID sort_column_id: CInt, order: SortType) {
        gtk_tree_sortable_set_sort_column_id(cast(tree_sortable_ptr), gint(sort_column_id), order)
    
    }

    /// Sets the comparison function used when sorting to be `sort_func`. If the
    /// current sort column id of `sortable` is the same as `sort_column_id`, then
    /// the model will sort using this function.
    func setSortFunc(sortColumnID sort_column_id: CInt, sortFunc sort_func: @escaping TreeIterCompareFunc, userData user_data: UnsafeMutableRawPointer, destroy: @escaping GLib.DestroyNotify) {
        gtk_tree_sortable_set_sort_func(cast(tree_sortable_ptr), gint(sort_column_id), sort_func, cast(user_data), destroy)
    
    }

    /// Emits a `GtkTreeSortable::sort`-column-changed signal on `sortable`.
    func sortColumnChanged() {
        gtk_tree_sortable_sort_column_changed(cast(tree_sortable_ptr))
    
    }
}



