//
//  Widget.swift
//  SwiftGtk
//
//  Created by Rene Hexel on 23/4/17.
//  Copyright © 2017, 2018 Rene Hexel.  All rights reserved.
//
import CGLib
import CGdk
import CGtk
import GLib
import GLibObject
import GIO
import Cairo
import Gdk

/// A closure taking a reference to the current widget and cairo_t as an argument
public typealias WidgetSignalHandler = (WidgetRef, Cairo.ContextRef) -> Bool

/// A closure taking a reference to the current widget and `Gdk.EventKeyRef` as an argument
public typealias KeySignalHandler = (WidgetRef, EventKeyRef) -> Void

/// A closure taking a reference to the current widget and `Gdk.EventButtonRef` as an argument
public typealias ButtonSignalHandler = (WidgetRef, EventButtonRef) -> Void

/// A closure taking a reference to the current widget and `Gdk.EventMotionRef` as an argument
public typealias MotionSignalHandler = (WidgetRef, EventMotionRef) -> Void

/// A closure taking a reference to the current widget and drag context as an argument
public typealias DragSignalHandler = (WidgetRef, Gdk.DragContextRef) -> Void

/// A closure taking a reference to the current widget, drag context, selection data, and integers as an argument
public typealias DragDataGetSignalHandler = (WidgetRef, Gdk.DragContextRef, UnsafeMutablePointer<GtkSelectionData>?, guint, guint) -> Void

/// A closure taking a reference to the current widget drag context, integers, and selection data pointer as an argument
public typealias DragDataReceivedSignalHandler = (WidgetRef, Gdk.DragContextRef, gint, gint, UnsafeMutablePointer<GtkSelectionData>?, guint, guint32) -> Void

/// Internal type for Drawing SignalHandler closure holder
typealias WidgetSignalHandlerClosureHolder = DualClosureHolder<WidgetRef,Cairo.ContextRef, Bool>

/// Internal type for key event SignalHandler closure holder
typealias KeySignalHandlerClosureHolder = DualClosureHolder<WidgetRef, Gdk.EventKeyRef, Void>

/// Internal type for button event SignalHandler closure holder
typealias ButtonSignalHandlerClosureHolder = DualClosureHolder<WidgetRef, Gdk.EventButtonRef, Void>

/// Internal type for a pointer motion SignalHandler closure holder
typealias MotionSignalHandlerClosureHolder = DualClosureHolder<WidgetRef, Gdk.EventMotionRef, Void>

/// Internal type for Dragging SignalHandler closure holder
typealias DragSignalHandlerClosureHolder = DualClosureHolder<WidgetRef, Gdk.DragContextRef, Void>

/// Internal type for Dragging SignalHandler closure holder
typealias DragDataGetSignalHandlerClosureHolder = Closure5Holder<WidgetRef, Gdk.DragContextRef, UnsafeMutablePointer<GtkSelectionData>?, guint, guint, Void>

/// Internal type for Dragging SignalHandler closure holder
typealias DragDataReceivedSignalHandlerClosureHolder = Closure7Holder<WidgetRef, Gdk.DragContextRef, gint, gint, UnsafeMutablePointer<GtkSelectionData>?, guint, guint32, Void>

/// Widget protocol convenience methods
public extension WidgetProtocol {
    /// Return a reference to the style context
    var styleContextRef: StyleContextRef {
        return StyleContextRef(styleContext)
    }

    /// Connection helper function
    private func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: WidgetSignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer, gpointer) -> gboolean) -> CUnsignedLong {
        let opaqueHolder = Unmanaged.passRetained(data).toOpaque()
        let callback = unsafeBitCast(handler, to: Callback.self)
        let rv = signalConnectData(detailedSignal: name, cHandler: callback, data: opaqueHolder, destroyData: {
            if let swift = $0 {
                let holder = Unmanaged<WidgetSignalHandlerClosureHolder>.fromOpaque(swift)
                holder.release()
            }
            let _ = $1
        }, connectFlags: flags)
        return rv
    }

    /// Connection helper function
    private func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: KeySignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer, gpointer) -> Void) -> CUnsignedLong {
        let opaqueHolder = Unmanaged.passRetained(data).toOpaque()
        let callback = unsafeBitCast(handler, to: Callback.self)
        let rv = signalConnectData(detailedSignal: name, cHandler: callback, data: opaqueHolder, destroyData: {
            if let swift = $0 {
                let holder = Unmanaged<KeySignalHandlerClosureHolder>.fromOpaque(swift)
                holder.release()
            }
            let _ = $1
        }, connectFlags: flags)
        return rv
    }

    /// Connection helper function
    private func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: ButtonSignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer, gpointer) -> Void) -> CUnsignedLong {
        let opaqueHolder = Unmanaged.passRetained(data).toOpaque()
        let callback = unsafeBitCast(handler, to: Callback.self)
        let rv = signalConnectData(detailedSignal: name, cHandler: callback, data: opaqueHolder, destroyData: {
            if let swift = $0 {
                let holder = Unmanaged<ButtonSignalHandlerClosureHolder>.fromOpaque(swift)
                holder.release()
            }
            let _ = $1
        }, connectFlags: flags)
        return rv
    }

    /// Connection helper function
    private func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: MotionSignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer, gpointer) -> Void) -> CUnsignedLong {
        let opaqueHolder = Unmanaged.passRetained(data).toOpaque()
        let callback = unsafeBitCast(handler, to: Callback.self)
        let rv = signalConnectData(detailedSignal: name, cHandler: callback, data: opaqueHolder, destroyData: {
            if let swift = $0 {
                let holder = Unmanaged<MotionSignalHandlerClosureHolder>.fromOpaque(swift)
                holder.release()
            }
            let _ = $1
        }, connectFlags: flags)
        return rv
    }

    /// Connection helper function
    private func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: DragSignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer, gpointer) -> Void) -> CUnsignedLong {
        let opaqueHolder = Unmanaged.passRetained(data).toOpaque()
        let callback = unsafeBitCast(handler, to: Callback.self)
        let rv = signalConnectData(detailedSignal: name, cHandler: callback, data: opaqueHolder, destroyData: {
            if let swift = $0 {
                let holder = Unmanaged<DragSignalHandlerClosureHolder>.fromOpaque(swift)
                holder.release()
            }
            let _ = $1
        }, connectFlags: flags)
        return rv
    }

    /// Connection helper function
    private func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: DragDataGetSignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer, gpointer, guint, guint, gpointer) -> Void) -> CUnsignedLong {
        let opaqueHolder = Unmanaged.passRetained(data).toOpaque()
        let callback = unsafeBitCast(handler, to: Callback.self)
        let rv = signalConnectData(detailedSignal: name, cHandler: callback, data: opaqueHolder, destroyData: {
            if let swift = $0 {
                let holder = Unmanaged<DragDataGetSignalHandlerClosureHolder>.fromOpaque(swift)
                holder.release()
            }
            let _ = $1
        }, connectFlags: flags)
        return rv
    }

    /// Connection helper function
    private func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: DragDataReceivedSignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer, gint, gint, gpointer, guint, guint32, gpointer) -> Void) -> CUnsignedLong {
        let opaqueHolder = Unmanaged.passRetained(data).toOpaque()
        let callback = unsafeBitCast(handler, to: Callback.self)
        let rv = signalConnectData(detailedSignal: name, cHandler: callback, data: opaqueHolder, destroyData: {
            if let swift = $0 {
                let holder = Unmanaged<DragDataReceivedSignalHandlerClosureHolder>.fromOpaque(swift)
                holder.release()
            }
            let _ = $1
        }, connectFlags: flags)
        return rv
    }

    /// Connects a (WidgetRef,Cairo.Context) -> Bool closure or function to a signal for
    /// the receiver object.  Similar to g_signal_connect(), but allows
    /// to provide a Swift closure that can capture its surrounding context.
    @discardableResult
    func connectSignal(name: UnsafePointer<gchar>, flags f: ConnectFlags = ConnectFlags(0), handler: @escaping WidgetSignalHandler) -> CUnsignedLong {
        let rv = _connect(signal: name, flags: f, data: DualClosureHolder(handler)) {
            let holder = Unmanaged<WidgetSignalHandlerClosureHolder>.fromOpaque($2).takeUnretainedValue()
            let rv: gboolean = holder.call(WidgetRef(raw: $0), Cairo.ContextRef(raw: $1)) ? 1 : 0
            return rv
        }
        return rv
    }

    /// Connects a (WidgetRef,Gdk.EventKeyRef) -> Void closure or function to a signal for
    /// the receiver object.  Similar to g_signal_connect(), but allows
    /// to provide a Swift closure that can capture its surrounding context.
    @discardableResult
    func connectKey(signal name: UnsafePointer<gchar>, flags f: ConnectFlags = ConnectFlags(0), handler: @escaping KeySignalHandler) -> CUnsignedLong {
        let rv = _connect(signal: name, flags: f, data: DualClosureHolder(handler)) {
            let holder = Unmanaged<KeySignalHandlerClosureHolder>.fromOpaque($2).takeUnretainedValue()
            holder.call(WidgetRef(raw: $0), Gdk.EventKeyRef(raw: $1))
        }
        return rv
    }

    /// Connects a (WidgetRef,Gdk.EventButtonRef) -> Void closure or function to a signal for
    /// the receiver object.  Similar to g_signal_connect(), but allows
    /// to provide a Swift closure that can capture its surrounding context.
    @discardableResult
    func connectButton(signal name: UnsafePointer<gchar>, flags f: ConnectFlags = ConnectFlags(0), handler: @escaping ButtonSignalHandler) -> CUnsignedLong {
        let rv = _connect(signal: name, flags: f, data: DualClosureHolder(handler)) {
            let holder = Unmanaged<ButtonSignalHandlerClosureHolder>.fromOpaque($2).takeUnretainedValue()
            holder.call(WidgetRef(raw: $0), Gdk.EventButtonRef(raw: $1))
        }
        return rv
    }

    /// Connects a (WidgetRef,Gdk.EventMotionRef) -> Void closure or function to a signal for
    /// the receiver object.  Similar to g_signal_connect(), but allows
    /// to provide a Swift closure that can capture its surrounding context.
    @discardableResult
    func connectMotion(signal name: UnsafePointer<gchar>, flags f: ConnectFlags = ConnectFlags(0), handler: @escaping MotionSignalHandler) -> CUnsignedLong {
        let rv = _connect(signal: name, flags: f, data: DualClosureHolder(handler)) {
            let holder = Unmanaged<MotionSignalHandlerClosureHolder>.fromOpaque($2).takeUnretainedValue()
            holder.call(WidgetRef(raw: $0), Gdk.EventMotionRef(raw: $1))
        }
        return rv
    }

    /// Connects a (WidgetRef,Gdk.DragContextRef) -> Void closure or function to a signal for
    /// the receiver object.  Similar to g_signal_connect(), but allows
    /// to provide a Swift closure that can capture its surrounding context.
    @discardableResult
    func connectDrag(signal name: UnsafePointer<gchar>, flags f: ConnectFlags = ConnectFlags(0), handler: @escaping DragSignalHandler) -> CUnsignedLong {
        let rv = _connect(signal: name, flags: f, data: DualClosureHolder(handler)) {
            let holder = Unmanaged<DragSignalHandlerClosureHolder>.fromOpaque($2).takeUnretainedValue()
            holder.call(WidgetRef(raw: $0), Gdk.DragContextRef(raw: $1))
        }
        return rv
    }

    /// Connect a `(WidgetRef, Gdk.DragContextRef, UnsafeMutablePointer<GtkSelectionData>?, guint, guint) -> Void` closure or function to a widget signal for
    /// the receiver object.  Similar to g_signal_connect(), but allows
    /// to provide a Swift closure that can capture its surrounding context.
    @discardableResult
    func connectDragDataGet(signal name: UnsafePointer<gchar>, flags f: ConnectFlags = ConnectFlags(0), handler: @escaping DragDataGetSignalHandler) -> CUnsignedLong {
        let rv = _connect(signal: name, flags: f, data: DragDataGetSignalHandlerClosureHolder(handler)) {
            let holder = Unmanaged<DragDataGetSignalHandlerClosureHolder>.fromOpaque($5).takeUnretainedValue()
            holder.call(WidgetRef(raw: $0), Gdk.DragContextRef(raw: $1), $2.assumingMemoryBound(to: GtkSelectionData.self), $3, $4)
        }
        return rv
    }

    /// Connect a `(WidgetRef, Gdk.DragContextRef, gint, gint, UnsafeMutablePointer<GtkSelectionData>?, guint, guint32) -> Void` closure or function to a widget signal for
    /// the receiver object.  Similar to g_signal_connect(), but allows
    /// to provide a Swift closure that can capture its surrounding context.
    @discardableResult
    func connectDragDataReceived(signal name: UnsafePointer<gchar>, flags f: ConnectFlags = ConnectFlags(0), handler: @escaping DragDataReceivedSignalHandler) -> CUnsignedLong {
        let rv = _connect(signal: name, flags: f, data: DragDataReceivedSignalHandlerClosureHolder(handler)) {
            let holder = Unmanaged<DragDataReceivedSignalHandlerClosureHolder>.fromOpaque($7).takeUnretainedValue()
            holder.call(WidgetRef(raw: $0), Gdk.DragContextRef(raw: $1), $2, $3, $4.assumingMemoryBound(to: GtkSelectionData.self), $5, $6)
        }
        return rv
    }

    /// Connects a (WidgetRef,Cairo.Context)) -> Void closure or function to a box signal for
    /// the receiver object.  Similar to g_signal_connect(), but allows
    /// to provide a Swift closure that can capture its surrounding context.
    @discardableResult
    func connect<T>(signal s: T, flags f: ConnectFlags = ConnectFlags(0), handler: @escaping WidgetSignalHandler) -> CUnsignedLong where T: SignalNameProtocol {
        return connectSignal(name: s.rawValue, flags: f, handler: handler)
    }

    /// Connects a (WidgetRef,Cairo.Context) -> Bool closure or function to a box signal for
    /// the receiver object.  Similar to g_signal_connect(), but allows
    /// to provide a Swift closure that can capture its surrounding context.
    @discardableResult
    func connect(signal: WidgetSignalName, flags f: ConnectFlags = ConnectFlags(0), handler: @escaping WidgetSignalHandler) -> CUnsignedLong {
        return connectSignal(name: signal.rawValue, flags: f, handler: handler)
    }

    /// Connects a (WidgetRef,Cairo.Context) -> Bool closure or function to the "draw"
    /// signal of the receiver object.  Similar to g_signal_connect(), but allows
    /// to provide a Swift closure that can capture its surrounding context.
    @discardableResult
    func onDraw(flags f: ConnectFlags = ConnectFlags(0), handler: @escaping WidgetSignalHandler) -> CUnsignedLong {
        return connectSignal(name: WidgetSignalName.draw.rawValue, flags: f, handler: handler)
    }

    /// Connect a `(WidgetRef, Gdk.EventKeyRef) -> Void` closure or function to a button event signal for the receiver.
    /// Before calling this, you need to call `add(events:)`, e.g.
    /// widget.add(events: CInt(GDK_KEY_PRESS_MASK.rawValue)
    ///
    /// - Parameters:
    ///   - event: widget signal name (defaults to `.keyPressEvent`)
    ///   - f: connection flags (defaults to `0`)
    ///   - handler: signal handler
    /// - Returns: the corresponding return value of `g_signal_connect()`
    @discardableResult
    func onKey(event: WidgetSignalName = .keyPressEvent, flags f: ConnectFlags = ConnectFlags(0), handler: @escaping KeySignalHandler) -> CUnsignedLong {
        return connectKey(signal: event.rawValue, flags: f, handler: handler)
    }

    /// Connect a `(WidgetRef, Gdk.EventKeyRef) -> Void` closure or function to the `.keyPressEvent` signal for the receiver.
    /// This method adds the `GDK_KEY_PRESS_MASK` to the widget prior to connecting the closure.
    ///
    /// - Parameters:
    ///   - f: connection flags (defaults to `0`)
    ///   - handler: signal handler
    /// - Returns: the corresponding return value of `g_signal_connect()`
    @discardableResult
    func onKeyPress(flags f: ConnectFlags = ConnectFlags(0), handler h: @escaping KeySignalHandler) -> CUnsignedLong {
        add(events: CInt(CGdk.GDK_KEY_PRESS_MASK.rawValue))
        return onKey(event: .keyPressEvent, flags: f, handler: h)
    }

    /// Connect a `(WidgetRef, Gdk.EventKeyRef) -> Void` closure or function to the `.keyReleaseEvent` signal for the receiver.
    /// This method adds the `GDK_KEY_RELEASE_MASK` to the widget prior to connecting the closure.
    ///
    /// - Parameters:
    ///   - f: connection flags (defaults to `0`)
    ///   - handler: signal handler
    /// - Returns: the corresponding return value of `g_signal_connect()`
    @discardableResult
    func onKeyRelease(flags f: ConnectFlags = ConnectFlags(0), handler h: @escaping KeySignalHandler) -> CUnsignedLong {
        add(events: CInt(CGdk.GDK_KEY_RELEASE_MASK.rawValue))
        return onKey(event: .keyReleaseEvent, flags: f, handler: h)
    }

    /// Connect a `(WidgetRef, Gdk.EventButtonRef) -> Void` closure or function to a button event signal for the receiver.
    /// Before calling this, you need to call `add(events:)`, e.g.
    /// widget.add(events: CInt(GDK_BUTTON_PRESS_MASK.rawValue)
    ///
    /// - Parameters:
    ///   - event: widget signal name (defaults to `.buttonPressEvent`)
    ///   - f: connection flags (defaults to `0`)
    ///   - handler: signal handler
    /// - Returns: the corresponding return value of `g_signal_connect()`
    @discardableResult
    func onButton(event: WidgetSignalName = .buttonPressEvent, flags f: ConnectFlags = ConnectFlags(0), handler: @escaping ButtonSignalHandler) -> CUnsignedLong {
        return connectButton(signal: event.rawValue, flags: f, handler: handler)
    }

    /// Connect a `(WidgetRef, Gdk.EventButtonRef) -> Void` closure or function to the `.buttonPressEvent` signal for the receiver.
    /// This method adds the `GDK_BUTTON_PRESS_MASK` to the widget prior to connecting the closure.
    ///
    /// - Parameters:
    ///   - f: connection flags (defaults to `0`)
    ///   - handler: signal handler
    /// - Returns: the corresponding return value of `g_signal_connect()`
    @discardableResult
    func onButtonPress(flags f: ConnectFlags = ConnectFlags(0), handler h: @escaping ButtonSignalHandler) -> CUnsignedLong {
        add(events: CInt(CGdk.GDK_BUTTON_PRESS_MASK.rawValue))
        return onButton(event: .buttonPressEvent, flags: f, handler: h)
    }

    /// Connect a `(WidgetRef, Gdk.EventButtonRef) -> Void` closure or function to the `.buttonPressEvent` signal for the receiver.
    ///
    /// - Parameters:
    ///   - f: connection flags (defaults to `0`)
    ///   - handler: signal handler
    /// - Returns: the corresponding return value of `g_signal_connect()`
    @discardableResult
    func onButtonRelease(flags f: ConnectFlags = ConnectFlags(0), handler h: @escaping ButtonSignalHandler) -> CUnsignedLong {
        add(events: CInt(CGdk.GDK_BUTTON_RELEASE_MASK.rawValue))
        return onButton(event: .buttonReleaseEvent, flags: f, handler: h)
    }

    /// Connect a `(WidgetRef, Gdk.EventMotionRef) -> Void` closure or function to the motion signal for the receiver.
    /// This method adds the `GDK_POINTER_MOTION_MASK` to the widget prior to connecting the closure.
    ///
    /// - Parameters:
    ///   - event: widget signal name (defaults to `.motionNotifyEvent`)
    ///   - f: connection flags (defaults to `0`)
    ///   - handler: signal handler
    /// - Returns: the corresponding return value of `g_signal_connect()`
    @discardableResult
    func onMotion(event: WidgetSignalName = .motionNotifyEvent, flags f: ConnectFlags = ConnectFlags(0), handler h: @escaping MotionSignalHandler) -> CUnsignedLong {
        add(events: CInt(CGdk.GDK_POINTER_MOTION_MASK.rawValue))
        return connectMotion(signal: event.rawValue, flags: f, handler: h)
    }

    /// Connect a `(WidgetRef, Gdk.DragContextRef) -> Void` closure or function to the `.dragBegin` signal for the receiver.
    ///
    /// - Parameters:
    ///   - f: connection flags (defaults to `0`)
    ///   - handler: signal handler
    /// - Returns: the corresponding return value of `g_signal_connect()`
    @discardableResult
    func onDragBegin(flags f: ConnectFlags = ConnectFlags(0), handler: @escaping DragSignalHandler) -> CUnsignedLong {
        return connectDrag(signal: WidgetSignalName.dragBegin.rawValue, flags: f, handler: handler)
    }

    /// Connect a `(WidgetRef, Gdk.DragContextRef, UnsafeMutablePointer<GtkSelectionData>?, guint, guint) -> Void` closure or function to a widget signal for the receiver.
    ///
    /// - Parameters:
    ///   - f: connection flags (defaults to `0`)
    ///   - handler: signal handler
    /// - Returns: the corresponding return value of `g_signal_connect()`
    @discardableResult
    func onDragDataGet(flags f: ConnectFlags = ConnectFlags(0), handler: @escaping DragDataGetSignalHandler) -> CUnsignedLong {
        return connectDragDataGet(signal: WidgetSignalName.dragDataGet.rawValue, flags: f, handler: handler)
    }

    /// Connect a `(WidgetRef, Gdk.DragContextRef, gint, gint, UnsafeMutablePointer<GtkSelectionData>?, guint, guint32) -> Void` closure or function to a widget signal for the receiver.
    ///
    /// - Parameters:
    ///   - f: connection flags (defaults to `0`)
    ///   - handler: signal handler
    /// - Returns: the corresponding return value of `g_signal_connect()`
    @discardableResult
    func onDragDataReceived(flags f: ConnectFlags = ConnectFlags(0), handler: @escaping DragDataReceivedSignalHandler) -> CUnsignedLong {
        return connectDragDataReceived(signal: WidgetSignalName.dragDataReceived.rawValue, flags: f, handler: handler)
    }
}


/// Widget convenience methods
public extension Widget {
}

public extension WidgetRef {
    init(_ object: UnsafeMutablePointer<GObject>) {
        ptr = UnsafeMutablePointer(object)
    }
}
