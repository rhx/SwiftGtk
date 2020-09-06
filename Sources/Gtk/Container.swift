//
//  Container.swift
//  Gtk
//
//  Created by Rene Hexel on 29/4/17.
//  Copyright © 2017, 2019, 2020 Rene Hexel.  All rights reserved.
//
import CGLib
import CGtk
import GLib
import GLibObject
import GIO
import Cairo

public extension ContainerProtocol {
    /// Set a child widget property
    ///
    /// - Parameters:
    ///   - child: widget to set property for
    ///   - property: `ParamSpec` for property
    ///   - value: value to set
    /// - Returns: `true` if successful, `false` if value cannot be transformed
    @discardableResult
    @inlinable func set<W: WidgetProtocol, P: ParamSpecProtocol, V: ValueProtocol>(child: W, property: P, value: V) -> Bool {
        let ptype = property.param_spec_ptr.pointee.value_type
        let tmpValue = Value()
        _ = tmpValue.init_(gType: ptype)
        defer { tmpValue.unset() }
        guard value.transform(destValue: tmpValue) /* &&
             (property.paramValueValidate(value: tmpValue) ||
             (property.ptr.pointee.flags.rawValue & (ParamFlags.lax_validation)) != 0) */ else { return false }
        let paramID = property.param_spec_ptr.pointee.param_id
        let otype = property.param_spec_ptr.pointee.owner_type
        guard let p = typeClassPeek(type: otype) else {
            let n = property.param_spec_ptr.pointee.name
            let pname = n.map { String(cString: $0) } ?? "<unnamed>"
            g_warning("\(#file): No type class for owner type \(otype) of property named \(pname))")
            return false
        }
        container_ptr.withMemoryRebound(to: GtkContainer.self, capacity: 1) { container in
            child.widget_ptr.withMemoryRebound(to: GtkWidget.self, capacity: 1) { widget in
                let typeClass = ContainerClassRef(raw: p.ptr)
                typeClass._ptr.pointee.set_child_property(container, widget, paramID, tmpValue.value_ptr, property.param_spec_ptr)
            }
        }
        return true
    }

    /// Set the property of a child widget
    ///
    /// - Parameters:
    ///   - widget: child widget to set the property for
    ///   - property: name of the property
    ///   - value: the value to set the property to
    @inlinable func set<W: WidgetProtocol, P: PropertyNameProtocol, V>(child widget: W, property: P, value: V) {
        let v = Value(value)
        childSetProperty(child: widget, propertyName: property.rawValue, value: v)
    }

    /// Set the property of a child widget
    ///
    /// - Parameters:
    ///   - child: widget to set property for
    ///   - properties: array of `PropertyName`/value pairs for the properties to set
    @inlinable func set<W: WidgetProtocol, P: PropertyNameProtocol>(child widget: W, properties: [(P, Any)]) {
        widget.freezeChildNotify() ; defer { widget.thawChildNotify() }
        for (p, v) in properties {
            set(child: widget, property: p, value: v)
        }
    }

    /// Set up a child widget with the given list of properties
    ///
    /// - Parameters:
    ///   - widget: child widget to set properties for
    ///   - properties: `PropertyName` / value pairs to set
    @inlinable func set<W: WidgetProtocol, P: PropertyNameProtocol>(child widget: W, properties ps: (P, Any)...) {
        set(child: widget, properties: ps)
    }

    /// Add a child widget with a given list of properties
    ///
    /// - Parameters:
    ///   - widget: child widget to add
    ///   - properties: `PropertyName` / value pairs of properties to set
    @inlinable func add<W: WidgetProtocol, P: PropertyNameProtocol>(_ widget: W, properties ps: (P, Any)...) {
        widget.freezeChildNotify() ; defer { widget.thawChildNotify() }
        emit(ContainerSignalName.add, widget.widget_ptr)
        set(child: widget, properties: ps)
    }

    /// Add a child widget with a given property
    ///
    /// - Parameters:
    ///   - widget: child widget to add
    ///   - property: name of the property to set
    ///   - value: value of the property to set
    @inlinable func add<W: WidgetProtocol, P: PropertyNameProtocol, V>(_ widget: W, property p: P, value v: V) {
        widget.freezeChildNotify() ; defer { widget.thawChildNotify() }
        emit(ContainerSignalName.add, widget.widget_ptr)
        set(child: widget, property: p, value: v)
    }

    /// Add an array of widgets to the container
    ///
    /// - Parameter widgets: the widgets to add
    @inlinable func add<W: WidgetProtocol>(widgets: [W]) {
        for w in widgets {
            add(widget: w)
        }
    }

    /// Add widgets to the container
    ///
    /// - Parameter widgets: the widgets to add
    @inlinable func add<W: WidgetProtocol>(_ widgets: W...) {
        add(widgets: widgets)
    }
}
