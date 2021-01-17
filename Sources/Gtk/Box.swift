//
//  Box.swift
//  SwiftGtk
//
//  Created by Rene Hexel on 23/4/17.
//  Copyright © 2017, 2018, 2020 Rene Hexel.  All rights reserved.
//
import CGLib
import CGtk
import GLib
import GLibObject
import GIO
import Cairo

/// Box protocol convenience methods
public extension BoxProtocol {
    /// Set the start margin of the box
    ///
    /// - Parameter marginStart: start margin

    @inlinable func set(marginStart: Int) { setMarginStart(margin: marginStart) }
    /// Set the end margin of the box
    ///
    /// - Parameter marginEnd: end margin
    @inlinable func set(marginEnd: Int) { setMarginEnd(margin: marginEnd) }

    /// Set the property of a child widget of this box
    ///
    /// - Parameters:
    ///   - child: widget to set property for
    ///   - property: name of the property
    ///   - value: value to set
    @inlinable func set<W: WidgetProtocol>(child widget: W, properties: [(BoxPropertyName, Any)]) {
        widget.freezeChildNotify() ; defer { widget.thawChildNotify() }
        for (p, v) in properties {
            set(child: widget, property: p, value: v)
        }
    }

    /// Set up a child widget of this box with the given list of properties
    ///
    /// - Parameters:
    ///   - widget: child widget to set properties for
    ///   - properties: `PropertyName` / value pairs to set
    @inlinable func set<W: WidgetProtocol>(child widget: W, properties ps: (BoxPropertyName, Any)...) {
        set(child: widget, properties: ps)
    }

    /// Add a child widget to this box with a given list of properties
    ///
    /// - Parameters:
    ///   - widget: child widget to add
    ///   - properties: `PropertyName` / value pairs of properties to set
    @inlinable func add<W: WidgetProtocol>(_ widget: W, properties ps: (BoxPropertyName, Any)...) {
        widget.freezeChildNotify() ; defer { widget.thawChildNotify() }
        emit(ContainerSignalName.add, widget.widget_ptr)
        set(child: widget, properties: ps)
    }

    /// Add a child widget to this box with a given property
    ///
    /// - Parameters:
    ///   - widget: child widget to add
    ///   - property: name of the property to set
    ///   - value: value of the property to set
    @inlinable func add<W: WidgetProtocol, V>(_ widget: W, property p: BoxPropertyName, value v: V) {
        widget.freezeChildNotify() ; defer { widget.thawChildNotify() }
        emit(ContainerSignalName.add, widget.widget_ptr)
        set(child: widget, property: p, value: v)
    }

}

