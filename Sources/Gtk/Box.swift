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

    /// Connection helper function
    @usableFromInline internal func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: BoxSignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer, gpointer) -> gboolean) -> Int {
        let opaqueHolder = Unmanaged.passRetained(data).toOpaque()
        let callback = unsafeBitCast(handler, to: GCallback.self)
        let rv = signalConnectData(detailedSignal: name, cHandler: callback, data: opaqueHolder, destroyData: {
            if let swift = $0 {
                let holder = Unmanaged<BoxSignalHandlerClosureHolder>.fromOpaque(swift)
                holder.release()
            }
            let _ = $1
        }, connectFlags: flags)
        return rv
    }

    /// Connects a (Box,Cairo.Context) -> Void closure or function to a signal for
    /// the receiver object.  Similar to g_signal_connect(), but allows
    /// to provide a Swift closure that can capture its surrounding context.
    @discardableResult
    @inlinable func connectSignal(name: UnsafePointer<gchar>, flags f: ConnectFlags = ConnectFlags(0), handler: @escaping BoxSignalHandler) -> Int {
        let rv = _connect(signal: name, flags: f, data: DualClosureHolder(handler)) {
            let holder = Unmanaged<BoxSignalHandlerClosureHolder>.fromOpaque($2).takeUnretainedValue()
            let rv: gboolean = holder.call(BoxRef(raw: $0), Cairo.ContextRef(raw: $1)) ? 1 : 0
            return rv
        }
        return rv
    }

    /// Connects a (Box,Cairo.Context)) -> Void closure or function to a box signal for
    /// the receiver object.  Similar to g_signal_connect(), but allows
    /// to provide a Swift closure that can capture its surrounding context.
    @discardableResult
    @inlinable func connect<S: SignalNameProtocol>(signal s: S, flags f: ConnectFlags = ConnectFlags(0), handler: @escaping BoxSignalHandler) -> Int {
        return connectSignal(name: s.rawValue, flags: f, handler: handler)
    }

    /// Connects a (Box,Cairo.Context) -> Bool closure or function to a box signal for
    /// the receiver object.  Similar to g_signal_connect(), but allows
    /// to provide a Swift closure that can capture its surrounding context.
    @discardableResult
    @inlinable func connect(signal: BoxSignalName, flags f: ConnectFlags = ConnectFlags(0), handler: @escaping BoxSignalHandler) -> Int {
        return connectSignal(name: signal.rawValue, flags: f, handler: handler)
    }

    /// Connects a (Box,Cairo.Context) -> Bool closure or function to the "draw"
    /// signal of the receiver object.  Similar to g_signal_connect(), but allows
    /// to provide a Swift closure that can capture its surrounding context.
    @discardableResult
    @inlinable func onDraw(flags f: ConnectFlags = ConnectFlags(0), handler: @escaping BoxSignalHandler) -> Int {
        return connectSignal(name: BoxSignalName.draw.rawValue, flags: f, handler: handler)
    }

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

