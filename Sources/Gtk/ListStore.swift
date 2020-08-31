//
//  ListStore.swift
//  Gtk
//
//  Created by Rene Hexel on 22/4/17.
//  Copyright © 2017, 2018, 2019, 2020 Rene Hexel.  All rights reserved.
//
import GLibObject
import CGtk

public extension ListStore {
    /// Return a tree model reference for the list store
    @inlinable var treeModel: TreeModelRef { return TreeModelRef(cPointer: list_store_ptr) }

    /// Convenience constructor specifying the column types
    ///
    /// - Parameter types: array of column types for this list model
    @inlinable convenience init(types: [GType]) {
        var ts = types
        self.init(nColumns: types.count, types: &ts)
    }

    /// Convenience constructor specifying the list column types
    ///
    /// - Parameter types: column types for this list model
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
        list_store_ptr.withMemoryRebound(to: GtkListStore.self, capacity: 1) {
            var c = gint(startColumn)
            for v in values {
                gtk_list_store_set_value($0, i.tree_iter_ptr, c, v.value_ptr)
                c += 1
            }
        }
    }

    /// Append the given values to the next row
    ///
    /// - Parameters:
    ///   - i: iterator representing the current row (updated to next row)
    ///   - v: array of values to add
    ///   - startColumn: column to start from (defaults to `0`)
    @inlinable func append<I: TreeIterProtocol, V: ValueProtocol>(asNextRow i: I, values v: [V], startColumn s: Int = 0) {
        list_store_ptr.withMemoryRebound(to: GtkListStore.self, capacity: 1) {
            gtk_list_store_append($0, i.tree_iter_ptr)
        }
        set(iter: i, values: v, startColumn: s)
    }

    /// Append the given values to the next row
    ///
    /// - Parameters:
    ///   - i: tree iterator representing the current row (updated to next row)
    ///   - values: array of values to add
    ///   - startColumn: column to start from (defaults to `0`)
    @inlinable func append<I: TreeIterProtocol>(asNextRow i: I, startColumn s: Int = 0, _ values: Value...) {
        list_store_ptr.withMemoryRebound(to: GtkListStore.self, capacity: 1) {
            gtk_list_store_append($0, i.tree_iter_ptr)
        }
        set(iter: i, values: values, startColumn: s)
    }
}


/// TreeView subclass for displaying lists that retain their model
open class ListView: TreeView {
    /// The underlying list store
    public var listStore: ListStore

    /// Convenience List View constructor
    ///
    /// - Parameter store: list view store description
    @inlinable public init(model store: ListStore) {
        listStore = store
        super.init(model: store.treeModel)
    }
}
