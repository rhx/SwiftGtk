//
//  Gesture.swift
//  Atk
//
//  Created by Jane Fraser on 4/03/20.
//
import Foundation
import CGLib
import GLib
import Gdk
import GLibObject

// This file contains functions for connecting to the signals emitted by gestures.

// In the _connect functions, data is holder that contains the swift closure to be called in response to the signal. It is registered as user data with the signal, while the handler receives data and the parameters, translate the parameter for C style values to expected swift types, and invokes the function with translated parameters. The destroy data parameter simply releases the holder.

public typealias GestureSequenceHandler = (GestureRef, EventSequenceRef) -> Void;

public typealias GestureSequenceStateHandler = (GestureRef, EventSequenceRef, EventSequenceState) -> Void;

public typealias GestureSequenceHandlerClosureHolder = DualClosureHolder<GestureRef, EventSequenceRef, Void>;

public typealias GestureSequenceStateHandlerClosureHolder = Closure3Holder<GestureRef, EventSequenceRef, EventSequenceState, Void>;

public extension GestureProtocol {
	
	internal func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GestureSequenceHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer, gpointer) -> Void) -> Int {
		let opaqueHolder = Unmanaged.passRetained(data).toOpaque();
		let callback = unsafeBitCast(handler, to: Callback.self);
		return signalConnectData(detailedSignal: name, cHandler: callback, data: opaqueHolder, destroyData: { (holderPointer, _) in
			if let holderPointer = holderPointer {
				let holder = Unmanaged<GestureSequenceHandlerClosureHolder>.fromOpaque(holderPointer);
				holder.release();
			}
		}, connectFlags: flags);
	}

	internal func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GestureSequenceStateHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer, gint, gpointer) -> Void) -> Int {
		let opaqueHolder = Unmanaged.passRetained(data).toOpaque();
		let callback = unsafeBitCast(handler, to: Callback.self);
		return signalConnectData(detailedSignal: name, cHandler: callback, data: opaqueHolder, destroyData: { (holderPointer, _) in
			if let holderPointer = holderPointer {
				let holder = Unmanaged<GestureSequenceStateHandlerClosureHolder>.fromOpaque(holderPointer);
				holder.release();
			}
		}, connectFlags: flags);
	}
	
	@discardableResult func connectGestureSequence(name: UnsafePointer<gchar>, flags: ConnectFlags = ConnectFlags(0), handler: @escaping GestureSequenceHandler) -> Int {
		// The handler is stored in a holder, which is stored as a user data object with the signal.
		return _connect(signal: name, flags: flags, data: DualClosureHolder(handler)) { (gesture, sequence, data) in
			let holder = Unmanaged<GestureSequenceHandlerClosureHolder>.fromOpaque(data).takeUnretainedValue();
			holder.call(GestureRef(raw: gesture), EventSequenceRef.init(raw: sequence));
		}
	}
	
	@discardableResult func connectGestureSequenceState(name: UnsafePointer<gchar>, flags: ConnectFlags = ConnectFlags(0), handler: @escaping GestureSequenceStateHandler) -> Int {
		// The handler is stored in a holder, which is stored as a user data object with the signal.
		return _connect(signal: name, flags: flags, data: Closure3Holder(handler)) { (gesture, sequence, state,  data) in
			let holder = Unmanaged<GestureSequenceStateHandlerClosureHolder>.fromOpaque(data).takeUnretainedValue();
			holder.call(GestureRef(raw: gesture), EventSequenceRef.init(raw: sequence), EventSequenceState.init(UInt32(state)));
		}
	}
	
	/// This signal is emitted when the gesture is recognized. This means the number of touch sequences matches “n-points”, and the “check” handler(s) returned TRUE.
	/// Note: These conditions may also happen when an extra touch (eg. a third touch on a 2-touches gesture) is lifted, in that situation sequence won't pertain to the current set of active touches, so don't rely on this being true.
	/// - Parameter gesture: The gesture that emitted the signal
	/// - Parameter sequence: The EventSequence that caused the gesture to be recognized
	@discardableResult func onBegin(_ handler: @escaping GestureSequenceHandler) -> Int {
		return connectGestureSequence(name: GestureSignalName.begin.rawValue, handler: handler);
	}
	
	/// onBegin:  This signal is emitted when the gesture is recognized. This means the number of touch sequences matches “n-points”, and the “check” handler(s) returned true.
	/// Note: These conditions may also happen when an extra touch (eg. a third touch on a 2-touches gesture) is lifted, in that situation sequence won't pertain to the current set of active touches, so don't rely on this being true.
	/// - Parameter gesture: The gesture that emitted the signal
	/// - Parameter sequence: the EventSequence that was cancelled
	@discardableResult func onCancel(_ handler: @escaping GestureSequenceHandler) -> Int {
		return connectGestureSequence(name: GestureSignalName.cancel.rawValue, handler: handler);
	}
	
	/// This signal is emitted when gesture either stopped recognizing the event sequences as something to be handled (the “check” handler returned FALSE), or the number of touch sequences became higher or lower than “n-points”.
	/// Note: sequence might not pertain to the group of sequences that were previously triggering recognition on gesture (ie. a just pressed touch sequence that exceeds “n-points”). This situation may be detected by checking through gtk_gesture_handles_sequence().
	/// - Parameter gesture: The gesture that emitted the signal
	/// - Parameter sequence: The EventSequence that caused gesture recognition to finish
	@discardableResult func onEnd(_ handler: @escaping GestureSequenceHandler) -> Int {
		return connectGestureSequence(name: GestureSignalName.end.rawValue, handler: handler);
	}
	
	/// This signal is emitted whenever a sequence state changes. See gtk_gesture_set_sequence_state() to know more about the expectable sequence lifetimes.
	/// - Parameter gesture: The gesture that emitted the signal
	/// - Parameter sequence: The EventSequence for which the state was changed
	/// - Parameter state: The new sequence state
	@discardableResult func onSequenceStateChanged(_ handler: @escaping GestureSequenceStateHandler) -> Int {
		return connectGestureSequenceState(name: GestureSignalName.sequenceStateChanged.rawValue, handler: handler);
	}
	
	/// This signal is emitted whenever an event is handled while the gesture is recognized. sequence is guaranteed to pertain to the set of active touches.
	/// - Parameter gesture : The gesture that emitted the signal
	/// - Parameter sequence: The EventSequence that was updated
	@discardableResult func onUpdate(_ handler: @escaping GestureSequenceHandler) -> Int {
		return connectGestureSequence(name: GestureSignalName.update.rawValue, handler: handler);
	}
	
}

public typealias PressSignalHandler = (GestureMultiPressRef, Int, Double, Double) -> Void;

public typealias StoppedSignalHandler = (GestureMultiPressRef) -> Void;

public typealias PressSignalHandlerClosureHolder = Closure4Holder<GestureMultiPressRef, Int, Double, Double, Void>

public typealias StoppedSignalHandlerClosureHolder = ClosureHolder<GestureMultiPressRef, Void>

public extension GestureMultiPressProtocol {
	
	internal func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: PressSignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gint, gdouble, gdouble, gpointer) -> Void) -> Int {

		// Data contains the swift function to be called in response to the signal. It is registered as user data with the signal, while handler that receives data and the parameters, translate the parameters c types to expected swift types, and invokes the function with translated parameters
		// This translates the data and callback parameters to c compatible types.
		let opaqueHolder = Unmanaged.passRetained(data).toOpaque();
		let callback = unsafeBitCast(handler, to: Callback.self);
		return signalConnectData(detailedSignal: name, cHandler: callback, data: opaqueHolder, destroyData: { (holderPointer, _) in
			// This simply releases the data.
			if let holderPointer = holderPointer {
				let holder = Unmanaged<PressSignalHandlerClosureHolder>.fromOpaque(holderPointer);
				holder.release();
			}
		}, connectFlags: flags);
	}
	
	internal func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: StoppedSignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
		let opaqueHolder = Unmanaged.passRetained(data).toOpaque();
		let callback = unsafeBitCast(handler, to: Callback.self);
		return signalConnectData(detailedSignal: name, cHandler: callback, data: opaqueHolder, destroyData: { (holderPointer, _) in
			if let holderPointer = holderPointer {
				let holder = Unmanaged<SignalHandlerClosureHolder>.fromOpaque(holderPointer);
				holder.release();
			}
		}, connectFlags: flags);
	}
	
	@discardableResult func connect(name: UnsafePointer<gchar>, flags: ConnectFlags = ConnectFlags(0), handler: @escaping PressSignalHandler) -> Int {
		// The handler is stored in a holder, which is stored as a user data object with the signal.
		return _connect(signal: name, flags: flags, data: Closure4Holder(handler)) { (gesture, n, x, y, data) in
			let holder = Unmanaged<PressSignalHandlerClosureHolder>.fromOpaque(data).takeUnretainedValue();
			holder.call(GestureMultiPressRef(raw: gesture), Int(n), Double(x), Double(y));
		}
	}
	
	@discardableResult func connect(name: UnsafePointer<gchar>, flags: ConnectFlags = ConnectFlags(0), handler: @escaping StoppedSignalHandler) -> Int {
		return _connect(signal: name, flags: flags, data: ClosureHolder(handler)) { (gesture, data) in
			let holder = Unmanaged<StoppedSignalHandlerClosureHolder>.fromOpaque(data).takeUnretainedValue();
			holder.call(GestureMultiPressRef(raw: gesture));
		}
	}
	
	/// This signal is emitted whenever a button or touch press happens.
	/// - Parameter gesture: The gesture that emitted the signal
	/// - Parameter presses: The number of touch/button presses that have happened in the current gesture
	/// - Parameter x: The X coordinate of the press, relative to the widget origin
	/// - Parameter y: The Y coordinate of the press, relative to the widget origin
	@discardableResult func onPressed(_ handler: @escaping PressSignalHandler) -> Int {
		return connect(name: GestureMultiPressSignalName.pressed.rawValue, handler: handler);
	}

	/// This signal is emitted when a button or touch is released. n_press will report the number of press that is paired to this event, note that “stopped” may have been emitted between the press and its release, n_press will only start over at the next press.a
	/// - Parameter gesture: The gesture that emitted the signal
	/// - Parameter presses: The number of touch/button presses that have happened in the current gesture
	/// - Parameter x: The X coordinate of the press, relative to the widget origin
	/// - Parameter y: The Y coordinate of the press, relative to the widget origin
	@discardableResult func onReleased(_ handler: @escaping PressSignalHandler) -> Int {
		return connect(name: GestureMultiPressSignalName.released.rawValue, handler: handler);
	}

	/// This signal is emitted whenever any time/distance threshold has been exceeded.
	/// - Parameter gesture: The gesture that emitted the signal
	@discardableResult func onStopped(_ handler: @escaping StoppedSignalHandler) -> Int {
		return connect(name: GestureMultiPressSignalName.stopped.rawValue, handler: handler);
	}
	
}

public typealias CancelHandler = (GestureLongPressRef) -> Void;

public typealias LongPressHandler = (GestureLongPressRef, Double, Double) -> Void;

public typealias CancelHandlerClosureHolder = ClosureHolder<GestureLongPressRef, Void>;

public typealias LongPressHandlerClosureHolder = Closure3Holder<GestureLongPressRef, Double, Double, Void>;

public extension GestureLongPressProtocol {
	
	internal func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: CancelHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
		let opaqueHolder = Unmanaged.passRetained(data).toOpaque();
		let callback = unsafeBitCast(handler, to: Callback.self);
		return signalConnectData(detailedSignal: name, cHandler: callback, data: opaqueHolder, destroyData: { (holderPointer, _) in
			if let holderPointer = holderPointer {
				let holder = Unmanaged<CancelHandlerClosureHolder>.fromOpaque(holderPointer);
				holder.release();
			}
		}, connectFlags: flags);
	}
	
	internal func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: LongPressHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gdouble, gdouble, gpointer) -> Void) -> Int {
		let opaqueHolder = Unmanaged.passRetained(data).toOpaque();
		let callback = unsafeBitCast(handler, to: Callback.self);
		return signalConnectData(detailedSignal: name, cHandler: callback, data: opaqueHolder, destroyData: { (holderPointer, _) in
			if let holderPointer = holderPointer {
				let holder = Unmanaged<LongPressHandlerClosureHolder>.fromOpaque(holderPointer);
				holder.release();
			}
		}, connectFlags: flags);
	}
	
	@discardableResult func connectLongPress(name: UnsafePointer<gchar>, flags: ConnectFlags = ConnectFlags(0), handler: @escaping LongPressHandler) -> Int {
		// The handler is stored in a holder, which is stored as a user data object with the signal.
		return _connect(signal: name, flags: flags, data: Closure3Holder(handler)) { (gesture, x, y, data) in
			let holder = Unmanaged<LongPressHandlerClosureHolder>.fromOpaque(data).takeUnretainedValue();
			holder.call(GestureLongPressRef(raw: gesture), x, y);
		}
	}
	
	@discardableResult func connectCancel(name: UnsafePointer<gchar>, flags: ConnectFlags = ConnectFlags(0), handler: @escaping CancelHandler) -> Int {
		// The handler is stored in a holder, which is stored as a user data object with the signal.
		return _connect(signal: name, flags: flags, data: ClosureHolder(handler)) { (gesture, data) in
			let holder = Unmanaged<CancelHandlerClosureHolder>.fromOpaque(data).takeUnretainedValue();
			holder.call(GestureLongPressRef(raw: gesture));
		}
	}
	
	/// This signal is emitted whenever a press moved too far, or was released before “pressed” happened.
	/// - Parameter gesture: The number of touch/button presses that have happened in the current click sequence
	@discardableResult func onCancelled(_ handler: @escaping CancelHandler) -> Int {
		return connectCancel(name: GestureLongPressSignalName.cancelled.rawValue, handler: handler);
	}
	
	/// This signal is emitted whenever a press goes unmoved/unreleased longer than the gesture's specified delay
	/// - Parameter gesture: The gesture that emitted the signal
	/// - Parameter x: The X coordinate where the press happened, relative to the widget origin
	/// - Parameter y: The Y coordinate where the press happend, relative to the widget origin
	@discardableResult func onPressed(_ handler: @escaping LongPressHandler) -> Int {
		return connectLongPress(name: GestureLongPressSignalName.pressed.rawValue, handler: handler);
	}
	
}

public typealias DragHandler = (GestureDragRef, Double, Double) -> Void;

public typealias DragHandlerClosureHolder = Closure3Holder<GestureDragRef, Double, Double, Void>;

public extension GestureDragProtocol {
	
	internal func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: DragHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gdouble, gdouble, gpointer) -> Void) -> Int {
		let opaqueHolder = Unmanaged.passRetained(data).toOpaque();
		let callback = unsafeBitCast(handler, to: Callback.self);
		return signalConnectData(detailedSignal: name, cHandler: callback, data: opaqueHolder, destroyData: { (holderPointer, _) in
			if let holderPointer = holderPointer {
				let holder = Unmanaged<DragHandlerClosureHolder>.fromOpaque(holderPointer);
				holder.release();
			}
		}, connectFlags: flags);
	}
	
	@discardableResult func connectDrag(name: UnsafePointer<gchar>, flags: ConnectFlags = ConnectFlags(0), handler: @escaping DragHandler) -> Int {
		// The handler is stored in a holder, which is stored as a user data object with the signal.
		return _connect(signal: name, flags: flags, data: Closure3Holder(handler)) { (gesture, x, y, data) in
			let holder = Unmanaged<DragHandlerClosureHolder>.fromOpaque(data).takeUnretainedValue();
			holder.call(GestureDragRef(raw: gesture), x, y);
		}
	}
	
	/// This signal is emitted whenever dragging starts.
	/// - Parameter gesture: The gesture that emitted the signal
	/// - Parameter startX: The initial X coordinate of the drag, relative to the widget origin
	/// - Parameter startY: The initial Y coordinate of the drag. relative to the widget origin
	@discardableResult func onDragBegin(_ handler: @escaping DragHandler) -> Int {
		return connectDrag(name: GestureDragSignalName.dragBegin.rawValue, handler: handler);
	}
	
	/// This signal is emitted whenever the dragging is finished.
	/// - Parameter gesture: The gesture that emitted the signal
	/// - Parameter offsetX: The X offset at which the drag ended, relative to the widget origin
	/// - Parameter offsetY: The Y offset at which the drag ended, relative to widget origin
	@discardableResult func onDragUpdate(_ handler: @escaping DragHandler) -> Int {
		return connectDrag(name: GestureDragSignalName.dragUpdate.rawValue, handler: handler);
	}
	
	/// This signal is emitted whenever the dragging point moves.
	/// - Parameter gesture: The gesture that emitted the signal
	/// - Parameter offsetX: The current X offset of the drag, relative to the widget origin
	/// - Parameter offsetY: The current Y offset of the drag, relative to the widget origin
	@discardableResult func onDragEnd(_ handler: @escaping DragHandler) -> Int {
		return connectDrag(name: GestureDragSignalName.dragEnd.rawValue, handler: handler);
	}
	
}

public typealias PanHandler = (GesturePanRef, PanDirection, Double) -> Void;

public typealias PanHandlerClosureHolder = Closure3Holder<GesturePanRef, PanDirection, Double, Void>

public extension GesturePanProtocol {
	
	internal func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: PanHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gint, gdouble, gpointer) -> Void) -> Int {
		let opaqueHolder = Unmanaged.passRetained(data).toOpaque();
		let callback = unsafeBitCast(handler, to: Callback.self);
		return signalConnectData(detailedSignal: name, cHandler: callback, data: opaqueHolder, destroyData: { (holderPointer, _) in
			if let holderPointer = holderPointer {
				let holder = Unmanaged<PanHandlerClosureHolder>.fromOpaque(holderPointer);
				holder.release();
			}
		}, connectFlags: flags);
	}
	
	@discardableResult func connectPan(name: UnsafePointer<gchar>, flags: ConnectFlags = ConnectFlags(0), handler: @escaping PanHandler) -> Int {
		// The handler is stored in a holder, which is stored as a user data object with the signal.
		return _connect(signal: name, flags: flags, data: Closure3Holder(handler)) { (gesture, direction, y, data) in
			let holder = Unmanaged<PanHandlerClosureHolder>.fromOpaque(data).takeUnretainedValue();
			holder.call(GesturePanRef(raw: gesture), PanDirection(rawValue: UInt32(direction)), y);
		}
	}
	
	/// This signal is emitted once a panning gesture along the expected axis is detected.
	/// - Parameter gesture: The gesture that emitted the signal
	/// - Parameter direction: The current direction of the pan
	/// - Parameter offset: The offset along the gesture's orientation
	@discardableResult func onPan(_ handler: @escaping PanHandler) -> Int {
		return connectPan(name: GesturePanSignalName.pan.rawValue, handler: handler);
	}
	
}

public typealias SwipeHandler = (GestureSwipeRef, Double, Double) -> Void;

public typealias SwipeHandlerClosureHolder = Closure3Holder<GestureSwipeRef, Double, Double, Void>;

public extension GestureSwipeProtocol {
	
	internal func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: SwipeHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gdouble, gdouble, gpointer) -> Void) -> Int {
		let opaqueHolder = Unmanaged.passRetained(data).toOpaque();
		let callback = unsafeBitCast(handler, to: Callback.self);
		return signalConnectData(detailedSignal: name, cHandler: callback, data: opaqueHolder, destroyData: { (holderPointer, _) in
			if let holderPointer = holderPointer {
				let holder = Unmanaged<SwipeHandlerClosureHolder>.fromOpaque(holderPointer);
				holder.release();
			}
		}, connectFlags: flags);
	}
	
	@discardableResult func connectSwipe(name: UnsafePointer<gchar>, flags: ConnectFlags = ConnectFlags(0), handler: @escaping SwipeHandler) -> Int {
		// The handler is stored in a holder, which is stored as a user data object with the signal.
		return _connect(signal: name, flags: flags, data: Closure3Holder(handler)) { (gesture, x, y, data) in
			let holder = Unmanaged<SwipeHandlerClosureHolder>.fromOpaque(data).takeUnretainedValue();
			holder.call(GestureSwipeRef(raw: gesture), x, y);
		}
	}
	
	/// This signal is emitted when the recognized gesture is finished, velocity and direction are a product of previously recorded events.
	/// - Parameter gesture: The gesture that emitted the signal
	/// - Parameter velocityX: The velocity of the swipe on the X axis, in pixels per second
	/// - Parameter velocityY: The velocity of the swipe on the Y axis, in pixels per second
	@discardableResult func onSwipe(_ handler: @escaping SwipeHandler) -> Int {
		return connectSwipe(name: GestureSwipeSignalName.swipe.rawValue, handler: handler);
	}
	
}

public typealias RotateHandler = (GestureRotateRef, Double, Double) -> Void;

public typealias RotateHandlerClosureHolder = Closure3Holder<GestureRotateRef, Double, Double, Void>;

public extension GestureRotateProtocol {
	
	internal func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: RotateHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gdouble, gdouble, gpointer) -> Void) -> Int {
		let opaqueHolder = Unmanaged.passRetained(data).toOpaque();
		let callback = unsafeBitCast(handler, to: Callback.self);
		return signalConnectData(detailedSignal: name, cHandler: callback, data: opaqueHolder, destroyData: { (holderPointer, _) in
			if let holderPointer = holderPointer {
				let holder = Unmanaged<RotateHandlerClosureHolder>.fromOpaque(holderPointer);
				holder.release();
			}
		}, connectFlags: flags);
	}

	@discardableResult func connectRotate(name: UnsafePointer<gchar>, flags: ConnectFlags = ConnectFlags(0), handler: @escaping RotateHandler) -> Int {
		// The handler is stored in a holder, which is stored as a user data object with the signal.
		return _connect(signal: name, flags: flags, data: Closure3Holder(handler)) { (gesture, x, y, data) in
			let holder = Unmanaged<RotateHandlerClosureHolder>.fromOpaque(data).takeUnretainedValue();
			holder.call(GestureRotateRef(raw: gesture), x, y);
		}
	}
	
	/// This signal is emitted when the angle between both tracked points changes.
	/// - Parameter gesture: The gesture that emitted the signal
	/// - Parameter angle: The current angle, in radians
	/// - Parameter angleDelta: Difference of the current angle from the starting angle, in radians
	@discardableResult func onRotate(_ handler: @escaping RotateHandler) -> Int {
		return connectRotate(name: GestureRotateSignalName.angleChanged.rawValue, handler: handler);
	}
	
}

public typealias ZoomHandler = (GestureZoomRef, Double) -> Void;

public typealias ZoomHandlerClosureHolder = DualClosureHolder<GestureZoomRef, Double, Void>;

public extension GestureZoomProtocol {
	
	internal func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: ZoomHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gdouble, gpointer) -> Void) -> Int {
		let opaqueHolder = Unmanaged.passRetained(data).toOpaque();
		let callback = unsafeBitCast(handler, to: Callback.self);
		return signalConnectData(detailedSignal: name, cHandler: callback, data: opaqueHolder, destroyData: { (holderPointer, _) in
			if let holderPointer = holderPointer {
				let holder = Unmanaged<ZoomHandlerClosureHolder>.fromOpaque(holderPointer);
				holder.release();
			}
		}, connectFlags: flags);
	}
	
	@discardableResult func connectZoom(name: UnsafePointer<gchar>, flags: ConnectFlags = ConnectFlags(0), handler: @escaping ZoomHandler) -> Int {
		// The handler is stored in a holder, which is stored as a user data object with the signal.
		return _connect(signal: name, flags: flags, data: DualClosureHolder(handler)) { (gesture, scale, data) in
			let holder = Unmanaged<ZoomHandlerClosureHolder>.fromOpaque(data).takeUnretainedValue();
			holder.call(GestureZoomRef(raw: gesture), scale);
		}
	}
	
	/// This signal is emitted whenever the distance between both tracked sequences changes.
	/// - Parameter gesture: The gesture that emitted the signal
	/// - Parameter scale: The scale delta, taking the initial state as 1:1
	@discardableResult func onScaleChanged(_ handler: @escaping ZoomHandler) -> Int {
		return connectZoom(name: GestureZoomSignalName.scaleChanged.rawValue, handler: handler);
	}
	
}
