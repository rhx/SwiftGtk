//
//  TreeStore.swift
//  Gtk
//
//  Created by Rene Hexel on 22/4/17.
//  Copyright © 2017, 2018, 2019, 2020 Rene Hexel.  All rights reserved.
//
import GLibObject
import CGtk

/// Tree View row activation signal handler
public typealias TreeViewRowActivatedSignalHandler = (TreeViewRef, TreePathRef, TreeViewColumnRef) -> Void
/// Closure holder for a Tree View row activation signal handler
public typealias TreeViewRowActivatedSignalHandlerClosureHolder = Closure3Holder<TreeViewRef, TreePathRef, TreeViewColumnRef, Void>

public extension TreeStore {
    /// Return a tree model reference for the list store
    @inlinable var treeModel: TreeModelRef { return TreeModelRef(cPointer: tree_store_ptr) }

    /// Convenience constructor specifying the column types
    ///
    /// - Parameter types: array of column types for this tree model
    @inlinable convenience init(types: [GType]) {
        var ts = types
        self.init(nColumns: types.count, types: &ts)
    }

    /// Convenience constructor specifying the column types
    ///
    /// - Parameter types: column types for this tree model
    @inlinable convenience init(_ types: GType...) {
        var ts = types
        self.init(nColumns: types.count, types: &ts)
    }

    /// Set the given values for the current row
    ///
    /// - Parameters:
    ///   - i: iterator representing the current row
    ///   - values: array of values to add
    ///   - startColumn: column to start from (defaults to `0`)
    @inlinable func set<I: TreeIterProtocol, V: ValueProtocol>(iter i: I, values: [V], startColumn: Int = 0) {
        tree_store_ptr.withMemoryRebound(to: GtkTreeStore.self, capacity: 1) {
            var c = gint(startColumn)
            for v in values {
                gtk_tree_store_set_value($0, i.tree_iter_ptr, c, v.value_ptr)
                c += 1
            }
        }
    }

    /// Append the given values to the next row
    ///
    /// - Parameters:
    ///   - i: iterator representing the current row (updated to next row)
    ///   - p: parent iterator to append to
    ///   - v: array of values to add
    ///   - startColumn: column to start from (defaults to `0`)
    @inlinable func append<I: TreeIterProtocol, V: ValueProtocol>(asNextRow i: I, parent p: I? = nil, values v: [V], startColumn s: Int = 0) {
        tree_store_ptr.withMemoryRebound(to: GtkTreeStore.self, capacity: 1) {
            gtk_tree_store_append($0, i.tree_iter_ptr, p?.tree_iter_ptr)
        }
        set(iter: i, values: v, startColumn: s)
    }

    /// Append the given values to the next row
    ///
    /// - Parameters:
    ///   - i: tree iterator representing the current row (updated to next row)
    ///   - p: parent iterator to append to
    ///   - values: array of values to add
    ///   - startColumn: column to start from (defaults to `0`)
    @inlinable func append<I: TreeIterProtocol>(asNextRow i: I, parent p: I? = nil, startColumn s: Int = 0, _ values: Value...) {
        tree_store_ptr.withMemoryRebound(to: GtkTreeStore.self, capacity: 1) {
            gtk_tree_store_append($0, i.tree_iter_ptr, p?.tree_iter_ptr)
        }
        set(iter: i, values: values, startColumn: s)
    }
}

/// Tree Iterator
open class TreeIter: TreeIterBase {
    /// Underlying tree model structure
    open var iter = GtkTreeIter(stamp: 0, user_data: nil, user_data2: nil, user_data3: nil)

    /// Empty tree/list iterator constructor
    @inlinable public init() {
        let ptr = withUnsafeMutablePointer(to: &iter) {$0}
        super.init(ptr)
    }

    /// Iterator copy constructor
    ///
    /// - Parameter other: iterator to copy
    @inlinable public convenience init(copy other: TreeIter) {
        self.init()
        iter = other.iter
    }

    /// Iterator copy constructor
    ///
    /// - Parameter other: iterator to copy
    @inlinable public convenience init<T: TreeIterProtocol>(copy other: T) {
        self.init()
        iter = other.tree_iter_ptr.pointee
    }
}

public extension TreeView {
    /// Convenience Tree View constructor
    ///
    /// - Parameter store: tree view store description
    @inlinable convenience init(model store: TreeStore) {
        self.init(model: store.treeModel)
    }

    /// Append the given columns
    ///
    /// - Parameter columns: array of columns to append
    @inlinable func append<T: TreeViewColumnProtocol>(_ columns: [T]) {
        for c in columns { _ = append(column: c) }
    }

    /// Append the given columns
    ///
    /// - Parameter columns: list of of columns to append
    @inlinable func append<T: TreeViewColumnProtocol>(_ columns: T...) {
        for c in columns { _ = append(column: c) }
    }
}


public extension TreeViewColumn {
    /// Convenience constructor for setting up a tree or list view column
    ///
    /// - Parameters:
    ///   - column: number of the column starting at zero
    ///   - title: column title
    ///   - renderer: cell renderer to use
    ///   - attribute: model attribute to use
    ///   - expand: set to `false` to prevent cell from allocating more space than it needs
    ///   - rendererAttributes: array of attribute name/value pairs to set on the renderer
    @inlinable convenience init(_ column: Int, title: String? = nil, renderer: CellRenderer = CellRendererText(), attribute: PropertyName = "text", expand e: Bool = true, rendererAttributes: [(PropertyName, Value)] = []) {
        self.init()
        if let t = title { set(title: t) }
        for a in rendererAttributes {
            renderer.setProperty(propertyName: a.0.name, value: a.1)
        }
        packStart(cell: renderer, expand: e)
        addAttribute(cellRenderer: renderer, attribute: attribute.name, column: column)
    }

    /// Convenience constructor for setting up a tree or list view column
    ///
    /// - Parameters:
    ///   - column: number of the column starting at zero
    ///   - title: column title
    ///   - renderer: cell renderer to use
    ///   - attribute: model attribute to use
    ///   - expand: set to `false` to prevent cell from allocating more space than it needs
    ///   - rendererAttributes: array of attribute name/value pairs to set on the renderer
    @inlinable convenience init(_ column: Int, title t: String? = nil, renderer r: CellRenderer = CellRendererText(), attribute a: PropertyName = "text", expand e: Bool = true, rendererAttributes ras: (PropertyName, Value)...) {
        self.init(column, title: t, renderer: r, attribute: a, expand: e, rendererAttributes: ras)
    }
}

public extension TreeViewProtocol {
    /// Helper for connecting the row activations signal
    /// - Parameters:
    ///   - name: Name of the signal
    ///   - flags: Connection flags
    ///   - data: Closure holder to use
    ///   - handler: C language handler that unwraps the closure holder
    /// - Returns: The handler ID (always greater than 0 for successful connections)
    @usableFromInline internal func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: TreeViewRowActivatedSignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> ()) -> Int {
        let opaqueHolder = Unmanaged.passRetained(data).toOpaque()
        let callback = unsafeBitCast(handler, to: GCallback.self)
        let rv = signalConnectData(detailedSignal: name, cHandler: callback, data: opaqueHolder, destroyData: {
            if let swift = $0 {
                let holder = Unmanaged<TreeViewRowActivatedSignalHandlerClosureHolder>.fromOpaque(swift)
                holder.release()
            }
            let _ = $1
        }, connectFlags: flags)
        return rv
    }

    /// Connect a signal to a row activation handler.
    /// - Parameters:
    ///   - name: Name of the signal (e.g. `"row-activated"`)
    ///   - flags: The connection flags to use
    ///   - handler: The signal handler to execute when a row is activated
    /// - Returns: The handler ID (always greater than 0 for successful connections)
    @discardableResult
    @inlinable func connectRowActivated(name: UnsafePointer<gchar>, flags f: ConnectFlags = ConnectFlags(0), handler: @escaping TreeViewRowActivatedSignalHandler) -> Int {
        let rv = _connect(signal: name, flags: f, data: Closure3Holder(handler)) {
            let holder = Unmanaged<TreeViewRowActivatedSignalHandlerClosureHolder>.fromOpaque($3).takeUnretainedValue()
            holder.call(TreeViewRef(raw: $0), TreePathRef(raw: $1), TreeViewColumnRef(raw: $2))
        }
        return rv
    }

    /// Connect a row activation handler to the tree view.
    /// - Parameters:
    ///   - flags: The connection flags to use
    ///   - handler: The signal handler to execute when a row is activated
    /// - Returns: The handler ID (always greater than 0 for successful connections)
    @discardableResult
    @inlinable func onRowActivated(flags f: ConnectFlags = ConnectFlags(0), handler h: @escaping TreeViewRowActivatedSignalHandler) -> Int  {
        let rv = connectRowActivated(name: TreeViewSignalName.rowActivated.rawValue, flags: f, handler: h)
        return rv
    }
}
