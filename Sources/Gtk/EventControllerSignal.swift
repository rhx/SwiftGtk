//
//  EventControllerSignal.swift
//  PatternGTK
//
//  Created by Jane Fraser on 8/03/20.
//

import Foundation
import Gdk
import GLibObject
import CGtk


public typealias ScrollControllerHandler = (EventControllerScrollRef) -> Void;

public typealias ScrollControllerHandlerClosureHolder = ClosureHolder<EventControllerScrollRef, Void>;

public typealias ScrollHandler = (EventControllerScrollRef, Double, Double) -> Void;

public typealias ScrollHandlerClosureHolder = Closure3Holder<EventControllerScrollRef, Double, Double, Void>;

public extension EventControllerScrollProtocol {
	@usableFromInline internal func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: ScrollControllerHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
		let opaqueHolder = Unmanaged.passRetained(data).toOpaque();
		let callback = unsafeBitCast(handler, to: GCallback.self);
		return signalConnectData(detailedSignal: name, cHandler: callback, data: opaqueHolder, destroyData: { (holderPointer, _) in
			if let holderPointer = holderPointer {
				let holder = Unmanaged<ScrollControllerHandlerClosureHolder>.fromOpaque(holderPointer);
				holder.release();
			}
		}, connectFlags: flags);
	}

    @usableFromInline internal func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: ScrollHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gdouble, gdouble, gpointer) -> Void) -> Int {
		let opaqueHolder = Unmanaged.passRetained(data).toOpaque();
		let callback = unsafeBitCast(handler, to: GCallback.self);
		return signalConnectData(detailedSignal: name, cHandler: callback, data: opaqueHolder, destroyData: { (holderPointer, _) in
			if let holderPointer = holderPointer {
				let holder = Unmanaged<ScrollHandlerClosureHolder>.fromOpaque(holderPointer);
				holder.release();
			}
		}, connectFlags: flags);
	}

    @discardableResult @inlinable func connectScrollController(name: UnsafePointer<gchar>, flags: ConnectFlags = ConnectFlags(0), handler: @escaping ScrollControllerHandler) -> Int {
		// The handler is stored in a holder, which is stored as a user data object with the signal.
		return _connect(signal: name, flags: flags, data: ClosureHolder(handler)) { (controller, data) in
			let holder = Unmanaged<ScrollControllerHandlerClosureHolder>.fromOpaque(data).takeUnretainedValue();
			holder.call(EventControllerScrollRef(raw: controller));
		}
	}

    @discardableResult @inlinable func connectScroll(name: UnsafePointer<gchar>, flags: ConnectFlags = ConnectFlags(0), handler: @escaping ScrollHandler) -> Int {
		// The handler is stored in a holder, which is stored as a user data object with the signal.
		return _connect(signal: name, flags: flags, data: Closure3Holder(handler)) { (controller, dx, dy, data) in
			let holder = Unmanaged<ScrollHandlerClosureHolder>.fromOpaque(data).takeUnretainedValue();
			holder.call(EventControllerScrollRef(raw: controller), dx, dy);
		}
	}
	
	
	/// Signals that the widget should scroll by the amount specified by dx and dy .
	/// - Parameter controller: The controller that emitted the signal
	/// - Parameter dx: The X delta
	/// - Parameter dy: The Y delta
	@discardableResult @inlinable func onScroll(_ handler: @escaping ScrollHandler) -> Int {
		return connectScroll(name: EventControllerScrollSignalName.scroll.rawValue, handler: handler);
	}
	
	/// Emitted after scroll is finished if the GTK_EVENT_CONTROLLER_SCROLL_KINETIC flag is set. velX and velY express the initial velocity that was imprinted by the scroll events. velX and velY are expressed in pixels/ms.
	/// - Parameter controller: The controller that emitted the signal
	/// - Parameter velocityX: The velocity along the X axis
	/// - Parameter velocityY: The velocity along the Y axis
	@discardableResult @inlinable func onDecelerate(_ handler: @escaping ScrollHandler) -> Int {
		return connectScroll(name: EventControllerScrollSignalName.decelerate.rawValue, handler: handler);
	}
	
	/// Signals that a new scrolling operation has begun. It will only be emitted on devices capable of it.
	/// - Parameter controller: The controller that emitted the signal
	@discardableResult @inlinable func onBeginScroll(_ handler: @escaping ScrollControllerHandler) -> Int {
		return connectScrollController(name: EventControllerScrollSignalName.scrollBegin.rawValue, handler: handler);
		
	}
	
	/// Signals that a new scrolling operation has finished. It will only be emitted on devices capable of it.
	/// - Parameter controller: The controller that emitted the signal
	@discardableResult @inlinable func onEndScroll(_ handler: @escaping ScrollControllerHandler) -> Int {
		return connectScrollController(name: EventControllerScrollSignalName.scrollEnd.rawValue, handler: handler);
	}
}
