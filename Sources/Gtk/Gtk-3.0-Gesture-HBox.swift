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

// MARK: - Gesture Class

/// The `GestureProtocol` protocol exposes the methods and properties of an underlying `GtkGesture` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Gesture`.
/// Alternatively, use `GestureRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkGesture` is the base object for gesture recognition, although this
/// object is quite generalized to serve as a base for multi-touch gestures,
/// it is suitable to implement single-touch and pointer-based gestures (using
/// the special `nil` `GdkEventSequence` value for these).
/// 
/// The number of touches that a `GtkGesture` need to be recognized is controlled
/// by the `GtkGesture:n`-points property, if a gesture is keeping track of less
/// or more than that number of sequences, it won't check wether the gesture
/// is recognized.
/// 
/// As soon as the gesture has the expected number of touches, the gesture will
/// run the `GtkGesture::check` signal regularly on input events until the gesture
/// is recognized, the criteria to consider a gesture as "recognized" is left to
/// `GtkGesture` subclasses.
/// 
/// A recognized gesture will then emit the following signals:
/// - `GtkGesture::begin` when the gesture is recognized.
/// - A number of `GtkGesture::update`, whenever an input event is processed.
/// - `GtkGesture::end` when the gesture is no longer recognized.
/// 
/// ## Event propagation
/// 
/// In order to receive events, a gesture needs to either set a propagation phase
/// through `gtk_event_controller_set_propagation_phase()`, or feed those manually
/// through `gtk_event_controller_handle_event()`.
/// 
/// In the capture phase, events are propagated from the toplevel down to the
/// target widget, and gestures that are attached to containers above the widget
/// get a chance to interact with the event before it reaches the target.
/// 
/// After the capture phase, GTK+ emits the traditional `GtkWidget::button`-press-event,
/// `GtkWidget::button`-release-event, `GtkWidget::touch`-event, etc signals. Gestures
/// with the `GTK_PHASE_TARGET` phase are fed events from the default `GtkWidget::event`
/// handlers.
/// 
/// In the bubble phase, events are propagated up from the target widget to the
/// toplevel, and gestures that are attached to containers above the widget get
/// a chance to interact with events that have not been handled yet.
/// 
/// ## States of a sequence # <a name="touch-sequence-states"></a>
/// 
/// Whenever input interaction happens, a single event may trigger a cascade of
/// `GtkGestures`, both across the parents of the widget receiving the event and
/// in parallel within an individual widget. It is a responsibility of the
/// widgets using those gestures to set the state of touch sequences accordingly
/// in order to enable cooperation of gestures around the `GdkEventSequences`
/// triggering those.
/// 
/// Within a widget, gestures can be grouped through `gtk_gesture_group()`,
/// grouped gestures synchronize the state of sequences, so calling
/// `gtk_gesture_set_sequence_state()` on one will effectively propagate
/// the state throughout the group.
/// 
/// By default, all sequences start out in the `GTK_EVENT_SEQUENCE_NONE` state,
/// sequences in this state trigger the gesture event handler, but event
/// propagation will continue unstopped by gestures.
/// 
/// If a sequence enters into the `GTK_EVENT_SEQUENCE_DENIED` state, the gesture
/// group will effectively ignore the sequence, letting events go unstopped
/// through the gesture, but the "slot" will still remain occupied while
/// the touch is active.
/// 
/// If a sequence enters in the `GTK_EVENT_SEQUENCE_CLAIMED` state, the gesture
/// group will grab all interaction on the sequence, by:
/// - Setting the same sequence to `GTK_EVENT_SEQUENCE_DENIED` on every other gesture
///   group within the widget, and every gesture on parent widgets in the propagation
///   chain.
/// - calling `GtkGesture::cancel` on every gesture in widgets underneath in the
///   propagation chain.
/// - Stopping event propagation after the gesture group handles the event.
/// 
/// Note: if a sequence is set early to `GTK_EVENT_SEQUENCE_CLAIMED` on
/// `GDK_TOUCH_BEGIN`/`GDK_BUTTON_PRESS` (so those events are captured before
/// reaching the event widget, this implies `GTK_PHASE_CAPTURE`), one similar
/// event will emulated if the sequence changes to `GTK_EVENT_SEQUENCE_DENIED`.
/// This way event coherence is preserved before event propagation is unstopped
/// again.
/// 
/// Sequence states can't be changed freely, see `gtk_gesture_set_sequence_state()`
/// to know about the possible lifetimes of a `GdkEventSequence`.
/// 
/// ## Touchpad gestures
/// 
/// On the platforms that support it, `GtkGesture` will handle transparently
/// touchpad gesture events. The only precautions users of `GtkGesture` should do
/// to enable this support are:
/// - Enabling `GDK_TOUCHPAD_GESTURE_MASK` on their `GdkWindows`
/// - If the gesture has `GTK_PHASE_NONE`, ensuring events of type
///   `GDK_TOUCHPAD_SWIPE` and `GDK_TOUCHPAD_PINCH` are handled by the `GtkGesture`
public protocol GestureProtocol: EventControllerProtocol {
    /// Untyped pointer to the underlying `GtkGesture` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkGesture` instance.
    var gesture_ptr: UnsafeMutablePointer<GtkGesture> { get }
}

/// The `GestureRef` type acts as a lightweight Swift reference to an underlying `GtkGesture` instance.
/// It exposes methods that can operate on this data type through `GestureProtocol` conformance.
/// Use `GestureRef` only as an `unowned` reference to an existing `GtkGesture` instance.
///
/// `GtkGesture` is the base object for gesture recognition, although this
/// object is quite generalized to serve as a base for multi-touch gestures,
/// it is suitable to implement single-touch and pointer-based gestures (using
/// the special `nil` `GdkEventSequence` value for these).
/// 
/// The number of touches that a `GtkGesture` need to be recognized is controlled
/// by the `GtkGesture:n`-points property, if a gesture is keeping track of less
/// or more than that number of sequences, it won't check wether the gesture
/// is recognized.
/// 
/// As soon as the gesture has the expected number of touches, the gesture will
/// run the `GtkGesture::check` signal regularly on input events until the gesture
/// is recognized, the criteria to consider a gesture as "recognized" is left to
/// `GtkGesture` subclasses.
/// 
/// A recognized gesture will then emit the following signals:
/// - `GtkGesture::begin` when the gesture is recognized.
/// - A number of `GtkGesture::update`, whenever an input event is processed.
/// - `GtkGesture::end` when the gesture is no longer recognized.
/// 
/// ## Event propagation
/// 
/// In order to receive events, a gesture needs to either set a propagation phase
/// through `gtk_event_controller_set_propagation_phase()`, or feed those manually
/// through `gtk_event_controller_handle_event()`.
/// 
/// In the capture phase, events are propagated from the toplevel down to the
/// target widget, and gestures that are attached to containers above the widget
/// get a chance to interact with the event before it reaches the target.
/// 
/// After the capture phase, GTK+ emits the traditional `GtkWidget::button`-press-event,
/// `GtkWidget::button`-release-event, `GtkWidget::touch`-event, etc signals. Gestures
/// with the `GTK_PHASE_TARGET` phase are fed events from the default `GtkWidget::event`
/// handlers.
/// 
/// In the bubble phase, events are propagated up from the target widget to the
/// toplevel, and gestures that are attached to containers above the widget get
/// a chance to interact with events that have not been handled yet.
/// 
/// ## States of a sequence # <a name="touch-sequence-states"></a>
/// 
/// Whenever input interaction happens, a single event may trigger a cascade of
/// `GtkGestures`, both across the parents of the widget receiving the event and
/// in parallel within an individual widget. It is a responsibility of the
/// widgets using those gestures to set the state of touch sequences accordingly
/// in order to enable cooperation of gestures around the `GdkEventSequences`
/// triggering those.
/// 
/// Within a widget, gestures can be grouped through `gtk_gesture_group()`,
/// grouped gestures synchronize the state of sequences, so calling
/// `gtk_gesture_set_sequence_state()` on one will effectively propagate
/// the state throughout the group.
/// 
/// By default, all sequences start out in the `GTK_EVENT_SEQUENCE_NONE` state,
/// sequences in this state trigger the gesture event handler, but event
/// propagation will continue unstopped by gestures.
/// 
/// If a sequence enters into the `GTK_EVENT_SEQUENCE_DENIED` state, the gesture
/// group will effectively ignore the sequence, letting events go unstopped
/// through the gesture, but the "slot" will still remain occupied while
/// the touch is active.
/// 
/// If a sequence enters in the `GTK_EVENT_SEQUENCE_CLAIMED` state, the gesture
/// group will grab all interaction on the sequence, by:
/// - Setting the same sequence to `GTK_EVENT_SEQUENCE_DENIED` on every other gesture
///   group within the widget, and every gesture on parent widgets in the propagation
///   chain.
/// - calling `GtkGesture::cancel` on every gesture in widgets underneath in the
///   propagation chain.
/// - Stopping event propagation after the gesture group handles the event.
/// 
/// Note: if a sequence is set early to `GTK_EVENT_SEQUENCE_CLAIMED` on
/// `GDK_TOUCH_BEGIN`/`GDK_BUTTON_PRESS` (so those events are captured before
/// reaching the event widget, this implies `GTK_PHASE_CAPTURE`), one similar
/// event will emulated if the sequence changes to `GTK_EVENT_SEQUENCE_DENIED`.
/// This way event coherence is preserved before event propagation is unstopped
/// again.
/// 
/// Sequence states can't be changed freely, see `gtk_gesture_set_sequence_state()`
/// to know about the possible lifetimes of a `GdkEventSequence`.
/// 
/// ## Touchpad gestures
/// 
/// On the platforms that support it, `GtkGesture` will handle transparently
/// touchpad gesture events. The only precautions users of `GtkGesture` should do
/// to enable this support are:
/// - Enabling `GDK_TOUCHPAD_GESTURE_MASK` on their `GdkWindows`
/// - If the gesture has `GTK_PHASE_NONE`, ensuring events of type
///   `GDK_TOUCHPAD_SWIPE` and `GDK_TOUCHPAD_PINCH` are handled by the `GtkGesture`
public struct GestureRef: GestureProtocol {
    /// Untyped pointer to the underlying `GtkGesture` instance.
    /// For type-safe access, use the generated, typed pointer `gesture_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension GestureRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkGesture>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `GestureProtocol`
    init<T: GestureProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Gesture` type acts as a reference-counted owner of an underlying `GtkGesture` instance.
/// It provides the methods that can operate on this data type through `GestureProtocol` conformance.
/// Use `Gesture` as a strong reference or owner of a `GtkGesture` instance.
///
/// `GtkGesture` is the base object for gesture recognition, although this
/// object is quite generalized to serve as a base for multi-touch gestures,
/// it is suitable to implement single-touch and pointer-based gestures (using
/// the special `nil` `GdkEventSequence` value for these).
/// 
/// The number of touches that a `GtkGesture` need to be recognized is controlled
/// by the `GtkGesture:n`-points property, if a gesture is keeping track of less
/// or more than that number of sequences, it won't check wether the gesture
/// is recognized.
/// 
/// As soon as the gesture has the expected number of touches, the gesture will
/// run the `GtkGesture::check` signal regularly on input events until the gesture
/// is recognized, the criteria to consider a gesture as "recognized" is left to
/// `GtkGesture` subclasses.
/// 
/// A recognized gesture will then emit the following signals:
/// - `GtkGesture::begin` when the gesture is recognized.
/// - A number of `GtkGesture::update`, whenever an input event is processed.
/// - `GtkGesture::end` when the gesture is no longer recognized.
/// 
/// ## Event propagation
/// 
/// In order to receive events, a gesture needs to either set a propagation phase
/// through `gtk_event_controller_set_propagation_phase()`, or feed those manually
/// through `gtk_event_controller_handle_event()`.
/// 
/// In the capture phase, events are propagated from the toplevel down to the
/// target widget, and gestures that are attached to containers above the widget
/// get a chance to interact with the event before it reaches the target.
/// 
/// After the capture phase, GTK+ emits the traditional `GtkWidget::button`-press-event,
/// `GtkWidget::button`-release-event, `GtkWidget::touch`-event, etc signals. Gestures
/// with the `GTK_PHASE_TARGET` phase are fed events from the default `GtkWidget::event`
/// handlers.
/// 
/// In the bubble phase, events are propagated up from the target widget to the
/// toplevel, and gestures that are attached to containers above the widget get
/// a chance to interact with events that have not been handled yet.
/// 
/// ## States of a sequence # <a name="touch-sequence-states"></a>
/// 
/// Whenever input interaction happens, a single event may trigger a cascade of
/// `GtkGestures`, both across the parents of the widget receiving the event and
/// in parallel within an individual widget. It is a responsibility of the
/// widgets using those gestures to set the state of touch sequences accordingly
/// in order to enable cooperation of gestures around the `GdkEventSequences`
/// triggering those.
/// 
/// Within a widget, gestures can be grouped through `gtk_gesture_group()`,
/// grouped gestures synchronize the state of sequences, so calling
/// `gtk_gesture_set_sequence_state()` on one will effectively propagate
/// the state throughout the group.
/// 
/// By default, all sequences start out in the `GTK_EVENT_SEQUENCE_NONE` state,
/// sequences in this state trigger the gesture event handler, but event
/// propagation will continue unstopped by gestures.
/// 
/// If a sequence enters into the `GTK_EVENT_SEQUENCE_DENIED` state, the gesture
/// group will effectively ignore the sequence, letting events go unstopped
/// through the gesture, but the "slot" will still remain occupied while
/// the touch is active.
/// 
/// If a sequence enters in the `GTK_EVENT_SEQUENCE_CLAIMED` state, the gesture
/// group will grab all interaction on the sequence, by:
/// - Setting the same sequence to `GTK_EVENT_SEQUENCE_DENIED` on every other gesture
///   group within the widget, and every gesture on parent widgets in the propagation
///   chain.
/// - calling `GtkGesture::cancel` on every gesture in widgets underneath in the
///   propagation chain.
/// - Stopping event propagation after the gesture group handles the event.
/// 
/// Note: if a sequence is set early to `GTK_EVENT_SEQUENCE_CLAIMED` on
/// `GDK_TOUCH_BEGIN`/`GDK_BUTTON_PRESS` (so those events are captured before
/// reaching the event widget, this implies `GTK_PHASE_CAPTURE`), one similar
/// event will emulated if the sequence changes to `GTK_EVENT_SEQUENCE_DENIED`.
/// This way event coherence is preserved before event propagation is unstopped
/// again.
/// 
/// Sequence states can't be changed freely, see `gtk_gesture_set_sequence_state()`
/// to know about the possible lifetimes of a `GdkEventSequence`.
/// 
/// ## Touchpad gestures
/// 
/// On the platforms that support it, `GtkGesture` will handle transparently
/// touchpad gesture events. The only precautions users of `GtkGesture` should do
/// to enable this support are:
/// - Enabling `GDK_TOUCHPAD_GESTURE_MASK` on their `GdkWindows`
/// - If the gesture has `GTK_PHASE_NONE`, ensuring events of type
///   `GDK_TOUCHPAD_SWIPE` and `GDK_TOUCHPAD_PINCH` are handled by the `GtkGesture`
open class Gesture: EventController, GestureProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `Gesture` instance.
    public init(_ op: UnsafeMutablePointer<GtkGesture>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `GestureProtocol`
    /// Will retain `GtkGesture`.
    public convenience init<T: GestureProtocol>(_ other: T) {
        self.init(cast(other.gesture_ptr))
        g_object_ref(cast(gesture_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkGesture.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkGesture.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkGesture.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkGesture>(opaquePointer))
    }



}

public enum GesturePropertyName: String, PropertyNameProtocol {
    /// The number of touch points that trigger recognition on this gesture,
    case nPoints = "n-points"
    /// The propagation phase at which this controller will handle events.
    case propagationPhase = "propagation-phase"
    /// The widget receiving the `GdkEvents` that the controller will handle.
    case widget = "widget"
    /// If non-`nil`, the gesture will only listen for events that happen on
    /// this `GdkWindow`, or a child of it.
    case window = "window"
}

public extension GestureProtocol {
    /// Bind a `GesturePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: GesturePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(gesture_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef(cast($0)) }
        }

        let rv = _bind(source_property.name, to: target, target_property.name, flags: f, holder: BindingClosureHolder(transform_from, transform_to), transformFrom: {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_from(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }) {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_to(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }
        return rv
    }
}

public enum GestureSignalName: String, SignalNameProtocol {
    /// This signal is emitted when the gesture is recognized. This means the
    /// number of touch sequences matches `GtkGesture:n`-points, and the `GtkGesture::check`
    /// `handler(s)` returned `TRUE`.
    /// 
    /// Note: These conditions may also happen when an extra touch (eg. a third touch
    /// on a 2-touches gesture) is lifted, in that situation `sequence` won't pertain
    /// to the current set of active touches, so don't rely on this being true.
    case begin = "begin"
    /// This signal is emitted whenever a sequence is cancelled. This usually
    /// happens on active touches when `gtk_event_controller_reset()` is called
    /// on `gesture` (manually, due to grabs...), or the individual `sequence`
    /// was claimed by parent widgets' controllers (see `gtk_gesture_set_sequence_state()`).
    /// 
    /// `gesture` must forget everything about `sequence` as a reaction to this signal.
    case cancel = "cancel"
    /// This signal is emitted when `gesture` either stopped recognizing the event
    /// sequences as something to be handled (the `GtkGesture::check` handler returned
    /// `false`), or the number of touch sequences became higher or lower than
    /// `GtkGesture:n`-points.
    /// 
    /// Note: `sequence` might not pertain to the group of sequences that were
    /// previously triggering recognition on `gesture` (ie. a just pressed touch
    /// sequence that exceeds `GtkGesture:n`-points). This situation may be detected
    /// by checking through `gtk_gesture_handles_sequence()`.
    case end = "end"
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// This signal is emitted whenever a sequence state changes. See
    /// `gtk_gesture_set_sequence_state()` to know more about the expectable
    /// sequence lifetimes.
    case sequenceStateChanged = "sequence-state-changed"
    /// This signal is emitted whenever an event is handled while the gesture is
    /// recognized. `sequence` is guaranteed to pertain to the set of active touches.
    case update = "update"
    /// The number of touch points that trigger recognition on this gesture,
    case notifyNPoints = "notify::n-points"
    /// The propagation phase at which this controller will handle events.
    case notifyPropagationPhase = "notify::propagation-phase"
    /// The widget receiving the `GdkEvents` that the controller will handle.
    case notifyWidget = "notify::widget"
    /// If non-`nil`, the gesture will only listen for events that happen on
    /// this `GdkWindow`, or a child of it.
    case notifyWindow = "notify::window"
}

public extension GestureProtocol {
    /// Connect a `GestureSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: GestureSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(gesture_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension GestureProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkGesture` instance.
    var gesture_ptr: UnsafeMutablePointer<GtkGesture> { return ptr.assumingMemoryBound(to: GtkGesture.self) }

    /// If there are touch sequences being currently handled by `gesture`,
    /// this function returns `true` and fills in `rect` with the bounding
    /// box containing all active touches. Otherwise, `false` will be
    /// returned.
    /// 
    /// Note: This function will yield unexpected results on touchpad
    /// gestures. Since there is no correlation between physical and
    /// pixel distances, these will look as if constrained in an
    /// infinitely small area, `rect` width and height will thus be 0
    /// regardless of the number of touchpoints.
    func getBoundingBox(rect: Gdk.RectangleProtocol) -> Bool {
        let rv = gtk_gesture_get_bounding_box(cast(gesture_ptr), cast(rect.ptr))
        return Bool(rv != 0)
    }

    /// If there are touch sequences being currently handled by `gesture`,
    /// this function returns `true` and fills in `x` and `y` with the center
    /// of the bounding box containing all active touches. Otherwise, `false`
    /// will be returned.
    func getBoundingBoxCenter(x: UnsafeMutablePointer<gdouble>, y: UnsafeMutablePointer<gdouble>) -> Bool {
        let rv = gtk_gesture_get_bounding_box_center(cast(gesture_ptr), cast(x), cast(y))
        return Bool(rv != 0)
    }

    /// Returns the master `GdkDevice` that is currently operating
    /// on `gesture`, or `nil` if the gesture is not being interacted.
    func getDevice() -> UnsafeMutablePointer<GdkDevice>! {
        let rv = gtk_gesture_get_device(cast(gesture_ptr))
        return cast(rv)
    }

    /// Returns all gestures in the group of `gesture`
    func getGroup() -> UnsafeMutablePointer<GList>! {
        let rv = gtk_gesture_get_group(cast(gesture_ptr))
        return cast(rv)
    }

    /// Returns the last event that was processed for `sequence`.
    /// 
    /// Note that the returned pointer is only valid as long as the `sequence`
    /// is still interpreted by the `gesture`. If in doubt, you should make
    /// a copy of the event.
    func getLastEvent(sequence: EventSequenceProtocol) -> UnsafePointer<GdkEvent>! {
        let rv = gtk_gesture_get_last_event(cast(gesture_ptr), cast(sequence.ptr))
        return cast(rv)
    }

    /// Returns the `GdkEventSequence` that was last updated on `gesture`.
    func getLastUpdatedSequence() -> UnsafeMutablePointer<GdkEventSequence>! {
        let rv = gtk_gesture_get_last_updated_sequence(cast(gesture_ptr))
        return cast(rv)
    }

    /// If `sequence` is currently being interpreted by `gesture`, this
    /// function returns `true` and fills in `x` and `y` with the last coordinates
    /// stored for that event sequence. The coordinates are always relative to the
    /// widget allocation.
    func getPoint(sequence: EventSequenceProtocol, x: UnsafeMutablePointer<gdouble>, y: UnsafeMutablePointer<gdouble>) -> Bool {
        let rv = gtk_gesture_get_point(cast(gesture_ptr), cast(sequence.ptr), cast(x), cast(y))
        return Bool(rv != 0)
    }

    /// Returns the `sequence` state, as seen by `gesture`.
    func getSequenceState(sequence: EventSequenceProtocol) -> GtkEventSequenceState {
        let rv = gtk_gesture_get_sequence_state(cast(gesture_ptr), cast(sequence.ptr))
        return rv
    }

    /// Returns the list of `GdkEventSequences` currently being interpreted
    /// by `gesture`.
    func getSequences() -> UnsafeMutablePointer<GList>! {
        let rv = gtk_gesture_get_sequences(cast(gesture_ptr))
        return cast(rv)
    }

    /// Returns the user-defined window that receives the events
    /// handled by `gesture`. See `gtk_gesture_set_window()` for more
    /// information.
    func getWindow() -> UnsafeMutablePointer<GdkWindow>! {
        let rv = gtk_gesture_get_window(cast(gesture_ptr))
        return cast(rv)
    }

    /// Adds `gesture` to the same group than `group_gesture`. Gestures
    /// are by default isolated in their own groups.
    /// 
    /// When gestures are grouped, the state of `GdkEventSequences`
    /// is kept in sync for all of those, so calling `gtk_gesture_set_sequence_state()`,
    /// on one will transfer the same value to the others.
    /// 
    /// Groups also perform an "implicit grabbing" of sequences, if a
    /// `GdkEventSequence` state is set to `GTK_EVENT_SEQUENCE_CLAIMED` on one group,
    /// every other gesture group attached to the same `GtkWidget` will switch the
    /// state for that sequence to `GTK_EVENT_SEQUENCE_DENIED`.
    func group(gesture: GestureProtocol) {
        gtk_gesture_group(cast(gesture_ptr), cast(gesture.ptr))
    
    }

    /// Returns `true` if `gesture` is currently handling events corresponding to
    /// `sequence`.
    func handles(sequence: EventSequenceProtocol) -> Bool {
        let rv = gtk_gesture_handles_sequence(cast(gesture_ptr), cast(sequence.ptr))
        return Bool(rv != 0)
    }

    /// Returns `true` if both gestures pertain to the same group.
    func isGroupedWith(other: GestureProtocol) -> Bool {
        let rv = gtk_gesture_is_grouped_with(cast(gesture_ptr), cast(other.ptr))
        return Bool(rv != 0)
    }

    /// Sets the state of `sequence` in `gesture`. Sequences start
    /// in state `GTK_EVENT_SEQUENCE_NONE`, and whenever they change
    /// state, they can never go back to that state. Likewise,
    /// sequences in state `GTK_EVENT_SEQUENCE_DENIED` cannot turn
    /// back to a not denied state. With these rules, the lifetime
    /// of an event sequence is constrained to the next four:
    /// 
    /// * None
    /// * None → Denied
    /// * None → Claimed
    /// * None → Claimed → Denied
    /// 
    /// Note: Due to event handling ordering, it may be unsafe to
    /// set the state on another gesture within a `GtkGesture::begin`
    /// signal handler, as the callback might be executed before
    /// the other gesture knows about the sequence. A safe way to
    /// perform this could be:
    /// 
    /// ```
    /// static void
    /// first_gesture_begin_cb (GtkGesture       *first_gesture,
    ///                         GdkEventSequence *sequence,
    ///                         gpointer          user_data)
    /// {
    ///   gtk_gesture_set_sequence_state (first_gesture, sequence, GTK_EVENT_SEQUENCE_CLAIMED);
    ///   gtk_gesture_set_sequence_state (second_gesture, sequence, GTK_EVENT_SEQUENCE_DENIED);
    /// }
    /// 
    /// static void
    /// second_gesture_begin_cb (GtkGesture       *second_gesture,
    ///                          GdkEventSequence *sequence,
    ///                          gpointer          user_data)
    /// {
    ///   if (gtk_gesture_get_sequence_state (first_gesture, sequence) == GTK_EVENT_SEQUENCE_CLAIMED)
    ///     gtk_gesture_set_sequence_state (second_gesture, sequence, GTK_EVENT_SEQUENCE_DENIED);
    /// }
    /// ```
    /// 
    /// If both gestures are in the same group, just set the state on
    /// the gesture emitting the event, the sequence will be already
    /// be initialized to the group's global state when the second
    /// gesture processes the event.
    func setSequenceState(sequence: EventSequenceProtocol, state: EventSequenceState) -> Bool {
        let rv = gtk_gesture_set_sequence_state(cast(gesture_ptr), cast(sequence.ptr), state)
        return Bool(rv != 0)
    }

    /// Sets the state of all sequences that `gesture` is currently
    /// interacting with. See `gtk_gesture_set_sequence_state()`
    /// for more details on sequence states.
    func set(state: EventSequenceState) -> Bool {
        let rv = gtk_gesture_set_state(cast(gesture_ptr), state)
        return Bool(rv != 0)
    }

    /// Sets a specific window to receive events about, so `gesture`
    /// will effectively handle only events targeting `window`, or
    /// a child of it. `window` must pertain to `gtk_event_controller_get_widget()`.
    func set(window: WindowProtocol) {
        gtk_gesture_set_window(cast(gesture_ptr), cast(window.ptr))
    
    }

    /// Separates `gesture` into an isolated group.
    func ungroup() {
        gtk_gesture_ungroup(cast(gesture_ptr))
    
    }
    /// Returns the master `GdkDevice` that is currently operating
    /// on `gesture`, or `nil` if the gesture is not being interacted.
    var device: UnsafeMutablePointer<GdkDevice>! {
        /// Returns the master `GdkDevice` that is currently operating
        /// on `gesture`, or `nil` if the gesture is not being interacted.
        get {
            let rv = gtk_gesture_get_device(cast(gesture_ptr))
            return cast(rv)
        }
    }

    /// Returns all gestures in the group of `gesture`
    var group: UnsafeMutablePointer<GList>! {
        /// Returns all gestures in the group of `gesture`
        get {
            let rv = gtk_gesture_get_group(cast(gesture_ptr))
            return cast(rv)
        }
    }

    /// Returns `true` if the gesture is currently active.
    /// A gesture is active meanwhile there are touch sequences
    /// interacting with it.
    var isActive: Bool {
        /// Returns `true` if the gesture is currently active.
        /// A gesture is active meanwhile there are touch sequences
        /// interacting with it.
        get {
            let rv = gtk_gesture_is_active(cast(gesture_ptr))
            return Bool(rv != 0)
        }
    }

    /// Returns `true` if the gesture is currently recognized.
    /// A gesture is recognized if there are as many interacting
    /// touch sequences as required by `gesture`, and `GtkGesture::check`
    /// returned `true` for the sequences being currently interpreted.
    var isRecognized: Bool {
        /// Returns `true` if the gesture is currently recognized.
        /// A gesture is recognized if there are as many interacting
        /// touch sequences as required by `gesture`, and `GtkGesture::check`
        /// returned `true` for the sequences being currently interpreted.
        get {
            let rv = gtk_gesture_is_recognized(cast(gesture_ptr))
            return Bool(rv != 0)
        }
    }

    /// Returns the `GdkEventSequence` that was last updated on `gesture`.
    var lastUpdatedSequence: UnsafeMutablePointer<GdkEventSequence>! {
        /// Returns the `GdkEventSequence` that was last updated on `gesture`.
        get {
            let rv = gtk_gesture_get_last_updated_sequence(cast(gesture_ptr))
            return cast(rv)
        }
    }

    /// Returns the list of `GdkEventSequences` currently being interpreted
    /// by `gesture`.
    var sequences: UnsafeMutablePointer<GList>! {
        /// Returns the list of `GdkEventSequences` currently being interpreted
        /// by `gesture`.
        get {
            let rv = gtk_gesture_get_sequences(cast(gesture_ptr))
            return cast(rv)
        }
    }

    /// If non-`nil`, the gesture will only listen for events that happen on
    /// this `GdkWindow`, or a child of it.
    var window: UnsafeMutablePointer<GdkWindow>! {
        /// Returns the user-defined window that receives the events
        /// handled by `gesture`. See `gtk_gesture_set_window()` for more
        /// information.
        get {
            let rv = gtk_gesture_get_window(cast(gesture_ptr))
            return cast(rv)
        }
        /// Sets a specific window to receive events about, so `gesture`
        /// will effectively handle only events targeting `window`, or
        /// a child of it. `window` must pertain to `gtk_event_controller_get_widget()`.
        nonmutating set {
            gtk_gesture_set_window(cast(gesture_ptr), cast(newValue))
        }
    }
}



// MARK: - GestureDrag Class

/// The `GestureDragProtocol` protocol exposes the methods and properties of an underlying `GtkGestureDrag` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `GestureDrag`.
/// Alternatively, use `GestureDragRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkGestureDrag` is a `GtkGesture` implementation that recognizes drag
/// operations. The drag operation itself can be tracked throught the
/// `GtkGestureDrag::drag`-begin, `GtkGestureDrag::drag`-update and
/// `GtkGestureDrag::drag`-end signals, or the relevant coordinates be
/// extracted through `gtk_gesture_drag_get_offset()` and
/// `gtk_gesture_drag_get_start_point()`.
public protocol GestureDragProtocol: GestureSingleProtocol {
    /// Untyped pointer to the underlying `GtkGestureDrag` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkGestureDrag` instance.
    var gesture_drag_ptr: UnsafeMutablePointer<GtkGestureDrag> { get }
}

/// The `GestureDragRef` type acts as a lightweight Swift reference to an underlying `GtkGestureDrag` instance.
/// It exposes methods that can operate on this data type through `GestureDragProtocol` conformance.
/// Use `GestureDragRef` only as an `unowned` reference to an existing `GtkGestureDrag` instance.
///
/// `GtkGestureDrag` is a `GtkGesture` implementation that recognizes drag
/// operations. The drag operation itself can be tracked throught the
/// `GtkGestureDrag::drag`-begin, `GtkGestureDrag::drag`-update and
/// `GtkGestureDrag::drag`-end signals, or the relevant coordinates be
/// extracted through `gtk_gesture_drag_get_offset()` and
/// `gtk_gesture_drag_get_start_point()`.
public struct GestureDragRef: GestureDragProtocol {
    /// Untyped pointer to the underlying `GtkGestureDrag` instance.
    /// For type-safe access, use the generated, typed pointer `gesture_drag_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension GestureDragRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkGestureDrag>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `GestureDragProtocol`
    init<T: GestureDragProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureDragProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureDragProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureDragProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureDragProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureDragProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Returns a newly created `GtkGesture` that recognizes drags.
    init( widget: WidgetProtocol) {
        let rv = gtk_gesture_drag_new(cast(widget.ptr))
        self.init(cast(rv))
    }
}

/// The `GestureDrag` type acts as a reference-counted owner of an underlying `GtkGestureDrag` instance.
/// It provides the methods that can operate on this data type through `GestureDragProtocol` conformance.
/// Use `GestureDrag` as a strong reference or owner of a `GtkGestureDrag` instance.
///
/// `GtkGestureDrag` is a `GtkGesture` implementation that recognizes drag
/// operations. The drag operation itself can be tracked throught the
/// `GtkGestureDrag::drag`-begin, `GtkGestureDrag::drag`-update and
/// `GtkGestureDrag::drag`-end signals, or the relevant coordinates be
/// extracted through `gtk_gesture_drag_get_offset()` and
/// `gtk_gesture_drag_get_start_point()`.
open class GestureDrag: GestureSingle, GestureDragProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `GestureDrag` instance.
    public init(_ op: UnsafeMutablePointer<GtkGestureDrag>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `GestureDragProtocol`
    /// Will retain `GtkGestureDrag`.
    public convenience init<T: GestureDragProtocol>(_ other: T) {
        self.init(cast(other.gesture_drag_ptr))
        g_object_ref(cast(gesture_drag_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureDragProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkGestureDrag.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureDragProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkGestureDrag.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureDragProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkGestureDrag.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureDragProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkGestureDrag>(opaquePointer))
    }

    /// Returns a newly created `GtkGesture` that recognizes drags.
    public convenience init( widget: WidgetProtocol) {
        let rv = gtk_gesture_drag_new(cast(widget.ptr))
        self.init(cast(rv))
    }


}

public enum GestureDragPropertyName: String, PropertyNameProtocol {
    /// Mouse button number to listen to, or 0 to listen for any button.
    case button = "button"
    /// Whether the gesture is exclusive. Exclusive gestures only listen to pointer
    /// and pointer emulated events.
    case exclusive = "exclusive"
    /// The number of touch points that trigger recognition on this gesture,
    case nPoints = "n-points"
    /// The propagation phase at which this controller will handle events.
    case propagationPhase = "propagation-phase"
    /// Whether the gesture handles only touch events.
    case touchOnly = "touch-only"
    /// The widget receiving the `GdkEvents` that the controller will handle.
    case widget = "widget"
    /// If non-`nil`, the gesture will only listen for events that happen on
    /// this `GdkWindow`, or a child of it.
    case window = "window"
}

public extension GestureDragProtocol {
    /// Bind a `GestureDragPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: GestureDragPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(gesture_drag_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef(cast($0)) }
        }

        let rv = _bind(source_property.name, to: target, target_property.name, flags: f, holder: BindingClosureHolder(transform_from, transform_to), transformFrom: {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_from(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }) {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_to(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }
        return rv
    }
}

public enum GestureDragSignalName: String, SignalNameProtocol {
    /// This signal is emitted when the gesture is recognized. This means the
    /// number of touch sequences matches `GtkGesture:n`-points, and the `GtkGesture::check`
    /// `handler(s)` returned `TRUE`.
    /// 
    /// Note: These conditions may also happen when an extra touch (eg. a third touch
    /// on a 2-touches gesture) is lifted, in that situation `sequence` won't pertain
    /// to the current set of active touches, so don't rely on this being true.
    case begin = "begin"
    /// This signal is emitted whenever a sequence is cancelled. This usually
    /// happens on active touches when `gtk_event_controller_reset()` is called
    /// on `gesture` (manually, due to grabs...), or the individual `sequence`
    /// was claimed by parent widgets' controllers (see `gtk_gesture_set_sequence_state()`).
    /// 
    /// `gesture` must forget everything about `sequence` as a reaction to this signal.
    case cancel = "cancel"
    /// This signal is emitted whenever dragging starts.
    case dragBegin = "drag-begin"
    /// This signal is emitted whenever the dragging is finished.
    case dragEnd = "drag-end"
    /// This signal is emitted whenever the dragging point moves.
    case dragUpdate = "drag-update"
    /// This signal is emitted when `gesture` either stopped recognizing the event
    /// sequences as something to be handled (the `GtkGesture::check` handler returned
    /// `false`), or the number of touch sequences became higher or lower than
    /// `GtkGesture:n`-points.
    /// 
    /// Note: `sequence` might not pertain to the group of sequences that were
    /// previously triggering recognition on `gesture` (ie. a just pressed touch
    /// sequence that exceeds `GtkGesture:n`-points). This situation may be detected
    /// by checking through `gtk_gesture_handles_sequence()`.
    case end = "end"
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// This signal is emitted whenever a sequence state changes. See
    /// `gtk_gesture_set_sequence_state()` to know more about the expectable
    /// sequence lifetimes.
    case sequenceStateChanged = "sequence-state-changed"
    /// This signal is emitted whenever an event is handled while the gesture is
    /// recognized. `sequence` is guaranteed to pertain to the set of active touches.
    case update = "update"
    /// Mouse button number to listen to, or 0 to listen for any button.
    case notifyButton = "notify::button"
    /// Whether the gesture is exclusive. Exclusive gestures only listen to pointer
    /// and pointer emulated events.
    case notifyExclusive = "notify::exclusive"
    /// The number of touch points that trigger recognition on this gesture,
    case notifyNPoints = "notify::n-points"
    /// The propagation phase at which this controller will handle events.
    case notifyPropagationPhase = "notify::propagation-phase"
    /// Whether the gesture handles only touch events.
    case notifyTouchOnly = "notify::touch-only"
    /// The widget receiving the `GdkEvents` that the controller will handle.
    case notifyWidget = "notify::widget"
    /// If non-`nil`, the gesture will only listen for events that happen on
    /// this `GdkWindow`, or a child of it.
    case notifyWindow = "notify::window"
}

public extension GestureDragProtocol {
    /// Connect a `GestureDragSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: GestureDragSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(gesture_drag_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension GestureDragProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkGestureDrag` instance.
    var gesture_drag_ptr: UnsafeMutablePointer<GtkGestureDrag> { return ptr.assumingMemoryBound(to: GtkGestureDrag.self) }

    /// If the `gesture` is active, this function returns `true` and
    /// fills in `x` and `y` with the coordinates of the current point,
    /// as an offset to the starting drag point.
    func getOffset(x: UnsafeMutablePointer<gdouble>, y: UnsafeMutablePointer<gdouble>) -> Bool {
        let rv = gtk_gesture_drag_get_offset(cast(gesture_drag_ptr), cast(x), cast(y))
        return Bool(rv != 0)
    }

    /// If the `gesture` is active, this function returns `true`
    /// and fills in `x` and `y` with the drag start coordinates,
    /// in window-relative coordinates.
    func getStartPoint(x: UnsafeMutablePointer<gdouble>, y: UnsafeMutablePointer<gdouble>) -> Bool {
        let rv = gtk_gesture_drag_get_start_point(cast(gesture_drag_ptr), cast(x), cast(y))
        return Bool(rv != 0)
    }
}



// MARK: - GestureLongPress Class

/// The `GestureLongPressProtocol` protocol exposes the methods and properties of an underlying `GtkGestureLongPress` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `GestureLongPress`.
/// Alternatively, use `GestureLongPressRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkGestureLongPress` is a `GtkGesture` implementation able to recognize
/// long presses, triggering the `GtkGestureLongPress::pressed` after the
/// timeout is exceeded.
/// 
/// If the touchpoint is lifted before the timeout passes, or if it drifts
/// too far of the initial press point, the `GtkGestureLongPress::cancelled`
/// signal will be emitted.
public protocol GestureLongPressProtocol: GestureSingleProtocol {
    /// Untyped pointer to the underlying `GtkGestureLongPress` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkGestureLongPress` instance.
    var gesture_long_press_ptr: UnsafeMutablePointer<GtkGestureLongPress> { get }
}

/// The `GestureLongPressRef` type acts as a lightweight Swift reference to an underlying `GtkGestureLongPress` instance.
/// It exposes methods that can operate on this data type through `GestureLongPressProtocol` conformance.
/// Use `GestureLongPressRef` only as an `unowned` reference to an existing `GtkGestureLongPress` instance.
///
/// `GtkGestureLongPress` is a `GtkGesture` implementation able to recognize
/// long presses, triggering the `GtkGestureLongPress::pressed` after the
/// timeout is exceeded.
/// 
/// If the touchpoint is lifted before the timeout passes, or if it drifts
/// too far of the initial press point, the `GtkGestureLongPress::cancelled`
/// signal will be emitted.
public struct GestureLongPressRef: GestureLongPressProtocol {
    /// Untyped pointer to the underlying `GtkGestureLongPress` instance.
    /// For type-safe access, use the generated, typed pointer `gesture_long_press_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension GestureLongPressRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkGestureLongPress>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `GestureLongPressProtocol`
    init<T: GestureLongPressProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureLongPressProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureLongPressProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureLongPressProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureLongPressProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureLongPressProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Returns a newly created `GtkGesture` that recognizes long presses.
    init( widget: WidgetProtocol) {
        let rv = gtk_gesture_long_press_new(cast(widget.ptr))
        self.init(cast(rv))
    }
}

/// The `GestureLongPress` type acts as a reference-counted owner of an underlying `GtkGestureLongPress` instance.
/// It provides the methods that can operate on this data type through `GestureLongPressProtocol` conformance.
/// Use `GestureLongPress` as a strong reference or owner of a `GtkGestureLongPress` instance.
///
/// `GtkGestureLongPress` is a `GtkGesture` implementation able to recognize
/// long presses, triggering the `GtkGestureLongPress::pressed` after the
/// timeout is exceeded.
/// 
/// If the touchpoint is lifted before the timeout passes, or if it drifts
/// too far of the initial press point, the `GtkGestureLongPress::cancelled`
/// signal will be emitted.
open class GestureLongPress: GestureSingle, GestureLongPressProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `GestureLongPress` instance.
    public init(_ op: UnsafeMutablePointer<GtkGestureLongPress>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `GestureLongPressProtocol`
    /// Will retain `GtkGestureLongPress`.
    public convenience init<T: GestureLongPressProtocol>(_ other: T) {
        self.init(cast(other.gesture_long_press_ptr))
        g_object_ref(cast(gesture_long_press_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureLongPressProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkGestureLongPress.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureLongPressProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkGestureLongPress.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureLongPressProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkGestureLongPress.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureLongPressProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkGestureLongPress>(opaquePointer))
    }

    /// Returns a newly created `GtkGesture` that recognizes long presses.
    public convenience init( widget: WidgetProtocol) {
        let rv = gtk_gesture_long_press_new(cast(widget.ptr))
        self.init(cast(rv))
    }


}

public enum GestureLongPressPropertyName: String, PropertyNameProtocol {
    /// Mouse button number to listen to, or 0 to listen for any button.
    case button = "button"
    case delayFactor = "delay-factor"
    /// Whether the gesture is exclusive. Exclusive gestures only listen to pointer
    /// and pointer emulated events.
    case exclusive = "exclusive"
    /// The number of touch points that trigger recognition on this gesture,
    case nPoints = "n-points"
    /// The propagation phase at which this controller will handle events.
    case propagationPhase = "propagation-phase"
    /// Whether the gesture handles only touch events.
    case touchOnly = "touch-only"
    /// The widget receiving the `GdkEvents` that the controller will handle.
    case widget = "widget"
    /// If non-`nil`, the gesture will only listen for events that happen on
    /// this `GdkWindow`, or a child of it.
    case window = "window"
}

public extension GestureLongPressProtocol {
    /// Bind a `GestureLongPressPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: GestureLongPressPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(gesture_long_press_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef(cast($0)) }
        }

        let rv = _bind(source_property.name, to: target, target_property.name, flags: f, holder: BindingClosureHolder(transform_from, transform_to), transformFrom: {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_from(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }) {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_to(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }
        return rv
    }
}

public enum GestureLongPressSignalName: String, SignalNameProtocol {
    /// This signal is emitted when the gesture is recognized. This means the
    /// number of touch sequences matches `GtkGesture:n`-points, and the `GtkGesture::check`
    /// `handler(s)` returned `TRUE`.
    /// 
    /// Note: These conditions may also happen when an extra touch (eg. a third touch
    /// on a 2-touches gesture) is lifted, in that situation `sequence` won't pertain
    /// to the current set of active touches, so don't rely on this being true.
    case begin = "begin"
    /// This signal is emitted whenever a sequence is cancelled. This usually
    /// happens on active touches when `gtk_event_controller_reset()` is called
    /// on `gesture` (manually, due to grabs...), or the individual `sequence`
    /// was claimed by parent widgets' controllers (see `gtk_gesture_set_sequence_state()`).
    /// 
    /// `gesture` must forget everything about `sequence` as a reaction to this signal.
    case cancel = "cancel"
    /// This signal is emitted whenever a press moved too far, or was released
    /// before `GtkGestureLongPress::pressed` happened.
    case cancelled = "cancelled"
    /// This signal is emitted when `gesture` either stopped recognizing the event
    /// sequences as something to be handled (the `GtkGesture::check` handler returned
    /// `false`), or the number of touch sequences became higher or lower than
    /// `GtkGesture:n`-points.
    /// 
    /// Note: `sequence` might not pertain to the group of sequences that were
    /// previously triggering recognition on `gesture` (ie. a just pressed touch
    /// sequence that exceeds `GtkGesture:n`-points). This situation may be detected
    /// by checking through `gtk_gesture_handles_sequence()`.
    case end = "end"
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// This signal is emitted whenever a press goes unmoved/unreleased longer than
    /// what the GTK+ defaults tell.
    case pressed = "pressed"
    /// This signal is emitted whenever a sequence state changes. See
    /// `gtk_gesture_set_sequence_state()` to know more about the expectable
    /// sequence lifetimes.
    case sequenceStateChanged = "sequence-state-changed"
    /// This signal is emitted whenever an event is handled while the gesture is
    /// recognized. `sequence` is guaranteed to pertain to the set of active touches.
    case update = "update"
    /// Mouse button number to listen to, or 0 to listen for any button.
    case notifyButton = "notify::button"
    case notifyDelayFactor = "notify::delay-factor"
    /// Whether the gesture is exclusive. Exclusive gestures only listen to pointer
    /// and pointer emulated events.
    case notifyExclusive = "notify::exclusive"
    /// The number of touch points that trigger recognition on this gesture,
    case notifyNPoints = "notify::n-points"
    /// The propagation phase at which this controller will handle events.
    case notifyPropagationPhase = "notify::propagation-phase"
    /// Whether the gesture handles only touch events.
    case notifyTouchOnly = "notify::touch-only"
    /// The widget receiving the `GdkEvents` that the controller will handle.
    case notifyWidget = "notify::widget"
    /// If non-`nil`, the gesture will only listen for events that happen on
    /// this `GdkWindow`, or a child of it.
    case notifyWindow = "notify::window"
}

public extension GestureLongPressProtocol {
    /// Connect a `GestureLongPressSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: GestureLongPressSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(gesture_long_press_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension GestureLongPressProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkGestureLongPress` instance.
    var gesture_long_press_ptr: UnsafeMutablePointer<GtkGestureLongPress> { return ptr.assumingMemoryBound(to: GtkGestureLongPress.self) }

}



// MARK: - GestureMultiPress Class

/// The `GestureMultiPressProtocol` protocol exposes the methods and properties of an underlying `GtkGestureMultiPress` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `GestureMultiPress`.
/// Alternatively, use `GestureMultiPressRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkGestureMultiPress` is a `GtkGesture` implementation able to recognize
/// multiple clicks on a nearby zone, which can be listened for through the
/// `GtkGestureMultiPress::pressed` signal. Whenever time or distance between
/// clicks exceed the GTK+ defaults, `GtkGestureMultiPress::stopped` is emitted,
/// and the click counter is reset.
/// 
/// Callers may also restrict the area that is considered valid for a >1
/// touch/button press through `gtk_gesture_multi_press_set_area()`, so any
/// click happening outside that area is considered to be a first click of
/// its own.
public protocol GestureMultiPressProtocol: GestureSingleProtocol {
    /// Untyped pointer to the underlying `GtkGestureMultiPress` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkGestureMultiPress` instance.
    var gesture_multi_press_ptr: UnsafeMutablePointer<GtkGestureMultiPress> { get }
}

/// The `GestureMultiPressRef` type acts as a lightweight Swift reference to an underlying `GtkGestureMultiPress` instance.
/// It exposes methods that can operate on this data type through `GestureMultiPressProtocol` conformance.
/// Use `GestureMultiPressRef` only as an `unowned` reference to an existing `GtkGestureMultiPress` instance.
///
/// `GtkGestureMultiPress` is a `GtkGesture` implementation able to recognize
/// multiple clicks on a nearby zone, which can be listened for through the
/// `GtkGestureMultiPress::pressed` signal. Whenever time or distance between
/// clicks exceed the GTK+ defaults, `GtkGestureMultiPress::stopped` is emitted,
/// and the click counter is reset.
/// 
/// Callers may also restrict the area that is considered valid for a >1
/// touch/button press through `gtk_gesture_multi_press_set_area()`, so any
/// click happening outside that area is considered to be a first click of
/// its own.
public struct GestureMultiPressRef: GestureMultiPressProtocol {
    /// Untyped pointer to the underlying `GtkGestureMultiPress` instance.
    /// For type-safe access, use the generated, typed pointer `gesture_multi_press_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension GestureMultiPressRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkGestureMultiPress>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `GestureMultiPressProtocol`
    init<T: GestureMultiPressProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureMultiPressProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureMultiPressProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureMultiPressProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureMultiPressProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureMultiPressProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Returns a newly created `GtkGesture` that recognizes single and multiple
    /// presses.
    init( widget: WidgetProtocol) {
        let rv = gtk_gesture_multi_press_new(cast(widget.ptr))
        self.init(cast(rv))
    }
}

/// The `GestureMultiPress` type acts as a reference-counted owner of an underlying `GtkGestureMultiPress` instance.
/// It provides the methods that can operate on this data type through `GestureMultiPressProtocol` conformance.
/// Use `GestureMultiPress` as a strong reference or owner of a `GtkGestureMultiPress` instance.
///
/// `GtkGestureMultiPress` is a `GtkGesture` implementation able to recognize
/// multiple clicks on a nearby zone, which can be listened for through the
/// `GtkGestureMultiPress::pressed` signal. Whenever time or distance between
/// clicks exceed the GTK+ defaults, `GtkGestureMultiPress::stopped` is emitted,
/// and the click counter is reset.
/// 
/// Callers may also restrict the area that is considered valid for a >1
/// touch/button press through `gtk_gesture_multi_press_set_area()`, so any
/// click happening outside that area is considered to be a first click of
/// its own.
open class GestureMultiPress: GestureSingle, GestureMultiPressProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `GestureMultiPress` instance.
    public init(_ op: UnsafeMutablePointer<GtkGestureMultiPress>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `GestureMultiPressProtocol`
    /// Will retain `GtkGestureMultiPress`.
    public convenience init<T: GestureMultiPressProtocol>(_ other: T) {
        self.init(cast(other.gesture_multi_press_ptr))
        g_object_ref(cast(gesture_multi_press_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureMultiPressProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkGestureMultiPress.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureMultiPressProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkGestureMultiPress.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureMultiPressProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkGestureMultiPress.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureMultiPressProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkGestureMultiPress>(opaquePointer))
    }

    /// Returns a newly created `GtkGesture` that recognizes single and multiple
    /// presses.
    public convenience init( widget: WidgetProtocol) {
        let rv = gtk_gesture_multi_press_new(cast(widget.ptr))
        self.init(cast(rv))
    }


}

public enum GestureMultiPressPropertyName: String, PropertyNameProtocol {
    /// Mouse button number to listen to, or 0 to listen for any button.
    case button = "button"
    /// Whether the gesture is exclusive. Exclusive gestures only listen to pointer
    /// and pointer emulated events.
    case exclusive = "exclusive"
    /// The number of touch points that trigger recognition on this gesture,
    case nPoints = "n-points"
    /// The propagation phase at which this controller will handle events.
    case propagationPhase = "propagation-phase"
    /// Whether the gesture handles only touch events.
    case touchOnly = "touch-only"
    /// The widget receiving the `GdkEvents` that the controller will handle.
    case widget = "widget"
    /// If non-`nil`, the gesture will only listen for events that happen on
    /// this `GdkWindow`, or a child of it.
    case window = "window"
}

public extension GestureMultiPressProtocol {
    /// Bind a `GestureMultiPressPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: GestureMultiPressPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(gesture_multi_press_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef(cast($0)) }
        }

        let rv = _bind(source_property.name, to: target, target_property.name, flags: f, holder: BindingClosureHolder(transform_from, transform_to), transformFrom: {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_from(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }) {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_to(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }
        return rv
    }
}

public enum GestureMultiPressSignalName: String, SignalNameProtocol {
    /// This signal is emitted when the gesture is recognized. This means the
    /// number of touch sequences matches `GtkGesture:n`-points, and the `GtkGesture::check`
    /// `handler(s)` returned `TRUE`.
    /// 
    /// Note: These conditions may also happen when an extra touch (eg. a third touch
    /// on a 2-touches gesture) is lifted, in that situation `sequence` won't pertain
    /// to the current set of active touches, so don't rely on this being true.
    case begin = "begin"
    /// This signal is emitted whenever a sequence is cancelled. This usually
    /// happens on active touches when `gtk_event_controller_reset()` is called
    /// on `gesture` (manually, due to grabs...), or the individual `sequence`
    /// was claimed by parent widgets' controllers (see `gtk_gesture_set_sequence_state()`).
    /// 
    /// `gesture` must forget everything about `sequence` as a reaction to this signal.
    case cancel = "cancel"
    /// This signal is emitted when `gesture` either stopped recognizing the event
    /// sequences as something to be handled (the `GtkGesture::check` handler returned
    /// `false`), or the number of touch sequences became higher or lower than
    /// `GtkGesture:n`-points.
    /// 
    /// Note: `sequence` might not pertain to the group of sequences that were
    /// previously triggering recognition on `gesture` (ie. a just pressed touch
    /// sequence that exceeds `GtkGesture:n`-points). This situation may be detected
    /// by checking through `gtk_gesture_handles_sequence()`.
    case end = "end"
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// This signal is emitted whenever a button or touch press happens.
    case pressed = "pressed"
    /// This signal is emitted when a button or touch is released. `n_press`
    /// will report the number of press that is paired to this event, note
    /// that `GtkGestureMultiPress::stopped` may have been emitted between the
    /// press and its release, `n_press` will only start over at the next press.
    case released = "released"
    /// This signal is emitted whenever a sequence state changes. See
    /// `gtk_gesture_set_sequence_state()` to know more about the expectable
    /// sequence lifetimes.
    case sequenceStateChanged = "sequence-state-changed"
    /// This signal is emitted whenever any time/distance threshold has
    /// been exceeded.
    case stopped = "stopped"
    /// This signal is emitted whenever an event is handled while the gesture is
    /// recognized. `sequence` is guaranteed to pertain to the set of active touches.
    case update = "update"
    /// Mouse button number to listen to, or 0 to listen for any button.
    case notifyButton = "notify::button"
    /// Whether the gesture is exclusive. Exclusive gestures only listen to pointer
    /// and pointer emulated events.
    case notifyExclusive = "notify::exclusive"
    /// The number of touch points that trigger recognition on this gesture,
    case notifyNPoints = "notify::n-points"
    /// The propagation phase at which this controller will handle events.
    case notifyPropagationPhase = "notify::propagation-phase"
    /// Whether the gesture handles only touch events.
    case notifyTouchOnly = "notify::touch-only"
    /// The widget receiving the `GdkEvents` that the controller will handle.
    case notifyWidget = "notify::widget"
    /// If non-`nil`, the gesture will only listen for events that happen on
    /// this `GdkWindow`, or a child of it.
    case notifyWindow = "notify::window"
}

public extension GestureMultiPressProtocol {
    /// Connect a `GestureMultiPressSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: GestureMultiPressSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(gesture_multi_press_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension GestureMultiPressProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkGestureMultiPress` instance.
    var gesture_multi_press_ptr: UnsafeMutablePointer<GtkGestureMultiPress> { return ptr.assumingMemoryBound(to: GtkGestureMultiPress.self) }

    /// If an area was set through `gtk_gesture_multi_press_set_area()`,
    /// this function will return `true` and fill in `rect` with the
    /// press area. See `gtk_gesture_multi_press_set_area()` for more
    /// details on what the press area represents.
    func getArea(rect: Gdk.RectangleProtocol) -> Bool {
        let rv = gtk_gesture_multi_press_get_area(cast(gesture_multi_press_ptr), cast(rect.ptr))
        return Bool(rv != 0)
    }

    /// If `rect` is non-`nil`, the press area will be checked to be
    /// confined within the rectangle, otherwise the button count
    /// will be reset so the press is seen as being the first one.
    /// If `rect` is `nil`, the area will be reset to an unrestricted
    /// state.
    /// 
    /// Note: The rectangle is only used to determine whether any
    /// non-first click falls within the expected area. This is not
    /// akin to an input shape.
    func setArea(rect: Gdk.RectangleProtocol) {
        gtk_gesture_multi_press_set_area(cast(gesture_multi_press_ptr), cast(rect.ptr))
    
    }
}



// MARK: - GesturePan Class

/// The `GesturePanProtocol` protocol exposes the methods and properties of an underlying `GtkGesturePan` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `GesturePan`.
/// Alternatively, use `GesturePanRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkGesturePan` is a `GtkGesture` implementation able to recognize
/// pan gestures, those are drags that are locked to happen along one
/// axis. The axis that a `GtkGesturePan` handles is defined at
/// construct time, and can be changed through
/// `gtk_gesture_pan_set_orientation()`.
/// 
/// When the gesture starts to be recognized, `GtkGesturePan` will
/// attempt to determine as early as possible whether the sequence
/// is moving in the expected direction, and denying the sequence if
/// this does not happen.
/// 
/// Once a panning gesture along the expected axis is recognized,
/// the `GtkGesturePan::pan` signal will be emitted as input events
/// are received, containing the offset in the given axis.
public protocol GesturePanProtocol: GestureDragProtocol {
    /// Untyped pointer to the underlying `GtkGesturePan` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkGesturePan` instance.
    var gesture_pan_ptr: UnsafeMutablePointer<GtkGesturePan> { get }
}

/// The `GesturePanRef` type acts as a lightweight Swift reference to an underlying `GtkGesturePan` instance.
/// It exposes methods that can operate on this data type through `GesturePanProtocol` conformance.
/// Use `GesturePanRef` only as an `unowned` reference to an existing `GtkGesturePan` instance.
///
/// `GtkGesturePan` is a `GtkGesture` implementation able to recognize
/// pan gestures, those are drags that are locked to happen along one
/// axis. The axis that a `GtkGesturePan` handles is defined at
/// construct time, and can be changed through
/// `gtk_gesture_pan_set_orientation()`.
/// 
/// When the gesture starts to be recognized, `GtkGesturePan` will
/// attempt to determine as early as possible whether the sequence
/// is moving in the expected direction, and denying the sequence if
/// this does not happen.
/// 
/// Once a panning gesture along the expected axis is recognized,
/// the `GtkGesturePan::pan` signal will be emitted as input events
/// are received, containing the offset in the given axis.
public struct GesturePanRef: GesturePanProtocol {
    /// Untyped pointer to the underlying `GtkGesturePan` instance.
    /// For type-safe access, use the generated, typed pointer `gesture_pan_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension GesturePanRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkGesturePan>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `GesturePanProtocol`
    init<T: GesturePanProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GesturePanProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GesturePanProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GesturePanProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GesturePanProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GesturePanProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Returns a newly created `GtkGesture` that recognizes pan gestures.
    init( widget: WidgetProtocol, orientation: Orientation) {
        let rv = gtk_gesture_pan_new(cast(widget.ptr), orientation)
        self.init(cast(rv))
    }
}

/// The `GesturePan` type acts as a reference-counted owner of an underlying `GtkGesturePan` instance.
/// It provides the methods that can operate on this data type through `GesturePanProtocol` conformance.
/// Use `GesturePan` as a strong reference or owner of a `GtkGesturePan` instance.
///
/// `GtkGesturePan` is a `GtkGesture` implementation able to recognize
/// pan gestures, those are drags that are locked to happen along one
/// axis. The axis that a `GtkGesturePan` handles is defined at
/// construct time, and can be changed through
/// `gtk_gesture_pan_set_orientation()`.
/// 
/// When the gesture starts to be recognized, `GtkGesturePan` will
/// attempt to determine as early as possible whether the sequence
/// is moving in the expected direction, and denying the sequence if
/// this does not happen.
/// 
/// Once a panning gesture along the expected axis is recognized,
/// the `GtkGesturePan::pan` signal will be emitted as input events
/// are received, containing the offset in the given axis.
open class GesturePan: GestureDrag, GesturePanProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `GesturePan` instance.
    public init(_ op: UnsafeMutablePointer<GtkGesturePan>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `GesturePanProtocol`
    /// Will retain `GtkGesturePan`.
    public convenience init<T: GesturePanProtocol>(_ other: T) {
        self.init(cast(other.gesture_pan_ptr))
        g_object_ref(cast(gesture_pan_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GesturePanProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkGesturePan.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GesturePanProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkGesturePan.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GesturePanProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkGesturePan.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GesturePanProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkGesturePan>(opaquePointer))
    }

    /// Returns a newly created `GtkGesture` that recognizes pan gestures.
    public convenience init( widget: WidgetProtocol, orientation: Orientation) {
        let rv = gtk_gesture_pan_new(cast(widget.ptr), orientation)
        self.init(cast(rv))
    }


}

public enum GesturePanPropertyName: String, PropertyNameProtocol {
    /// Mouse button number to listen to, or 0 to listen for any button.
    case button = "button"
    /// Whether the gesture is exclusive. Exclusive gestures only listen to pointer
    /// and pointer emulated events.
    case exclusive = "exclusive"
    /// The number of touch points that trigger recognition on this gesture,
    case nPoints = "n-points"
    /// The expected orientation of pan gestures.
    case orientation = "orientation"
    /// The propagation phase at which this controller will handle events.
    case propagationPhase = "propagation-phase"
    /// Whether the gesture handles only touch events.
    case touchOnly = "touch-only"
    /// The widget receiving the `GdkEvents` that the controller will handle.
    case widget = "widget"
    /// If non-`nil`, the gesture will only listen for events that happen on
    /// this `GdkWindow`, or a child of it.
    case window = "window"
}

public extension GesturePanProtocol {
    /// Bind a `GesturePanPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: GesturePanPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(gesture_pan_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef(cast($0)) }
        }

        let rv = _bind(source_property.name, to: target, target_property.name, flags: f, holder: BindingClosureHolder(transform_from, transform_to), transformFrom: {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_from(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }) {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_to(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }
        return rv
    }
}

public enum GesturePanSignalName: String, SignalNameProtocol {
    /// This signal is emitted when the gesture is recognized. This means the
    /// number of touch sequences matches `GtkGesture:n`-points, and the `GtkGesture::check`
    /// `handler(s)` returned `TRUE`.
    /// 
    /// Note: These conditions may also happen when an extra touch (eg. a third touch
    /// on a 2-touches gesture) is lifted, in that situation `sequence` won't pertain
    /// to the current set of active touches, so don't rely on this being true.
    case begin = "begin"
    /// This signal is emitted whenever a sequence is cancelled. This usually
    /// happens on active touches when `gtk_event_controller_reset()` is called
    /// on `gesture` (manually, due to grabs...), or the individual `sequence`
    /// was claimed by parent widgets' controllers (see `gtk_gesture_set_sequence_state()`).
    /// 
    /// `gesture` must forget everything about `sequence` as a reaction to this signal.
    case cancel = "cancel"
    /// This signal is emitted whenever dragging starts.
    case dragBegin = "drag-begin"
    /// This signal is emitted whenever the dragging is finished.
    case dragEnd = "drag-end"
    /// This signal is emitted whenever the dragging point moves.
    case dragUpdate = "drag-update"
    /// This signal is emitted when `gesture` either stopped recognizing the event
    /// sequences as something to be handled (the `GtkGesture::check` handler returned
    /// `false`), or the number of touch sequences became higher or lower than
    /// `GtkGesture:n`-points.
    /// 
    /// Note: `sequence` might not pertain to the group of sequences that were
    /// previously triggering recognition on `gesture` (ie. a just pressed touch
    /// sequence that exceeds `GtkGesture:n`-points). This situation may be detected
    /// by checking through `gtk_gesture_handles_sequence()`.
    case end = "end"
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// This signal is emitted once a panning gesture along the
    /// expected axis is detected.
    case pan = "pan"
    /// This signal is emitted whenever a sequence state changes. See
    /// `gtk_gesture_set_sequence_state()` to know more about the expectable
    /// sequence lifetimes.
    case sequenceStateChanged = "sequence-state-changed"
    /// This signal is emitted whenever an event is handled while the gesture is
    /// recognized. `sequence` is guaranteed to pertain to the set of active touches.
    case update = "update"
    /// Mouse button number to listen to, or 0 to listen for any button.
    case notifyButton = "notify::button"
    /// Whether the gesture is exclusive. Exclusive gestures only listen to pointer
    /// and pointer emulated events.
    case notifyExclusive = "notify::exclusive"
    /// The number of touch points that trigger recognition on this gesture,
    case notifyNPoints = "notify::n-points"
    /// The expected orientation of pan gestures.
    case notifyOrientation = "notify::orientation"
    /// The propagation phase at which this controller will handle events.
    case notifyPropagationPhase = "notify::propagation-phase"
    /// Whether the gesture handles only touch events.
    case notifyTouchOnly = "notify::touch-only"
    /// The widget receiving the `GdkEvents` that the controller will handle.
    case notifyWidget = "notify::widget"
    /// If non-`nil`, the gesture will only listen for events that happen on
    /// this `GdkWindow`, or a child of it.
    case notifyWindow = "notify::window"
}

public extension GesturePanProtocol {
    /// Connect a `GesturePanSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: GesturePanSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(gesture_pan_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension GesturePanProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkGesturePan` instance.
    var gesture_pan_ptr: UnsafeMutablePointer<GtkGesturePan> { return ptr.assumingMemoryBound(to: GtkGesturePan.self) }

    /// Returns the orientation of the pan gestures that this `gesture` expects.
    func getOrientation() -> GtkOrientation {
        let rv = gtk_gesture_pan_get_orientation(cast(gesture_pan_ptr))
        return rv
    }

    /// Sets the orientation to be expected on pan gestures.
    func set(orientation: Orientation) {
        gtk_gesture_pan_set_orientation(cast(gesture_pan_ptr), orientation)
    
    }
    /// The expected orientation of pan gestures.
    var orientation: GtkOrientation {
        /// Returns the orientation of the pan gestures that this `gesture` expects.
        get {
            let rv = gtk_gesture_pan_get_orientation(cast(gesture_pan_ptr))
            return rv
        }
        /// Sets the orientation to be expected on pan gestures.
        nonmutating set {
            gtk_gesture_pan_set_orientation(cast(gesture_pan_ptr), newValue)
        }
    }
}



// MARK: - GestureRotate Class

/// The `GestureRotateProtocol` protocol exposes the methods and properties of an underlying `GtkGestureRotate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `GestureRotate`.
/// Alternatively, use `GestureRotateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkGestureRotate` is a `GtkGesture` implementation able to recognize
/// 2-finger rotations, whenever the angle between both handled sequences
/// changes, the `GtkGestureRotate::angle`-changed signal is emitted.
public protocol GestureRotateProtocol: GestureProtocol {
    /// Untyped pointer to the underlying `GtkGestureRotate` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkGestureRotate` instance.
    var gesture_rotate_ptr: UnsafeMutablePointer<GtkGestureRotate> { get }
}

/// The `GestureRotateRef` type acts as a lightweight Swift reference to an underlying `GtkGestureRotate` instance.
/// It exposes methods that can operate on this data type through `GestureRotateProtocol` conformance.
/// Use `GestureRotateRef` only as an `unowned` reference to an existing `GtkGestureRotate` instance.
///
/// `GtkGestureRotate` is a `GtkGesture` implementation able to recognize
/// 2-finger rotations, whenever the angle between both handled sequences
/// changes, the `GtkGestureRotate::angle`-changed signal is emitted.
public struct GestureRotateRef: GestureRotateProtocol {
    /// Untyped pointer to the underlying `GtkGestureRotate` instance.
    /// For type-safe access, use the generated, typed pointer `gesture_rotate_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension GestureRotateRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkGestureRotate>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `GestureRotateProtocol`
    init<T: GestureRotateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureRotateProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureRotateProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureRotateProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureRotateProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureRotateProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Returns a newly created `GtkGesture` that recognizes 2-touch
    /// rotation gestures.
    init( widget: WidgetProtocol) {
        let rv = gtk_gesture_rotate_new(cast(widget.ptr))
        self.init(cast(rv))
    }
}

/// The `GestureRotate` type acts as a reference-counted owner of an underlying `GtkGestureRotate` instance.
/// It provides the methods that can operate on this data type through `GestureRotateProtocol` conformance.
/// Use `GestureRotate` as a strong reference or owner of a `GtkGestureRotate` instance.
///
/// `GtkGestureRotate` is a `GtkGesture` implementation able to recognize
/// 2-finger rotations, whenever the angle between both handled sequences
/// changes, the `GtkGestureRotate::angle`-changed signal is emitted.
open class GestureRotate: Gesture, GestureRotateProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `GestureRotate` instance.
    public init(_ op: UnsafeMutablePointer<GtkGestureRotate>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `GestureRotateProtocol`
    /// Will retain `GtkGestureRotate`.
    public convenience init<T: GestureRotateProtocol>(_ other: T) {
        self.init(cast(other.gesture_rotate_ptr))
        g_object_ref(cast(gesture_rotate_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureRotateProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkGestureRotate.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureRotateProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkGestureRotate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureRotateProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkGestureRotate.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureRotateProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkGestureRotate>(opaquePointer))
    }

    /// Returns a newly created `GtkGesture` that recognizes 2-touch
    /// rotation gestures.
    public convenience init( widget: WidgetProtocol) {
        let rv = gtk_gesture_rotate_new(cast(widget.ptr))
        self.init(cast(rv))
    }


}

public enum GestureRotatePropertyName: String, PropertyNameProtocol {
    /// The number of touch points that trigger recognition on this gesture,
    case nPoints = "n-points"
    /// The propagation phase at which this controller will handle events.
    case propagationPhase = "propagation-phase"
    /// The widget receiving the `GdkEvents` that the controller will handle.
    case widget = "widget"
    /// If non-`nil`, the gesture will only listen for events that happen on
    /// this `GdkWindow`, or a child of it.
    case window = "window"
}

public extension GestureRotateProtocol {
    /// Bind a `GestureRotatePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: GestureRotatePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(gesture_rotate_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef(cast($0)) }
        }

        let rv = _bind(source_property.name, to: target, target_property.name, flags: f, holder: BindingClosureHolder(transform_from, transform_to), transformFrom: {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_from(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }) {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_to(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }
        return rv
    }
}

public enum GestureRotateSignalName: String, SignalNameProtocol {
    /// This signal is emitted when the angle between both tracked points
    /// changes.
    case angleChanged = "angle-changed"
    /// This signal is emitted when the gesture is recognized. This means the
    /// number of touch sequences matches `GtkGesture:n`-points, and the `GtkGesture::check`
    /// `handler(s)` returned `TRUE`.
    /// 
    /// Note: These conditions may also happen when an extra touch (eg. a third touch
    /// on a 2-touches gesture) is lifted, in that situation `sequence` won't pertain
    /// to the current set of active touches, so don't rely on this being true.
    case begin = "begin"
    /// This signal is emitted whenever a sequence is cancelled. This usually
    /// happens on active touches when `gtk_event_controller_reset()` is called
    /// on `gesture` (manually, due to grabs...), or the individual `sequence`
    /// was claimed by parent widgets' controllers (see `gtk_gesture_set_sequence_state()`).
    /// 
    /// `gesture` must forget everything about `sequence` as a reaction to this signal.
    case cancel = "cancel"
    /// This signal is emitted when `gesture` either stopped recognizing the event
    /// sequences as something to be handled (the `GtkGesture::check` handler returned
    /// `false`), or the number of touch sequences became higher or lower than
    /// `GtkGesture:n`-points.
    /// 
    /// Note: `sequence` might not pertain to the group of sequences that were
    /// previously triggering recognition on `gesture` (ie. a just pressed touch
    /// sequence that exceeds `GtkGesture:n`-points). This situation may be detected
    /// by checking through `gtk_gesture_handles_sequence()`.
    case end = "end"
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// This signal is emitted whenever a sequence state changes. See
    /// `gtk_gesture_set_sequence_state()` to know more about the expectable
    /// sequence lifetimes.
    case sequenceStateChanged = "sequence-state-changed"
    /// This signal is emitted whenever an event is handled while the gesture is
    /// recognized. `sequence` is guaranteed to pertain to the set of active touches.
    case update = "update"
    /// The number of touch points that trigger recognition on this gesture,
    case notifyNPoints = "notify::n-points"
    /// The propagation phase at which this controller will handle events.
    case notifyPropagationPhase = "notify::propagation-phase"
    /// The widget receiving the `GdkEvents` that the controller will handle.
    case notifyWidget = "notify::widget"
    /// If non-`nil`, the gesture will only listen for events that happen on
    /// this `GdkWindow`, or a child of it.
    case notifyWindow = "notify::window"
}

public extension GestureRotateProtocol {
    /// Connect a `GestureRotateSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: GestureRotateSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(gesture_rotate_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension GestureRotateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkGestureRotate` instance.
    var gesture_rotate_ptr: UnsafeMutablePointer<GtkGestureRotate> { return ptr.assumingMemoryBound(to: GtkGestureRotate.self) }

    /// If `gesture` is active, this function returns the angle difference
    /// in radians since the gesture was first recognized. If `gesture` is
    /// not active, 0 is returned.
    func getAngleDelta() -> gdouble {
        let rv = gtk_gesture_rotate_get_angle_delta(cast(gesture_rotate_ptr))
        return rv
    }
    /// If `gesture` is active, this function returns the angle difference
    /// in radians since the gesture was first recognized. If `gesture` is
    /// not active, 0 is returned.
    var angleDelta: gdouble {
        /// If `gesture` is active, this function returns the angle difference
        /// in radians since the gesture was first recognized. If `gesture` is
        /// not active, 0 is returned.
        get {
            let rv = gtk_gesture_rotate_get_angle_delta(cast(gesture_rotate_ptr))
            return rv
        }
    }
}



// MARK: - GestureSingle Class

/// The `GestureSingleProtocol` protocol exposes the methods and properties of an underlying `GtkGestureSingle` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `GestureSingle`.
/// Alternatively, use `GestureSingleRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkGestureSingle` is a subclass of `GtkGesture`, optimized (although
/// not restricted) for dealing with mouse and single-touch gestures. Under
/// interaction, these gestures stick to the first interacting sequence, which
/// is accessible through `gtk_gesture_single_get_current_sequence()` while the
/// gesture is being interacted with.
/// 
/// By default gestures react to both `GDK_BUTTON_PRIMARY` and touch
/// events, `gtk_gesture_single_set_touch_only()` can be used to change the
/// touch behavior. Callers may also specify a different mouse button number
/// to interact with through `gtk_gesture_single_set_button()`, or react to any
/// mouse button by setting 0. While the gesture is active, the button being
/// currently pressed can be known through `gtk_gesture_single_get_current_button()`.
public protocol GestureSingleProtocol: GestureProtocol {
    /// Untyped pointer to the underlying `GtkGestureSingle` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkGestureSingle` instance.
    var gesture_single_ptr: UnsafeMutablePointer<GtkGestureSingle> { get }
}

/// The `GestureSingleRef` type acts as a lightweight Swift reference to an underlying `GtkGestureSingle` instance.
/// It exposes methods that can operate on this data type through `GestureSingleProtocol` conformance.
/// Use `GestureSingleRef` only as an `unowned` reference to an existing `GtkGestureSingle` instance.
///
/// `GtkGestureSingle` is a subclass of `GtkGesture`, optimized (although
/// not restricted) for dealing with mouse and single-touch gestures. Under
/// interaction, these gestures stick to the first interacting sequence, which
/// is accessible through `gtk_gesture_single_get_current_sequence()` while the
/// gesture is being interacted with.
/// 
/// By default gestures react to both `GDK_BUTTON_PRIMARY` and touch
/// events, `gtk_gesture_single_set_touch_only()` can be used to change the
/// touch behavior. Callers may also specify a different mouse button number
/// to interact with through `gtk_gesture_single_set_button()`, or react to any
/// mouse button by setting 0. While the gesture is active, the button being
/// currently pressed can be known through `gtk_gesture_single_get_current_button()`.
public struct GestureSingleRef: GestureSingleProtocol {
    /// Untyped pointer to the underlying `GtkGestureSingle` instance.
    /// For type-safe access, use the generated, typed pointer `gesture_single_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension GestureSingleRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkGestureSingle>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `GestureSingleProtocol`
    init<T: GestureSingleProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureSingleProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureSingleProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureSingleProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureSingleProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureSingleProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `GestureSingle` type acts as a reference-counted owner of an underlying `GtkGestureSingle` instance.
/// It provides the methods that can operate on this data type through `GestureSingleProtocol` conformance.
/// Use `GestureSingle` as a strong reference or owner of a `GtkGestureSingle` instance.
///
/// `GtkGestureSingle` is a subclass of `GtkGesture`, optimized (although
/// not restricted) for dealing with mouse and single-touch gestures. Under
/// interaction, these gestures stick to the first interacting sequence, which
/// is accessible through `gtk_gesture_single_get_current_sequence()` while the
/// gesture is being interacted with.
/// 
/// By default gestures react to both `GDK_BUTTON_PRIMARY` and touch
/// events, `gtk_gesture_single_set_touch_only()` can be used to change the
/// touch behavior. Callers may also specify a different mouse button number
/// to interact with through `gtk_gesture_single_set_button()`, or react to any
/// mouse button by setting 0. While the gesture is active, the button being
/// currently pressed can be known through `gtk_gesture_single_get_current_button()`.
open class GestureSingle: Gesture, GestureSingleProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `GestureSingle` instance.
    public init(_ op: UnsafeMutablePointer<GtkGestureSingle>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `GestureSingleProtocol`
    /// Will retain `GtkGestureSingle`.
    public convenience init<T: GestureSingleProtocol>(_ other: T) {
        self.init(cast(other.gesture_single_ptr))
        g_object_ref(cast(gesture_single_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureSingleProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkGestureSingle.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureSingleProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkGestureSingle.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureSingleProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkGestureSingle.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureSingleProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkGestureSingle>(opaquePointer))
    }



}

public enum GestureSinglePropertyName: String, PropertyNameProtocol {
    /// Mouse button number to listen to, or 0 to listen for any button.
    case button = "button"
    /// Whether the gesture is exclusive. Exclusive gestures only listen to pointer
    /// and pointer emulated events.
    case exclusive = "exclusive"
    /// The number of touch points that trigger recognition on this gesture,
    case nPoints = "n-points"
    /// The propagation phase at which this controller will handle events.
    case propagationPhase = "propagation-phase"
    /// Whether the gesture handles only touch events.
    case touchOnly = "touch-only"
    /// The widget receiving the `GdkEvents` that the controller will handle.
    case widget = "widget"
    /// If non-`nil`, the gesture will only listen for events that happen on
    /// this `GdkWindow`, or a child of it.
    case window = "window"
}

public extension GestureSingleProtocol {
    /// Bind a `GestureSinglePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: GestureSinglePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(gesture_single_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef(cast($0)) }
        }

        let rv = _bind(source_property.name, to: target, target_property.name, flags: f, holder: BindingClosureHolder(transform_from, transform_to), transformFrom: {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_from(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }) {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_to(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }
        return rv
    }
}

public enum GestureSingleSignalName: String, SignalNameProtocol {
    /// This signal is emitted when the gesture is recognized. This means the
    /// number of touch sequences matches `GtkGesture:n`-points, and the `GtkGesture::check`
    /// `handler(s)` returned `TRUE`.
    /// 
    /// Note: These conditions may also happen when an extra touch (eg. a third touch
    /// on a 2-touches gesture) is lifted, in that situation `sequence` won't pertain
    /// to the current set of active touches, so don't rely on this being true.
    case begin = "begin"
    /// This signal is emitted whenever a sequence is cancelled. This usually
    /// happens on active touches when `gtk_event_controller_reset()` is called
    /// on `gesture` (manually, due to grabs...), or the individual `sequence`
    /// was claimed by parent widgets' controllers (see `gtk_gesture_set_sequence_state()`).
    /// 
    /// `gesture` must forget everything about `sequence` as a reaction to this signal.
    case cancel = "cancel"
    /// This signal is emitted when `gesture` either stopped recognizing the event
    /// sequences as something to be handled (the `GtkGesture::check` handler returned
    /// `false`), or the number of touch sequences became higher or lower than
    /// `GtkGesture:n`-points.
    /// 
    /// Note: `sequence` might not pertain to the group of sequences that were
    /// previously triggering recognition on `gesture` (ie. a just pressed touch
    /// sequence that exceeds `GtkGesture:n`-points). This situation may be detected
    /// by checking through `gtk_gesture_handles_sequence()`.
    case end = "end"
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// This signal is emitted whenever a sequence state changes. See
    /// `gtk_gesture_set_sequence_state()` to know more about the expectable
    /// sequence lifetimes.
    case sequenceStateChanged = "sequence-state-changed"
    /// This signal is emitted whenever an event is handled while the gesture is
    /// recognized. `sequence` is guaranteed to pertain to the set of active touches.
    case update = "update"
    /// Mouse button number to listen to, or 0 to listen for any button.
    case notifyButton = "notify::button"
    /// Whether the gesture is exclusive. Exclusive gestures only listen to pointer
    /// and pointer emulated events.
    case notifyExclusive = "notify::exclusive"
    /// The number of touch points that trigger recognition on this gesture,
    case notifyNPoints = "notify::n-points"
    /// The propagation phase at which this controller will handle events.
    case notifyPropagationPhase = "notify::propagation-phase"
    /// Whether the gesture handles only touch events.
    case notifyTouchOnly = "notify::touch-only"
    /// The widget receiving the `GdkEvents` that the controller will handle.
    case notifyWidget = "notify::widget"
    /// If non-`nil`, the gesture will only listen for events that happen on
    /// this `GdkWindow`, or a child of it.
    case notifyWindow = "notify::window"
}

public extension GestureSingleProtocol {
    /// Connect a `GestureSingleSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: GestureSingleSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(gesture_single_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension GestureSingleProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkGestureSingle` instance.
    var gesture_single_ptr: UnsafeMutablePointer<GtkGestureSingle> { return ptr.assumingMemoryBound(to: GtkGestureSingle.self) }

    /// Returns the button number `gesture` listens for, or 0 if `gesture`
    /// reacts to any button press.
    func getButton() -> CUnsignedInt {
        let rv = gtk_gesture_single_get_button(cast(gesture_single_ptr))
        return CUnsignedInt(rv)
    }

    /// Returns the button number currently interacting with `gesture`, or 0 if there
    /// is none.
    func getCurrentButton() -> CUnsignedInt {
        let rv = gtk_gesture_single_get_current_button(cast(gesture_single_ptr))
        return CUnsignedInt(rv)
    }

    /// Returns the event sequence currently interacting with `gesture`.
    /// This is only meaningful if `gtk_gesture_is_active()` returns `true`.
    func getCurrentSequence() -> UnsafeMutablePointer<GdkEventSequence>! {
        let rv = gtk_gesture_single_get_current_sequence(cast(gesture_single_ptr))
        return cast(rv)
    }

    /// Gets whether a gesture is exclusive. For more information, see
    /// `gtk_gesture_single_set_exclusive()`.
    func getExclusive() -> Bool {
        let rv = gtk_gesture_single_get_exclusive(cast(gesture_single_ptr))
        return Bool(rv != 0)
    }

    /// Returns `true` if the gesture is only triggered by touch events.
    func getTouchOnly() -> Bool {
        let rv = gtk_gesture_single_get_touch_only(cast(gesture_single_ptr))
        return Bool(rv != 0)
    }

    /// Sets the button number `gesture` listens to. If non-0, every
    /// button press from a different button number will be ignored.
    /// Touch events implicitly match with button 1.
    func set(button: CUnsignedInt) {
        gtk_gesture_single_set_button(cast(gesture_single_ptr), guint(button))
    
    }

    /// Sets whether `gesture` is exclusive. An exclusive gesture will
    /// only handle pointer and "pointer emulated" touch events, so at
    /// any given time, there is only one sequence able to interact with
    /// those.
    func set(exclusive: Bool) {
        gtk_gesture_single_set_exclusive(cast(gesture_single_ptr), gboolean(exclusive ? 1 : 0))
    
    }

    /// If `touch_only` is `true`, `gesture` will only handle events of type
    /// `GDK_TOUCH_BEGIN`, `GDK_TOUCH_UPDATE` or `GDK_TOUCH_END`. If `false`,
    /// mouse events will be handled too.
    func set(touchOnly touch_only: Bool) {
        gtk_gesture_single_set_touch_only(cast(gesture_single_ptr), gboolean(touch_only ? 1 : 0))
    
    }
    /// Mouse button number to listen to, or 0 to listen for any button.
    var button: CUnsignedInt {
        /// Returns the button number `gesture` listens for, or 0 if `gesture`
        /// reacts to any button press.
        get {
            let rv = gtk_gesture_single_get_button(cast(gesture_single_ptr))
            return CUnsignedInt(rv)
        }
        /// Sets the button number `gesture` listens to. If non-0, every
        /// button press from a different button number will be ignored.
        /// Touch events implicitly match with button 1.
        nonmutating set {
            gtk_gesture_single_set_button(cast(gesture_single_ptr), guint(newValue))
        }
    }

    /// Returns the button number currently interacting with `gesture`, or 0 if there
    /// is none.
    var currentButton: CUnsignedInt {
        /// Returns the button number currently interacting with `gesture`, or 0 if there
        /// is none.
        get {
            let rv = gtk_gesture_single_get_current_button(cast(gesture_single_ptr))
            return CUnsignedInt(rv)
        }
    }

    /// Returns the event sequence currently interacting with `gesture`.
    /// This is only meaningful if `gtk_gesture_is_active()` returns `true`.
    var currentSequence: UnsafeMutablePointer<GdkEventSequence>! {
        /// Returns the event sequence currently interacting with `gesture`.
        /// This is only meaningful if `gtk_gesture_is_active()` returns `true`.
        get {
            let rv = gtk_gesture_single_get_current_sequence(cast(gesture_single_ptr))
            return cast(rv)
        }
    }

    /// Whether the gesture is exclusive. Exclusive gestures only listen to pointer
    /// and pointer emulated events.
    var exclusive: Bool {
        /// Gets whether a gesture is exclusive. For more information, see
        /// `gtk_gesture_single_set_exclusive()`.
        get {
            let rv = gtk_gesture_single_get_exclusive(cast(gesture_single_ptr))
            return Bool(rv != 0)
        }
        /// Sets whether `gesture` is exclusive. An exclusive gesture will
        /// only handle pointer and "pointer emulated" touch events, so at
        /// any given time, there is only one sequence able to interact with
        /// those.
        nonmutating set {
            gtk_gesture_single_set_exclusive(cast(gesture_single_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Returns `true` if the gesture is only triggered by touch events.
    var touchOnly: Bool {
        /// Returns `true` if the gesture is only triggered by touch events.
        get {
            let rv = gtk_gesture_single_get_touch_only(cast(gesture_single_ptr))
            return Bool(rv != 0)
        }
        /// If `touch_only` is `true`, `gesture` will only handle events of type
        /// `GDK_TOUCH_BEGIN`, `GDK_TOUCH_UPDATE` or `GDK_TOUCH_END`. If `false`,
        /// mouse events will be handled too.
        nonmutating set {
            gtk_gesture_single_set_touch_only(cast(gesture_single_ptr), gboolean(newValue ? 1 : 0))
        }
    }
}



// MARK: - GestureStylus Class

/// The `GestureStylusProtocol` protocol exposes the methods and properties of an underlying `GtkGestureStylus` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `GestureStylus`.
/// Alternatively, use `GestureStylusRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkGestureStylus` is a `GtkGesture` implementation specific to stylus
/// input. The provided signals just provide the basic information
public protocol GestureStylusProtocol: GestureSingleProtocol {
    /// Untyped pointer to the underlying `GtkGestureStylus` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkGestureStylus` instance.
    var gesture_stylus_ptr: UnsafeMutablePointer<GtkGestureStylus> { get }
}

/// The `GestureStylusRef` type acts as a lightweight Swift reference to an underlying `GtkGestureStylus` instance.
/// It exposes methods that can operate on this data type through `GestureStylusProtocol` conformance.
/// Use `GestureStylusRef` only as an `unowned` reference to an existing `GtkGestureStylus` instance.
///
/// `GtkGestureStylus` is a `GtkGesture` implementation specific to stylus
/// input. The provided signals just provide the basic information
public struct GestureStylusRef: GestureStylusProtocol {
    /// Untyped pointer to the underlying `GtkGestureStylus` instance.
    /// For type-safe access, use the generated, typed pointer `gesture_stylus_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension GestureStylusRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkGestureStylus>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `GestureStylusProtocol`
    init<T: GestureStylusProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureStylusProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureStylusProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureStylusProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureStylusProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureStylusProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkGestureStylus`.
    init( widget: WidgetProtocol) {
        let rv = gtk_gesture_stylus_new(cast(widget.ptr))
        self.init(cast(rv))
    }
}

/// The `GestureStylus` type acts as a reference-counted owner of an underlying `GtkGestureStylus` instance.
/// It provides the methods that can operate on this data type through `GestureStylusProtocol` conformance.
/// Use `GestureStylus` as a strong reference or owner of a `GtkGestureStylus` instance.
///
/// `GtkGestureStylus` is a `GtkGesture` implementation specific to stylus
/// input. The provided signals just provide the basic information
open class GestureStylus: GestureSingle, GestureStylusProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `GestureStylus` instance.
    public init(_ op: UnsafeMutablePointer<GtkGestureStylus>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `GestureStylusProtocol`
    /// Will retain `GtkGestureStylus`.
    public convenience init<T: GestureStylusProtocol>(_ other: T) {
        self.init(cast(other.gesture_stylus_ptr))
        g_object_ref(cast(gesture_stylus_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureStylusProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkGestureStylus.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureStylusProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkGestureStylus.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureStylusProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkGestureStylus.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureStylusProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkGestureStylus>(opaquePointer))
    }

    /// Creates a new `GtkGestureStylus`.
    public convenience init( widget: WidgetProtocol) {
        let rv = gtk_gesture_stylus_new(cast(widget.ptr))
        self.init(cast(rv))
    }


}

public enum GestureStylusPropertyName: String, PropertyNameProtocol {
    /// Mouse button number to listen to, or 0 to listen for any button.
    case button = "button"
    /// Whether the gesture is exclusive. Exclusive gestures only listen to pointer
    /// and pointer emulated events.
    case exclusive = "exclusive"
    /// The number of touch points that trigger recognition on this gesture,
    case nPoints = "n-points"
    /// The propagation phase at which this controller will handle events.
    case propagationPhase = "propagation-phase"
    /// Whether the gesture handles only touch events.
    case touchOnly = "touch-only"
    /// The widget receiving the `GdkEvents` that the controller will handle.
    case widget = "widget"
    /// If non-`nil`, the gesture will only listen for events that happen on
    /// this `GdkWindow`, or a child of it.
    case window = "window"
}

public extension GestureStylusProtocol {
    /// Bind a `GestureStylusPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: GestureStylusPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(gesture_stylus_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef(cast($0)) }
        }

        let rv = _bind(source_property.name, to: target, target_property.name, flags: f, holder: BindingClosureHolder(transform_from, transform_to), transformFrom: {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_from(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }) {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_to(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }
        return rv
    }
}

public enum GestureStylusSignalName: String, SignalNameProtocol {
    /// This signal is emitted when the gesture is recognized. This means the
    /// number of touch sequences matches `GtkGesture:n`-points, and the `GtkGesture::check`
    /// `handler(s)` returned `TRUE`.
    /// 
    /// Note: These conditions may also happen when an extra touch (eg. a third touch
    /// on a 2-touches gesture) is lifted, in that situation `sequence` won't pertain
    /// to the current set of active touches, so don't rely on this being true.
    case begin = "begin"
    /// This signal is emitted whenever a sequence is cancelled. This usually
    /// happens on active touches when `gtk_event_controller_reset()` is called
    /// on `gesture` (manually, due to grabs...), or the individual `sequence`
    /// was claimed by parent widgets' controllers (see `gtk_gesture_set_sequence_state()`).
    /// 
    /// `gesture` must forget everything about `sequence` as a reaction to this signal.
    case cancel = "cancel"
    case down = "down"
    /// This signal is emitted when `gesture` either stopped recognizing the event
    /// sequences as something to be handled (the `GtkGesture::check` handler returned
    /// `false`), or the number of touch sequences became higher or lower than
    /// `GtkGesture:n`-points.
    /// 
    /// Note: `sequence` might not pertain to the group of sequences that were
    /// previously triggering recognition on `gesture` (ie. a just pressed touch
    /// sequence that exceeds `GtkGesture:n`-points). This situation may be detected
    /// by checking through `gtk_gesture_handles_sequence()`.
    case end = "end"
    case motion = "motion"
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    case proximity = "proximity"
    /// This signal is emitted whenever a sequence state changes. See
    /// `gtk_gesture_set_sequence_state()` to know more about the expectable
    /// sequence lifetimes.
    case sequenceStateChanged = "sequence-state-changed"
    case up = "up"
    /// This signal is emitted whenever an event is handled while the gesture is
    /// recognized. `sequence` is guaranteed to pertain to the set of active touches.
    case update = "update"
    /// Mouse button number to listen to, or 0 to listen for any button.
    case notifyButton = "notify::button"
    /// Whether the gesture is exclusive. Exclusive gestures only listen to pointer
    /// and pointer emulated events.
    case notifyExclusive = "notify::exclusive"
    /// The number of touch points that trigger recognition on this gesture,
    case notifyNPoints = "notify::n-points"
    /// The propagation phase at which this controller will handle events.
    case notifyPropagationPhase = "notify::propagation-phase"
    /// Whether the gesture handles only touch events.
    case notifyTouchOnly = "notify::touch-only"
    /// The widget receiving the `GdkEvents` that the controller will handle.
    case notifyWidget = "notify::widget"
    /// If non-`nil`, the gesture will only listen for events that happen on
    /// this `GdkWindow`, or a child of it.
    case notifyWindow = "notify::window"
}

public extension GestureStylusProtocol {
    /// Connect a `GestureStylusSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: GestureStylusSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(gesture_stylus_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension GestureStylusProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkGestureStylus` instance.
    var gesture_stylus_ptr: UnsafeMutablePointer<GtkGestureStylus> { return ptr.assumingMemoryBound(to: GtkGestureStylus.self) }

    /// Returns the current values for the requested `axes`. This function
    /// must be called from either the `GtkGestureStylus:down`,
    /// `GtkGestureStylus:motion`, `GtkGestureStylus:up` or `GtkGestureStylus:proximity`
    /// signals.
    func get(axes: UnsafeMutablePointer<GdkAxisUse>, values: UnsafeMutablePointer<UnsafeMutablePointer<gdouble>>) -> Bool {
        let rv = gtk_gesture_stylus_get_axes(cast(gesture_stylus_ptr), cast(axes), cast(values))
        return Bool(rv != 0)
    }

    /// Returns the current value for the requested `axis`. This function
    /// must be called from either the `GtkGestureStylus:down`,
    /// `GtkGestureStylus:motion`, `GtkGestureStylus:up` or `GtkGestureStylus:proximity`
    /// signals.
    func get(axis: Gdk.AxisUse, value: UnsafeMutablePointer<gdouble>) -> Bool {
        let rv = gtk_gesture_stylus_get_axis(cast(gesture_stylus_ptr), axis, cast(value))
        return Bool(rv != 0)
    }

    /// Returns the `GdkDeviceTool` currently driving input through this gesture.
    /// This function must be called from either the `GtkGestureStylus::down`,
    /// `GtkGestureStylus::motion`, `GtkGestureStylus::up` or `GtkGestureStylus::proximity`
    /// signal handlers.
    func getDeviceTool() -> UnsafeMutablePointer<GdkDeviceTool>! {
        let rv = gtk_gesture_stylus_get_device_tool(cast(gesture_stylus_ptr))
        return cast(rv)
    }
    /// Returns the `GdkDeviceTool` currently driving input through this gesture.
    /// This function must be called from either the `GtkGestureStylus::down`,
    /// `GtkGestureStylus::motion`, `GtkGestureStylus::up` or `GtkGestureStylus::proximity`
    /// signal handlers.
    var deviceTool: UnsafeMutablePointer<GdkDeviceTool>! {
        /// Returns the `GdkDeviceTool` currently driving input through this gesture.
        /// This function must be called from either the `GtkGestureStylus::down`,
        /// `GtkGestureStylus::motion`, `GtkGestureStylus::up` or `GtkGestureStylus::proximity`
        /// signal handlers.
        get {
            let rv = gtk_gesture_stylus_get_device_tool(cast(gesture_stylus_ptr))
            return cast(rv)
        }
    }
}



// MARK: - GestureSwipe Class

/// The `GestureSwipeProtocol` protocol exposes the methods and properties of an underlying `GtkGestureSwipe` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `GestureSwipe`.
/// Alternatively, use `GestureSwipeRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkGestureSwipe` is a `GtkGesture` implementation able to recognize
/// swipes, after a press/move/.../move/release sequence happens, the
/// `GtkGestureSwipe::swipe` signal will be emitted, providing the velocity
/// and directionality of the sequence at the time it was lifted.
/// 
/// If the velocity is desired in intermediate points,
/// `gtk_gesture_swipe_get_velocity()` can be called on eg. a
/// `GtkGesture::update` handler.
/// 
/// All velocities are reported in pixels/sec units.
public protocol GestureSwipeProtocol: GestureSingleProtocol {
    /// Untyped pointer to the underlying `GtkGestureSwipe` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkGestureSwipe` instance.
    var gesture_swipe_ptr: UnsafeMutablePointer<GtkGestureSwipe> { get }
}

/// The `GestureSwipeRef` type acts as a lightweight Swift reference to an underlying `GtkGestureSwipe` instance.
/// It exposes methods that can operate on this data type through `GestureSwipeProtocol` conformance.
/// Use `GestureSwipeRef` only as an `unowned` reference to an existing `GtkGestureSwipe` instance.
///
/// `GtkGestureSwipe` is a `GtkGesture` implementation able to recognize
/// swipes, after a press/move/.../move/release sequence happens, the
/// `GtkGestureSwipe::swipe` signal will be emitted, providing the velocity
/// and directionality of the sequence at the time it was lifted.
/// 
/// If the velocity is desired in intermediate points,
/// `gtk_gesture_swipe_get_velocity()` can be called on eg. a
/// `GtkGesture::update` handler.
/// 
/// All velocities are reported in pixels/sec units.
public struct GestureSwipeRef: GestureSwipeProtocol {
    /// Untyped pointer to the underlying `GtkGestureSwipe` instance.
    /// For type-safe access, use the generated, typed pointer `gesture_swipe_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension GestureSwipeRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkGestureSwipe>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `GestureSwipeProtocol`
    init<T: GestureSwipeProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureSwipeProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureSwipeProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureSwipeProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureSwipeProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureSwipeProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Returns a newly created `GtkGesture` that recognizes swipes.
    init( widget: WidgetProtocol) {
        let rv = gtk_gesture_swipe_new(cast(widget.ptr))
        self.init(cast(rv))
    }
}

/// The `GestureSwipe` type acts as a reference-counted owner of an underlying `GtkGestureSwipe` instance.
/// It provides the methods that can operate on this data type through `GestureSwipeProtocol` conformance.
/// Use `GestureSwipe` as a strong reference or owner of a `GtkGestureSwipe` instance.
///
/// `GtkGestureSwipe` is a `GtkGesture` implementation able to recognize
/// swipes, after a press/move/.../move/release sequence happens, the
/// `GtkGestureSwipe::swipe` signal will be emitted, providing the velocity
/// and directionality of the sequence at the time it was lifted.
/// 
/// If the velocity is desired in intermediate points,
/// `gtk_gesture_swipe_get_velocity()` can be called on eg. a
/// `GtkGesture::update` handler.
/// 
/// All velocities are reported in pixels/sec units.
open class GestureSwipe: GestureSingle, GestureSwipeProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `GestureSwipe` instance.
    public init(_ op: UnsafeMutablePointer<GtkGestureSwipe>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `GestureSwipeProtocol`
    /// Will retain `GtkGestureSwipe`.
    public convenience init<T: GestureSwipeProtocol>(_ other: T) {
        self.init(cast(other.gesture_swipe_ptr))
        g_object_ref(cast(gesture_swipe_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureSwipeProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkGestureSwipe.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureSwipeProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkGestureSwipe.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureSwipeProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkGestureSwipe.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureSwipeProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkGestureSwipe>(opaquePointer))
    }

    /// Returns a newly created `GtkGesture` that recognizes swipes.
    public convenience init( widget: WidgetProtocol) {
        let rv = gtk_gesture_swipe_new(cast(widget.ptr))
        self.init(cast(rv))
    }


}

public enum GestureSwipePropertyName: String, PropertyNameProtocol {
    /// Mouse button number to listen to, or 0 to listen for any button.
    case button = "button"
    /// Whether the gesture is exclusive. Exclusive gestures only listen to pointer
    /// and pointer emulated events.
    case exclusive = "exclusive"
    /// The number of touch points that trigger recognition on this gesture,
    case nPoints = "n-points"
    /// The propagation phase at which this controller will handle events.
    case propagationPhase = "propagation-phase"
    /// Whether the gesture handles only touch events.
    case touchOnly = "touch-only"
    /// The widget receiving the `GdkEvents` that the controller will handle.
    case widget = "widget"
    /// If non-`nil`, the gesture will only listen for events that happen on
    /// this `GdkWindow`, or a child of it.
    case window = "window"
}

public extension GestureSwipeProtocol {
    /// Bind a `GestureSwipePropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: GestureSwipePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(gesture_swipe_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef(cast($0)) }
        }

        let rv = _bind(source_property.name, to: target, target_property.name, flags: f, holder: BindingClosureHolder(transform_from, transform_to), transformFrom: {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_from(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }) {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_to(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }
        return rv
    }
}

public enum GestureSwipeSignalName: String, SignalNameProtocol {
    /// This signal is emitted when the gesture is recognized. This means the
    /// number of touch sequences matches `GtkGesture:n`-points, and the `GtkGesture::check`
    /// `handler(s)` returned `TRUE`.
    /// 
    /// Note: These conditions may also happen when an extra touch (eg. a third touch
    /// on a 2-touches gesture) is lifted, in that situation `sequence` won't pertain
    /// to the current set of active touches, so don't rely on this being true.
    case begin = "begin"
    /// This signal is emitted whenever a sequence is cancelled. This usually
    /// happens on active touches when `gtk_event_controller_reset()` is called
    /// on `gesture` (manually, due to grabs...), or the individual `sequence`
    /// was claimed by parent widgets' controllers (see `gtk_gesture_set_sequence_state()`).
    /// 
    /// `gesture` must forget everything about `sequence` as a reaction to this signal.
    case cancel = "cancel"
    /// This signal is emitted when `gesture` either stopped recognizing the event
    /// sequences as something to be handled (the `GtkGesture::check` handler returned
    /// `false`), or the number of touch sequences became higher or lower than
    /// `GtkGesture:n`-points.
    /// 
    /// Note: `sequence` might not pertain to the group of sequences that were
    /// previously triggering recognition on `gesture` (ie. a just pressed touch
    /// sequence that exceeds `GtkGesture:n`-points). This situation may be detected
    /// by checking through `gtk_gesture_handles_sequence()`.
    case end = "end"
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// This signal is emitted whenever a sequence state changes. See
    /// `gtk_gesture_set_sequence_state()` to know more about the expectable
    /// sequence lifetimes.
    case sequenceStateChanged = "sequence-state-changed"
    /// This signal is emitted when the recognized gesture is finished, velocity
    /// and direction are a product of previously recorded events.
    case swipe = "swipe"
    /// This signal is emitted whenever an event is handled while the gesture is
    /// recognized. `sequence` is guaranteed to pertain to the set of active touches.
    case update = "update"
    /// Mouse button number to listen to, or 0 to listen for any button.
    case notifyButton = "notify::button"
    /// Whether the gesture is exclusive. Exclusive gestures only listen to pointer
    /// and pointer emulated events.
    case notifyExclusive = "notify::exclusive"
    /// The number of touch points that trigger recognition on this gesture,
    case notifyNPoints = "notify::n-points"
    /// The propagation phase at which this controller will handle events.
    case notifyPropagationPhase = "notify::propagation-phase"
    /// Whether the gesture handles only touch events.
    case notifyTouchOnly = "notify::touch-only"
    /// The widget receiving the `GdkEvents` that the controller will handle.
    case notifyWidget = "notify::widget"
    /// If non-`nil`, the gesture will only listen for events that happen on
    /// this `GdkWindow`, or a child of it.
    case notifyWindow = "notify::window"
}

public extension GestureSwipeProtocol {
    /// Connect a `GestureSwipeSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: GestureSwipeSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(gesture_swipe_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension GestureSwipeProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkGestureSwipe` instance.
    var gesture_swipe_ptr: UnsafeMutablePointer<GtkGestureSwipe> { return ptr.assumingMemoryBound(to: GtkGestureSwipe.self) }

    /// If the gesture is recognized, this function returns `true` and fill in
    /// `velocity_x` and `velocity_y` with the recorded velocity, as per the
    /// last `event(s)` processed.
    func getVelocity(velocityX velocity_x: UnsafeMutablePointer<gdouble>, velocityY velocity_y: UnsafeMutablePointer<gdouble>) -> Bool {
        let rv = gtk_gesture_swipe_get_velocity(cast(gesture_swipe_ptr), cast(velocity_x), cast(velocity_y))
        return Bool(rv != 0)
    }
}



// MARK: - GestureZoom Class

/// The `GestureZoomProtocol` protocol exposes the methods and properties of an underlying `GtkGestureZoom` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `GestureZoom`.
/// Alternatively, use `GestureZoomRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkGestureZoom` is a `GtkGesture` implementation able to recognize
/// pinch/zoom gestures, whenever the distance between both tracked
/// sequences changes, the `GtkGestureZoom::scale`-changed signal is
/// emitted to report the scale factor.
public protocol GestureZoomProtocol: GestureProtocol {
    /// Untyped pointer to the underlying `GtkGestureZoom` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkGestureZoom` instance.
    var gesture_zoom_ptr: UnsafeMutablePointer<GtkGestureZoom> { get }
}

/// The `GestureZoomRef` type acts as a lightweight Swift reference to an underlying `GtkGestureZoom` instance.
/// It exposes methods that can operate on this data type through `GestureZoomProtocol` conformance.
/// Use `GestureZoomRef` only as an `unowned` reference to an existing `GtkGestureZoom` instance.
///
/// `GtkGestureZoom` is a `GtkGesture` implementation able to recognize
/// pinch/zoom gestures, whenever the distance between both tracked
/// sequences changes, the `GtkGestureZoom::scale`-changed signal is
/// emitted to report the scale factor.
public struct GestureZoomRef: GestureZoomProtocol {
    /// Untyped pointer to the underlying `GtkGestureZoom` instance.
    /// For type-safe access, use the generated, typed pointer `gesture_zoom_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension GestureZoomRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkGestureZoom>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `GestureZoomProtocol`
    init<T: GestureZoomProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureZoomProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureZoomProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureZoomProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureZoomProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureZoomProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Returns a newly created `GtkGesture` that recognizes zoom
    /// in/out gestures (usually known as pinch/zoom).
    init( widget: WidgetProtocol) {
        let rv = gtk_gesture_zoom_new(cast(widget.ptr))
        self.init(cast(rv))
    }
}

/// The `GestureZoom` type acts as a reference-counted owner of an underlying `GtkGestureZoom` instance.
/// It provides the methods that can operate on this data type through `GestureZoomProtocol` conformance.
/// Use `GestureZoom` as a strong reference or owner of a `GtkGestureZoom` instance.
///
/// `GtkGestureZoom` is a `GtkGesture` implementation able to recognize
/// pinch/zoom gestures, whenever the distance between both tracked
/// sequences changes, the `GtkGestureZoom::scale`-changed signal is
/// emitted to report the scale factor.
open class GestureZoom: Gesture, GestureZoomProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `GestureZoom` instance.
    public init(_ op: UnsafeMutablePointer<GtkGestureZoom>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `GestureZoomProtocol`
    /// Will retain `GtkGestureZoom`.
    public convenience init<T: GestureZoomProtocol>(_ other: T) {
        self.init(cast(other.gesture_zoom_ptr))
        g_object_ref(cast(gesture_zoom_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureZoomProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkGestureZoom.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureZoomProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkGestureZoom.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureZoomProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkGestureZoom.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureZoomProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkGestureZoom>(opaquePointer))
    }

    /// Returns a newly created `GtkGesture` that recognizes zoom
    /// in/out gestures (usually known as pinch/zoom).
    public convenience init( widget: WidgetProtocol) {
        let rv = gtk_gesture_zoom_new(cast(widget.ptr))
        self.init(cast(rv))
    }


}

public enum GestureZoomPropertyName: String, PropertyNameProtocol {
    /// The number of touch points that trigger recognition on this gesture,
    case nPoints = "n-points"
    /// The propagation phase at which this controller will handle events.
    case propagationPhase = "propagation-phase"
    /// The widget receiving the `GdkEvents` that the controller will handle.
    case widget = "widget"
    /// If non-`nil`, the gesture will only listen for events that happen on
    /// this `GdkWindow`, or a child of it.
    case window = "window"
}

public extension GestureZoomProtocol {
    /// Bind a `GestureZoomPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: GestureZoomPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(gesture_zoom_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef(cast($0)) }
        }

        let rv = _bind(source_property.name, to: target, target_property.name, flags: f, holder: BindingClosureHolder(transform_from, transform_to), transformFrom: {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_from(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }) {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_to(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }
        return rv
    }
}

public enum GestureZoomSignalName: String, SignalNameProtocol {
    /// This signal is emitted when the gesture is recognized. This means the
    /// number of touch sequences matches `GtkGesture:n`-points, and the `GtkGesture::check`
    /// `handler(s)` returned `TRUE`.
    /// 
    /// Note: These conditions may also happen when an extra touch (eg. a third touch
    /// on a 2-touches gesture) is lifted, in that situation `sequence` won't pertain
    /// to the current set of active touches, so don't rely on this being true.
    case begin = "begin"
    /// This signal is emitted whenever a sequence is cancelled. This usually
    /// happens on active touches when `gtk_event_controller_reset()` is called
    /// on `gesture` (manually, due to grabs...), or the individual `sequence`
    /// was claimed by parent widgets' controllers (see `gtk_gesture_set_sequence_state()`).
    /// 
    /// `gesture` must forget everything about `sequence` as a reaction to this signal.
    case cancel = "cancel"
    /// This signal is emitted when `gesture` either stopped recognizing the event
    /// sequences as something to be handled (the `GtkGesture::check` handler returned
    /// `false`), or the number of touch sequences became higher or lower than
    /// `GtkGesture:n`-points.
    /// 
    /// Note: `sequence` might not pertain to the group of sequences that were
    /// previously triggering recognition on `gesture` (ie. a just pressed touch
    /// sequence that exceeds `GtkGesture:n`-points). This situation may be detected
    /// by checking through `gtk_gesture_handles_sequence()`.
    case end = "end"
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// This signal is emitted whenever the distance between both tracked
    /// sequences changes.
    case scaleChanged = "scale-changed"
    /// This signal is emitted whenever a sequence state changes. See
    /// `gtk_gesture_set_sequence_state()` to know more about the expectable
    /// sequence lifetimes.
    case sequenceStateChanged = "sequence-state-changed"
    /// This signal is emitted whenever an event is handled while the gesture is
    /// recognized. `sequence` is guaranteed to pertain to the set of active touches.
    case update = "update"
    /// The number of touch points that trigger recognition on this gesture,
    case notifyNPoints = "notify::n-points"
    /// The propagation phase at which this controller will handle events.
    case notifyPropagationPhase = "notify::propagation-phase"
    /// The widget receiving the `GdkEvents` that the controller will handle.
    case notifyWidget = "notify::widget"
    /// If non-`nil`, the gesture will only listen for events that happen on
    /// this `GdkWindow`, or a child of it.
    case notifyWindow = "notify::window"
}

public extension GestureZoomProtocol {
    /// Connect a `GestureZoomSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: GestureZoomSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(gesture_zoom_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension GestureZoomProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkGestureZoom` instance.
    var gesture_zoom_ptr: UnsafeMutablePointer<GtkGestureZoom> { return ptr.assumingMemoryBound(to: GtkGestureZoom.self) }

    /// If `gesture` is active, this function returns the zooming difference
    /// since the gesture was recognized (hence the starting point is
    /// considered 1:1). If `gesture` is not active, 1 is returned.
    func getScaleDelta() -> gdouble {
        let rv = gtk_gesture_zoom_get_scale_delta(cast(gesture_zoom_ptr))
        return rv
    }
    /// If `gesture` is active, this function returns the zooming difference
    /// since the gesture was recognized (hence the starting point is
    /// considered 1:1). If `gesture` is not active, 1 is returned.
    var scaleDelta: gdouble {
        /// If `gesture` is active, this function returns the zooming difference
        /// since the gesture was recognized (hence the starting point is
        /// considered 1:1). If `gesture` is not active, 1 is returned.
        get {
            let rv = gtk_gesture_zoom_get_scale_delta(cast(gesture_zoom_ptr))
            return rv
        }
    }
}



// MARK: - Grid Class

/// The `GridProtocol` protocol exposes the methods and properties of an underlying `GtkGrid` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Grid`.
/// Alternatively, use `GridRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// GtkGrid is a container which arranges its child widgets in
/// rows and columns, with arbitrary positions and horizontal/vertical spans.
/// 
/// Children are added using `gtk_grid_attach()`. They can span multiple
/// rows or columns. It is also possible to add a child next to an
/// existing child, using `gtk_grid_attach_next_to()`. The behaviour of
/// GtkGrid when several children occupy the same grid cell is undefined.
/// 
/// GtkGrid can be used like a `GtkBox` by just using `gtk_container_add()`,
/// which will place children next to each other in the direction determined
/// by the `GtkOrientable:orientation` property. However, if all you want is a
/// single row or column, then `GtkBox` is the preferred widget.
/// 
/// # CSS nodes
/// 
/// GtkGrid uses a single CSS node with name grid.
public protocol GridProtocol: ContainerProtocol, OrientableProtocol {
    /// Untyped pointer to the underlying `GtkGrid` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkGrid` instance.
    var grid_ptr: UnsafeMutablePointer<GtkGrid> { get }
}

/// The `GridRef` type acts as a lightweight Swift reference to an underlying `GtkGrid` instance.
/// It exposes methods that can operate on this data type through `GridProtocol` conformance.
/// Use `GridRef` only as an `unowned` reference to an existing `GtkGrid` instance.
///
/// GtkGrid is a container which arranges its child widgets in
/// rows and columns, with arbitrary positions and horizontal/vertical spans.
/// 
/// Children are added using `gtk_grid_attach()`. They can span multiple
/// rows or columns. It is also possible to add a child next to an
/// existing child, using `gtk_grid_attach_next_to()`. The behaviour of
/// GtkGrid when several children occupy the same grid cell is undefined.
/// 
/// GtkGrid can be used like a `GtkBox` by just using `gtk_container_add()`,
/// which will place children next to each other in the direction determined
/// by the `GtkOrientable:orientation` property. However, if all you want is a
/// single row or column, then `GtkBox` is the preferred widget.
/// 
/// # CSS nodes
/// 
/// GtkGrid uses a single CSS node with name grid.
public struct GridRef: GridProtocol {
    /// Untyped pointer to the underlying `GtkGrid` instance.
    /// For type-safe access, use the generated, typed pointer `grid_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension GridRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkGrid>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `GridProtocol`
    init<T: GridProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new grid widget.
    init() {
        let rv = gtk_grid_new()
        self.init(cast(rv))
    }
}

/// The `Grid` type acts as a reference-counted owner of an underlying `GtkGrid` instance.
/// It provides the methods that can operate on this data type through `GridProtocol` conformance.
/// Use `Grid` as a strong reference or owner of a `GtkGrid` instance.
///
/// GtkGrid is a container which arranges its child widgets in
/// rows and columns, with arbitrary positions and horizontal/vertical spans.
/// 
/// Children are added using `gtk_grid_attach()`. They can span multiple
/// rows or columns. It is also possible to add a child next to an
/// existing child, using `gtk_grid_attach_next_to()`. The behaviour of
/// GtkGrid when several children occupy the same grid cell is undefined.
/// 
/// GtkGrid can be used like a `GtkBox` by just using `gtk_container_add()`,
/// which will place children next to each other in the direction determined
/// by the `GtkOrientable:orientation` property. However, if all you want is a
/// single row or column, then `GtkBox` is the preferred widget.
/// 
/// # CSS nodes
/// 
/// GtkGrid uses a single CSS node with name grid.
open class Grid: Container, GridProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `Grid` instance.
    public init(_ op: UnsafeMutablePointer<GtkGrid>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `GridProtocol`
    /// Will retain `GtkGrid`.
    public convenience init<T: GridProtocol>(_ other: T) {
        self.init(cast(other.grid_ptr))
        g_object_ref(cast(grid_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkGrid.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkGrid.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkGrid.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkGrid>(opaquePointer))
    }

    /// Creates a new grid widget.
    public convenience init() {
        let rv = gtk_grid_new()
        self.init(cast(rv))
    }


}

public enum GridPropertyName: String, PropertyNameProtocol {
    case accessibleComponentLayer = "accessible-component-layer"
    case accessibleComponentMdiZorder = "accessible-component-mdi-zorder"
    case accessibleDescription = "accessible-description"
    case accessibleHypertextNlinks = "accessible-hypertext-nlinks"
    case accessibleName = "accessible-name"
    case accessibleParent = "accessible-parent"
    case accessibleRole = "accessible-role"
    /// Table caption.
    ///
    /// **accessible-table-caption is deprecated:**
    /// Since 1.3. Use table-caption-object instead.
    case accessibleTableCaption = "accessible-table-caption"
    case accessibleTableCaptionObject = "accessible-table-caption-object"
    /// Accessible table column description.
    ///
    /// **accessible-table-column-description is deprecated:**
    /// Since 2.12. Use atk_table_get_column_description()
    /// and atk_table_set_column_description() instead.
    case accessibleTableColumnDescription = "accessible-table-column-description"
    /// Accessible table column header.
    ///
    /// **accessible-table-column-header is deprecated:**
    /// Since 2.12. Use atk_table_get_column_header() and
    /// atk_table_set_column_header() instead.
    case accessibleTableColumnHeader = "accessible-table-column-header"
    /// Accessible table row description.
    ///
    /// **accessible-table-row-description is deprecated:**
    /// Since 2.12. Use atk_table_get_row_description() and
    /// atk_table_set_row_description() instead.
    case accessibleTableRowDescription = "accessible-table-row-description"
    /// Accessible table row header.
    ///
    /// **accessible-table-row-header is deprecated:**
    /// Since 2.12. Use atk_table_get_row_header() and
    /// atk_table_set_row_header() instead.
    case accessibleTableRowHeader = "accessible-table-row-header"
    case accessibleTableSummary = "accessible-table-summary"
    /// Numeric value of this object, in case being and AtkValue.
    ///
    /// **accessible-value is deprecated:**
    /// Since 2.12. Use atk_value_get_value_and_text() to get
    /// the value, and value-changed signal to be notified on their value
    /// changes.
    case accessibleValue = "accessible-value"
    case appPaintable = "app-paintable"
    case baselineRow = "baseline-row"
    case borderWidth = "border-width"
    case canDefault = "can-default"
    case canFocus = "can-focus"
    case child = "child"
    case columnHomogeneous = "column-homogeneous"
    case columnSpacing = "column-spacing"
    case compositeChild = "composite-child"
    /// Whether the widget is double buffered.
    ///
    /// **double-buffered is deprecated:**
    /// Widgets should not use this property.
    case doubleBuffered = "double-buffered"
    case events = "events"
    /// Whether to expand in both directions. Setting this sets both `GtkWidget:hexpand` and `GtkWidget:vexpand`
    case expand = "expand"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    /// 
    /// Before 3.20, several widgets (GtkButton, GtkFileChooserButton,
    /// GtkComboBox) implemented this property individually.
    case focusOnClick = "focus-on-click"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case halign = "halign"
    case hasDefault = "has-default"
    case hasFocus = "has-focus"
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case hasTooltip = "has-tooltip"
    case heightRequest = "height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case hexpand = "hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case hexpandSet = "hexpand-set"
    case isFocus = "is-focus"
    /// Sets all four sides' margin at once. If read, returns max
    /// margin on any side.
    case margin = "margin"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginBottom = "margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginEnd = "margin-end"
    /// Margin on left side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-left is deprecated:**
    /// Use #GtkWidget:margin-start instead.
    case marginLeft = "margin-left"
    /// Margin on right side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-right is deprecated:**
    /// Use #GtkWidget:margin-end instead.
    case marginRight = "margin-right"
    /// Margin on start of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginStart = "margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginTop = "margin-top"
    case name = "name"
    case noShowAll = "no-show-all"
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case opacity = "opacity"
    case parent = "parent"
    case receivesDefault = "receives-default"
    case resizeMode = "resize-mode"
    case rowHomogeneous = "row-homogeneous"
    case rowSpacing = "row-spacing"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case sensitive = "sensitive"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case style = "style"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language](#PangoMarkupFormat).
    /// Also see `gtk_tooltip_set_markup()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case tooltipMarkup = "tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see `gtk_tooltip_set_text()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case tooltipText = "tooltip-text"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case valign = "valign"
    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    case vexpand = "vexpand"
    /// Whether to use the `GtkWidget:vexpand` property. See `gtk_widget_get_vexpand_set()`.
    case vexpandSet = "vexpand-set"
    case visible = "visible"
    case widthRequest = "width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case window = "window"
}

public extension GridProtocol {
    /// Bind a `GridPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: GridPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(grid_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef(cast($0)) }
        }

        let rv = _bind(source_property.name, to: target, target_property.name, flags: f, holder: BindingClosureHolder(transform_from, transform_to), transformFrom: {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_from(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }) {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_to(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }
        return rv
    }
}

public enum GridSignalName: String, SignalNameProtocol {
    case accelClosuresChanged = "accel-closures-changed"
    /// The "active-descendant-changed" signal is emitted by an object
    /// which has the state ATK_STATE_MANAGES_DESCENDANTS when the focus
    /// object in the object changes. For instance, a table will emit the
    /// signal when the cell in the table which has focus changes.
    case activeDescendantChanged = "active-descendant-changed"
    case add = "add"
    /// The `button`-press-event signal will be emitted when a button
    /// (typically from a mouse) is pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the
    /// widget needs to enable the `GDK_BUTTON_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case buttonPressEvent = "button-press-event"
    /// The `button`-release-event signal will be emitted when a button
    /// (typically from a mouse) is released.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the
    /// widget needs to enable the `GDK_BUTTON_RELEASE_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case buttonReleaseEvent = "button-release-event"
    /// Determines whether an accelerator that activates the signal
    /// identified by `signal_id` can currently be activated.
    /// This signal is present to allow applications and derived
    /// widgets to override the default `GtkWidget` handling
    /// for determining whether an accelerator can be activated.
    case canActivateAccel = "can-activate-accel"
    case checkResize = "check-resize"
    /// The `child`-notify signal is emitted for each
    /// [child property](#child-properties)  that has
    /// changed on an object. The signal's detail holds the property name.
    case childNotify = "child-notify"
    /// The signal "children-changed" is emitted when a child is added or
    /// removed form an object. It supports two details: "add" and
    /// "remove"
    case childrenChanged = "children-changed"
    /// The `composited`-changed signal is emitted when the composited
    /// status of `widgets` screen changes.
    /// See `gdk_screen_is_composited()`.
    ///
    /// **composited-changed is deprecated:**
    /// Use GdkScreen::composited-changed instead.
    case compositedChanged = "composited-changed"
    /// The `configure`-event signal will be emitted when the size, position or
    /// stacking of the `widget`'s window has changed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case configureEvent = "configure-event"
    /// Emitted when a redirected window belonging to `widget` gets drawn into.
    /// The region/area members of the event shows what area of the redirected
    /// drawable was drawn into.
    case damageEvent = "damage-event"
    /// The `delete`-event signal is emitted if a user requests that
    /// a toplevel window is closed. The default handler for this signal
    /// destroys the window. Connecting `gtk_widget_hide_on_delete()` to
    /// this signal will cause the window to be hidden instead, so that
    /// it can later be shown again without reconstructing it.
    case deleteEvent = "delete-event"
    /// Signals that all holders of a reference to the widget should release
    /// the reference that they hold. May result in finalization of the widget
    /// if all references are released.
    /// 
    /// This signal is not suitable for saving widget state.
    case destroy = "destroy"
    /// The `destroy`-event signal is emitted when a `GdkWindow` is destroyed.
    /// You rarely get this signal, because most widgets disconnect themselves
    /// from their window before they destroy it, so no widget owns the
    /// window at destroy time.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case destroyEvent = "destroy-event"
    /// The `direction`-changed signal is emitted when the text direction
    /// of a widget changes.
    case directionChanged = "direction-changed"
    /// The `drag`-begin signal is emitted on the drag source when a drag is
    /// started. A typical reason to connect to this signal is to set up a
    /// custom drag icon with e.g. `gtk_drag_source_set_icon_pixbuf()`.
    /// 
    /// Note that some widgets set up a drag icon in the default handler of
    /// this signal, so you may have to use `g_signal_connect_after()` to
    /// override what the default handler did.
    case dragBegin = "drag-begin"
    /// The `drag`-data-delete signal is emitted on the drag source when a drag
    /// with the action `GDK_ACTION_MOVE` is successfully completed. The signal
    /// handler is responsible for deleting the data that has been dropped. What
    /// "delete" means depends on the context of the drag operation.
    case dragDataDelete = "drag-data-delete"
    /// The `drag`-data-get signal is emitted on the drag source when the drop
    /// site requests the data which is dragged. It is the responsibility of
    /// the signal handler to fill `data` with the data in the format which
    /// is indicated by `info`. See `gtk_selection_data_set()` and
    /// `gtk_selection_data_set_text()`.
    case dragDataGet = "drag-data-get"
    /// The `drag`-data-received signal is emitted on the drop site when the
    /// dragged data has been received. If the data was received in order to
    /// determine whether the drop will be accepted, the handler is expected
    /// to call `gdk_drag_status()` and not finish the drag.
    /// If the data was received in response to a `GtkWidget::drag`-drop signal
    /// (and this is the last target to be received), the handler for this
    /// signal is expected to process the received data and then call
    /// `gtk_drag_finish()`, setting the `success` parameter depending on
    /// whether the data was processed successfully.
    /// 
    /// Applications must create some means to determine why the signal was emitted
    /// and therefore whether to call `gdk_drag_status()` or `gtk_drag_finish()`.
    /// 
    /// The handler may inspect the selected action with
    /// `gdk_drag_context_get_selected_action()` before calling
    /// `gtk_drag_finish()`, e.g. to implement `GDK_ACTION_ASK` as
    /// shown in the following example:
    /// (C Language Example):
    /// ```C
    /// void
    /// drag_data_received (GtkWidget          *widget,
    ///                     GdkDragContext     *context,
    ///                     gint                x,
    ///                     gint                y,
    ///                     GtkSelectionData   *data,
    ///                     guint               info,
    ///                     guint               time)
    /// {
    ///   if ((data->length >= 0) && (data->format == 8))
    ///     {
    ///       GdkDragAction action;
    /// 
    ///       // handle data here
    /// 
    ///       action = gdk_drag_context_get_selected_action (context);
    ///       if (action == GDK_ACTION_ASK)
    ///         {
    ///           GtkWidget *dialog;
    ///           gint response;
    /// 
    ///           dialog = gtk_message_dialog_new (NULL,
    ///                                            GTK_DIALOG_MODAL |
    ///                                            GTK_DIALOG_DESTROY_WITH_PARENT,
    ///                                            GTK_MESSAGE_INFO,
    ///                                            GTK_BUTTONS_YES_NO,
    ///                                            "Move the data ?\n");
    ///           response = gtk_dialog_run (GTK_DIALOG (dialog));
    ///           gtk_widget_destroy (dialog);
    /// 
    ///           if (response == GTK_RESPONSE_YES)
    ///             action = GDK_ACTION_MOVE;
    ///           else
    ///             action = GDK_ACTION_COPY;
    ///          }
    /// 
    ///       gtk_drag_finish (context, TRUE, action == GDK_ACTION_MOVE, time);
    ///     }
    ///   else
    ///     gtk_drag_finish (context, FALSE, FALSE, time);
    ///  }
    /// ```
    /// 
    case dragDataReceived = "drag-data-received"
    /// The `drag`-drop signal is emitted on the drop site when the user drops
    /// the data onto the widget. The signal handler must determine whether
    /// the cursor position is in a drop zone or not. If it is not in a drop
    /// zone, it returns `false` and no further processing is necessary.
    /// Otherwise, the handler returns `true`. In this case, the handler must
    /// ensure that `gtk_drag_finish()` is called to let the source know that
    /// the drop is done. The call to `gtk_drag_finish()` can be done either
    /// directly or in a `GtkWidget::drag`-data-received handler which gets
    /// triggered by calling `gtk_drag_get_data()` to receive the data for one
    /// or more of the supported targets.
    case dragDrop = "drag-drop"
    /// The `drag`-end signal is emitted on the drag source when a drag is
    /// finished.  A typical reason to connect to this signal is to undo
    /// things done in `GtkWidget::drag`-begin.
    case dragEnd = "drag-end"
    /// The `drag`-failed signal is emitted on the drag source when a drag has
    /// failed. The signal handler may hook custom code to handle a failed DnD
    /// operation based on the type of error, it returns `true` is the failure has
    /// been already handled (not showing the default "drag operation failed"
    /// animation), otherwise it returns `false`.
    case dragFailed = "drag-failed"
    /// The `drag`-leave signal is emitted on the drop site when the cursor
    /// leaves the widget. A typical reason to connect to this signal is to
    /// undo things done in `GtkWidget::drag`-motion, e.g. undo highlighting
    /// with `gtk_drag_unhighlight()`.
    /// 
    /// 
    /// Likewise, the `GtkWidget::drag`-leave signal is also emitted before the
    /// `drag`-drop signal, for instance to allow cleaning up of a preview item
    /// created in the `GtkWidget::drag`-motion signal handler.
    case dragLeave = "drag-leave"
    /// The `drag`-motion signal is emitted on the drop site when the user
    /// moves the cursor over the widget during a drag. The signal handler
    /// must determine whether the cursor position is in a drop zone or not.
    /// If it is not in a drop zone, it returns `false` and no further processing
    /// is necessary. Otherwise, the handler returns `true`. In this case, the
    /// handler is responsible for providing the necessary information for
    /// displaying feedback to the user, by calling `gdk_drag_status()`.
    /// 
    /// If the decision whether the drop will be accepted or rejected can't be
    /// made based solely on the cursor position and the type of the data, the
    /// handler may inspect the dragged data by calling `gtk_drag_get_data()` and
    /// defer the `gdk_drag_status()` call to the `GtkWidget::drag`-data-received
    /// handler. Note that you must pass `GTK_DEST_DEFAULT_DROP`,
    /// `GTK_DEST_DEFAULT_MOTION` or `GTK_DEST_DEFAULT_ALL` to `gtk_drag_dest_set()`
    /// when using the drag-motion signal that way.
    /// 
    /// Also note that there is no drag-enter signal. The drag receiver has to
    /// keep track of whether he has received any drag-motion signals since the
    /// last `GtkWidget::drag`-leave and if not, treat the drag-motion signal as
    /// an "enter" signal. Upon an "enter", the handler will typically highlight
    /// the drop site with `gtk_drag_highlight()`.
    /// (C Language Example):
    /// ```C
    /// static void
    /// drag_motion (GtkWidget      *widget,
    ///              GdkDragContext *context,
    ///              gint            x,
    ///              gint            y,
    ///              guint           time)
    /// {
    ///   GdkAtom target;
    /// 
    ///   PrivateData *private_data = GET_PRIVATE_DATA (widget);
    /// 
    ///   if (!private_data->drag_highlight)
    ///    {
    ///      private_data->drag_highlight = 1;
    ///      gtk_drag_highlight (widget);
    ///    }
    /// 
    ///   target = gtk_drag_dest_find_target (widget, context, NULL);
    ///   if (target == GDK_NONE)
    ///     gdk_drag_status (context, 0, time);
    ///   else
    ///    {
    ///      private_data->pending_status
    ///         = gdk_drag_context_get_suggested_action (context);
    ///      gtk_drag_get_data (widget, context, target, time);
    ///    }
    /// 
    ///   return TRUE;
    /// }
    /// 
    /// static void
    /// drag_data_received (GtkWidget        *widget,
    ///                     GdkDragContext   *context,
    ///                     gint              x,
    ///                     gint              y,
    ///                     GtkSelectionData *selection_data,
    ///                     guint             info,
    ///                     guint             time)
    /// {
    ///   PrivateData *private_data = GET_PRIVATE_DATA (widget);
    /// 
    ///   if (private_data->suggested_action)
    ///    {
    ///      private_data->suggested_action = 0;
    /// 
    ///      // We are getting this data due to a request in drag_motion,
    ///      // rather than due to a request in drag_drop, so we are just
    ///      // supposed to call gdk_drag_status(), not actually paste in
    ///      // the data.
    /// 
    ///      str = gtk_selection_data_get_text (selection_data);
    ///      if (!data_is_acceptable (str))
    ///        gdk_drag_status (context, 0, time);
    ///      else
    ///        gdk_drag_status (context,
    ///                         private_data->suggested_action,
    ///                         time);
    ///    }
    ///   else
    ///    {
    ///      // accept the drop
    ///    }
    /// }
    /// ```
    /// 
    case dragMotion = "drag-motion"
    /// This signal is emitted when a widget is supposed to render itself.
    /// The `widget`'s top left corner must be painted at the origin of
    /// the passed in context and be sized to the values returned by
    /// `gtk_widget_get_allocated_width()` and
    /// `gtk_widget_get_allocated_height()`.
    /// 
    /// Signal handlers connected to this signal can modify the cairo
    /// context passed as `cr` in any way they like and don't need to
    /// restore it. The signal emission takes care of calling `cairo_save()`
    /// before and `cairo_restore()` after invoking the handler.
    /// 
    /// The signal handler will get a `cr` with a clip region already set to the
    /// widget's dirty region, i.e. to the area that needs repainting.  Complicated
    /// widgets that want to avoid redrawing themselves completely can get the full
    /// extents of the clip region with `gdk_cairo_get_clip_rectangle()`, or they can
    /// get a finer-grained representation of the dirty region with
    /// `cairo_copy_clip_rectangle_list()`.
    case draw = "draw"
    /// The `enter`-notify-event will be emitted when the pointer enters
    /// the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_ENTER_NOTIFY_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case enterNotifyEvent = "enter-notify-event"
    /// The GTK+ main loop will emit three signals for each GDK event delivered
    /// to a widget: one generic `event` signal, another, more specific,
    /// signal that matches the type of event delivered (e.g.
    /// `GtkWidget::key`-press-event) and finally a generic
    /// `GtkWidget::event`-after signal.
    case event = "event"
    /// After the emission of the `GtkWidget::event` signal and (optionally)
    /// the second more specific signal, `event`-after will be emitted
    /// regardless of the previous two signals handlers return values.
    case eventAfter = "event-after"
    case focus = "focus"
    /// The signal "focus-event" is emitted when an object gained or lost
    /// focus.
    ///
    /// **focus-event is deprecated:**
    /// Use the #AtkObject::state-change signal instead.
    case focusEvent = "focus-event"
    /// The `focus`-in-event signal will be emitted when the keyboard focus
    /// enters the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_FOCUS_CHANGE_MASK` mask.
    case focusInEvent = "focus-in-event"
    /// The `focus`-out-event signal will be emitted when the keyboard focus
    /// leaves the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_FOCUS_CHANGE_MASK` mask.
    case focusOutEvent = "focus-out-event"
    /// Emitted when a pointer or keyboard grab on a window belonging
    /// to `widget` gets broken.
    /// 
    /// On X11, this happens when the grab window becomes unviewable
    /// (i.e. it or one of its ancestors is unmapped), or if the same
    /// application grabs the pointer or keyboard again.
    case grabBrokenEvent = "grab-broken-event"
    case grabFocus = "grab-focus"
    /// The `grab`-notify signal is emitted when a widget becomes
    /// shadowed by a GTK+ grab (not a pointer or keyboard grab) on
    /// another widget, or when it becomes unshadowed due to a grab
    /// being removed.
    /// 
    /// A widget is shadowed by a `gtk_grab_add()` when the topmost
    /// grab widget in the grab stack of its window group is not
    /// its ancestor.
    case grabNotify = "grab-notify"
    /// The `hide` signal is emitted when `widget` is hidden, for example with
    /// `gtk_widget_hide()`.
    case hide = "hide"
    /// The `hierarchy`-changed signal is emitted when the
    /// anchored state of a widget changes. A widget is
    /// “anchored” when its toplevel
    /// ancestor is a `GtkWindow`. This signal is emitted when
    /// a widget changes from un-anchored to anchored or vice-versa.
    case hierarchyChanged = "hierarchy-changed"
    /// The `key`-press-event signal is emitted when a key is pressed. The signal
    /// emission will reoccur at the key-repeat rate when the key is kept pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyPressEvent = "key-press-event"
    /// The `key`-release-event signal is emitted when a key is released.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_RELEASE_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyReleaseEvent = "key-release-event"
    /// Gets emitted if keyboard navigation fails.
    /// See `gtk_widget_keynav_failed()` for details.
    case keynavFailed = "keynav-failed"
    /// The `leave`-notify-event will be emitted when the pointer leaves
    /// the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_LEAVE_NOTIFY_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case leaveNotifyEvent = "leave-notify-event"
    /// The `map` signal is emitted when `widget` is going to be mapped, that is
    /// when the widget is visible (which is controlled with
    /// `gtk_widget_set_visible()`) and all its parents up to the toplevel widget
    /// are also visible. Once the map has occurred, `GtkWidget::map`-event will
    /// be emitted.
    /// 
    /// The `map` signal can be used to determine whether a widget will be drawn,
    /// for instance it can resume an animation that was stopped during the
    /// emission of `GtkWidget::unmap`.
    case map = "map"
    /// The `map`-event signal will be emitted when the `widget`'s window is
    /// mapped. A window is mapped when it becomes visible on the screen.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case mapEvent = "map-event"
    /// The default handler for this signal activates `widget` if `group_cycling`
    /// is `false`, or just makes `widget` grab focus if `group_cycling` is `true`.
    case mnemonicActivate = "mnemonic-activate"
    /// The `motion`-notify-event signal is emitted when the pointer moves
    /// over the widget's `GdkWindow`.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget
    /// needs to enable the `GDK_POINTER_MOTION_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case motionNotifyEvent = "motion-notify-event"
    case moveFocus = "move-focus"
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// The `parent`-set signal is emitted when a new parent
    /// has been set on a widget.
    case parentSet = "parent-set"
    /// This signal gets emitted whenever a widget should pop up a context
    /// menu. This usually happens through the standard key binding mechanism;
    /// by pressing a certain key while a widget is focused, the user can cause
    /// the widget to pop up a menu.  For example, the `GtkEntry` widget creates
    /// a menu with clipboard commands. See the
    /// [Popup Menu Migration Checklist](#checklist-popup-menu)
    /// for an example of how to use this signal.
    case popupMenu = "popup-menu"
    /// The signal "property-change" is emitted when an object's property
    /// value changes. `arg1` contains an `AtkPropertyValues` with the name
    /// and the new value of the property whose value has changed. Note
    /// that, as with GObject notify, getting this signal does not
    /// guarantee that the value of the property has actually changed; it
    /// may also be emitted when the setter of the property is called to
    /// reinstate the previous value.
    /// 
    /// Toolkit implementor note: ATK implementors should use
    /// `g_object_notify()` to emit property-changed
    /// notifications. `AtkObject::property`-changed is needed by the
    /// implementation of `atk_add_global_event_listener()` because GObject
    /// notify doesn't support emission hooks.
    case propertyChange = "property-change"
    /// The `property`-notify-event signal will be emitted when a property on
    /// the `widget`'s window has been changed or deleted.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_PROPERTY_CHANGE_MASK` mask.
    case propertyNotifyEvent = "property-notify-event"
    /// To receive this signal the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_PROXIMITY_IN_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case proximityInEvent = "proximity-in-event"
    /// To receive this signal the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_PROXIMITY_OUT_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case proximityOutEvent = "proximity-out-event"
    /// Emitted when `GtkWidget:has`-tooltip is `true` and the hover timeout
    /// has expired with the cursor hovering "above" `widget`; or emitted when `widget` got
    /// focus in keyboard mode.
    /// 
    /// Using the given coordinates, the signal handler should determine
    /// whether a tooltip should be shown for `widget`. If this is the case
    /// `true` should be returned, `false` otherwise.  Note that if
    /// `keyboard_mode` is `true`, the values of `x` and `y` are undefined and
    /// should not be used.
    /// 
    /// The signal handler is free to manipulate `tooltip` with the therefore
    /// destined function calls.
    case queryTooltip = "query-tooltip"
    /// The `realize` signal is emitted when `widget` is associated with a
    /// `GdkWindow`, which means that `gtk_widget_realize()` has been called or the
    /// widget has been mapped (that is, it is going to be drawn).
    case realize = "realize"
    case remove = "remove"
    /// The `screen`-changed signal gets emitted when the
    /// screen of a widget has changed.
    case screenChanged = "screen-changed"
    /// The `scroll`-event signal is emitted when a button in the 4 to 7
    /// range is pressed. Wheel mice are usually configured to generate
    /// button press events for buttons 4 and 5 when the wheel is turned.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_SCROLL_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case scrollEvent = "scroll-event"
    /// The `selection`-clear-event signal will be emitted when the
    /// the `widget`'s window has lost ownership of a selection.
    case selectionClearEvent = "selection-clear-event"
    case selectionGet = "selection-get"
    case selectionNotifyEvent = "selection-notify-event"
    case selectionReceived = "selection-received"
    /// The `selection`-request-event signal will be emitted when
    /// another client requests ownership of the selection owned by
    /// the `widget`'s window.
    case selectionRequestEvent = "selection-request-event"
    case setFocusChild = "set-focus-child"
    /// The `show` signal is emitted when `widget` is shown, for example with
    /// `gtk_widget_show()`.
    case show = "show"
    case showHelp = "show-help"
    case sizeAllocate = "size-allocate"
    /// The "state-change" signal is emitted when an object's state
    /// changes.  The detail value identifies the state type which has
    /// changed.
    case stateChange = "state-change"
    /// The `state`-changed signal is emitted when the widget state changes.
    /// See `gtk_widget_get_state()`.
    ///
    /// **state-changed is deprecated:**
    /// Use #GtkWidget::state-flags-changed instead.
    case stateChanged = "state-changed"
    /// The `state`-flags-changed signal is emitted when the widget state
    /// changes, see `gtk_widget_get_state_flags()`.
    case stateFlagsChanged = "state-flags-changed"
    /// The `style`-set signal is emitted when a new style has been set
    /// on a widget. Note that style-modifying functions like
    /// `gtk_widget_modify_base()` also cause this signal to be emitted.
    /// 
    /// Note that this signal is emitted for changes to the deprecated
    /// `GtkStyle`. To track changes to the `GtkStyleContext` associated
    /// with a widget, use the `GtkWidget::style`-updated signal.
    ///
    /// **style-set is deprecated:**
    /// Use the #GtkWidget::style-updated signal
    case styleSet = "style-set"
    /// The `style`-updated signal is a convenience signal that is emitted when the
    /// `GtkStyleContext::changed` signal is emitted on the `widget`'s associated
    /// `GtkStyleContext` as returned by `gtk_widget_get_style_context()`.
    /// 
    /// Note that style-modifying functions like `gtk_widget_override_color()` also
    /// cause this signal to be emitted.
    case styleUpdated = "style-updated"
    case touchEvent = "touch-event"
    /// The `unmap` signal is emitted when `widget` is going to be unmapped, which
    /// means that either it or any of its parents up to the toplevel widget have
    /// been set as hidden.
    /// 
    /// As `unmap` indicates that a widget will not be shown any longer, it can be
    /// used to, for example, stop an animation on the widget.
    case unmap = "unmap"
    /// The `unmap`-event signal will be emitted when the `widget`'s window is
    /// unmapped. A window is unmapped when it becomes invisible on the screen.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case unmapEvent = "unmap-event"
    /// The `unrealize` signal is emitted when the `GdkWindow` associated with
    /// `widget` is destroyed, which means that `gtk_widget_unrealize()` has been
    /// called or the widget has been unmapped (that is, it is going to be
    /// hidden).
    case unrealize = "unrealize"
    /// The `visibility`-notify-event will be emitted when the `widget`'s
    /// window is obscured or unobscured.
    /// 
    /// To receive this signal the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_VISIBILITY_NOTIFY_MASK` mask.
    ///
    /// **visibility-notify-event is deprecated:**
    /// Modern composited windowing systems with pervasive
    ///     transparency make it impossible to track the visibility of a window
    ///     reliably, so this signal can not be guaranteed to provide useful
    ///     information.
    case visibilityNotifyEvent = "visibility-notify-event"
    /// The "visible-data-changed" signal is emitted when the visual
    /// appearance of the object changed.
    case visibleDataChanged = "visible-data-changed"
    /// The `window`-state-event will be emitted when the state of the
    /// toplevel window associated to the `widget` changes.
    /// 
    /// To receive this signal the `GdkWindow` associated to the widget
    /// needs to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable
    /// this mask automatically for all new windows.
    case windowStateEvent = "window-state-event"
    case notifyAccessibleComponentLayer = "notify::accessible-component-layer"
    case notifyAccessibleComponentMdiZorder = "notify::accessible-component-mdi-zorder"
    case notifyAccessibleDescription = "notify::accessible-description"
    case notifyAccessibleHypertextNlinks = "notify::accessible-hypertext-nlinks"
    case notifyAccessibleName = "notify::accessible-name"
    case notifyAccessibleParent = "notify::accessible-parent"
    case notifyAccessibleRole = "notify::accessible-role"
    /// Table caption.
    ///
    /// **accessible-table-caption is deprecated:**
    /// Since 1.3. Use table-caption-object instead.
    case notifyAccessibleTableCaption = "notify::accessible-table-caption"
    case notifyAccessibleTableCaptionObject = "notify::accessible-table-caption-object"
    /// Accessible table column description.
    ///
    /// **accessible-table-column-description is deprecated:**
    /// Since 2.12. Use atk_table_get_column_description()
    /// and atk_table_set_column_description() instead.
    case notifyAccessibleTableColumnDescription = "notify::accessible-table-column-description"
    /// Accessible table column header.
    ///
    /// **accessible-table-column-header is deprecated:**
    /// Since 2.12. Use atk_table_get_column_header() and
    /// atk_table_set_column_header() instead.
    case notifyAccessibleTableColumnHeader = "notify::accessible-table-column-header"
    /// Accessible table row description.
    ///
    /// **accessible-table-row-description is deprecated:**
    /// Since 2.12. Use atk_table_get_row_description() and
    /// atk_table_set_row_description() instead.
    case notifyAccessibleTableRowDescription = "notify::accessible-table-row-description"
    /// Accessible table row header.
    ///
    /// **accessible-table-row-header is deprecated:**
    /// Since 2.12. Use atk_table_get_row_header() and
    /// atk_table_set_row_header() instead.
    case notifyAccessibleTableRowHeader = "notify::accessible-table-row-header"
    case notifyAccessibleTableSummary = "notify::accessible-table-summary"
    /// Numeric value of this object, in case being and AtkValue.
    ///
    /// **accessible-value is deprecated:**
    /// Since 2.12. Use atk_value_get_value_and_text() to get
    /// the value, and value-changed signal to be notified on their value
    /// changes.
    case notifyAccessibleValue = "notify::accessible-value"
    case notifyAppPaintable = "notify::app-paintable"
    case notifyBaselineRow = "notify::baseline-row"
    case notifyBorderWidth = "notify::border-width"
    case notifyCanDefault = "notify::can-default"
    case notifyCanFocus = "notify::can-focus"
    case notifyChild = "notify::child"
    case notifyColumnHomogeneous = "notify::column-homogeneous"
    case notifyColumnSpacing = "notify::column-spacing"
    case notifyCompositeChild = "notify::composite-child"
    /// Whether the widget is double buffered.
    ///
    /// **double-buffered is deprecated:**
    /// Widgets should not use this property.
    case notifyDoubleBuffered = "notify::double-buffered"
    case notifyEvents = "notify::events"
    /// Whether to expand in both directions. Setting this sets both `GtkWidget:hexpand` and `GtkWidget:vexpand`
    case notifyExpand = "notify::expand"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    /// 
    /// Before 3.20, several widgets (GtkButton, GtkFileChooserButton,
    /// GtkComboBox) implemented this property individually.
    case notifyFocusOnClick = "notify::focus-on-click"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case notifyHalign = "notify::halign"
    case notifyHasDefault = "notify::has-default"
    case notifyHasFocus = "notify::has-focus"
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case notifyHasTooltip = "notify::has-tooltip"
    case notifyHeightRequest = "notify::height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case notifyHexpand = "notify::hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case notifyHexpandSet = "notify::hexpand-set"
    case notifyIsFocus = "notify::is-focus"
    /// Sets all four sides' margin at once. If read, returns max
    /// margin on any side.
    case notifyMargin = "notify::margin"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginBottom = "notify::margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginEnd = "notify::margin-end"
    /// Margin on left side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-left is deprecated:**
    /// Use #GtkWidget:margin-start instead.
    case notifyMarginLeft = "notify::margin-left"
    /// Margin on right side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-right is deprecated:**
    /// Use #GtkWidget:margin-end instead.
    case notifyMarginRight = "notify::margin-right"
    /// Margin on start of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginStart = "notify::margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginTop = "notify::margin-top"
    case notifyName = "notify::name"
    case notifyNoShowAll = "notify::no-show-all"
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case notifyOpacity = "notify::opacity"
    case notifyParent = "notify::parent"
    case notifyReceivesDefault = "notify::receives-default"
    case notifyResizeMode = "notify::resize-mode"
    case notifyRowHomogeneous = "notify::row-homogeneous"
    case notifyRowSpacing = "notify::row-spacing"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case notifyScaleFactor = "notify::scale-factor"
    case notifySensitive = "notify::sensitive"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case notifyStyle = "notify::style"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language](#PangoMarkupFormat).
    /// Also see `gtk_tooltip_set_markup()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case notifyTooltipMarkup = "notify::tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see `gtk_tooltip_set_text()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case notifyTooltipText = "notify::tooltip-text"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case notifyValign = "notify::valign"
    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    case notifyVexpand = "notify::vexpand"
    /// Whether to use the `GtkWidget:vexpand` property. See `gtk_widget_get_vexpand_set()`.
    case notifyVexpandSet = "notify::vexpand-set"
    case notifyVisible = "notify::visible"
    case notifyWidthRequest = "notify::width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case notifyWindow = "notify::window"
}

public extension GridProtocol {
    /// Connect a `GridSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: GridSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(grid_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension GridProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkGrid` instance.
    var grid_ptr: UnsafeMutablePointer<GtkGrid> { return ptr.assumingMemoryBound(to: GtkGrid.self) }

    /// Adds a widget to the grid.
    /// 
    /// The position of `child` is determined by `left` and `top`. The
    /// number of “cells” that `child` will occupy is determined by
    /// `width` and `height`.
    func attach(child: WidgetProtocol, left_: CInt, top: CInt, width: CInt, height: CInt) {
        gtk_grid_attach(cast(grid_ptr), cast(child.ptr), gint(left_), gint(top), gint(width), gint(height))
    
    }

    /// Adds a widget to the grid.
    /// 
    /// The widget is placed next to `sibling`, on the side determined by
    /// `side`. When `sibling` is `nil`, the widget is placed in row (for
    /// left or right placement) or column 0 (for top or bottom placement),
    /// at the end indicated by `side`.
    /// 
    /// Attaching widgets labeled [1], [2], [3] with `sibling` == `nil` and
    /// `side` == `GTK_POS_LEFT` yields a layout of [3](#2)(#1).
    func attachNextTo(child: WidgetProtocol, sibling: WidgetProtocol, side: PositionType, width: CInt, height: CInt) {
        gtk_grid_attach_next_to(cast(grid_ptr), cast(child.ptr), cast(sibling.ptr), side, gint(width), gint(height))
    
    }

    /// Returns which row defines the global baseline of `grid`.
    func getBaselineRow() -> CInt {
        let rv = gtk_grid_get_baseline_row(cast(grid_ptr))
        return CInt(rv)
    }

    /// Gets the child of `grid` whose area covers the grid
    /// cell whose upper left corner is at `left`, `top`.
    func getChildAt(left_: CInt, top: CInt) -> UnsafeMutablePointer<GtkWidget>! {
        let rv = gtk_grid_get_child_at(cast(grid_ptr), gint(left_), gint(top))
        return cast(rv)
    }

    /// Returns whether all columns of `grid` have the same width.
    func getColumnHomogeneous() -> Bool {
        let rv = gtk_grid_get_column_homogeneous(cast(grid_ptr))
        return Bool(rv != 0)
    }

    /// Returns the amount of space between the columns of `grid`.
    func getColumnSpacing() -> CUnsignedInt {
        let rv = gtk_grid_get_column_spacing(cast(grid_ptr))
        return CUnsignedInt(rv)
    }

    /// Returns the baseline position of `row` as set
    /// by `gtk_grid_set_row_baseline_position()` or the default value
    /// `GTK_BASELINE_POSITION_CENTER`.
    func getRowBaselinePosition(row: CInt) -> GtkBaselinePosition {
        let rv = gtk_grid_get_row_baseline_position(cast(grid_ptr), gint(row))
        return rv
    }

    /// Returns whether all rows of `grid` have the same height.
    func getRowHomogeneous() -> Bool {
        let rv = gtk_grid_get_row_homogeneous(cast(grid_ptr))
        return Bool(rv != 0)
    }

    /// Returns the amount of space between the rows of `grid`.
    func getRowSpacing() -> CUnsignedInt {
        let rv = gtk_grid_get_row_spacing(cast(grid_ptr))
        return CUnsignedInt(rv)
    }

    /// Inserts a column at the specified position.
    /// 
    /// Children which are attached at or to the right of this position
    /// are moved one column to the right. Children which span across this
    /// position are grown to span the new column.
    func insertColumn(position: CInt) {
        gtk_grid_insert_column(cast(grid_ptr), gint(position))
    
    }

    /// Inserts a row or column at the specified position.
    /// 
    /// The new row or column is placed next to `sibling`, on the side
    /// determined by `side`. If `side` is `GTK_POS_TOP` or `GTK_POS_BOTTOM`,
    /// a row is inserted. If `side` is `GTK_POS_LEFT` of `GTK_POS_RIGHT`,
    /// a column is inserted.
    func insertNextTo(sibling: WidgetProtocol, side: PositionType) {
        gtk_grid_insert_next_to(cast(grid_ptr), cast(sibling.ptr), side)
    
    }

    /// Inserts a row at the specified position.
    /// 
    /// Children which are attached at or below this position
    /// are moved one row down. Children which span across this
    /// position are grown to span the new row.
    func insertRow(position: CInt) {
        gtk_grid_insert_row(cast(grid_ptr), gint(position))
    
    }

    /// Removes a column from the grid.
    /// 
    /// Children that are placed in this column are removed,
    /// spanning children that overlap this column have their
    /// width reduced by one, and children after the column
    /// are moved to the left.
    func removeColumn(position: CInt) {
        gtk_grid_remove_column(cast(grid_ptr), gint(position))
    
    }

    /// Removes a row from the grid.
    /// 
    /// Children that are placed in this row are removed,
    /// spanning children that overlap this row have their
    /// height reduced by one, and children below the row
    /// are moved up.
    func removeRow(position: CInt) {
        gtk_grid_remove_row(cast(grid_ptr), gint(position))
    
    }

    /// Sets which row defines the global baseline for the entire grid.
    /// Each row in the grid can have its own local baseline, but only
    /// one of those is global, meaning it will be the baseline in the
    /// parent of the `grid`.
    func setBaseline(row: CInt) {
        gtk_grid_set_baseline_row(cast(grid_ptr), gint(row))
    
    }

    /// Sets whether all columns of `grid` will have the same width.
    func setColumn(homogeneous: Bool) {
        gtk_grid_set_column_homogeneous(cast(grid_ptr), gboolean(homogeneous ? 1 : 0))
    
    }

    /// Sets the amount of space between columns of `grid`.
    func setColumn(spacing: CUnsignedInt) {
        gtk_grid_set_column_spacing(cast(grid_ptr), guint(spacing))
    
    }

    /// Sets how the baseline should be positioned on `row` of the
    /// grid, in case that row is assigned more space than is requested.
    func setRowBaselinePosition(row: CInt, pos: BaselinePosition) {
        gtk_grid_set_row_baseline_position(cast(grid_ptr), gint(row), pos)
    
    }

    /// Sets whether all rows of `grid` will have the same height.
    func setRow(homogeneous: Bool) {
        gtk_grid_set_row_homogeneous(cast(grid_ptr), gboolean(homogeneous ? 1 : 0))
    
    }

    /// Sets the amount of space between rows of `grid`.
    func setRow(spacing: CUnsignedInt) {
        gtk_grid_set_row_spacing(cast(grid_ptr), guint(spacing))
    
    }
    /// Returns which row defines the global baseline of `grid`.
    var baselineRow: CInt {
        /// Returns which row defines the global baseline of `grid`.
        get {
            let rv = gtk_grid_get_baseline_row(cast(grid_ptr))
            return CInt(rv)
        }
        /// Sets which row defines the global baseline for the entire grid.
        /// Each row in the grid can have its own local baseline, but only
        /// one of those is global, meaning it will be the baseline in the
        /// parent of the `grid`.
        nonmutating set {
            gtk_grid_set_baseline_row(cast(grid_ptr), gint(newValue))
        }
    }

    /// Returns whether all columns of `grid` have the same width.
    var columnHomogeneous: Bool {
        /// Returns whether all columns of `grid` have the same width.
        get {
            let rv = gtk_grid_get_column_homogeneous(cast(grid_ptr))
            return Bool(rv != 0)
        }
        /// Sets whether all columns of `grid` will have the same width.
        nonmutating set {
            gtk_grid_set_column_homogeneous(cast(grid_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Returns the amount of space between the columns of `grid`.
    var columnSpacing: CUnsignedInt {
        /// Returns the amount of space between the columns of `grid`.
        get {
            let rv = gtk_grid_get_column_spacing(cast(grid_ptr))
            return CUnsignedInt(rv)
        }
        /// Sets the amount of space between columns of `grid`.
        nonmutating set {
            gtk_grid_set_column_spacing(cast(grid_ptr), guint(newValue))
        }
    }

    /// Returns whether all rows of `grid` have the same height.
    var rowHomogeneous: Bool {
        /// Returns whether all rows of `grid` have the same height.
        get {
            let rv = gtk_grid_get_row_homogeneous(cast(grid_ptr))
            return Bool(rv != 0)
        }
        /// Sets whether all rows of `grid` will have the same height.
        nonmutating set {
            gtk_grid_set_row_homogeneous(cast(grid_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Returns the amount of space between the rows of `grid`.
    var rowSpacing: CUnsignedInt {
        /// Returns the amount of space between the rows of `grid`.
        get {
            let rv = gtk_grid_get_row_spacing(cast(grid_ptr))
            return CUnsignedInt(rv)
        }
        /// Sets the amount of space between rows of `grid`.
        nonmutating set {
            gtk_grid_set_row_spacing(cast(grid_ptr), guint(newValue))
        }
    }
}



// MARK: - HBox Class

/// The `HBoxProtocol` protocol exposes the methods and properties of an underlying `GtkHBox` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `HBox`.
/// Alternatively, use `HBoxRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GtkHBox` is a container that organizes child widgets into a single row.
/// 
/// Use the `GtkBox` packing interface to determine the arrangement,
/// spacing, width, and alignment of `GtkHBox` children.
/// 
/// All children are allocated the same height.
/// 
/// GtkHBox has been deprecated. You can use `GtkBox` instead, which is a
/// very quick and easy change. If you have derived your own classes from
/// GtkHBox, you can simply change the inheritance to derive directly
/// from `GtkBox`. No further changes are needed, since the default
/// value of the `GtkOrientable:orientation` property is
/// `GTK_ORIENTATION_HORIZONTAL`.
/// 
/// If you have a grid-like layout composed of nested boxes, and you don’t
/// need first-child or last-child styling, the recommendation is to switch
/// to `GtkGrid`. For more information about migrating to `GtkGrid`, see
/// [Migrating from other containers to GtkGrid](#gtk-migrating-GtkGrid).
public protocol HBoxProtocol: BoxProtocol {
    /// Untyped pointer to the underlying `GtkHBox` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GtkHBox` instance.
    var hbox_ptr: UnsafeMutablePointer<GtkHBox> { get }
}

/// The `HBoxRef` type acts as a lightweight Swift reference to an underlying `GtkHBox` instance.
/// It exposes methods that can operate on this data type through `HBoxProtocol` conformance.
/// Use `HBoxRef` only as an `unowned` reference to an existing `GtkHBox` instance.
///
/// `GtkHBox` is a container that organizes child widgets into a single row.
/// 
/// Use the `GtkBox` packing interface to determine the arrangement,
/// spacing, width, and alignment of `GtkHBox` children.
/// 
/// All children are allocated the same height.
/// 
/// GtkHBox has been deprecated. You can use `GtkBox` instead, which is a
/// very quick and easy change. If you have derived your own classes from
/// GtkHBox, you can simply change the inheritance to derive directly
/// from `GtkBox`. No further changes are needed, since the default
/// value of the `GtkOrientable:orientation` property is
/// `GTK_ORIENTATION_HORIZONTAL`.
/// 
/// If you have a grid-like layout composed of nested boxes, and you don’t
/// need first-child or last-child styling, the recommendation is to switch
/// to `GtkGrid`. For more information about migrating to `GtkGrid`, see
/// [Migrating from other containers to GtkGrid](#gtk-migrating-GtkGrid).
public struct HBoxRef: HBoxProtocol {
    /// Untyped pointer to the underlying `GtkHBox` instance.
    /// For type-safe access, use the generated, typed pointer `hbox_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension HBoxRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GtkHBox>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `HBoxProtocol`
    init<T: HBoxProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HBoxProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HBoxProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HBoxProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HBoxProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HBoxProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkHBox`.
    ///
    /// **new is deprecated:**
    /// You can use gtk_box_new() with %GTK_ORIENTATION_HORIZONTAL instead,
    ///   which is a quick and easy change. But the recommendation is to switch to
    ///   #GtkGrid, since #GtkBox is going to go away eventually.
    ///   See [Migrating from other containers to GtkGrid][gtk-migrating-GtkGrid].
    @available(*, deprecated) init( homogeneous: Bool, spacing: CInt) {
        let rv = gtk_hbox_new(gboolean(homogeneous ? 1 : 0), gint(spacing))
        self.init(cast(rv))
    }
}

/// The `HBox` type acts as a reference-counted owner of an underlying `GtkHBox` instance.
/// It provides the methods that can operate on this data type through `HBoxProtocol` conformance.
/// Use `HBox` as a strong reference or owner of a `GtkHBox` instance.
///
/// `GtkHBox` is a container that organizes child widgets into a single row.
/// 
/// Use the `GtkBox` packing interface to determine the arrangement,
/// spacing, width, and alignment of `GtkHBox` children.
/// 
/// All children are allocated the same height.
/// 
/// GtkHBox has been deprecated. You can use `GtkBox` instead, which is a
/// very quick and easy change. If you have derived your own classes from
/// GtkHBox, you can simply change the inheritance to derive directly
/// from `GtkBox`. No further changes are needed, since the default
/// value of the `GtkOrientable:orientation` property is
/// `GTK_ORIENTATION_HORIZONTAL`.
/// 
/// If you have a grid-like layout composed of nested boxes, and you don’t
/// need first-child or last-child styling, the recommendation is to switch
/// to `GtkGrid`. For more information about migrating to `GtkGrid`, see
/// [Migrating from other containers to GtkGrid](#gtk-migrating-GtkGrid).
open class HBox: Box, HBoxProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `HBox` instance.
    public init(_ op: UnsafeMutablePointer<GtkHBox>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `HBoxProtocol`
    /// Will retain `GtkHBox`.
    public convenience init<T: HBoxProtocol>(_ other: T) {
        self.init(cast(other.hbox_ptr))
        g_object_ref(cast(hbox_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HBoxProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GtkHBox.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HBoxProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GtkHBox.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HBoxProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GtkHBox.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HBoxProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GtkHBox>(opaquePointer))
    }

    /// Creates a new `GtkHBox`.
    ///
    /// **new is deprecated:**
    /// You can use gtk_box_new() with %GTK_ORIENTATION_HORIZONTAL instead,
    ///   which is a quick and easy change. But the recommendation is to switch to
    ///   #GtkGrid, since #GtkBox is going to go away eventually.
    ///   See [Migrating from other containers to GtkGrid][gtk-migrating-GtkGrid].
    @available(*, deprecated) public convenience init( homogeneous: Bool, spacing: CInt) {
        let rv = gtk_hbox_new(gboolean(homogeneous ? 1 : 0), gint(spacing))
        self.init(cast(rv))
    }


}

public enum HBoxPropertyName: String, PropertyNameProtocol {
    case accessibleComponentLayer = "accessible-component-layer"
    case accessibleComponentMdiZorder = "accessible-component-mdi-zorder"
    case accessibleDescription = "accessible-description"
    case accessibleHypertextNlinks = "accessible-hypertext-nlinks"
    case accessibleName = "accessible-name"
    case accessibleParent = "accessible-parent"
    case accessibleRole = "accessible-role"
    /// Table caption.
    ///
    /// **accessible-table-caption is deprecated:**
    /// Since 1.3. Use table-caption-object instead.
    case accessibleTableCaption = "accessible-table-caption"
    case accessibleTableCaptionObject = "accessible-table-caption-object"
    /// Accessible table column description.
    ///
    /// **accessible-table-column-description is deprecated:**
    /// Since 2.12. Use atk_table_get_column_description()
    /// and atk_table_set_column_description() instead.
    case accessibleTableColumnDescription = "accessible-table-column-description"
    /// Accessible table column header.
    ///
    /// **accessible-table-column-header is deprecated:**
    /// Since 2.12. Use atk_table_get_column_header() and
    /// atk_table_set_column_header() instead.
    case accessibleTableColumnHeader = "accessible-table-column-header"
    /// Accessible table row description.
    ///
    /// **accessible-table-row-description is deprecated:**
    /// Since 2.12. Use atk_table_get_row_description() and
    /// atk_table_set_row_description() instead.
    case accessibleTableRowDescription = "accessible-table-row-description"
    /// Accessible table row header.
    ///
    /// **accessible-table-row-header is deprecated:**
    /// Since 2.12. Use atk_table_get_row_header() and
    /// atk_table_set_row_header() instead.
    case accessibleTableRowHeader = "accessible-table-row-header"
    case accessibleTableSummary = "accessible-table-summary"
    /// Numeric value of this object, in case being and AtkValue.
    ///
    /// **accessible-value is deprecated:**
    /// Since 2.12. Use atk_value_get_value_and_text() to get
    /// the value, and value-changed signal to be notified on their value
    /// changes.
    case accessibleValue = "accessible-value"
    case appPaintable = "app-paintable"
    case baselinePosition = "baseline-position"
    case borderWidth = "border-width"
    case canDefault = "can-default"
    case canFocus = "can-focus"
    case child = "child"
    case compositeChild = "composite-child"
    /// Whether the widget is double buffered.
    ///
    /// **double-buffered is deprecated:**
    /// Widgets should not use this property.
    case doubleBuffered = "double-buffered"
    case events = "events"
    /// Whether to expand in both directions. Setting this sets both `GtkWidget:hexpand` and `GtkWidget:vexpand`
    case expand = "expand"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    /// 
    /// Before 3.20, several widgets (GtkButton, GtkFileChooserButton,
    /// GtkComboBox) implemented this property individually.
    case focusOnClick = "focus-on-click"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case halign = "halign"
    case hasDefault = "has-default"
    case hasFocus = "has-focus"
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case hasTooltip = "has-tooltip"
    case heightRequest = "height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case hexpand = "hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case hexpandSet = "hexpand-set"
    case homogeneous = "homogeneous"
    case isFocus = "is-focus"
    /// Sets all four sides' margin at once. If read, returns max
    /// margin on any side.
    case margin = "margin"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginBottom = "margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginEnd = "margin-end"
    /// Margin on left side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-left is deprecated:**
    /// Use #GtkWidget:margin-start instead.
    case marginLeft = "margin-left"
    /// Margin on right side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-right is deprecated:**
    /// Use #GtkWidget:margin-end instead.
    case marginRight = "margin-right"
    /// Margin on start of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginStart = "margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case marginTop = "margin-top"
    case name = "name"
    case noShowAll = "no-show-all"
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case opacity = "opacity"
    case parent = "parent"
    case receivesDefault = "receives-default"
    case resizeMode = "resize-mode"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case scaleFactor = "scale-factor"
    case sensitive = "sensitive"
    case spacing = "spacing"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case style = "style"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language](#PangoMarkupFormat).
    /// Also see `gtk_tooltip_set_markup()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case tooltipMarkup = "tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see `gtk_tooltip_set_text()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case tooltipText = "tooltip-text"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case valign = "valign"
    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    case vexpand = "vexpand"
    /// Whether to use the `GtkWidget:vexpand` property. See `gtk_widget_get_vexpand_set()`.
    case vexpandSet = "vexpand-set"
    case visible = "visible"
    case widthRequest = "width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case window = "window"
}

public extension HBoxProtocol {
    /// Bind a `HBoxPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: HBoxPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(hbox_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef(cast($0)) }
        }

        let rv = _bind(source_property.name, to: target, target_property.name, flags: f, holder: BindingClosureHolder(transform_from, transform_to), transformFrom: {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_from(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }) {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_to(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }
        return rv
    }
}

public enum HBoxSignalName: String, SignalNameProtocol {
    case accelClosuresChanged = "accel-closures-changed"
    /// The "active-descendant-changed" signal is emitted by an object
    /// which has the state ATK_STATE_MANAGES_DESCENDANTS when the focus
    /// object in the object changes. For instance, a table will emit the
    /// signal when the cell in the table which has focus changes.
    case activeDescendantChanged = "active-descendant-changed"
    case add = "add"
    /// The `button`-press-event signal will be emitted when a button
    /// (typically from a mouse) is pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the
    /// widget needs to enable the `GDK_BUTTON_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case buttonPressEvent = "button-press-event"
    /// The `button`-release-event signal will be emitted when a button
    /// (typically from a mouse) is released.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the
    /// widget needs to enable the `GDK_BUTTON_RELEASE_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case buttonReleaseEvent = "button-release-event"
    /// Determines whether an accelerator that activates the signal
    /// identified by `signal_id` can currently be activated.
    /// This signal is present to allow applications and derived
    /// widgets to override the default `GtkWidget` handling
    /// for determining whether an accelerator can be activated.
    case canActivateAccel = "can-activate-accel"
    case checkResize = "check-resize"
    /// The `child`-notify signal is emitted for each
    /// [child property](#child-properties)  that has
    /// changed on an object. The signal's detail holds the property name.
    case childNotify = "child-notify"
    /// The signal "children-changed" is emitted when a child is added or
    /// removed form an object. It supports two details: "add" and
    /// "remove"
    case childrenChanged = "children-changed"
    /// The `composited`-changed signal is emitted when the composited
    /// status of `widgets` screen changes.
    /// See `gdk_screen_is_composited()`.
    ///
    /// **composited-changed is deprecated:**
    /// Use GdkScreen::composited-changed instead.
    case compositedChanged = "composited-changed"
    /// The `configure`-event signal will be emitted when the size, position or
    /// stacking of the `widget`'s window has changed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case configureEvent = "configure-event"
    /// Emitted when a redirected window belonging to `widget` gets drawn into.
    /// The region/area members of the event shows what area of the redirected
    /// drawable was drawn into.
    case damageEvent = "damage-event"
    /// The `delete`-event signal is emitted if a user requests that
    /// a toplevel window is closed. The default handler for this signal
    /// destroys the window. Connecting `gtk_widget_hide_on_delete()` to
    /// this signal will cause the window to be hidden instead, so that
    /// it can later be shown again without reconstructing it.
    case deleteEvent = "delete-event"
    /// Signals that all holders of a reference to the widget should release
    /// the reference that they hold. May result in finalization of the widget
    /// if all references are released.
    /// 
    /// This signal is not suitable for saving widget state.
    case destroy = "destroy"
    /// The `destroy`-event signal is emitted when a `GdkWindow` is destroyed.
    /// You rarely get this signal, because most widgets disconnect themselves
    /// from their window before they destroy it, so no widget owns the
    /// window at destroy time.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case destroyEvent = "destroy-event"
    /// The `direction`-changed signal is emitted when the text direction
    /// of a widget changes.
    case directionChanged = "direction-changed"
    /// The `drag`-begin signal is emitted on the drag source when a drag is
    /// started. A typical reason to connect to this signal is to set up a
    /// custom drag icon with e.g. `gtk_drag_source_set_icon_pixbuf()`.
    /// 
    /// Note that some widgets set up a drag icon in the default handler of
    /// this signal, so you may have to use `g_signal_connect_after()` to
    /// override what the default handler did.
    case dragBegin = "drag-begin"
    /// The `drag`-data-delete signal is emitted on the drag source when a drag
    /// with the action `GDK_ACTION_MOVE` is successfully completed. The signal
    /// handler is responsible for deleting the data that has been dropped. What
    /// "delete" means depends on the context of the drag operation.
    case dragDataDelete = "drag-data-delete"
    /// The `drag`-data-get signal is emitted on the drag source when the drop
    /// site requests the data which is dragged. It is the responsibility of
    /// the signal handler to fill `data` with the data in the format which
    /// is indicated by `info`. See `gtk_selection_data_set()` and
    /// `gtk_selection_data_set_text()`.
    case dragDataGet = "drag-data-get"
    /// The `drag`-data-received signal is emitted on the drop site when the
    /// dragged data has been received. If the data was received in order to
    /// determine whether the drop will be accepted, the handler is expected
    /// to call `gdk_drag_status()` and not finish the drag.
    /// If the data was received in response to a `GtkWidget::drag`-drop signal
    /// (and this is the last target to be received), the handler for this
    /// signal is expected to process the received data and then call
    /// `gtk_drag_finish()`, setting the `success` parameter depending on
    /// whether the data was processed successfully.
    /// 
    /// Applications must create some means to determine why the signal was emitted
    /// and therefore whether to call `gdk_drag_status()` or `gtk_drag_finish()`.
    /// 
    /// The handler may inspect the selected action with
    /// `gdk_drag_context_get_selected_action()` before calling
    /// `gtk_drag_finish()`, e.g. to implement `GDK_ACTION_ASK` as
    /// shown in the following example:
    /// (C Language Example):
    /// ```C
    /// void
    /// drag_data_received (GtkWidget          *widget,
    ///                     GdkDragContext     *context,
    ///                     gint                x,
    ///                     gint                y,
    ///                     GtkSelectionData   *data,
    ///                     guint               info,
    ///                     guint               time)
    /// {
    ///   if ((data->length >= 0) && (data->format == 8))
    ///     {
    ///       GdkDragAction action;
    /// 
    ///       // handle data here
    /// 
    ///       action = gdk_drag_context_get_selected_action (context);
    ///       if (action == GDK_ACTION_ASK)
    ///         {
    ///           GtkWidget *dialog;
    ///           gint response;
    /// 
    ///           dialog = gtk_message_dialog_new (NULL,
    ///                                            GTK_DIALOG_MODAL |
    ///                                            GTK_DIALOG_DESTROY_WITH_PARENT,
    ///                                            GTK_MESSAGE_INFO,
    ///                                            GTK_BUTTONS_YES_NO,
    ///                                            "Move the data ?\n");
    ///           response = gtk_dialog_run (GTK_DIALOG (dialog));
    ///           gtk_widget_destroy (dialog);
    /// 
    ///           if (response == GTK_RESPONSE_YES)
    ///             action = GDK_ACTION_MOVE;
    ///           else
    ///             action = GDK_ACTION_COPY;
    ///          }
    /// 
    ///       gtk_drag_finish (context, TRUE, action == GDK_ACTION_MOVE, time);
    ///     }
    ///   else
    ///     gtk_drag_finish (context, FALSE, FALSE, time);
    ///  }
    /// ```
    /// 
    case dragDataReceived = "drag-data-received"
    /// The `drag`-drop signal is emitted on the drop site when the user drops
    /// the data onto the widget. The signal handler must determine whether
    /// the cursor position is in a drop zone or not. If it is not in a drop
    /// zone, it returns `false` and no further processing is necessary.
    /// Otherwise, the handler returns `true`. In this case, the handler must
    /// ensure that `gtk_drag_finish()` is called to let the source know that
    /// the drop is done. The call to `gtk_drag_finish()` can be done either
    /// directly or in a `GtkWidget::drag`-data-received handler which gets
    /// triggered by calling `gtk_drag_get_data()` to receive the data for one
    /// or more of the supported targets.
    case dragDrop = "drag-drop"
    /// The `drag`-end signal is emitted on the drag source when a drag is
    /// finished.  A typical reason to connect to this signal is to undo
    /// things done in `GtkWidget::drag`-begin.
    case dragEnd = "drag-end"
    /// The `drag`-failed signal is emitted on the drag source when a drag has
    /// failed. The signal handler may hook custom code to handle a failed DnD
    /// operation based on the type of error, it returns `true` is the failure has
    /// been already handled (not showing the default "drag operation failed"
    /// animation), otherwise it returns `false`.
    case dragFailed = "drag-failed"
    /// The `drag`-leave signal is emitted on the drop site when the cursor
    /// leaves the widget. A typical reason to connect to this signal is to
    /// undo things done in `GtkWidget::drag`-motion, e.g. undo highlighting
    /// with `gtk_drag_unhighlight()`.
    /// 
    /// 
    /// Likewise, the `GtkWidget::drag`-leave signal is also emitted before the
    /// `drag`-drop signal, for instance to allow cleaning up of a preview item
    /// created in the `GtkWidget::drag`-motion signal handler.
    case dragLeave = "drag-leave"
    /// The `drag`-motion signal is emitted on the drop site when the user
    /// moves the cursor over the widget during a drag. The signal handler
    /// must determine whether the cursor position is in a drop zone or not.
    /// If it is not in a drop zone, it returns `false` and no further processing
    /// is necessary. Otherwise, the handler returns `true`. In this case, the
    /// handler is responsible for providing the necessary information for
    /// displaying feedback to the user, by calling `gdk_drag_status()`.
    /// 
    /// If the decision whether the drop will be accepted or rejected can't be
    /// made based solely on the cursor position and the type of the data, the
    /// handler may inspect the dragged data by calling `gtk_drag_get_data()` and
    /// defer the `gdk_drag_status()` call to the `GtkWidget::drag`-data-received
    /// handler. Note that you must pass `GTK_DEST_DEFAULT_DROP`,
    /// `GTK_DEST_DEFAULT_MOTION` or `GTK_DEST_DEFAULT_ALL` to `gtk_drag_dest_set()`
    /// when using the drag-motion signal that way.
    /// 
    /// Also note that there is no drag-enter signal. The drag receiver has to
    /// keep track of whether he has received any drag-motion signals since the
    /// last `GtkWidget::drag`-leave and if not, treat the drag-motion signal as
    /// an "enter" signal. Upon an "enter", the handler will typically highlight
    /// the drop site with `gtk_drag_highlight()`.
    /// (C Language Example):
    /// ```C
    /// static void
    /// drag_motion (GtkWidget      *widget,
    ///              GdkDragContext *context,
    ///              gint            x,
    ///              gint            y,
    ///              guint           time)
    /// {
    ///   GdkAtom target;
    /// 
    ///   PrivateData *private_data = GET_PRIVATE_DATA (widget);
    /// 
    ///   if (!private_data->drag_highlight)
    ///    {
    ///      private_data->drag_highlight = 1;
    ///      gtk_drag_highlight (widget);
    ///    }
    /// 
    ///   target = gtk_drag_dest_find_target (widget, context, NULL);
    ///   if (target == GDK_NONE)
    ///     gdk_drag_status (context, 0, time);
    ///   else
    ///    {
    ///      private_data->pending_status
    ///         = gdk_drag_context_get_suggested_action (context);
    ///      gtk_drag_get_data (widget, context, target, time);
    ///    }
    /// 
    ///   return TRUE;
    /// }
    /// 
    /// static void
    /// drag_data_received (GtkWidget        *widget,
    ///                     GdkDragContext   *context,
    ///                     gint              x,
    ///                     gint              y,
    ///                     GtkSelectionData *selection_data,
    ///                     guint             info,
    ///                     guint             time)
    /// {
    ///   PrivateData *private_data = GET_PRIVATE_DATA (widget);
    /// 
    ///   if (private_data->suggested_action)
    ///    {
    ///      private_data->suggested_action = 0;
    /// 
    ///      // We are getting this data due to a request in drag_motion,
    ///      // rather than due to a request in drag_drop, so we are just
    ///      // supposed to call gdk_drag_status(), not actually paste in
    ///      // the data.
    /// 
    ///      str = gtk_selection_data_get_text (selection_data);
    ///      if (!data_is_acceptable (str))
    ///        gdk_drag_status (context, 0, time);
    ///      else
    ///        gdk_drag_status (context,
    ///                         private_data->suggested_action,
    ///                         time);
    ///    }
    ///   else
    ///    {
    ///      // accept the drop
    ///    }
    /// }
    /// ```
    /// 
    case dragMotion = "drag-motion"
    /// This signal is emitted when a widget is supposed to render itself.
    /// The `widget`'s top left corner must be painted at the origin of
    /// the passed in context and be sized to the values returned by
    /// `gtk_widget_get_allocated_width()` and
    /// `gtk_widget_get_allocated_height()`.
    /// 
    /// Signal handlers connected to this signal can modify the cairo
    /// context passed as `cr` in any way they like and don't need to
    /// restore it. The signal emission takes care of calling `cairo_save()`
    /// before and `cairo_restore()` after invoking the handler.
    /// 
    /// The signal handler will get a `cr` with a clip region already set to the
    /// widget's dirty region, i.e. to the area that needs repainting.  Complicated
    /// widgets that want to avoid redrawing themselves completely can get the full
    /// extents of the clip region with `gdk_cairo_get_clip_rectangle()`, or they can
    /// get a finer-grained representation of the dirty region with
    /// `cairo_copy_clip_rectangle_list()`.
    case draw = "draw"
    /// The `enter`-notify-event will be emitted when the pointer enters
    /// the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_ENTER_NOTIFY_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case enterNotifyEvent = "enter-notify-event"
    /// The GTK+ main loop will emit three signals for each GDK event delivered
    /// to a widget: one generic `event` signal, another, more specific,
    /// signal that matches the type of event delivered (e.g.
    /// `GtkWidget::key`-press-event) and finally a generic
    /// `GtkWidget::event`-after signal.
    case event = "event"
    /// After the emission of the `GtkWidget::event` signal and (optionally)
    /// the second more specific signal, `event`-after will be emitted
    /// regardless of the previous two signals handlers return values.
    case eventAfter = "event-after"
    case focus = "focus"
    /// The signal "focus-event" is emitted when an object gained or lost
    /// focus.
    ///
    /// **focus-event is deprecated:**
    /// Use the #AtkObject::state-change signal instead.
    case focusEvent = "focus-event"
    /// The `focus`-in-event signal will be emitted when the keyboard focus
    /// enters the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_FOCUS_CHANGE_MASK` mask.
    case focusInEvent = "focus-in-event"
    /// The `focus`-out-event signal will be emitted when the keyboard focus
    /// leaves the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_FOCUS_CHANGE_MASK` mask.
    case focusOutEvent = "focus-out-event"
    /// Emitted when a pointer or keyboard grab on a window belonging
    /// to `widget` gets broken.
    /// 
    /// On X11, this happens when the grab window becomes unviewable
    /// (i.e. it or one of its ancestors is unmapped), or if the same
    /// application grabs the pointer or keyboard again.
    case grabBrokenEvent = "grab-broken-event"
    case grabFocus = "grab-focus"
    /// The `grab`-notify signal is emitted when a widget becomes
    /// shadowed by a GTK+ grab (not a pointer or keyboard grab) on
    /// another widget, or when it becomes unshadowed due to a grab
    /// being removed.
    /// 
    /// A widget is shadowed by a `gtk_grab_add()` when the topmost
    /// grab widget in the grab stack of its window group is not
    /// its ancestor.
    case grabNotify = "grab-notify"
    /// The `hide` signal is emitted when `widget` is hidden, for example with
    /// `gtk_widget_hide()`.
    case hide = "hide"
    /// The `hierarchy`-changed signal is emitted when the
    /// anchored state of a widget changes. A widget is
    /// “anchored” when its toplevel
    /// ancestor is a `GtkWindow`. This signal is emitted when
    /// a widget changes from un-anchored to anchored or vice-versa.
    case hierarchyChanged = "hierarchy-changed"
    /// The `key`-press-event signal is emitted when a key is pressed. The signal
    /// emission will reoccur at the key-repeat rate when the key is kept pressed.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_PRESS_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyPressEvent = "key-press-event"
    /// The `key`-release-event signal is emitted when a key is released.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_KEY_RELEASE_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case keyReleaseEvent = "key-release-event"
    /// Gets emitted if keyboard navigation fails.
    /// See `gtk_widget_keynav_failed()` for details.
    case keynavFailed = "keynav-failed"
    /// The `leave`-notify-event will be emitted when the pointer leaves
    /// the `widget`'s window.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_LEAVE_NOTIFY_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case leaveNotifyEvent = "leave-notify-event"
    /// The `map` signal is emitted when `widget` is going to be mapped, that is
    /// when the widget is visible (which is controlled with
    /// `gtk_widget_set_visible()`) and all its parents up to the toplevel widget
    /// are also visible. Once the map has occurred, `GtkWidget::map`-event will
    /// be emitted.
    /// 
    /// The `map` signal can be used to determine whether a widget will be drawn,
    /// for instance it can resume an animation that was stopped during the
    /// emission of `GtkWidget::unmap`.
    case map = "map"
    /// The `map`-event signal will be emitted when the `widget`'s window is
    /// mapped. A window is mapped when it becomes visible on the screen.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case mapEvent = "map-event"
    /// The default handler for this signal activates `widget` if `group_cycling`
    /// is `false`, or just makes `widget` grab focus if `group_cycling` is `true`.
    case mnemonicActivate = "mnemonic-activate"
    /// The `motion`-notify-event signal is emitted when the pointer moves
    /// over the widget's `GdkWindow`.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget
    /// needs to enable the `GDK_POINTER_MOTION_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case motionNotifyEvent = "motion-notify-event"
    case moveFocus = "move-focus"
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// The `parent`-set signal is emitted when a new parent
    /// has been set on a widget.
    case parentSet = "parent-set"
    /// This signal gets emitted whenever a widget should pop up a context
    /// menu. This usually happens through the standard key binding mechanism;
    /// by pressing a certain key while a widget is focused, the user can cause
    /// the widget to pop up a menu.  For example, the `GtkEntry` widget creates
    /// a menu with clipboard commands. See the
    /// [Popup Menu Migration Checklist](#checklist-popup-menu)
    /// for an example of how to use this signal.
    case popupMenu = "popup-menu"
    /// The signal "property-change" is emitted when an object's property
    /// value changes. `arg1` contains an `AtkPropertyValues` with the name
    /// and the new value of the property whose value has changed. Note
    /// that, as with GObject notify, getting this signal does not
    /// guarantee that the value of the property has actually changed; it
    /// may also be emitted when the setter of the property is called to
    /// reinstate the previous value.
    /// 
    /// Toolkit implementor note: ATK implementors should use
    /// `g_object_notify()` to emit property-changed
    /// notifications. `AtkObject::property`-changed is needed by the
    /// implementation of `atk_add_global_event_listener()` because GObject
    /// notify doesn't support emission hooks.
    case propertyChange = "property-change"
    /// The `property`-notify-event signal will be emitted when a property on
    /// the `widget`'s window has been changed or deleted.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_PROPERTY_CHANGE_MASK` mask.
    case propertyNotifyEvent = "property-notify-event"
    /// To receive this signal the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_PROXIMITY_IN_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case proximityInEvent = "proximity-in-event"
    /// To receive this signal the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_PROXIMITY_OUT_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case proximityOutEvent = "proximity-out-event"
    /// Emitted when `GtkWidget:has`-tooltip is `true` and the hover timeout
    /// has expired with the cursor hovering "above" `widget`; or emitted when `widget` got
    /// focus in keyboard mode.
    /// 
    /// Using the given coordinates, the signal handler should determine
    /// whether a tooltip should be shown for `widget`. If this is the case
    /// `true` should be returned, `false` otherwise.  Note that if
    /// `keyboard_mode` is `true`, the values of `x` and `y` are undefined and
    /// should not be used.
    /// 
    /// The signal handler is free to manipulate `tooltip` with the therefore
    /// destined function calls.
    case queryTooltip = "query-tooltip"
    /// The `realize` signal is emitted when `widget` is associated with a
    /// `GdkWindow`, which means that `gtk_widget_realize()` has been called or the
    /// widget has been mapped (that is, it is going to be drawn).
    case realize = "realize"
    case remove = "remove"
    /// The `screen`-changed signal gets emitted when the
    /// screen of a widget has changed.
    case screenChanged = "screen-changed"
    /// The `scroll`-event signal is emitted when a button in the 4 to 7
    /// range is pressed. Wheel mice are usually configured to generate
    /// button press events for buttons 4 and 5 when the wheel is turned.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_SCROLL_MASK` mask.
    /// 
    /// This signal will be sent to the grab widget if there is one.
    case scrollEvent = "scroll-event"
    /// The `selection`-clear-event signal will be emitted when the
    /// the `widget`'s window has lost ownership of a selection.
    case selectionClearEvent = "selection-clear-event"
    case selectionGet = "selection-get"
    case selectionNotifyEvent = "selection-notify-event"
    case selectionReceived = "selection-received"
    /// The `selection`-request-event signal will be emitted when
    /// another client requests ownership of the selection owned by
    /// the `widget`'s window.
    case selectionRequestEvent = "selection-request-event"
    case setFocusChild = "set-focus-child"
    /// The `show` signal is emitted when `widget` is shown, for example with
    /// `gtk_widget_show()`.
    case show = "show"
    case showHelp = "show-help"
    case sizeAllocate = "size-allocate"
    /// The "state-change" signal is emitted when an object's state
    /// changes.  The detail value identifies the state type which has
    /// changed.
    case stateChange = "state-change"
    /// The `state`-changed signal is emitted when the widget state changes.
    /// See `gtk_widget_get_state()`.
    ///
    /// **state-changed is deprecated:**
    /// Use #GtkWidget::state-flags-changed instead.
    case stateChanged = "state-changed"
    /// The `state`-flags-changed signal is emitted when the widget state
    /// changes, see `gtk_widget_get_state_flags()`.
    case stateFlagsChanged = "state-flags-changed"
    /// The `style`-set signal is emitted when a new style has been set
    /// on a widget. Note that style-modifying functions like
    /// `gtk_widget_modify_base()` also cause this signal to be emitted.
    /// 
    /// Note that this signal is emitted for changes to the deprecated
    /// `GtkStyle`. To track changes to the `GtkStyleContext` associated
    /// with a widget, use the `GtkWidget::style`-updated signal.
    ///
    /// **style-set is deprecated:**
    /// Use the #GtkWidget::style-updated signal
    case styleSet = "style-set"
    /// The `style`-updated signal is a convenience signal that is emitted when the
    /// `GtkStyleContext::changed` signal is emitted on the `widget`'s associated
    /// `GtkStyleContext` as returned by `gtk_widget_get_style_context()`.
    /// 
    /// Note that style-modifying functions like `gtk_widget_override_color()` also
    /// cause this signal to be emitted.
    case styleUpdated = "style-updated"
    case touchEvent = "touch-event"
    /// The `unmap` signal is emitted when `widget` is going to be unmapped, which
    /// means that either it or any of its parents up to the toplevel widget have
    /// been set as hidden.
    /// 
    /// As `unmap` indicates that a widget will not be shown any longer, it can be
    /// used to, for example, stop an animation on the widget.
    case unmap = "unmap"
    /// The `unmap`-event signal will be emitted when the `widget`'s window is
    /// unmapped. A window is unmapped when it becomes invisible on the screen.
    /// 
    /// To receive this signal, the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable this mask
    /// automatically for all new windows.
    case unmapEvent = "unmap-event"
    /// The `unrealize` signal is emitted when the `GdkWindow` associated with
    /// `widget` is destroyed, which means that `gtk_widget_unrealize()` has been
    /// called or the widget has been unmapped (that is, it is going to be
    /// hidden).
    case unrealize = "unrealize"
    /// The `visibility`-notify-event will be emitted when the `widget`'s
    /// window is obscured or unobscured.
    /// 
    /// To receive this signal the `GdkWindow` associated to the widget needs
    /// to enable the `GDK_VISIBILITY_NOTIFY_MASK` mask.
    ///
    /// **visibility-notify-event is deprecated:**
    /// Modern composited windowing systems with pervasive
    ///     transparency make it impossible to track the visibility of a window
    ///     reliably, so this signal can not be guaranteed to provide useful
    ///     information.
    case visibilityNotifyEvent = "visibility-notify-event"
    /// The "visible-data-changed" signal is emitted when the visual
    /// appearance of the object changed.
    case visibleDataChanged = "visible-data-changed"
    /// The `window`-state-event will be emitted when the state of the
    /// toplevel window associated to the `widget` changes.
    /// 
    /// To receive this signal the `GdkWindow` associated to the widget
    /// needs to enable the `GDK_STRUCTURE_MASK` mask. GDK will enable
    /// this mask automatically for all new windows.
    case windowStateEvent = "window-state-event"
    case notifyAccessibleComponentLayer = "notify::accessible-component-layer"
    case notifyAccessibleComponentMdiZorder = "notify::accessible-component-mdi-zorder"
    case notifyAccessibleDescription = "notify::accessible-description"
    case notifyAccessibleHypertextNlinks = "notify::accessible-hypertext-nlinks"
    case notifyAccessibleName = "notify::accessible-name"
    case notifyAccessibleParent = "notify::accessible-parent"
    case notifyAccessibleRole = "notify::accessible-role"
    /// Table caption.
    ///
    /// **accessible-table-caption is deprecated:**
    /// Since 1.3. Use table-caption-object instead.
    case notifyAccessibleTableCaption = "notify::accessible-table-caption"
    case notifyAccessibleTableCaptionObject = "notify::accessible-table-caption-object"
    /// Accessible table column description.
    ///
    /// **accessible-table-column-description is deprecated:**
    /// Since 2.12. Use atk_table_get_column_description()
    /// and atk_table_set_column_description() instead.
    case notifyAccessibleTableColumnDescription = "notify::accessible-table-column-description"
    /// Accessible table column header.
    ///
    /// **accessible-table-column-header is deprecated:**
    /// Since 2.12. Use atk_table_get_column_header() and
    /// atk_table_set_column_header() instead.
    case notifyAccessibleTableColumnHeader = "notify::accessible-table-column-header"
    /// Accessible table row description.
    ///
    /// **accessible-table-row-description is deprecated:**
    /// Since 2.12. Use atk_table_get_row_description() and
    /// atk_table_set_row_description() instead.
    case notifyAccessibleTableRowDescription = "notify::accessible-table-row-description"
    /// Accessible table row header.
    ///
    /// **accessible-table-row-header is deprecated:**
    /// Since 2.12. Use atk_table_get_row_header() and
    /// atk_table_set_row_header() instead.
    case notifyAccessibleTableRowHeader = "notify::accessible-table-row-header"
    case notifyAccessibleTableSummary = "notify::accessible-table-summary"
    /// Numeric value of this object, in case being and AtkValue.
    ///
    /// **accessible-value is deprecated:**
    /// Since 2.12. Use atk_value_get_value_and_text() to get
    /// the value, and value-changed signal to be notified on their value
    /// changes.
    case notifyAccessibleValue = "notify::accessible-value"
    case notifyAppPaintable = "notify::app-paintable"
    case notifyBaselinePosition = "notify::baseline-position"
    case notifyBorderWidth = "notify::border-width"
    case notifyCanDefault = "notify::can-default"
    case notifyCanFocus = "notify::can-focus"
    case notifyChild = "notify::child"
    case notifyCompositeChild = "notify::composite-child"
    /// Whether the widget is double buffered.
    ///
    /// **double-buffered is deprecated:**
    /// Widgets should not use this property.
    case notifyDoubleBuffered = "notify::double-buffered"
    case notifyEvents = "notify::events"
    /// Whether to expand in both directions. Setting this sets both `GtkWidget:hexpand` and `GtkWidget:vexpand`
    case notifyExpand = "notify::expand"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    /// 
    /// Before 3.20, several widgets (GtkButton, GtkFileChooserButton,
    /// GtkComboBox) implemented this property individually.
    case notifyFocusOnClick = "notify::focus-on-click"
    /// How to distribute horizontal space if widget gets extra space, see `GtkAlign`
    case notifyHalign = "notify::halign"
    case notifyHasDefault = "notify::has-default"
    case notifyHasFocus = "notify::has-focus"
    /// Enables or disables the emission of `GtkWidget::query`-tooltip on `widget`.
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using `GtkWidget::query`-tooltip to determine
    /// whether it will provide a tooltip or not.
    /// 
    /// Note that setting this property to `true` for the first time will change
    /// the event masks of the GdkWindows of this widget to include leave-notify
    /// and motion-notify events.  This cannot and will not be undone when the
    /// property is set to `false` again.
    case notifyHasTooltip = "notify::has-tooltip"
    case notifyHeightRequest = "notify::height-request"
    /// Whether to expand horizontally. See `gtk_widget_set_hexpand()`.
    case notifyHexpand = "notify::hexpand"
    /// Whether to use the `GtkWidget:hexpand` property. See `gtk_widget_get_hexpand_set()`.
    case notifyHexpandSet = "notify::hexpand-set"
    case notifyHomogeneous = "notify::homogeneous"
    case notifyIsFocus = "notify::is-focus"
    /// Sets all four sides' margin at once. If read, returns max
    /// margin on any side.
    case notifyMargin = "notify::margin"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginBottom = "notify::margin-bottom"
    /// Margin on end of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginEnd = "notify::margin-end"
    /// Margin on left side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-left is deprecated:**
    /// Use #GtkWidget:margin-start instead.
    case notifyMarginLeft = "notify::margin-left"
    /// Margin on right side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    ///
    /// **margin-right is deprecated:**
    /// Use #GtkWidget:margin-end instead.
    case notifyMarginRight = "notify::margin-right"
    /// Margin on start of widget, horizontally. This property supports
    /// left-to-right and right-to-left text directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginStart = "notify::margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// `gtk_widget_set_size_request()` for example.
    case notifyMarginTop = "notify::margin-top"
    case notifyName = "notify::name"
    case notifyNoShowAll = "notify::no-show-all"
    /// The requested opacity of the widget. See `gtk_widget_set_opacity()` for
    /// more details about window opacity.
    /// 
    /// Before 3.8 this was only available in GtkWindow
    case notifyOpacity = "notify::opacity"
    case notifyParent = "notify::parent"
    case notifyReceivesDefault = "notify::receives-default"
    case notifyResizeMode = "notify::resize-mode"
    /// The scale factor of the widget. See `gtk_widget_get_scale_factor()` for
    /// more details about widget scaling.
    case notifyScaleFactor = "notify::scale-factor"
    case notifySensitive = "notify::sensitive"
    case notifySpacing = "notify::spacing"
    /// The style of the widget, which contains information about how it will look (colors, etc).
    ///
    /// **style is deprecated:**
    /// Use #GtkStyleContext instead
    case notifyStyle = "notify::style"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with the [Pango text markup language](#PangoMarkupFormat).
    /// Also see `gtk_tooltip_set_markup()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case notifyTooltipMarkup = "notify::tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see `gtk_tooltip_set_text()`.
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`: `GtkWidget:has`-tooltip
    /// will automatically be set to `true` and there will be taken care of
    /// `GtkWidget::query`-tooltip in the default signal handler.
    /// 
    /// Note that if both `GtkWidget:tooltip`-text and `GtkWidget:tooltip`-markup
    /// are set, the last one wins.
    case notifyTooltipText = "notify::tooltip-text"
    /// How to distribute vertical space if widget gets extra space, see `GtkAlign`
    case notifyValign = "notify::valign"
    /// Whether to expand vertically. See `gtk_widget_set_vexpand()`.
    case notifyVexpand = "notify::vexpand"
    /// Whether to use the `GtkWidget:vexpand` property. See `gtk_widget_get_vexpand_set()`.
    case notifyVexpandSet = "notify::vexpand-set"
    case notifyVisible = "notify::visible"
    case notifyWidthRequest = "notify::width-request"
    /// The widget's window if it is realized, `nil` otherwise.
    case notifyWindow = "notify::window"
}

public extension HBoxProtocol {
    /// Connect a `HBoxSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: HBoxSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(hbox_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension HBoxProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkHBox` instance.
    var hbox_ptr: UnsafeMutablePointer<GtkHBox> { return ptr.assumingMemoryBound(to: GtkHBox.self) }

}



