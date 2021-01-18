//
//  TreeStore.swift
//  Gtk
//
//  Created by Rene Hexel on 22/4/17.
//  Copyright © 2017, 2018, 2019, 2020 Rene Hexel.  All rights reserved.
//
import GLibObject
import CGtk

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

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable required public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringProtocol`.**
    /// - Parameter p: raw pointer to the underlying object to be retained
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
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
