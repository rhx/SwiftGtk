import CGLib
import CCairo
import CPango
import CGdkPixbuf
import CGdk
import CGtk
import GLib
import GLibObject
import GIO
import Pango
import Cairo
import PangoCairo
import GdkPixbuf
import Gdk

// MARK: - Gesture Class

/// `GtkGesture` is the base class for gesture recognition.
/// 
/// Although `GtkGesture` is quite generalized to serve as a base for
/// multi-touch gestures, it is suitable to implement single-touch and
/// pointer-based gestures (using the special `nil` `GdkEventSequence`
/// value for these).
/// 
/// The number of touches that a `GtkGesture` need to be recognized is
/// controlled by the [property`Gtk.Gesture:n-points`] property, if a
/// gesture is keeping track of less or more than that number of sequences,
/// it won't check whether the gesture is recognized.
/// 
/// As soon as the gesture has the expected number of touches, it will check
/// regularly if it is recognized, the criteria to consider a gesture as
/// "recognized" is left to `GtkGesture` subclasses.
/// 
/// A recognized gesture will then emit the following signals:
/// 
/// - [signal`Gtk.Gesture::begin`] when the gesture is recognized.
/// - [signal`Gtk.Gesture::update`], whenever an input event is processed.
/// - [signal`Gtk.Gesture::end`] when the gesture is no longer recognized.
/// 
/// ## Event propagation
/// 
/// In order to receive events, a gesture needs to set a propagation phase
/// through [method`Gtk.EventController.set_propagation_phase`].
/// 
/// In the capture phase, events are propagated from the toplevel down
/// to the target widget, and gestures that are attached to containers
/// above the widget get a chance to interact with the event before it
/// reaches the target.
/// 
/// In the bubble phase, events are propagated up from the target widget
/// to the toplevel, and gestures that are attached to containers above
/// the widget get a chance to interact with events that have not been
/// handled yet.
/// 
/// ## States of a sequence
/// 
/// Whenever input interaction happens, a single event may trigger a cascade
/// of `GtkGesture`s, both across the parents of the widget receiving the
/// event and in parallel within an individual widget. It is a responsibility
/// of the widgets using those gestures to set the state of touch sequences
/// accordingly in order to enable cooperation of gestures around the
/// `GdkEventSequence`s triggering those.
/// 
/// Within a widget, gestures can be grouped through [method`Gtk.Gesture.group`].
/// Grouped gestures synchronize the state of sequences, so calling
/// [method`Gtk.Gesture.set_sequence_state`] on one will effectively propagate
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
/// 
/// - Setting the same sequence to `GTK_EVENT_SEQUENCE_DENIED` on every other
///   gesture group within the widget, and every gesture on parent widgets
///   in the propagation chain.
/// - Emitting [signal`Gtk.Gesture::cancel`] on every gesture in widgets
///   underneath in the propagation chain.
/// - Stopping event propagation after the gesture group handles the event.
/// 
/// Note: if a sequence is set early to `GTK_EVENT_SEQUENCE_CLAIMED` on
/// `GDK_TOUCH_BEGIN`/`GDK_BUTTON_PRESS` (so those events are captured before
/// reaching the event widget, this implies `GTK_PHASE_CAPTURE`), one similar
/// event will emulated if the sequence changes to `GTK_EVENT_SEQUENCE_DENIED`.
/// This way event coherence is preserved before event propagation is unstopped
/// again.
/// 
/// Sequence states can't be changed freely.
/// See [method`Gtk.Gesture.set_sequence_state`] to know about the possible
/// lifetimes of a `GdkEventSequence`.
/// 
/// ## Touchpad gestures
/// 
/// On the platforms that support it, `GtkGesture` will handle transparently
/// touchpad gesture events. The only precautions users of `GtkGesture` should
/// do to enable this support are:
/// 
/// - If the gesture has `GTK_PHASE_NONE`, ensuring events of type
///   `GDK_TOUCHPAD_SWIPE` and `GDK_TOUCHPAD_PINCH` are handled by the `GtkGesture`
///
/// The `GestureProtocol` protocol exposes the methods and properties of an underlying `GtkGesture` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Gesture`.
/// Alternatively, use `GestureRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol GestureProtocol: EventControllerProtocol {
        /// Untyped pointer to the underlying `GtkGesture` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkGesture` instance.
    var gesture_ptr: UnsafeMutablePointer<GtkGesture>! { get }

    /// Required Initialiser for types conforming to `GestureProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GtkGesture` is the base class for gesture recognition.
/// 
/// Although `GtkGesture` is quite generalized to serve as a base for
/// multi-touch gestures, it is suitable to implement single-touch and
/// pointer-based gestures (using the special `nil` `GdkEventSequence`
/// value for these).
/// 
/// The number of touches that a `GtkGesture` need to be recognized is
/// controlled by the [property`Gtk.Gesture:n-points`] property, if a
/// gesture is keeping track of less or more than that number of sequences,
/// it won't check whether the gesture is recognized.
/// 
/// As soon as the gesture has the expected number of touches, it will check
/// regularly if it is recognized, the criteria to consider a gesture as
/// "recognized" is left to `GtkGesture` subclasses.
/// 
/// A recognized gesture will then emit the following signals:
/// 
/// - [signal`Gtk.Gesture::begin`] when the gesture is recognized.
/// - [signal`Gtk.Gesture::update`], whenever an input event is processed.
/// - [signal`Gtk.Gesture::end`] when the gesture is no longer recognized.
/// 
/// ## Event propagation
/// 
/// In order to receive events, a gesture needs to set a propagation phase
/// through [method`Gtk.EventController.set_propagation_phase`].
/// 
/// In the capture phase, events are propagated from the toplevel down
/// to the target widget, and gestures that are attached to containers
/// above the widget get a chance to interact with the event before it
/// reaches the target.
/// 
/// In the bubble phase, events are propagated up from the target widget
/// to the toplevel, and gestures that are attached to containers above
/// the widget get a chance to interact with events that have not been
/// handled yet.
/// 
/// ## States of a sequence
/// 
/// Whenever input interaction happens, a single event may trigger a cascade
/// of `GtkGesture`s, both across the parents of the widget receiving the
/// event and in parallel within an individual widget. It is a responsibility
/// of the widgets using those gestures to set the state of touch sequences
/// accordingly in order to enable cooperation of gestures around the
/// `GdkEventSequence`s triggering those.
/// 
/// Within a widget, gestures can be grouped through [method`Gtk.Gesture.group`].
/// Grouped gestures synchronize the state of sequences, so calling
/// [method`Gtk.Gesture.set_sequence_state`] on one will effectively propagate
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
/// 
/// - Setting the same sequence to `GTK_EVENT_SEQUENCE_DENIED` on every other
///   gesture group within the widget, and every gesture on parent widgets
///   in the propagation chain.
/// - Emitting [signal`Gtk.Gesture::cancel`] on every gesture in widgets
///   underneath in the propagation chain.
/// - Stopping event propagation after the gesture group handles the event.
/// 
/// Note: if a sequence is set early to `GTK_EVENT_SEQUENCE_CLAIMED` on
/// `GDK_TOUCH_BEGIN`/`GDK_BUTTON_PRESS` (so those events are captured before
/// reaching the event widget, this implies `GTK_PHASE_CAPTURE`), one similar
/// event will emulated if the sequence changes to `GTK_EVENT_SEQUENCE_DENIED`.
/// This way event coherence is preserved before event propagation is unstopped
/// again.
/// 
/// Sequence states can't be changed freely.
/// See [method`Gtk.Gesture.set_sequence_state`] to know about the possible
/// lifetimes of a `GdkEventSequence`.
/// 
/// ## Touchpad gestures
/// 
/// On the platforms that support it, `GtkGesture` will handle transparently
/// touchpad gesture events. The only precautions users of `GtkGesture` should
/// do to enable this support are:
/// 
/// - If the gesture has `GTK_PHASE_NONE`, ensuring events of type
///   `GDK_TOUCHPAD_SWIPE` and `GDK_TOUCHPAD_PINCH` are handled by the `GtkGesture`
///
/// The `GestureRef` type acts as a lightweight Swift reference to an underlying `GtkGesture` instance.
/// It exposes methods that can operate on this data type through `GestureProtocol` conformance.
/// Use `GestureRef` only as an `unowned` reference to an existing `GtkGesture` instance.
///
public struct GestureRef: GestureProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkGesture` instance.
    /// For type-safe access, use the generated, typed pointer `gesture_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension GestureRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkGesture>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkGesture>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkGesture>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkGesture>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `GestureProtocol`
    @inlinable init<T: GestureProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: GestureProtocol>(_ other: T) -> GestureRef { GestureRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// `GtkGesture` is the base class for gesture recognition.
/// 
/// Although `GtkGesture` is quite generalized to serve as a base for
/// multi-touch gestures, it is suitable to implement single-touch and
/// pointer-based gestures (using the special `nil` `GdkEventSequence`
/// value for these).
/// 
/// The number of touches that a `GtkGesture` need to be recognized is
/// controlled by the [property`Gtk.Gesture:n-points`] property, if a
/// gesture is keeping track of less or more than that number of sequences,
/// it won't check whether the gesture is recognized.
/// 
/// As soon as the gesture has the expected number of touches, it will check
/// regularly if it is recognized, the criteria to consider a gesture as
/// "recognized" is left to `GtkGesture` subclasses.
/// 
/// A recognized gesture will then emit the following signals:
/// 
/// - [signal`Gtk.Gesture::begin`] when the gesture is recognized.
/// - [signal`Gtk.Gesture::update`], whenever an input event is processed.
/// - [signal`Gtk.Gesture::end`] when the gesture is no longer recognized.
/// 
/// ## Event propagation
/// 
/// In order to receive events, a gesture needs to set a propagation phase
/// through [method`Gtk.EventController.set_propagation_phase`].
/// 
/// In the capture phase, events are propagated from the toplevel down
/// to the target widget, and gestures that are attached to containers
/// above the widget get a chance to interact with the event before it
/// reaches the target.
/// 
/// In the bubble phase, events are propagated up from the target widget
/// to the toplevel, and gestures that are attached to containers above
/// the widget get a chance to interact with events that have not been
/// handled yet.
/// 
/// ## States of a sequence
/// 
/// Whenever input interaction happens, a single event may trigger a cascade
/// of `GtkGesture`s, both across the parents of the widget receiving the
/// event and in parallel within an individual widget. It is a responsibility
/// of the widgets using those gestures to set the state of touch sequences
/// accordingly in order to enable cooperation of gestures around the
/// `GdkEventSequence`s triggering those.
/// 
/// Within a widget, gestures can be grouped through [method`Gtk.Gesture.group`].
/// Grouped gestures synchronize the state of sequences, so calling
/// [method`Gtk.Gesture.set_sequence_state`] on one will effectively propagate
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
/// 
/// - Setting the same sequence to `GTK_EVENT_SEQUENCE_DENIED` on every other
///   gesture group within the widget, and every gesture on parent widgets
///   in the propagation chain.
/// - Emitting [signal`Gtk.Gesture::cancel`] on every gesture in widgets
///   underneath in the propagation chain.
/// - Stopping event propagation after the gesture group handles the event.
/// 
/// Note: if a sequence is set early to `GTK_EVENT_SEQUENCE_CLAIMED` on
/// `GDK_TOUCH_BEGIN`/`GDK_BUTTON_PRESS` (so those events are captured before
/// reaching the event widget, this implies `GTK_PHASE_CAPTURE`), one similar
/// event will emulated if the sequence changes to `GTK_EVENT_SEQUENCE_DENIED`.
/// This way event coherence is preserved before event propagation is unstopped
/// again.
/// 
/// Sequence states can't be changed freely.
/// See [method`Gtk.Gesture.set_sequence_state`] to know about the possible
/// lifetimes of a `GdkEventSequence`.
/// 
/// ## Touchpad gestures
/// 
/// On the platforms that support it, `GtkGesture` will handle transparently
/// touchpad gesture events. The only precautions users of `GtkGesture` should
/// do to enable this support are:
/// 
/// - If the gesture has `GTK_PHASE_NONE`, ensuring events of type
///   `GDK_TOUCHPAD_SWIPE` and `GDK_TOUCHPAD_PINCH` are handled by the `GtkGesture`
///
/// The `Gesture` type acts as a reference-counted owner of an underlying `GtkGesture` instance.
/// It provides the methods that can operate on this data type through `GestureProtocol` conformance.
/// Use `Gesture` as a strong reference or owner of a `GtkGesture` instance.
///
open class Gesture: EventController, GestureProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Gesture` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkGesture>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Gesture` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkGesture>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Gesture` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Gesture` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Gesture` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkGesture>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Gesture` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkGesture>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkGesture`.
    /// i.e., ownership is transferred to the `Gesture` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkGesture>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `GestureProtocol`
    /// Will retain `GtkGesture`.
    /// - Parameter other: an instance of a related type that implements `GestureProtocol`
    @inlinable public init<T: GestureProtocol>(gesture other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum GesturePropertyName: String, PropertyNameProtocol {
    /// The number of touch points that trigger
    /// recognition on this gesture.
    case nPoints = "n-points"
    /// The name for this controller, typically used for debugging purposes.
    case name = "name"
    /// The limit for which events this controller will handle.
    case propagationLimit = "propagation-limit"
    /// The propagation phase at which this controller will handle events.
    case propagationPhase = "propagation-phase"
    /// The widget receiving the `GdkEvents` that the controller will handle.
    case widget = "widget"
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
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: GesturePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
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

    /// Get the value of a Gesture property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: GesturePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Gesture property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: GesturePropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum GestureSignalName: String, SignalNameProtocol {
    /// Emitted when the gesture is recognized.
    /// 
    /// This means the number of touch sequences matches
    /// [property`Gtk.Gesture:n-points`].
    /// 
    /// Note: These conditions may also happen when an extra touch
    /// (eg. a third touch on a 2-touches gesture) is lifted, in that
    /// situation `sequence` won't pertain to the current set of active
    /// touches, so don't rely on this being true.
    case begin = "begin"
    /// Emitted whenever a sequence is cancelled.
    /// 
    /// This usually happens on active touches when
    /// [method`Gtk.EventController.reset`] is called on `gesture`
    /// (manually, due to grabs...), or the individual `sequence`
    /// was claimed by parent widgets' controllers (see
    /// [method`Gtk.Gesture.set_sequence_state`]).
    /// 
    /// `gesture` must forget everything about `sequence` as in
    /// response to this signal.
    case cancel = "cancel"
    /// Emitted when `gesture` either stopped recognizing the event
    /// sequences as something to be handled, or the number of touch
    /// sequences became higher or lower than [property`Gtk.Gesture:n-points`].
    /// 
    /// Note: `sequence` might not pertain to the group of sequences that
    /// were previously triggering recognition on `gesture` (ie. a just
    /// pressed touch sequence that exceeds [property`Gtk.Gesture:n-points`]).
    /// This situation may be detected by checking through
    /// [method`Gtk.Gesture.handles_sequence`].
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// Emitted whenever a sequence state changes.
    /// 
    /// See [method`Gtk.Gesture.set_sequence_state`] to know
    /// more about the expectable sequence lifetimes.
    case sequenceStateChanged = "sequence-state-changed"
    /// Emitted whenever an event is handled while the gesture is recognized.
    /// 
    /// `sequence` is guaranteed to pertain to the set of active touches.
    case update = "update"
    /// The number of touch points that trigger
    /// recognition on this gesture.
    case notifyNPoints = "notify::n-points"
    /// The name for this controller, typically used for debugging purposes.
    case notifyName = "notify::name"
    /// The limit for which events this controller will handle.
    case notifyPropagationLimit = "notify::propagation-limit"
    /// The propagation phase at which this controller will handle events.
    case notifyPropagationPhase = "notify::propagation-phase"
    /// The widget receiving the `GdkEvents` that the controller will handle.
    case notifyWidget = "notify::widget"
}

// MARK: Gesture signals
public extension GestureProtocol {
    /// Connect a Swift signal handler to the given, typed `GestureSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - handler: The Swift signal handler (function or callback) to invoke on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: GestureSignalName, flags f: ConnectFlags = ConnectFlags(0), handler h: @escaping SignalHandler) -> Int {
        connect(s, flags: f, handler: h)
    }
    
    
    /// Connect a C signal handler to the given, typed `GestureSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - signalHandler: The C function to be called on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: GestureSignalName, flags f: ConnectFlags = ConnectFlags(0), data userData: gpointer!, destroyData destructor: GClosureNotify? = nil, signalHandler h: @escaping GCallback) -> Int {
        connectSignal(s, flags: f, data: userData, destroyData: destructor, handler: h)
    }
    
    
    /// Emitted when the gesture is recognized.
    /// 
    /// This means the number of touch sequences matches
    /// [property`Gtk.Gesture:n-points`].
    /// 
    /// Note: These conditions may also happen when an extra touch
    /// (eg. a third touch on a 2-touches gesture) is lifted, in that
    /// situation `sequence` won't pertain to the current set of active
    /// touches, so don't rely on this being true.
    /// - Note: This represents the underlying `begin` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter sequence: the `GdkEventSequence` that made the gesture   to be recognized
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `begin` signal is emitted
    @discardableResult @inlinable func onBegin(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: GestureRef, _ sequence: Gdk.EventSequenceRef?) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<GestureRef, Gdk.EventSequenceRef?, Void>
        let cCallback: @convention(c) (gpointer, gpointer?, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(GestureRef(raw: unownedSelf), arg1.flatMap(Gdk.EventSequenceRef.init(raw:)))
            return output
        }
        return connect(
            signal: .begin,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `begin` signal for using the `connect(signal:)` methods
    static var beginSignal: GestureSignalName { .begin }
    
    /// Emitted whenever a sequence is cancelled.
    /// 
    /// This usually happens on active touches when
    /// [method`Gtk.EventController.reset`] is called on `gesture`
    /// (manually, due to grabs...), or the individual `sequence`
    /// was claimed by parent widgets' controllers (see
    /// [method`Gtk.Gesture.set_sequence_state`]).
    /// 
    /// `gesture` must forget everything about `sequence` as in
    /// response to this signal.
    /// - Note: This represents the underlying `cancel` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter sequence: the `GdkEventSequence` that was cancelled
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `cancel` signal is emitted
    @discardableResult @inlinable func onCancel(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: GestureRef, _ sequence: Gdk.EventSequenceRef?) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<GestureRef, Gdk.EventSequenceRef?, Void>
        let cCallback: @convention(c) (gpointer, gpointer?, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(GestureRef(raw: unownedSelf), arg1.flatMap(Gdk.EventSequenceRef.init(raw:)))
            return output
        }
        return connect(
            signal: .cancel,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `cancel` signal for using the `connect(signal:)` methods
    static var cancelSignal: GestureSignalName { .cancel }
    
    /// Emitted when `gesture` either stopped recognizing the event
    /// sequences as something to be handled, or the number of touch
    /// sequences became higher or lower than [property`Gtk.Gesture:n-points`].
    /// 
    /// Note: `sequence` might not pertain to the group of sequences that
    /// were previously triggering recognition on `gesture` (ie. a just
    /// pressed touch sequence that exceeds [property`Gtk.Gesture:n-points`]).
    /// This situation may be detected by checking through
    /// [method`Gtk.Gesture.handles_sequence`].
    /// - Note: This represents the underlying `end` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter sequence: the `GdkEventSequence` that made gesture   recognition to finish
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `end` signal is emitted
    @discardableResult @inlinable func onEnd(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: GestureRef, _ sequence: Gdk.EventSequenceRef?) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<GestureRef, Gdk.EventSequenceRef?, Void>
        let cCallback: @convention(c) (gpointer, gpointer?, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(GestureRef(raw: unownedSelf), arg1.flatMap(Gdk.EventSequenceRef.init(raw:)))
            return output
        }
        return connect(
            signal: .end,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `end` signal for using the `connect(signal:)` methods
    static var endSignal: GestureSignalName { .end }
    
    /// Emitted whenever a sequence state changes.
    /// 
    /// See [method`Gtk.Gesture.set_sequence_state`] to know
    /// more about the expectable sequence lifetimes.
    /// - Note: This represents the underlying `sequence-state-changed` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter sequence: the `GdkEventSequence` that was cancelled
    /// - Parameter state: the new sequence state
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `sequenceStateChanged` signal is emitted
    @discardableResult @inlinable func onSequenceStateChanged(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: GestureRef, _ sequence: Gdk.EventSequenceRef?, _ state: EventSequenceState) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder3<GestureRef, Gdk.EventSequenceRef?, EventSequenceState, Void>
        let cCallback: @convention(c) (gpointer, gpointer?, UInt32, gpointer) -> Void = { unownedSelf, arg1, arg2, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(GestureRef(raw: unownedSelf), arg1.flatMap(Gdk.EventSequenceRef.init(raw:)), EventSequenceState(arg2))
            return output
        }
        return connect(
            signal: .sequenceStateChanged,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `sequence-state-changed` signal for using the `connect(signal:)` methods
    static var sequenceStateChangedSignal: GestureSignalName { .sequenceStateChanged }
    
    /// Emitted whenever an event is handled while the gesture is recognized.
    /// 
    /// `sequence` is guaranteed to pertain to the set of active touches.
    /// - Note: This represents the underlying `update` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter sequence: the `GdkEventSequence` that was updated
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `update` signal is emitted
    @discardableResult @inlinable func onUpdate(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: GestureRef, _ sequence: Gdk.EventSequenceRef?) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<GestureRef, Gdk.EventSequenceRef?, Void>
        let cCallback: @convention(c) (gpointer, gpointer?, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(GestureRef(raw: unownedSelf), arg1.flatMap(Gdk.EventSequenceRef.init(raw:)))
            return output
        }
        return connect(
            signal: .update,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `update` signal for using the `connect(signal:)` methods
    static var updateSignal: GestureSignalName { .update }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::n-points` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyNPoints` signal is emitted
    @discardableResult @inlinable func onNotifyNPoints(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: GestureRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<GestureRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(GestureRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyNPoints,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::n-points` signal for using the `connect(signal:)` methods
    static var notifyNPointsSignal: GestureSignalName { .notifyNPoints }
    
}

// MARK: Gesture Class: GestureProtocol extension (methods and fields)
public extension GestureProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkGesture` instance.
    @inlinable var gesture_ptr: UnsafeMutablePointer<GtkGesture>! { return ptr?.assumingMemoryBound(to: GtkGesture.self) }

    /// If there are touch sequences being currently handled by `gesture`,
    /// returns `true` and fills in `rect` with the bounding box containing
    /// all active touches.
    /// 
    /// Otherwise, `false` will be returned.
    /// 
    /// Note: This function will yield unexpected results on touchpad
    /// gestures. Since there is no correlation between physical and
    /// pixel distances, these will look as if constrained in an
    /// infinitely small area, `rect` width and height will thus be 0
    /// regardless of the number of touchpoints.
    @inlinable func getBoundingBox<RectangleT: Gdk.RectangleProtocol>(rect: RectangleT) -> Bool {
        let rv = ((gtk_gesture_get_bounding_box(gesture_ptr, rect.rectangle_ptr)) != 0)
        return rv
    }

    /// If there are touch sequences being currently handled by `gesture`,
    /// returns `true` and fills in `x` and `y` with the center of the bounding
    /// box containing all active touches.
    /// 
    /// Otherwise, `false` will be returned.
    @inlinable func getBoundingBoxCenter(x: UnsafeMutablePointer<CDouble>!, y: UnsafeMutablePointer<CDouble>!) -> Bool {
        let rv = ((gtk_gesture_get_bounding_box_center(gesture_ptr, x, y)) != 0)
        return rv
    }

    /// Returns the logical `GdkDevice` that is currently operating
    /// on `gesture`.
    /// 
    /// This returns `nil` if the gesture is not being interacted.
    @inlinable func getDevice() -> Gdk.DeviceRef! {
        let rv = Gdk.DeviceRef(gtk_gesture_get_device(gesture_ptr))
        return rv
    }

    /// Returns all gestures in the group of `gesture`
    @inlinable func getGroup() -> GLib.ListRef! {
        let rv = GLib.ListRef(gtk_gesture_get_group(gesture_ptr))
        return rv
    }

    /// Returns the last event that was processed for `sequence`.
    /// 
    /// Note that the returned pointer is only valid as long as the
    /// `sequence` is still interpreted by the `gesture`. If in doubt,
    /// you should make a copy of the event.
    @inlinable func getLastEvent(sequence: Gdk.EventSequenceRef? = nil) -> Gdk.EventRef! {
        let rv = Gdk.EventRef(gtk_gesture_get_last_event(gesture_ptr, sequence?.event_sequence_ptr))
        return rv
    }
    /// Returns the last event that was processed for `sequence`.
    /// 
    /// Note that the returned pointer is only valid as long as the
    /// `sequence` is still interpreted by the `gesture`. If in doubt,
    /// you should make a copy of the event.
    @inlinable func getLastEvent<EventSequenceT: Gdk.EventSequenceProtocol>(sequence: EventSequenceT?) -> Gdk.EventRef! {
        let rv = Gdk.EventRef(gtk_gesture_get_last_event(gesture_ptr, sequence?.event_sequence_ptr))
        return rv
    }

    /// Returns the `GdkEventSequence` that was last updated on `gesture`.
    @inlinable func getLastUpdatedSequence() -> Gdk.EventSequenceRef! {
        let rv = Gdk.EventSequenceRef(gtk_gesture_get_last_updated_sequence(gesture_ptr))
        return rv
    }

    /// If `sequence` is currently being interpreted by `gesture`,
    /// returns `true` and fills in `x` and `y` with the last coordinates
    /// stored for that event sequence.
    /// 
    /// The coordinates are always relative to the widget allocation.
    @inlinable func getPoint(sequence: Gdk.EventSequenceRef? = nil, x: UnsafeMutablePointer<CDouble>! = nil, y: UnsafeMutablePointer<CDouble>! = nil) -> Bool {
        let rv = ((gtk_gesture_get_point(gesture_ptr, sequence?.event_sequence_ptr, x, y)) != 0)
        return rv
    }
    /// If `sequence` is currently being interpreted by `gesture`,
    /// returns `true` and fills in `x` and `y` with the last coordinates
    /// stored for that event sequence.
    /// 
    /// The coordinates are always relative to the widget allocation.
    @inlinable func getPoint<EventSequenceT: Gdk.EventSequenceProtocol>(sequence: EventSequenceT?, x: UnsafeMutablePointer<CDouble>! = nil, y: UnsafeMutablePointer<CDouble>! = nil) -> Bool {
        let rv = ((gtk_gesture_get_point(gesture_ptr, sequence?.event_sequence_ptr, x, y)) != 0)
        return rv
    }

    /// Returns the `sequence` state, as seen by `gesture`.
    @inlinable func getSequenceState<EventSequenceT: Gdk.EventSequenceProtocol>(sequence: EventSequenceT) -> GtkEventSequenceState {
        let rv = gtk_gesture_get_sequence_state(gesture_ptr, sequence.event_sequence_ptr)
        return rv
    }

    /// Returns the list of `GdkEventSequences` currently being interpreted
    /// by `gesture`.
    @inlinable func getSequences() -> GLib.ListRef! {
        let rv = GLib.ListRef(gtk_gesture_get_sequences(gesture_ptr))
        return rv
    }

    /// Adds `gesture` to the same group than `group_gesture`.
    /// 
    /// Gestures are by default isolated in their own groups.
    /// 
    /// Both gestures must have been added to the same widget before
    /// they can be grouped.
    /// 
    /// When gestures are grouped, the state of `GdkEventSequences`
    /// is kept in sync for all of those, so calling
    /// [method`Gtk.Gesture.set_sequence_state`], on one will transfer
    /// the same value to the others.
    /// 
    /// Groups also perform an "implicit grabbing" of sequences, if a
    /// `GdkEventSequence` state is set to `GTK_EVENT_SEQUENCE_CLAIMED`
    /// on one group, every other gesture group attached to the same
    /// `GtkWidget` will switch the state for that sequence to
    /// `GTK_EVENT_SEQUENCE_DENIED`.
    @inlinable func getGroup<GestureT: GestureProtocol>(gesture: GestureT) {
        gtk_gesture_group(gesture_ptr, gesture.gesture_ptr)
    
    }

    /// Returns `true` if `gesture` is currently handling events
    /// corresponding to `sequence`.
    @inlinable func handles(sequence: Gdk.EventSequenceRef? = nil) -> Bool {
        let rv = ((gtk_gesture_handles_sequence(gesture_ptr, sequence?.event_sequence_ptr)) != 0)
        return rv
    }
    /// Returns `true` if `gesture` is currently handling events
    /// corresponding to `sequence`.
    @inlinable func handles<EventSequenceT: Gdk.EventSequenceProtocol>(sequence: EventSequenceT?) -> Bool {
        let rv = ((gtk_gesture_handles_sequence(gesture_ptr, sequence?.event_sequence_ptr)) != 0)
        return rv
    }

    /// Returns `true` if both gestures pertain to the same group.
    @inlinable func isGroupedWith<GestureT: GestureProtocol>(other: GestureT) -> Bool {
        let rv = ((gtk_gesture_is_grouped_with(gesture_ptr, other.gesture_ptr)) != 0)
        return rv
    }

    /// Sets the state of `sequence` in `gesture`.
    /// 
    /// Sequences start in state `GTK_EVENT_SEQUENCE_NONE`, and whenever
    /// they change state, they can never go back to that state. Likewise,
    /// sequences in state `GTK_EVENT_SEQUENCE_DENIED` cannot turn back to
    /// a not denied state. With these rules, the lifetime of an event
    /// sequence is constrained to the next four:
    /// 
    /// * None
    /// * None → Denied
    /// * None → Claimed
    /// * None → Claimed → Denied
    /// 
    /// Note: Due to event handling ordering, it may be unsafe to set the
    /// state on another gesture within a [signal`Gtk.Gesture::begin`] signal
    /// handler, as the callback might be executed before the other gesture
    /// knows about the sequence. A safe way to perform this could be:
    /// 
    /// ```c
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
    @inlinable func setSequenceState<EventSequenceT: Gdk.EventSequenceProtocol>(sequence: EventSequenceT, state: GtkEventSequenceState) -> Bool {
        let rv = ((gtk_gesture_set_sequence_state(gesture_ptr, sequence.event_sequence_ptr, state)) != 0)
        return rv
    }

    /// Sets the state of all sequences that `gesture` is currently
    /// interacting with.
    /// 
    /// See [method`Gtk.Gesture.set_sequence_state`] for more details
    /// on sequence states.
    @inlinable func set(state: GtkEventSequenceState) -> Bool {
        let rv = ((gtk_gesture_set_state(gesture_ptr, state)) != 0)
        return rv
    }

    /// Separates `gesture` into an isolated group.
    @inlinable func ungroup() {
        gtk_gesture_ungroup(gesture_ptr)
    
    }
    /// Returns the logical `GdkDevice` that is currently operating
    /// on `gesture`.
    /// 
    /// This returns `nil` if the gesture is not being interacted.
    @inlinable var device: Gdk.DeviceRef! {
        /// Returns the logical `GdkDevice` that is currently operating
        /// on `gesture`.
        /// 
        /// This returns `nil` if the gesture is not being interacted.
        get {
            let rv = Gdk.DeviceRef(gtk_gesture_get_device(gesture_ptr))
            return rv
        }
    }

    /// Returns all gestures in the group of `gesture`
    @inlinable var group: GLib.ListRef! {
        /// Returns all gestures in the group of `gesture`
        get {
            let rv = GLib.ListRef(gtk_gesture_get_group(gesture_ptr))
            return rv
        }
    }

    /// Returns `true` if the gesture is currently active.
    /// 
    /// A gesture is active while there are touch sequences
    /// interacting with it.
    @inlinable var isActive: Bool {
        /// Returns `true` if the gesture is currently active.
        /// 
        /// A gesture is active while there are touch sequences
        /// interacting with it.
        get {
            let rv = ((gtk_gesture_is_active(gesture_ptr)) != 0)
            return rv
        }
    }

    /// Returns `true` if the gesture is currently recognized.
    /// 
    /// A gesture is recognized if there are as many interacting
    /// touch sequences as required by `gesture`.
    @inlinable var isRecognized: Bool {
        /// Returns `true` if the gesture is currently recognized.
        /// 
        /// A gesture is recognized if there are as many interacting
        /// touch sequences as required by `gesture`.
        get {
            let rv = ((gtk_gesture_is_recognized(gesture_ptr)) != 0)
            return rv
        }
    }

    /// Returns the `GdkEventSequence` that was last updated on `gesture`.
    @inlinable var lastUpdatedSequence: Gdk.EventSequenceRef! {
        /// Returns the `GdkEventSequence` that was last updated on `gesture`.
        get {
            let rv = Gdk.EventSequenceRef(gtk_gesture_get_last_updated_sequence(gesture_ptr))
            return rv
        }
    }

    /// Returns the list of `GdkEventSequences` currently being interpreted
    /// by `gesture`.
    @inlinable var sequences: GLib.ListRef! {
        /// Returns the list of `GdkEventSequences` currently being interpreted
        /// by `gesture`.
        get {
            let rv = GLib.ListRef(gtk_gesture_get_sequences(gesture_ptr))
            return rv
        }
    }


}



// MARK: - GestureClick Class

/// `GtkGestureClick` is a `GtkGesture` implementation for clicks.
/// 
/// It is able to recognize multiple clicks on a nearby zone, which
/// can be listened for through the [signal`Gtk.GestureClick::pressed`]
/// signal. Whenever time or distance between clicks exceed the GTK
/// defaults, [signal`Gtk.GestureClick::stopped`] is emitted, and the
/// click counter is reset.
///
/// The `GestureClickProtocol` protocol exposes the methods and properties of an underlying `GtkGestureClick` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `GestureClick`.
/// Alternatively, use `GestureClickRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol GestureClickProtocol: GestureSingleProtocol {
        /// Untyped pointer to the underlying `GtkGestureClick` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkGestureClick` instance.
    var gesture_click_ptr: UnsafeMutablePointer<GtkGestureClick>! { get }

    /// Required Initialiser for types conforming to `GestureClickProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GtkGestureClick` is a `GtkGesture` implementation for clicks.
/// 
/// It is able to recognize multiple clicks on a nearby zone, which
/// can be listened for through the [signal`Gtk.GestureClick::pressed`]
/// signal. Whenever time or distance between clicks exceed the GTK
/// defaults, [signal`Gtk.GestureClick::stopped`] is emitted, and the
/// click counter is reset.
///
/// The `GestureClickRef` type acts as a lightweight Swift reference to an underlying `GtkGestureClick` instance.
/// It exposes methods that can operate on this data type through `GestureClickProtocol` conformance.
/// Use `GestureClickRef` only as an `unowned` reference to an existing `GtkGestureClick` instance.
///
public struct GestureClickRef: GestureClickProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkGestureClick` instance.
    /// For type-safe access, use the generated, typed pointer `gesture_click_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension GestureClickRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkGestureClick>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkGestureClick>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkGestureClick>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkGestureClick>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `GestureClickProtocol`
    @inlinable init<T: GestureClickProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: GestureClickProtocol>(_ other: T) -> GestureClickRef { GestureClickRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureClickProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureClickProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureClickProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureClickProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureClickProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Returns a newly created `GtkGesture` that recognizes
    /// single and multiple presses.
    @inlinable init() {
        let rv = gtk_gesture_click_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// `GtkGestureClick` is a `GtkGesture` implementation for clicks.
/// 
/// It is able to recognize multiple clicks on a nearby zone, which
/// can be listened for through the [signal`Gtk.GestureClick::pressed`]
/// signal. Whenever time or distance between clicks exceed the GTK
/// defaults, [signal`Gtk.GestureClick::stopped`] is emitted, and the
/// click counter is reset.
///
/// The `GestureClick` type acts as a reference-counted owner of an underlying `GtkGestureClick` instance.
/// It provides the methods that can operate on this data type through `GestureClickProtocol` conformance.
/// Use `GestureClick` as a strong reference or owner of a `GtkGestureClick` instance.
///
open class GestureClick: GestureSingle, GestureClickProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GestureClick` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkGestureClick>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GestureClick` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkGestureClick>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GestureClick` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GestureClick` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GestureClick` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkGestureClick>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GestureClick` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkGestureClick>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkGestureClick`.
    /// i.e., ownership is transferred to the `GestureClick` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkGestureClick>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `GestureClickProtocol`
    /// Will retain `GtkGestureClick`.
    /// - Parameter other: an instance of a related type that implements `GestureClickProtocol`
    @inlinable public init<T: GestureClickProtocol>(gestureClick other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureClickProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureClickProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureClickProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureClickProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureClickProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureClickProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureClickProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureClickProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Returns a newly created `GtkGesture` that recognizes
    /// single and multiple presses.
    @inlinable public init() {
        let rv = gtk_gesture_click_new()
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum GestureClickPropertyName: String, PropertyNameProtocol {
    /// Mouse button number to listen to, or 0 to listen for any button.
    case button = "button"
    /// Whether the gesture is exclusive.
    /// 
    /// Exclusive gestures only listen to pointer and pointer emulated events.
    case exclusive = "exclusive"
    /// The number of touch points that trigger
    /// recognition on this gesture.
    case nPoints = "n-points"
    /// The name for this controller, typically used for debugging purposes.
    case name = "name"
    /// The limit for which events this controller will handle.
    case propagationLimit = "propagation-limit"
    /// The propagation phase at which this controller will handle events.
    case propagationPhase = "propagation-phase"
    /// Whether the gesture handles only touch events.
    case touchOnly = "touch-only"
    /// The widget receiving the `GdkEvents` that the controller will handle.
    case widget = "widget"
}

public extension GestureClickProtocol {
    /// Bind a `GestureClickPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: GestureClickPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
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

    /// Get the value of a GestureClick property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: GestureClickPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a GestureClick property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: GestureClickPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum GestureClickSignalName: String, SignalNameProtocol {
    /// Emitted when the gesture is recognized.
    /// 
    /// This means the number of touch sequences matches
    /// [property`Gtk.Gesture:n-points`].
    /// 
    /// Note: These conditions may also happen when an extra touch
    /// (eg. a third touch on a 2-touches gesture) is lifted, in that
    /// situation `sequence` won't pertain to the current set of active
    /// touches, so don't rely on this being true.
    case begin = "begin"
    /// Emitted whenever a sequence is cancelled.
    /// 
    /// This usually happens on active touches when
    /// [method`Gtk.EventController.reset`] is called on `gesture`
    /// (manually, due to grabs...), or the individual `sequence`
    /// was claimed by parent widgets' controllers (see
    /// [method`Gtk.Gesture.set_sequence_state`]).
    /// 
    /// `gesture` must forget everything about `sequence` as in
    /// response to this signal.
    case cancel = "cancel"
    /// Emitted when `gesture` either stopped recognizing the event
    /// sequences as something to be handled, or the number of touch
    /// sequences became higher or lower than [property`Gtk.Gesture:n-points`].
    /// 
    /// Note: `sequence` might not pertain to the group of sequences that
    /// were previously triggering recognition on `gesture` (ie. a just
    /// pressed touch sequence that exceeds [property`Gtk.Gesture:n-points`]).
    /// This situation may be detected by checking through
    /// [method`Gtk.Gesture.handles_sequence`].
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// Emitted whenever a button or touch press happens.
    case pressed = "pressed"
    /// Emitted when a button or touch is released.
    /// 
    /// `n_press` will report the number of press that is paired to
    /// this event, note that [signal`Gtk.GestureClick::stopped`] may
    /// have been emitted between the press and its release, `n_press`
    /// will only start over at the next press.
    case released = "released"
    /// Emitted whenever a sequence state changes.
    /// 
    /// See [method`Gtk.Gesture.set_sequence_state`] to know
    /// more about the expectable sequence lifetimes.
    case sequenceStateChanged = "sequence-state-changed"
    /// Emitted whenever any time/distance threshold has been exceeded.
    case stopped = "stopped"
    /// Emitted whenever the gesture receives a release
    /// event that had no previous corresponding press.
    /// 
    /// Due to implicit grabs, this can only happen on situations
    /// where input is grabbed elsewhere mid-press or the pressed
    /// widget voluntarily relinquishes its implicit grab.
    case unpairedRelease = "unpaired-release"
    /// Emitted whenever an event is handled while the gesture is recognized.
    /// 
    /// `sequence` is guaranteed to pertain to the set of active touches.
    case update = "update"
    /// Mouse button number to listen to, or 0 to listen for any button.
    case notifyButton = "notify::button"
    /// Whether the gesture is exclusive.
    /// 
    /// Exclusive gestures only listen to pointer and pointer emulated events.
    case notifyExclusive = "notify::exclusive"
    /// The number of touch points that trigger
    /// recognition on this gesture.
    case notifyNPoints = "notify::n-points"
    /// The name for this controller, typically used for debugging purposes.
    case notifyName = "notify::name"
    /// The limit for which events this controller will handle.
    case notifyPropagationLimit = "notify::propagation-limit"
    /// The propagation phase at which this controller will handle events.
    case notifyPropagationPhase = "notify::propagation-phase"
    /// Whether the gesture handles only touch events.
    case notifyTouchOnly = "notify::touch-only"
    /// The widget receiving the `GdkEvents` that the controller will handle.
    case notifyWidget = "notify::widget"
}

// MARK: GestureClick signals
public extension GestureClickProtocol {
    /// Connect a Swift signal handler to the given, typed `GestureClickSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - handler: The Swift signal handler (function or callback) to invoke on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: GestureClickSignalName, flags f: ConnectFlags = ConnectFlags(0), handler h: @escaping SignalHandler) -> Int {
        connect(s, flags: f, handler: h)
    }
    
    
    /// Connect a C signal handler to the given, typed `GestureClickSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - signalHandler: The C function to be called on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: GestureClickSignalName, flags f: ConnectFlags = ConnectFlags(0), data userData: gpointer!, destroyData destructor: GClosureNotify? = nil, signalHandler h: @escaping GCallback) -> Int {
        connectSignal(s, flags: f, data: userData, destroyData: destructor, handler: h)
    }
    
    
    /// Emitted whenever a button or touch press happens.
    /// - Note: This represents the underlying `pressed` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter nPress: how many touch/button presses happened with this one
    /// - Parameter x: The X coordinate, in widget allocation coordinates
    /// - Parameter y: The Y coordinate, in widget allocation coordinates
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `pressed` signal is emitted
    @discardableResult @inlinable func onPressed(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: GestureClickRef, _ nPress: Int, _ x: Double, _ y: Double) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder4<GestureClickRef, Int, Double, Double, Void>
        let cCallback: @convention(c) (gpointer, gint, gdouble, gdouble, gpointer) -> Void = { unownedSelf, arg1, arg2, arg3, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(GestureClickRef(raw: unownedSelf), Int(arg1), Double(arg2), Double(arg3))
            return output
        }
        return connect(
            signal: .pressed,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `pressed` signal for using the `connect(signal:)` methods
    static var pressedSignal: GestureClickSignalName { .pressed }
    
    /// Emitted when a button or touch is released.
    /// 
    /// `n_press` will report the number of press that is paired to
    /// this event, note that [signal`Gtk.GestureClick::stopped`] may
    /// have been emitted between the press and its release, `n_press`
    /// will only start over at the next press.
    /// - Note: This represents the underlying `released` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter nPress: number of press that is paired with this release
    /// - Parameter x: The X coordinate, in widget allocation coordinates
    /// - Parameter y: The Y coordinate, in widget allocation coordinates
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `released` signal is emitted
    @discardableResult @inlinable func onReleased(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: GestureClickRef, _ nPress: Int, _ x: Double, _ y: Double) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder4<GestureClickRef, Int, Double, Double, Void>
        let cCallback: @convention(c) (gpointer, gint, gdouble, gdouble, gpointer) -> Void = { unownedSelf, arg1, arg2, arg3, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(GestureClickRef(raw: unownedSelf), Int(arg1), Double(arg2), Double(arg3))
            return output
        }
        return connect(
            signal: .released,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `released` signal for using the `connect(signal:)` methods
    static var releasedSignal: GestureClickSignalName { .released }
    
    /// Emitted whenever any time/distance threshold has been exceeded.
    /// - Note: This represents the underlying `stopped` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `stopped` signal is emitted
    @discardableResult @inlinable func onStopped(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: GestureClickRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<GestureClickRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(GestureClickRef(raw: unownedSelf))
            return output
        }
        return connect(
            signal: .stopped,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `stopped` signal for using the `connect(signal:)` methods
    static var stoppedSignal: GestureClickSignalName { .stopped }
    
    /// Emitted whenever the gesture receives a release
    /// event that had no previous corresponding press.
    /// 
    /// Due to implicit grabs, this can only happen on situations
    /// where input is grabbed elsewhere mid-press or the pressed
    /// widget voluntarily relinquishes its implicit grab.
    /// - Note: This represents the underlying `unpaired-release` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter x: X coordinate of the event
    /// - Parameter y: Y coordinate of the event
    /// - Parameter button: Button being released
    /// - Parameter sequence: Sequence being released
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `unpairedRelease` signal is emitted
    @discardableResult @inlinable func onUnpairedRelease(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: GestureClickRef, _ x: Double, _ y: Double, _ button: UInt, _ sequence: Gdk.EventSequenceRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder5<GestureClickRef, Double, Double, UInt, Gdk.EventSequenceRef, Void>
        let cCallback: @convention(c) (gpointer, gdouble, gdouble, guint, gpointer, gpointer) -> Void = { unownedSelf, arg1, arg2, arg3, arg4, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(GestureClickRef(raw: unownedSelf), Double(arg1), Double(arg2), UInt(arg3), Gdk.EventSequenceRef(raw: arg4))
            return output
        }
        return connect(
            signal: .unpairedRelease,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `unpaired-release` signal for using the `connect(signal:)` methods
    static var unpairedReleaseSignal: GestureClickSignalName { .unpairedRelease }
    
    
}

// MARK: GestureClick Class: GestureClickProtocol extension (methods and fields)
public extension GestureClickProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkGestureClick` instance.
    @inlinable var gesture_click_ptr: UnsafeMutablePointer<GtkGestureClick>! { return ptr?.assumingMemoryBound(to: GtkGestureClick.self) }



}



// MARK: - GestureDrag Class

/// `GtkGestureDrag` is a `GtkGesture` implementation for drags.
/// 
/// The drag operation itself can be tracked throughout the
/// [signal`Gtk.GestureDrag::drag-begin`],
/// [signal`Gtk.GestureDrag::drag-update`] and
/// [signal`Gtk.GestureDrag::drag-end`] signals, and the relevant
/// coordinates can be extracted through
/// [method`Gtk.GestureDrag.get_offset`] and
/// [method`Gtk.GestureDrag.get_start_point`].
///
/// The `GestureDragProtocol` protocol exposes the methods and properties of an underlying `GtkGestureDrag` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `GestureDrag`.
/// Alternatively, use `GestureDragRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol GestureDragProtocol: GestureSingleProtocol {
        /// Untyped pointer to the underlying `GtkGestureDrag` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkGestureDrag` instance.
    var gesture_drag_ptr: UnsafeMutablePointer<GtkGestureDrag>! { get }

    /// Required Initialiser for types conforming to `GestureDragProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GtkGestureDrag` is a `GtkGesture` implementation for drags.
/// 
/// The drag operation itself can be tracked throughout the
/// [signal`Gtk.GestureDrag::drag-begin`],
/// [signal`Gtk.GestureDrag::drag-update`] and
/// [signal`Gtk.GestureDrag::drag-end`] signals, and the relevant
/// coordinates can be extracted through
/// [method`Gtk.GestureDrag.get_offset`] and
/// [method`Gtk.GestureDrag.get_start_point`].
///
/// The `GestureDragRef` type acts as a lightweight Swift reference to an underlying `GtkGestureDrag` instance.
/// It exposes methods that can operate on this data type through `GestureDragProtocol` conformance.
/// Use `GestureDragRef` only as an `unowned` reference to an existing `GtkGestureDrag` instance.
///
public struct GestureDragRef: GestureDragProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkGestureDrag` instance.
    /// For type-safe access, use the generated, typed pointer `gesture_drag_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension GestureDragRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkGestureDrag>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkGestureDrag>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkGestureDrag>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkGestureDrag>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `GestureDragProtocol`
    @inlinable init<T: GestureDragProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: GestureDragProtocol>(_ other: T) -> GestureDragRef { GestureDragRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureDragProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureDragProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureDragProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureDragProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureDragProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Returns a newly created `GtkGesture` that recognizes drags.
    @inlinable init() {
        let rv = gtk_gesture_drag_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// `GtkGestureDrag` is a `GtkGesture` implementation for drags.
/// 
/// The drag operation itself can be tracked throughout the
/// [signal`Gtk.GestureDrag::drag-begin`],
/// [signal`Gtk.GestureDrag::drag-update`] and
/// [signal`Gtk.GestureDrag::drag-end`] signals, and the relevant
/// coordinates can be extracted through
/// [method`Gtk.GestureDrag.get_offset`] and
/// [method`Gtk.GestureDrag.get_start_point`].
///
/// The `GestureDrag` type acts as a reference-counted owner of an underlying `GtkGestureDrag` instance.
/// It provides the methods that can operate on this data type through `GestureDragProtocol` conformance.
/// Use `GestureDrag` as a strong reference or owner of a `GtkGestureDrag` instance.
///
open class GestureDrag: GestureSingle, GestureDragProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GestureDrag` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkGestureDrag>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GestureDrag` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkGestureDrag>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GestureDrag` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GestureDrag` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GestureDrag` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkGestureDrag>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GestureDrag` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkGestureDrag>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkGestureDrag`.
    /// i.e., ownership is transferred to the `GestureDrag` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkGestureDrag>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `GestureDragProtocol`
    /// Will retain `GtkGestureDrag`.
    /// - Parameter other: an instance of a related type that implements `GestureDragProtocol`
    @inlinable public init<T: GestureDragProtocol>(gestureDrag other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureDragProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureDragProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureDragProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureDragProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureDragProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureDragProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureDragProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureDragProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Returns a newly created `GtkGesture` that recognizes drags.
    @inlinable public init() {
        let rv = gtk_gesture_drag_new()
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum GestureDragPropertyName: String, PropertyNameProtocol {
    /// Mouse button number to listen to, or 0 to listen for any button.
    case button = "button"
    /// Whether the gesture is exclusive.
    /// 
    /// Exclusive gestures only listen to pointer and pointer emulated events.
    case exclusive = "exclusive"
    /// The number of touch points that trigger
    /// recognition on this gesture.
    case nPoints = "n-points"
    /// The name for this controller, typically used for debugging purposes.
    case name = "name"
    /// The limit for which events this controller will handle.
    case propagationLimit = "propagation-limit"
    /// The propagation phase at which this controller will handle events.
    case propagationPhase = "propagation-phase"
    /// Whether the gesture handles only touch events.
    case touchOnly = "touch-only"
    /// The widget receiving the `GdkEvents` that the controller will handle.
    case widget = "widget"
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
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: GestureDragPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
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

    /// Get the value of a GestureDrag property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: GestureDragPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a GestureDrag property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: GestureDragPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum GestureDragSignalName: String, SignalNameProtocol {
    /// Emitted when the gesture is recognized.
    /// 
    /// This means the number of touch sequences matches
    /// [property`Gtk.Gesture:n-points`].
    /// 
    /// Note: These conditions may also happen when an extra touch
    /// (eg. a third touch on a 2-touches gesture) is lifted, in that
    /// situation `sequence` won't pertain to the current set of active
    /// touches, so don't rely on this being true.
    case begin = "begin"
    /// Emitted whenever a sequence is cancelled.
    /// 
    /// This usually happens on active touches when
    /// [method`Gtk.EventController.reset`] is called on `gesture`
    /// (manually, due to grabs...), or the individual `sequence`
    /// was claimed by parent widgets' controllers (see
    /// [method`Gtk.Gesture.set_sequence_state`]).
    /// 
    /// `gesture` must forget everything about `sequence` as in
    /// response to this signal.
    case cancel = "cancel"
    /// Emitted whenever dragging starts.
    case dragBegin = "drag-begin"
    /// Emitted whenever the dragging is finished.
    case dragEnd = "drag-end"
    /// Emitted whenever the dragging point moves.
    case dragUpdate = "drag-update"
    /// Emitted when `gesture` either stopped recognizing the event
    /// sequences as something to be handled, or the number of touch
    /// sequences became higher or lower than [property`Gtk.Gesture:n-points`].
    /// 
    /// Note: `sequence` might not pertain to the group of sequences that
    /// were previously triggering recognition on `gesture` (ie. a just
    /// pressed touch sequence that exceeds [property`Gtk.Gesture:n-points`]).
    /// This situation may be detected by checking through
    /// [method`Gtk.Gesture.handles_sequence`].
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// Emitted whenever a sequence state changes.
    /// 
    /// See [method`Gtk.Gesture.set_sequence_state`] to know
    /// more about the expectable sequence lifetimes.
    case sequenceStateChanged = "sequence-state-changed"
    /// Emitted whenever an event is handled while the gesture is recognized.
    /// 
    /// `sequence` is guaranteed to pertain to the set of active touches.
    case update = "update"
    /// Mouse button number to listen to, or 0 to listen for any button.
    case notifyButton = "notify::button"
    /// Whether the gesture is exclusive.
    /// 
    /// Exclusive gestures only listen to pointer and pointer emulated events.
    case notifyExclusive = "notify::exclusive"
    /// The number of touch points that trigger
    /// recognition on this gesture.
    case notifyNPoints = "notify::n-points"
    /// The name for this controller, typically used for debugging purposes.
    case notifyName = "notify::name"
    /// The limit for which events this controller will handle.
    case notifyPropagationLimit = "notify::propagation-limit"
    /// The propagation phase at which this controller will handle events.
    case notifyPropagationPhase = "notify::propagation-phase"
    /// Whether the gesture handles only touch events.
    case notifyTouchOnly = "notify::touch-only"
    /// The widget receiving the `GdkEvents` that the controller will handle.
    case notifyWidget = "notify::widget"
}

// MARK: GestureDrag signals
public extension GestureDragProtocol {
    /// Connect a Swift signal handler to the given, typed `GestureDragSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - handler: The Swift signal handler (function or callback) to invoke on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: GestureDragSignalName, flags f: ConnectFlags = ConnectFlags(0), handler h: @escaping SignalHandler) -> Int {
        connect(s, flags: f, handler: h)
    }
    
    
    /// Connect a C signal handler to the given, typed `GestureDragSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - signalHandler: The C function to be called on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: GestureDragSignalName, flags f: ConnectFlags = ConnectFlags(0), data userData: gpointer!, destroyData destructor: GClosureNotify? = nil, signalHandler h: @escaping GCallback) -> Int {
        connectSignal(s, flags: f, data: userData, destroyData: destructor, handler: h)
    }
    
    
    /// Emitted whenever dragging starts.
    /// - Note: This represents the underlying `drag-begin` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter startX: X coordinate, relative to the widget allocation
    /// - Parameter startY: Y coordinate, relative to the widget allocation
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `dragBegin` signal is emitted
    @discardableResult @inlinable func onDragBegin(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: GestureDragRef, _ startX: Double, _ startY: Double) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder3<GestureDragRef, Double, Double, Void>
        let cCallback: @convention(c) (gpointer, gdouble, gdouble, gpointer) -> Void = { unownedSelf, arg1, arg2, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(GestureDragRef(raw: unownedSelf), Double(arg1), Double(arg2))
            return output
        }
        return connect(
            signal: .dragBegin,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `drag-begin` signal for using the `connect(signal:)` methods
    static var dragBeginSignal: GestureDragSignalName { .dragBegin }
    
    /// Emitted whenever the dragging is finished.
    /// - Note: This represents the underlying `drag-end` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter offsetX: X offset, relative to the start point
    /// - Parameter offsetY: Y offset, relative to the start point
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `dragEnd` signal is emitted
    @discardableResult @inlinable func onDragEnd(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: GestureDragRef, _ offsetX: Double, _ offsetY: Double) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder3<GestureDragRef, Double, Double, Void>
        let cCallback: @convention(c) (gpointer, gdouble, gdouble, gpointer) -> Void = { unownedSelf, arg1, arg2, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(GestureDragRef(raw: unownedSelf), Double(arg1), Double(arg2))
            return output
        }
        return connect(
            signal: .dragEnd,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `drag-end` signal for using the `connect(signal:)` methods
    static var dragEndSignal: GestureDragSignalName { .dragEnd }
    
    /// Emitted whenever the dragging point moves.
    /// - Note: This represents the underlying `drag-update` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter offsetX: X offset, relative to the start point
    /// - Parameter offsetY: Y offset, relative to the start point
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `dragUpdate` signal is emitted
    @discardableResult @inlinable func onDragUpdate(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: GestureDragRef, _ offsetX: Double, _ offsetY: Double) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder3<GestureDragRef, Double, Double, Void>
        let cCallback: @convention(c) (gpointer, gdouble, gdouble, gpointer) -> Void = { unownedSelf, arg1, arg2, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(GestureDragRef(raw: unownedSelf), Double(arg1), Double(arg2))
            return output
        }
        return connect(
            signal: .dragUpdate,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `drag-update` signal for using the `connect(signal:)` methods
    static var dragUpdateSignal: GestureDragSignalName { .dragUpdate }
    
    
}

// MARK: GestureDrag Class: GestureDragProtocol extension (methods and fields)
public extension GestureDragProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkGestureDrag` instance.
    @inlinable var gesture_drag_ptr: UnsafeMutablePointer<GtkGestureDrag>! { return ptr?.assumingMemoryBound(to: GtkGestureDrag.self) }

    /// Gets the offset from the start point.
    /// 
    /// If the `gesture` is active, this function returns `true` and
    /// fills in `x` and `y` with the coordinates of the current point,
    /// as an offset to the starting drag point.
    @inlinable func getOffset(x: UnsafeMutablePointer<CDouble>?, y: UnsafeMutablePointer<CDouble>?) -> Bool {
        let rv = ((gtk_gesture_drag_get_offset(gesture_drag_ptr, x, y)) != 0)
        return rv
    }

    /// Gets the point where the drag started.
    /// 
    /// If the `gesture` is active, this function returns `true`
    /// and fills in `x` and `y` with the drag start coordinates,
    /// in surface-relative coordinates.
    @inlinable func getStartPoint(x: UnsafeMutablePointer<CDouble>?, y: UnsafeMutablePointer<CDouble>?) -> Bool {
        let rv = ((gtk_gesture_drag_get_start_point(gesture_drag_ptr, x, y)) != 0)
        return rv
    }


}



// MARK: - GestureLongPress Class

/// `GtkGestureLongPress` is a `GtkGesture` for long presses.
/// 
/// This gesture is also known as “Press and Hold”.
/// 
/// When the timeout is exceeded, the gesture is triggering the
/// [signal`Gtk.GestureLongPress::pressed`] signal.
/// 
/// If the touchpoint is lifted before the timeout passes, or if
/// it drifts too far of the initial press point, the
/// [signal`Gtk.GestureLongPress::cancelled`] signal will be emitted.
/// 
/// How long the timeout is before the `pressed` signal gets emitted is
/// determined by the [property`Gtk.Settings:gtk-long-press-time`] setting.
/// It can be modified by the [property`Gtk.GestureLongPress:delay-factor`]
/// property.
///
/// The `GestureLongPressProtocol` protocol exposes the methods and properties of an underlying `GtkGestureLongPress` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `GestureLongPress`.
/// Alternatively, use `GestureLongPressRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol GestureLongPressProtocol: GestureSingleProtocol {
        /// Untyped pointer to the underlying `GtkGestureLongPress` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkGestureLongPress` instance.
    var gesture_long_press_ptr: UnsafeMutablePointer<GtkGestureLongPress>! { get }

    /// Required Initialiser for types conforming to `GestureLongPressProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GtkGestureLongPress` is a `GtkGesture` for long presses.
/// 
/// This gesture is also known as “Press and Hold”.
/// 
/// When the timeout is exceeded, the gesture is triggering the
/// [signal`Gtk.GestureLongPress::pressed`] signal.
/// 
/// If the touchpoint is lifted before the timeout passes, or if
/// it drifts too far of the initial press point, the
/// [signal`Gtk.GestureLongPress::cancelled`] signal will be emitted.
/// 
/// How long the timeout is before the `pressed` signal gets emitted is
/// determined by the [property`Gtk.Settings:gtk-long-press-time`] setting.
/// It can be modified by the [property`Gtk.GestureLongPress:delay-factor`]
/// property.
///
/// The `GestureLongPressRef` type acts as a lightweight Swift reference to an underlying `GtkGestureLongPress` instance.
/// It exposes methods that can operate on this data type through `GestureLongPressProtocol` conformance.
/// Use `GestureLongPressRef` only as an `unowned` reference to an existing `GtkGestureLongPress` instance.
///
public struct GestureLongPressRef: GestureLongPressProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkGestureLongPress` instance.
    /// For type-safe access, use the generated, typed pointer `gesture_long_press_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension GestureLongPressRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkGestureLongPress>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkGestureLongPress>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkGestureLongPress>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkGestureLongPress>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `GestureLongPressProtocol`
    @inlinable init<T: GestureLongPressProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: GestureLongPressProtocol>(_ other: T) -> GestureLongPressRef { GestureLongPressRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureLongPressProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureLongPressProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureLongPressProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureLongPressProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureLongPressProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Returns a newly created `GtkGesture` that recognizes long presses.
    @inlinable init() {
        let rv = gtk_gesture_long_press_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// `GtkGestureLongPress` is a `GtkGesture` for long presses.
/// 
/// This gesture is also known as “Press and Hold”.
/// 
/// When the timeout is exceeded, the gesture is triggering the
/// [signal`Gtk.GestureLongPress::pressed`] signal.
/// 
/// If the touchpoint is lifted before the timeout passes, or if
/// it drifts too far of the initial press point, the
/// [signal`Gtk.GestureLongPress::cancelled`] signal will be emitted.
/// 
/// How long the timeout is before the `pressed` signal gets emitted is
/// determined by the [property`Gtk.Settings:gtk-long-press-time`] setting.
/// It can be modified by the [property`Gtk.GestureLongPress:delay-factor`]
/// property.
///
/// The `GestureLongPress` type acts as a reference-counted owner of an underlying `GtkGestureLongPress` instance.
/// It provides the methods that can operate on this data type through `GestureLongPressProtocol` conformance.
/// Use `GestureLongPress` as a strong reference or owner of a `GtkGestureLongPress` instance.
///
open class GestureLongPress: GestureSingle, GestureLongPressProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GestureLongPress` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkGestureLongPress>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GestureLongPress` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkGestureLongPress>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GestureLongPress` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GestureLongPress` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GestureLongPress` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkGestureLongPress>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GestureLongPress` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkGestureLongPress>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkGestureLongPress`.
    /// i.e., ownership is transferred to the `GestureLongPress` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkGestureLongPress>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `GestureLongPressProtocol`
    /// Will retain `GtkGestureLongPress`.
    /// - Parameter other: an instance of a related type that implements `GestureLongPressProtocol`
    @inlinable public init<T: GestureLongPressProtocol>(gestureLongPress other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureLongPressProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureLongPressProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureLongPressProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureLongPressProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureLongPressProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureLongPressProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureLongPressProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureLongPressProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Returns a newly created `GtkGesture` that recognizes long presses.
    @inlinable public init() {
        let rv = gtk_gesture_long_press_new()
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum GestureLongPressPropertyName: String, PropertyNameProtocol {
    /// Mouse button number to listen to, or 0 to listen for any button.
    case button = "button"
    /// Factor by which to modify the default timeout.
    case delayFactor = "delay-factor"
    /// Whether the gesture is exclusive.
    /// 
    /// Exclusive gestures only listen to pointer and pointer emulated events.
    case exclusive = "exclusive"
    /// The number of touch points that trigger
    /// recognition on this gesture.
    case nPoints = "n-points"
    /// The name for this controller, typically used for debugging purposes.
    case name = "name"
    /// The limit for which events this controller will handle.
    case propagationLimit = "propagation-limit"
    /// The propagation phase at which this controller will handle events.
    case propagationPhase = "propagation-phase"
    /// Whether the gesture handles only touch events.
    case touchOnly = "touch-only"
    /// The widget receiving the `GdkEvents` that the controller will handle.
    case widget = "widget"
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
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: GestureLongPressPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
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

    /// Get the value of a GestureLongPress property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: GestureLongPressPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a GestureLongPress property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: GestureLongPressPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum GestureLongPressSignalName: String, SignalNameProtocol {
    /// Emitted when the gesture is recognized.
    /// 
    /// This means the number of touch sequences matches
    /// [property`Gtk.Gesture:n-points`].
    /// 
    /// Note: These conditions may also happen when an extra touch
    /// (eg. a third touch on a 2-touches gesture) is lifted, in that
    /// situation `sequence` won't pertain to the current set of active
    /// touches, so don't rely on this being true.
    case begin = "begin"
    /// Emitted whenever a sequence is cancelled.
    /// 
    /// This usually happens on active touches when
    /// [method`Gtk.EventController.reset`] is called on `gesture`
    /// (manually, due to grabs...), or the individual `sequence`
    /// was claimed by parent widgets' controllers (see
    /// [method`Gtk.Gesture.set_sequence_state`]).
    /// 
    /// `gesture` must forget everything about `sequence` as in
    /// response to this signal.
    case cancel = "cancel"
    /// Emitted whenever a press moved too far, or was released
    /// before [signal`Gtk.GestureLongPress::pressed`] happened.
    case cancelled = "cancelled"
    /// Emitted when `gesture` either stopped recognizing the event
    /// sequences as something to be handled, or the number of touch
    /// sequences became higher or lower than [property`Gtk.Gesture:n-points`].
    /// 
    /// Note: `sequence` might not pertain to the group of sequences that
    /// were previously triggering recognition on `gesture` (ie. a just
    /// pressed touch sequence that exceeds [property`Gtk.Gesture:n-points`]).
    /// This situation may be detected by checking through
    /// [method`Gtk.Gesture.handles_sequence`].
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// Emitted whenever a press goes unmoved/unreleased longer than
    /// what the GTK defaults tell.
    case pressed = "pressed"
    /// Emitted whenever a sequence state changes.
    /// 
    /// See [method`Gtk.Gesture.set_sequence_state`] to know
    /// more about the expectable sequence lifetimes.
    case sequenceStateChanged = "sequence-state-changed"
    /// Emitted whenever an event is handled while the gesture is recognized.
    /// 
    /// `sequence` is guaranteed to pertain to the set of active touches.
    case update = "update"
    /// Mouse button number to listen to, or 0 to listen for any button.
    case notifyButton = "notify::button"
    /// Factor by which to modify the default timeout.
    case notifyDelayFactor = "notify::delay-factor"
    /// Whether the gesture is exclusive.
    /// 
    /// Exclusive gestures only listen to pointer and pointer emulated events.
    case notifyExclusive = "notify::exclusive"
    /// The number of touch points that trigger
    /// recognition on this gesture.
    case notifyNPoints = "notify::n-points"
    /// The name for this controller, typically used for debugging purposes.
    case notifyName = "notify::name"
    /// The limit for which events this controller will handle.
    case notifyPropagationLimit = "notify::propagation-limit"
    /// The propagation phase at which this controller will handle events.
    case notifyPropagationPhase = "notify::propagation-phase"
    /// Whether the gesture handles only touch events.
    case notifyTouchOnly = "notify::touch-only"
    /// The widget receiving the `GdkEvents` that the controller will handle.
    case notifyWidget = "notify::widget"
}

// MARK: GestureLongPress signals
public extension GestureLongPressProtocol {
    /// Connect a Swift signal handler to the given, typed `GestureLongPressSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - handler: The Swift signal handler (function or callback) to invoke on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: GestureLongPressSignalName, flags f: ConnectFlags = ConnectFlags(0), handler h: @escaping SignalHandler) -> Int {
        connect(s, flags: f, handler: h)
    }
    
    
    /// Connect a C signal handler to the given, typed `GestureLongPressSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - signalHandler: The C function to be called on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: GestureLongPressSignalName, flags f: ConnectFlags = ConnectFlags(0), data userData: gpointer!, destroyData destructor: GClosureNotify? = nil, signalHandler h: @escaping GCallback) -> Int {
        connectSignal(s, flags: f, data: userData, destroyData: destructor, handler: h)
    }
    
    
    /// Emitted whenever a press moved too far, or was released
    /// before [signal`Gtk.GestureLongPress::pressed`] happened.
    /// - Note: This represents the underlying `cancelled` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `cancelled` signal is emitted
    @discardableResult @inlinable func onCancelled(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: GestureLongPressRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<GestureLongPressRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = { unownedSelf, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(GestureLongPressRef(raw: unownedSelf))
            return output
        }
        return connect(
            signal: .cancelled,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `cancelled` signal for using the `connect(signal:)` methods
    static var cancelledSignal: GestureLongPressSignalName { .cancelled }
    
    /// Emitted whenever a press goes unmoved/unreleased longer than
    /// what the GTK defaults tell.
    /// - Note: This represents the underlying `pressed` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter x: the X coordinate where the press happened, relative to the widget allocation
    /// - Parameter y: the Y coordinate where the press happened, relative to the widget allocation
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `pressed` signal is emitted
    @discardableResult @inlinable func onPressed(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: GestureLongPressRef, _ x: Double, _ y: Double) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder3<GestureLongPressRef, Double, Double, Void>
        let cCallback: @convention(c) (gpointer, gdouble, gdouble, gpointer) -> Void = { unownedSelf, arg1, arg2, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(GestureLongPressRef(raw: unownedSelf), Double(arg1), Double(arg2))
            return output
        }
        return connect(
            signal: .pressed,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `pressed` signal for using the `connect(signal:)` methods
    static var pressedSignal: GestureLongPressSignalName { .pressed }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::delay-factor` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyDelayFactor` signal is emitted
    @discardableResult @inlinable func onNotifyDelayFactor(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: GestureLongPressRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<GestureLongPressRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(GestureLongPressRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyDelayFactor,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::delay-factor` signal for using the `connect(signal:)` methods
    static var notifyDelayFactorSignal: GestureLongPressSignalName { .notifyDelayFactor }
    
}

// MARK: GestureLongPress Class: GestureLongPressProtocol extension (methods and fields)
public extension GestureLongPressProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkGestureLongPress` instance.
    @inlinable var gesture_long_press_ptr: UnsafeMutablePointer<GtkGestureLongPress>! { return ptr?.assumingMemoryBound(to: GtkGestureLongPress.self) }

    /// Returns the delay factor.
    @inlinable func getDelayFactor() -> CDouble {
        let rv = gtk_gesture_long_press_get_delay_factor(gesture_long_press_ptr)
        return rv
    }

    /// Applies the given delay factor.
    /// 
    /// The default long press time will be multiplied by this value.
    /// Valid values are in the range [0.5..2.0].
    @inlinable func set(delayFactor: CDouble) {
        gtk_gesture_long_press_set_delay_factor(gesture_long_press_ptr, delayFactor)
    
    }
    /// Returns the delay factor.
    @inlinable var delayFactor: CDouble {
        /// Returns the delay factor.
        get {
            let rv = gtk_gesture_long_press_get_delay_factor(gesture_long_press_ptr)
            return rv
        }
        /// Applies the given delay factor.
        /// 
        /// The default long press time will be multiplied by this value.
        /// Valid values are in the range [0.5..2.0].
        nonmutating set {
            gtk_gesture_long_press_set_delay_factor(gesture_long_press_ptr, newValue)
        }
    }


}



// MARK: - GesturePan Class

/// `GtkGesturePan` is a `GtkGesture` for pan gestures.
/// 
/// These are drags that are locked to happen along one axis. The axis
/// that a `GtkGesturePan` handles is defined at construct time, and
/// can be changed through [method`Gtk.GesturePan.set_orientation`].
/// 
/// When the gesture starts to be recognized, `GtkGesturePan` will
/// attempt to determine as early as possible whether the sequence
/// is moving in the expected direction, and denying the sequence if
/// this does not happen.
/// 
/// Once a panning gesture along the expected axis is recognized,
/// the [signal`Gtk.GesturePan::pan`] signal will be emitted as input
/// events are received, containing the offset in the given axis.
///
/// The `GesturePanProtocol` protocol exposes the methods and properties of an underlying `GtkGesturePan` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `GesturePan`.
/// Alternatively, use `GesturePanRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol GesturePanProtocol: GestureDragProtocol {
        /// Untyped pointer to the underlying `GtkGesturePan` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkGesturePan` instance.
    var gesture_pan_ptr: UnsafeMutablePointer<GtkGesturePan>! { get }

    /// Required Initialiser for types conforming to `GesturePanProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GtkGesturePan` is a `GtkGesture` for pan gestures.
/// 
/// These are drags that are locked to happen along one axis. The axis
/// that a `GtkGesturePan` handles is defined at construct time, and
/// can be changed through [method`Gtk.GesturePan.set_orientation`].
/// 
/// When the gesture starts to be recognized, `GtkGesturePan` will
/// attempt to determine as early as possible whether the sequence
/// is moving in the expected direction, and denying the sequence if
/// this does not happen.
/// 
/// Once a panning gesture along the expected axis is recognized,
/// the [signal`Gtk.GesturePan::pan`] signal will be emitted as input
/// events are received, containing the offset in the given axis.
///
/// The `GesturePanRef` type acts as a lightweight Swift reference to an underlying `GtkGesturePan` instance.
/// It exposes methods that can operate on this data type through `GesturePanProtocol` conformance.
/// Use `GesturePanRef` only as an `unowned` reference to an existing `GtkGesturePan` instance.
///
public struct GesturePanRef: GesturePanProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkGesturePan` instance.
    /// For type-safe access, use the generated, typed pointer `gesture_pan_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension GesturePanRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkGesturePan>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkGesturePan>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkGesturePan>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkGesturePan>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `GesturePanProtocol`
    @inlinable init<T: GesturePanProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: GesturePanProtocol>(_ other: T) -> GesturePanRef { GesturePanRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GesturePanProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GesturePanProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GesturePanProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GesturePanProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GesturePanProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Returns a newly created `GtkGesture` that recognizes pan gestures.
    @inlinable init( orientation: GtkOrientation) {
        let rv = gtk_gesture_pan_new(orientation)
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// `GtkGesturePan` is a `GtkGesture` for pan gestures.
/// 
/// These are drags that are locked to happen along one axis. The axis
/// that a `GtkGesturePan` handles is defined at construct time, and
/// can be changed through [method`Gtk.GesturePan.set_orientation`].
/// 
/// When the gesture starts to be recognized, `GtkGesturePan` will
/// attempt to determine as early as possible whether the sequence
/// is moving in the expected direction, and denying the sequence if
/// this does not happen.
/// 
/// Once a panning gesture along the expected axis is recognized,
/// the [signal`Gtk.GesturePan::pan`] signal will be emitted as input
/// events are received, containing the offset in the given axis.
///
/// The `GesturePan` type acts as a reference-counted owner of an underlying `GtkGesturePan` instance.
/// It provides the methods that can operate on this data type through `GesturePanProtocol` conformance.
/// Use `GesturePan` as a strong reference or owner of a `GtkGesturePan` instance.
///
open class GesturePan: GestureDrag, GesturePanProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GesturePan` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkGesturePan>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GesturePan` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkGesturePan>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GesturePan` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GesturePan` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GesturePan` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkGesturePan>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GesturePan` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkGesturePan>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkGesturePan`.
    /// i.e., ownership is transferred to the `GesturePan` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkGesturePan>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `GesturePanProtocol`
    /// Will retain `GtkGesturePan`.
    /// - Parameter other: an instance of a related type that implements `GesturePanProtocol`
    @inlinable public init<T: GesturePanProtocol>(gesturePan other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GesturePanProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GesturePanProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GesturePanProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GesturePanProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GesturePanProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GesturePanProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GesturePanProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GesturePanProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Returns a newly created `GtkGesture` that recognizes pan gestures.
    @inlinable public init( orientation: GtkOrientation) {
        let rv = gtk_gesture_pan_new(orientation)
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum GesturePanPropertyName: String, PropertyNameProtocol {
    /// Mouse button number to listen to, or 0 to listen for any button.
    case button = "button"
    /// Whether the gesture is exclusive.
    /// 
    /// Exclusive gestures only listen to pointer and pointer emulated events.
    case exclusive = "exclusive"
    /// The number of touch points that trigger
    /// recognition on this gesture.
    case nPoints = "n-points"
    /// The name for this controller, typically used for debugging purposes.
    case name = "name"
    /// The expected orientation of pan gestures.
    case orientation = "orientation"
    /// The limit for which events this controller will handle.
    case propagationLimit = "propagation-limit"
    /// The propagation phase at which this controller will handle events.
    case propagationPhase = "propagation-phase"
    /// Whether the gesture handles only touch events.
    case touchOnly = "touch-only"
    /// The widget receiving the `GdkEvents` that the controller will handle.
    case widget = "widget"
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
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: GesturePanPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
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

    /// Get the value of a GesturePan property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: GesturePanPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a GesturePan property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: GesturePanPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum GesturePanSignalName: String, SignalNameProtocol {
    /// Emitted when the gesture is recognized.
    /// 
    /// This means the number of touch sequences matches
    /// [property`Gtk.Gesture:n-points`].
    /// 
    /// Note: These conditions may also happen when an extra touch
    /// (eg. a third touch on a 2-touches gesture) is lifted, in that
    /// situation `sequence` won't pertain to the current set of active
    /// touches, so don't rely on this being true.
    case begin = "begin"
    /// Emitted whenever a sequence is cancelled.
    /// 
    /// This usually happens on active touches when
    /// [method`Gtk.EventController.reset`] is called on `gesture`
    /// (manually, due to grabs...), or the individual `sequence`
    /// was claimed by parent widgets' controllers (see
    /// [method`Gtk.Gesture.set_sequence_state`]).
    /// 
    /// `gesture` must forget everything about `sequence` as in
    /// response to this signal.
    case cancel = "cancel"
    /// Emitted whenever dragging starts.
    case dragBegin = "drag-begin"
    /// Emitted whenever the dragging is finished.
    case dragEnd = "drag-end"
    /// Emitted whenever the dragging point moves.
    case dragUpdate = "drag-update"
    /// Emitted when `gesture` either stopped recognizing the event
    /// sequences as something to be handled, or the number of touch
    /// sequences became higher or lower than [property`Gtk.Gesture:n-points`].
    /// 
    /// Note: `sequence` might not pertain to the group of sequences that
    /// were previously triggering recognition on `gesture` (ie. a just
    /// pressed touch sequence that exceeds [property`Gtk.Gesture:n-points`]).
    /// This situation may be detected by checking through
    /// [method`Gtk.Gesture.handles_sequence`].
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// Emitted once a panning gesture along the expected axis is detected.
    case pan = "pan"
    /// Emitted whenever a sequence state changes.
    /// 
    /// See [method`Gtk.Gesture.set_sequence_state`] to know
    /// more about the expectable sequence lifetimes.
    case sequenceStateChanged = "sequence-state-changed"
    /// Emitted whenever an event is handled while the gesture is recognized.
    /// 
    /// `sequence` is guaranteed to pertain to the set of active touches.
    case update = "update"
    /// Mouse button number to listen to, or 0 to listen for any button.
    case notifyButton = "notify::button"
    /// Whether the gesture is exclusive.
    /// 
    /// Exclusive gestures only listen to pointer and pointer emulated events.
    case notifyExclusive = "notify::exclusive"
    /// The number of touch points that trigger
    /// recognition on this gesture.
    case notifyNPoints = "notify::n-points"
    /// The name for this controller, typically used for debugging purposes.
    case notifyName = "notify::name"
    /// The expected orientation of pan gestures.
    case notifyOrientation = "notify::orientation"
    /// The limit for which events this controller will handle.
    case notifyPropagationLimit = "notify::propagation-limit"
    /// The propagation phase at which this controller will handle events.
    case notifyPropagationPhase = "notify::propagation-phase"
    /// Whether the gesture handles only touch events.
    case notifyTouchOnly = "notify::touch-only"
    /// The widget receiving the `GdkEvents` that the controller will handle.
    case notifyWidget = "notify::widget"
}

// MARK: GesturePan signals
public extension GesturePanProtocol {
    /// Connect a Swift signal handler to the given, typed `GesturePanSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - handler: The Swift signal handler (function or callback) to invoke on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: GesturePanSignalName, flags f: ConnectFlags = ConnectFlags(0), handler h: @escaping SignalHandler) -> Int {
        connect(s, flags: f, handler: h)
    }
    
    
    /// Connect a C signal handler to the given, typed `GesturePanSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - signalHandler: The C function to be called on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: GesturePanSignalName, flags f: ConnectFlags = ConnectFlags(0), data userData: gpointer!, destroyData destructor: GClosureNotify? = nil, signalHandler h: @escaping GCallback) -> Int {
        connectSignal(s, flags: f, data: userData, destroyData: destructor, handler: h)
    }
    
    
    /// Emitted once a panning gesture along the expected axis is detected.
    /// - Note: This represents the underlying `pan` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter direction: current direction of the pan gesture
    /// - Parameter offset: Offset along the gesture orientation
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `pan` signal is emitted
    @discardableResult @inlinable func onPan(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: GesturePanRef, _ direction: PanDirection, _ offset: Double) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder3<GesturePanRef, PanDirection, Double, Void>
        let cCallback: @convention(c) (gpointer, UInt32, gdouble, gpointer) -> Void = { unownedSelf, arg1, arg2, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(GesturePanRef(raw: unownedSelf), PanDirection(arg1), Double(arg2))
            return output
        }
        return connect(
            signal: .pan,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `pan` signal for using the `connect(signal:)` methods
    static var panSignal: GesturePanSignalName { .pan }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::orientation` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyOrientation` signal is emitted
    @discardableResult @inlinable func onNotifyOrientation(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: GesturePanRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<GesturePanRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(GesturePanRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyOrientation,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::orientation` signal for using the `connect(signal:)` methods
    static var notifyOrientationSignal: GesturePanSignalName { .notifyOrientation }
    
}

// MARK: GesturePan Class: GesturePanProtocol extension (methods and fields)
public extension GesturePanProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkGesturePan` instance.
    @inlinable var gesture_pan_ptr: UnsafeMutablePointer<GtkGesturePan>! { return ptr?.assumingMemoryBound(to: GtkGesturePan.self) }

    /// Returns the orientation of the pan gestures that this `gesture` expects.
    @inlinable func getOrientation() -> GtkOrientation {
        let rv = gtk_gesture_pan_get_orientation(gesture_pan_ptr)
        return rv
    }

    /// Sets the orientation to be expected on pan gestures.
    @inlinable func set(orientation: GtkOrientation) {
        gtk_gesture_pan_set_orientation(gesture_pan_ptr, orientation)
    
    }
    /// The expected orientation of pan gestures.
    @inlinable var orientation: GtkOrientation {
        /// Returns the orientation of the pan gestures that this `gesture` expects.
        get {
            let rv = gtk_gesture_pan_get_orientation(gesture_pan_ptr)
            return rv
        }
        /// Sets the orientation to be expected on pan gestures.
        nonmutating set {
            gtk_gesture_pan_set_orientation(gesture_pan_ptr, newValue)
        }
    }


}



// MARK: - GestureRotate Class

/// `GtkGestureRotate` is a `GtkGesture` for 2-finger rotations.
/// 
/// Whenever the angle between both handled sequences changes, the
/// [signal`Gtk.GestureRotate::angle-changed`] signal is emitted.
///
/// The `GestureRotateProtocol` protocol exposes the methods and properties of an underlying `GtkGestureRotate` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `GestureRotate`.
/// Alternatively, use `GestureRotateRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol GestureRotateProtocol: GestureProtocol {
        /// Untyped pointer to the underlying `GtkGestureRotate` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkGestureRotate` instance.
    var gesture_rotate_ptr: UnsafeMutablePointer<GtkGestureRotate>! { get }

    /// Required Initialiser for types conforming to `GestureRotateProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GtkGestureRotate` is a `GtkGesture` for 2-finger rotations.
/// 
/// Whenever the angle between both handled sequences changes, the
/// [signal`Gtk.GestureRotate::angle-changed`] signal is emitted.
///
/// The `GestureRotateRef` type acts as a lightweight Swift reference to an underlying `GtkGestureRotate` instance.
/// It exposes methods that can operate on this data type through `GestureRotateProtocol` conformance.
/// Use `GestureRotateRef` only as an `unowned` reference to an existing `GtkGestureRotate` instance.
///
public struct GestureRotateRef: GestureRotateProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkGestureRotate` instance.
    /// For type-safe access, use the generated, typed pointer `gesture_rotate_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension GestureRotateRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkGestureRotate>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkGestureRotate>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkGestureRotate>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkGestureRotate>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `GestureRotateProtocol`
    @inlinable init<T: GestureRotateProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: GestureRotateProtocol>(_ other: T) -> GestureRotateRef { GestureRotateRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureRotateProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureRotateProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureRotateProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureRotateProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureRotateProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Returns a newly created `GtkGesture` that recognizes 2-touch
    /// rotation gestures.
    @inlinable init() {
        let rv = gtk_gesture_rotate_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// `GtkGestureRotate` is a `GtkGesture` for 2-finger rotations.
/// 
/// Whenever the angle between both handled sequences changes, the
/// [signal`Gtk.GestureRotate::angle-changed`] signal is emitted.
///
/// The `GestureRotate` type acts as a reference-counted owner of an underlying `GtkGestureRotate` instance.
/// It provides the methods that can operate on this data type through `GestureRotateProtocol` conformance.
/// Use `GestureRotate` as a strong reference or owner of a `GtkGestureRotate` instance.
///
open class GestureRotate: Gesture, GestureRotateProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GestureRotate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkGestureRotate>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GestureRotate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkGestureRotate>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GestureRotate` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GestureRotate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GestureRotate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkGestureRotate>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GestureRotate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkGestureRotate>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkGestureRotate`.
    /// i.e., ownership is transferred to the `GestureRotate` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkGestureRotate>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `GestureRotateProtocol`
    /// Will retain `GtkGestureRotate`.
    /// - Parameter other: an instance of a related type that implements `GestureRotateProtocol`
    @inlinable public init<T: GestureRotateProtocol>(gestureRotate other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureRotateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureRotateProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureRotateProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureRotateProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureRotateProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureRotateProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureRotateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureRotateProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Returns a newly created `GtkGesture` that recognizes 2-touch
    /// rotation gestures.
    @inlinable public init() {
        let rv = gtk_gesture_rotate_new()
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum GestureRotatePropertyName: String, PropertyNameProtocol {
    /// The number of touch points that trigger
    /// recognition on this gesture.
    case nPoints = "n-points"
    /// The name for this controller, typically used for debugging purposes.
    case name = "name"
    /// The limit for which events this controller will handle.
    case propagationLimit = "propagation-limit"
    /// The propagation phase at which this controller will handle events.
    case propagationPhase = "propagation-phase"
    /// The widget receiving the `GdkEvents` that the controller will handle.
    case widget = "widget"
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
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: GestureRotatePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
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

    /// Get the value of a GestureRotate property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: GestureRotatePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a GestureRotate property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: GestureRotatePropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum GestureRotateSignalName: String, SignalNameProtocol {
    /// Emitted when the angle between both tracked points changes.
    case angleChanged = "angle-changed"
    /// Emitted when the gesture is recognized.
    /// 
    /// This means the number of touch sequences matches
    /// [property`Gtk.Gesture:n-points`].
    /// 
    /// Note: These conditions may also happen when an extra touch
    /// (eg. a third touch on a 2-touches gesture) is lifted, in that
    /// situation `sequence` won't pertain to the current set of active
    /// touches, so don't rely on this being true.
    case begin = "begin"
    /// Emitted whenever a sequence is cancelled.
    /// 
    /// This usually happens on active touches when
    /// [method`Gtk.EventController.reset`] is called on `gesture`
    /// (manually, due to grabs...), or the individual `sequence`
    /// was claimed by parent widgets' controllers (see
    /// [method`Gtk.Gesture.set_sequence_state`]).
    /// 
    /// `gesture` must forget everything about `sequence` as in
    /// response to this signal.
    case cancel = "cancel"
    /// Emitted when `gesture` either stopped recognizing the event
    /// sequences as something to be handled, or the number of touch
    /// sequences became higher or lower than [property`Gtk.Gesture:n-points`].
    /// 
    /// Note: `sequence` might not pertain to the group of sequences that
    /// were previously triggering recognition on `gesture` (ie. a just
    /// pressed touch sequence that exceeds [property`Gtk.Gesture:n-points`]).
    /// This situation may be detected by checking through
    /// [method`Gtk.Gesture.handles_sequence`].
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// Emitted whenever a sequence state changes.
    /// 
    /// See [method`Gtk.Gesture.set_sequence_state`] to know
    /// more about the expectable sequence lifetimes.
    case sequenceStateChanged = "sequence-state-changed"
    /// Emitted whenever an event is handled while the gesture is recognized.
    /// 
    /// `sequence` is guaranteed to pertain to the set of active touches.
    case update = "update"
    /// The number of touch points that trigger
    /// recognition on this gesture.
    case notifyNPoints = "notify::n-points"
    /// The name for this controller, typically used for debugging purposes.
    case notifyName = "notify::name"
    /// The limit for which events this controller will handle.
    case notifyPropagationLimit = "notify::propagation-limit"
    /// The propagation phase at which this controller will handle events.
    case notifyPropagationPhase = "notify::propagation-phase"
    /// The widget receiving the `GdkEvents` that the controller will handle.
    case notifyWidget = "notify::widget"
}

// MARK: GestureRotate signals
public extension GestureRotateProtocol {
    /// Connect a Swift signal handler to the given, typed `GestureRotateSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - handler: The Swift signal handler (function or callback) to invoke on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: GestureRotateSignalName, flags f: ConnectFlags = ConnectFlags(0), handler h: @escaping SignalHandler) -> Int {
        connect(s, flags: f, handler: h)
    }
    
    
    /// Connect a C signal handler to the given, typed `GestureRotateSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - signalHandler: The C function to be called on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: GestureRotateSignalName, flags f: ConnectFlags = ConnectFlags(0), data userData: gpointer!, destroyData destructor: GClosureNotify? = nil, signalHandler h: @escaping GCallback) -> Int {
        connectSignal(s, flags: f, data: userData, destroyData: destructor, handler: h)
    }
    
    
    /// Emitted when the angle between both tracked points changes.
    /// - Note: This represents the underlying `angle-changed` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter angle: Current angle in radians
    /// - Parameter angleDelta: Difference with the starting angle, in radians
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `angleChanged` signal is emitted
    @discardableResult @inlinable func onAngleChanged(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: GestureRotateRef, _ angle: Double, _ angleDelta: Double) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder3<GestureRotateRef, Double, Double, Void>
        let cCallback: @convention(c) (gpointer, gdouble, gdouble, gpointer) -> Void = { unownedSelf, arg1, arg2, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(GestureRotateRef(raw: unownedSelf), Double(arg1), Double(arg2))
            return output
        }
        return connect(
            signal: .angleChanged,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `angle-changed` signal for using the `connect(signal:)` methods
    static var angleChangedSignal: GestureRotateSignalName { .angleChanged }
    
    
}

// MARK: GestureRotate Class: GestureRotateProtocol extension (methods and fields)
public extension GestureRotateProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkGestureRotate` instance.
    @inlinable var gesture_rotate_ptr: UnsafeMutablePointer<GtkGestureRotate>! { return ptr?.assumingMemoryBound(to: GtkGestureRotate.self) }

    /// Gets the angle delta in radians.
    /// 
    /// If `gesture` is active, this function returns the angle difference
    /// in radians since the gesture was first recognized. If `gesture` is
    /// not active, 0 is returned.
    @inlinable func getAngleDelta() -> CDouble {
        let rv = gtk_gesture_rotate_get_angle_delta(gesture_rotate_ptr)
        return rv
    }
    /// Gets the angle delta in radians.
    /// 
    /// If `gesture` is active, this function returns the angle difference
    /// in radians since the gesture was first recognized. If `gesture` is
    /// not active, 0 is returned.
    @inlinable var angleDelta: CDouble {
        /// Gets the angle delta in radians.
        /// 
        /// If `gesture` is active, this function returns the angle difference
        /// in radians since the gesture was first recognized. If `gesture` is
        /// not active, 0 is returned.
        get {
            let rv = gtk_gesture_rotate_get_angle_delta(gesture_rotate_ptr)
            return rv
        }
    }


}



// MARK: - GestureSingle Class

/// `GtkGestureSingle` is a `GtkGestures` subclass optimized for singe-touch
/// and mouse gestures.
/// 
/// Under interaction, these gestures stick to the first interacting sequence,
/// which is accessible through [method`Gtk.GestureSingle.get_current_sequence`]
/// while the gesture is being interacted with.
/// 
/// By default gestures react to both `GDK_BUTTON_PRIMARY` and touch events.
/// [method`Gtk.GestureSingle.set_touch_only`] can be used to change the
/// touch behavior. Callers may also specify a different mouse button number
/// to interact with through [method`Gtk.GestureSingle.set_button`], or react
/// to any mouse button by setting it to 0. While the gesture is active, the
/// button being currently pressed can be known through
/// [method`Gtk.GestureSingle.get_current_button`].
///
/// The `GestureSingleProtocol` protocol exposes the methods and properties of an underlying `GtkGestureSingle` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `GestureSingle`.
/// Alternatively, use `GestureSingleRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol GestureSingleProtocol: GestureProtocol {
        /// Untyped pointer to the underlying `GtkGestureSingle` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkGestureSingle` instance.
    var gesture_single_ptr: UnsafeMutablePointer<GtkGestureSingle>! { get }

    /// Required Initialiser for types conforming to `GestureSingleProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GtkGestureSingle` is a `GtkGestures` subclass optimized for singe-touch
/// and mouse gestures.
/// 
/// Under interaction, these gestures stick to the first interacting sequence,
/// which is accessible through [method`Gtk.GestureSingle.get_current_sequence`]
/// while the gesture is being interacted with.
/// 
/// By default gestures react to both `GDK_BUTTON_PRIMARY` and touch events.
/// [method`Gtk.GestureSingle.set_touch_only`] can be used to change the
/// touch behavior. Callers may also specify a different mouse button number
/// to interact with through [method`Gtk.GestureSingle.set_button`], or react
/// to any mouse button by setting it to 0. While the gesture is active, the
/// button being currently pressed can be known through
/// [method`Gtk.GestureSingle.get_current_button`].
///
/// The `GestureSingleRef` type acts as a lightweight Swift reference to an underlying `GtkGestureSingle` instance.
/// It exposes methods that can operate on this data type through `GestureSingleProtocol` conformance.
/// Use `GestureSingleRef` only as an `unowned` reference to an existing `GtkGestureSingle` instance.
///
public struct GestureSingleRef: GestureSingleProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkGestureSingle` instance.
    /// For type-safe access, use the generated, typed pointer `gesture_single_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension GestureSingleRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkGestureSingle>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkGestureSingle>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkGestureSingle>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkGestureSingle>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `GestureSingleProtocol`
    @inlinable init<T: GestureSingleProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: GestureSingleProtocol>(_ other: T) -> GestureSingleRef { GestureSingleRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureSingleProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureSingleProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureSingleProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureSingleProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureSingleProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// `GtkGestureSingle` is a `GtkGestures` subclass optimized for singe-touch
/// and mouse gestures.
/// 
/// Under interaction, these gestures stick to the first interacting sequence,
/// which is accessible through [method`Gtk.GestureSingle.get_current_sequence`]
/// while the gesture is being interacted with.
/// 
/// By default gestures react to both `GDK_BUTTON_PRIMARY` and touch events.
/// [method`Gtk.GestureSingle.set_touch_only`] can be used to change the
/// touch behavior. Callers may also specify a different mouse button number
/// to interact with through [method`Gtk.GestureSingle.set_button`], or react
/// to any mouse button by setting it to 0. While the gesture is active, the
/// button being currently pressed can be known through
/// [method`Gtk.GestureSingle.get_current_button`].
///
/// The `GestureSingle` type acts as a reference-counted owner of an underlying `GtkGestureSingle` instance.
/// It provides the methods that can operate on this data type through `GestureSingleProtocol` conformance.
/// Use `GestureSingle` as a strong reference or owner of a `GtkGestureSingle` instance.
///
open class GestureSingle: Gesture, GestureSingleProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GestureSingle` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkGestureSingle>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GestureSingle` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkGestureSingle>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GestureSingle` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GestureSingle` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GestureSingle` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkGestureSingle>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GestureSingle` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkGestureSingle>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkGestureSingle`.
    /// i.e., ownership is transferred to the `GestureSingle` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkGestureSingle>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `GestureSingleProtocol`
    /// Will retain `GtkGestureSingle`.
    /// - Parameter other: an instance of a related type that implements `GestureSingleProtocol`
    @inlinable public init<T: GestureSingleProtocol>(gestureSingle other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureSingleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureSingleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureSingleProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureSingleProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureSingleProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureSingleProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureSingleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureSingleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum GestureSinglePropertyName: String, PropertyNameProtocol {
    /// Mouse button number to listen to, or 0 to listen for any button.
    case button = "button"
    /// Whether the gesture is exclusive.
    /// 
    /// Exclusive gestures only listen to pointer and pointer emulated events.
    case exclusive = "exclusive"
    /// The number of touch points that trigger
    /// recognition on this gesture.
    case nPoints = "n-points"
    /// The name for this controller, typically used for debugging purposes.
    case name = "name"
    /// The limit for which events this controller will handle.
    case propagationLimit = "propagation-limit"
    /// The propagation phase at which this controller will handle events.
    case propagationPhase = "propagation-phase"
    /// Whether the gesture handles only touch events.
    case touchOnly = "touch-only"
    /// The widget receiving the `GdkEvents` that the controller will handle.
    case widget = "widget"
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
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: GestureSinglePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
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

    /// Get the value of a GestureSingle property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: GestureSinglePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a GestureSingle property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: GestureSinglePropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum GestureSingleSignalName: String, SignalNameProtocol {
    /// Emitted when the gesture is recognized.
    /// 
    /// This means the number of touch sequences matches
    /// [property`Gtk.Gesture:n-points`].
    /// 
    /// Note: These conditions may also happen when an extra touch
    /// (eg. a third touch on a 2-touches gesture) is lifted, in that
    /// situation `sequence` won't pertain to the current set of active
    /// touches, so don't rely on this being true.
    case begin = "begin"
    /// Emitted whenever a sequence is cancelled.
    /// 
    /// This usually happens on active touches when
    /// [method`Gtk.EventController.reset`] is called on `gesture`
    /// (manually, due to grabs...), or the individual `sequence`
    /// was claimed by parent widgets' controllers (see
    /// [method`Gtk.Gesture.set_sequence_state`]).
    /// 
    /// `gesture` must forget everything about `sequence` as in
    /// response to this signal.
    case cancel = "cancel"
    /// Emitted when `gesture` either stopped recognizing the event
    /// sequences as something to be handled, or the number of touch
    /// sequences became higher or lower than [property`Gtk.Gesture:n-points`].
    /// 
    /// Note: `sequence` might not pertain to the group of sequences that
    /// were previously triggering recognition on `gesture` (ie. a just
    /// pressed touch sequence that exceeds [property`Gtk.Gesture:n-points`]).
    /// This situation may be detected by checking through
    /// [method`Gtk.Gesture.handles_sequence`].
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// Emitted whenever a sequence state changes.
    /// 
    /// See [method`Gtk.Gesture.set_sequence_state`] to know
    /// more about the expectable sequence lifetimes.
    case sequenceStateChanged = "sequence-state-changed"
    /// Emitted whenever an event is handled while the gesture is recognized.
    /// 
    /// `sequence` is guaranteed to pertain to the set of active touches.
    case update = "update"
    /// Mouse button number to listen to, or 0 to listen for any button.
    case notifyButton = "notify::button"
    /// Whether the gesture is exclusive.
    /// 
    /// Exclusive gestures only listen to pointer and pointer emulated events.
    case notifyExclusive = "notify::exclusive"
    /// The number of touch points that trigger
    /// recognition on this gesture.
    case notifyNPoints = "notify::n-points"
    /// The name for this controller, typically used for debugging purposes.
    case notifyName = "notify::name"
    /// The limit for which events this controller will handle.
    case notifyPropagationLimit = "notify::propagation-limit"
    /// The propagation phase at which this controller will handle events.
    case notifyPropagationPhase = "notify::propagation-phase"
    /// Whether the gesture handles only touch events.
    case notifyTouchOnly = "notify::touch-only"
    /// The widget receiving the `GdkEvents` that the controller will handle.
    case notifyWidget = "notify::widget"
}

// MARK: GestureSingle has no signals
// MARK: GestureSingle Class: GestureSingleProtocol extension (methods and fields)
public extension GestureSingleProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkGestureSingle` instance.
    @inlinable var gesture_single_ptr: UnsafeMutablePointer<GtkGestureSingle>! { return ptr?.assumingMemoryBound(to: GtkGestureSingle.self) }

    /// Returns the button number `gesture` listens for.
    /// 
    /// If this is 0, the gesture reacts to any button press.
    @inlinable func getButton() -> Int {
        let rv = Int(gtk_gesture_single_get_button(gesture_single_ptr))
        return rv
    }

    /// Returns the button number currently interacting
    /// with `gesture`, or 0 if there is none.
    @inlinable func getCurrentButton() -> Int {
        let rv = Int(gtk_gesture_single_get_current_button(gesture_single_ptr))
        return rv
    }

    /// Returns the event sequence currently interacting with `gesture`.
    /// 
    /// This is only meaningful if [method`Gtk.Gesture.is_active`]
    /// returns `true`.
    @inlinable func getCurrentSequence() -> Gdk.EventSequenceRef! {
        let rv = Gdk.EventSequenceRef(gtk_gesture_single_get_current_sequence(gesture_single_ptr))
        return rv
    }

    /// Gets whether a gesture is exclusive.
    /// 
    /// For more information, see [method`Gtk.GestureSingle.set_exclusive`].
    @inlinable func getExclusive() -> Bool {
        let rv = ((gtk_gesture_single_get_exclusive(gesture_single_ptr)) != 0)
        return rv
    }

    /// Returns `true` if the gesture is only triggered by touch events.
    @inlinable func getTouchOnly() -> Bool {
        let rv = ((gtk_gesture_single_get_touch_only(gesture_single_ptr)) != 0)
        return rv
    }

    /// Sets the button number `gesture` listens to.
    /// 
    /// If non-0, every button press from a different button
    /// number will be ignored. Touch events implicitly match
    /// with button 1.
    @inlinable func set(button: Int) {
        gtk_gesture_single_set_button(gesture_single_ptr, guint(button))
    
    }

    /// Sets whether `gesture` is exclusive.
    /// 
    /// An exclusive gesture will only handle pointer and "pointer emulated"
    /// touch events, so at any given time, there is only one sequence able
    /// to interact with those.
    @inlinable func set(exclusive: Bool) {
        gtk_gesture_single_set_exclusive(gesture_single_ptr, gboolean((exclusive) ? 1 : 0))
    
    }

    /// Sets whether to handle only touch events.
    /// 
    /// If `touch_only` is `true`, `gesture` will only handle events of type
    /// `GDK_TOUCH_BEGIN`, `GDK_TOUCH_UPDATE` or `GDK_TOUCH_END`. If `false`,
    /// mouse events will be handled too.
    @inlinable func set(touchOnly: Bool) {
        gtk_gesture_single_set_touch_only(gesture_single_ptr, gboolean((touchOnly) ? 1 : 0))
    
    }
    /// Mouse button number to listen to, or 0 to listen for any button.
    @inlinable var button: Int {
        /// Returns the button number `gesture` listens for.
        /// 
        /// If this is 0, the gesture reacts to any button press.
        get {
            let rv = Int(gtk_gesture_single_get_button(gesture_single_ptr))
            return rv
        }
        /// Sets the button number `gesture` listens to.
        /// 
        /// If non-0, every button press from a different button
        /// number will be ignored. Touch events implicitly match
        /// with button 1.
        nonmutating set {
            gtk_gesture_single_set_button(gesture_single_ptr, guint(newValue))
        }
    }

    /// Returns the button number currently interacting
    /// with `gesture`, or 0 if there is none.
    @inlinable var currentButton: Int {
        /// Returns the button number currently interacting
        /// with `gesture`, or 0 if there is none.
        get {
            let rv = Int(gtk_gesture_single_get_current_button(gesture_single_ptr))
            return rv
        }
    }

    /// Returns the event sequence currently interacting with `gesture`.
    /// 
    /// This is only meaningful if [method`Gtk.Gesture.is_active`]
    /// returns `true`.
    @inlinable var currentSequence: Gdk.EventSequenceRef! {
        /// Returns the event sequence currently interacting with `gesture`.
        /// 
        /// This is only meaningful if [method`Gtk.Gesture.is_active`]
        /// returns `true`.
        get {
            let rv = Gdk.EventSequenceRef(gtk_gesture_single_get_current_sequence(gesture_single_ptr))
            return rv
        }
    }

    /// Whether the gesture is exclusive.
    /// 
    /// Exclusive gestures only listen to pointer and pointer emulated events.
    @inlinable var exclusive: Bool {
        /// Gets whether a gesture is exclusive.
        /// 
        /// For more information, see [method`Gtk.GestureSingle.set_exclusive`].
        get {
            let rv = ((gtk_gesture_single_get_exclusive(gesture_single_ptr)) != 0)
            return rv
        }
        /// Sets whether `gesture` is exclusive.
        /// 
        /// An exclusive gesture will only handle pointer and "pointer emulated"
        /// touch events, so at any given time, there is only one sequence able
        /// to interact with those.
        nonmutating set {
            gtk_gesture_single_set_exclusive(gesture_single_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Returns `true` if the gesture is only triggered by touch events.
    @inlinable var touchOnly: Bool {
        /// Returns `true` if the gesture is only triggered by touch events.
        get {
            let rv = ((gtk_gesture_single_get_touch_only(gesture_single_ptr)) != 0)
            return rv
        }
        /// Sets whether to handle only touch events.
        /// 
        /// If `touch_only` is `true`, `gesture` will only handle events of type
        /// `GDK_TOUCH_BEGIN`, `GDK_TOUCH_UPDATE` or `GDK_TOUCH_END`. If `false`,
        /// mouse events will be handled too.
        nonmutating set {
            gtk_gesture_single_set_touch_only(gesture_single_ptr, gboolean((newValue) ? 1 : 0))
        }
    }


}



// MARK: - GestureStylus Class

/// `GtkGestureStylus` is a `GtkGesture` specific to stylus input.
/// 
/// The provided signals just relay the basic information of the
/// stylus events.
///
/// The `GestureStylusProtocol` protocol exposes the methods and properties of an underlying `GtkGestureStylus` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `GestureStylus`.
/// Alternatively, use `GestureStylusRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol GestureStylusProtocol: GestureSingleProtocol {
        /// Untyped pointer to the underlying `GtkGestureStylus` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkGestureStylus` instance.
    var gesture_stylus_ptr: UnsafeMutablePointer<GtkGestureStylus>! { get }

    /// Required Initialiser for types conforming to `GestureStylusProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GtkGestureStylus` is a `GtkGesture` specific to stylus input.
/// 
/// The provided signals just relay the basic information of the
/// stylus events.
///
/// The `GestureStylusRef` type acts as a lightweight Swift reference to an underlying `GtkGestureStylus` instance.
/// It exposes methods that can operate on this data type through `GestureStylusProtocol` conformance.
/// Use `GestureStylusRef` only as an `unowned` reference to an existing `GtkGestureStylus` instance.
///
public struct GestureStylusRef: GestureStylusProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkGestureStylus` instance.
    /// For type-safe access, use the generated, typed pointer `gesture_stylus_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension GestureStylusRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkGestureStylus>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkGestureStylus>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkGestureStylus>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkGestureStylus>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `GestureStylusProtocol`
    @inlinable init<T: GestureStylusProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: GestureStylusProtocol>(_ other: T) -> GestureStylusRef { GestureStylusRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureStylusProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureStylusProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureStylusProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureStylusProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureStylusProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkGestureStylus`.
    @inlinable init() {
        let rv = gtk_gesture_stylus_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// `GtkGestureStylus` is a `GtkGesture` specific to stylus input.
/// 
/// The provided signals just relay the basic information of the
/// stylus events.
///
/// The `GestureStylus` type acts as a reference-counted owner of an underlying `GtkGestureStylus` instance.
/// It provides the methods that can operate on this data type through `GestureStylusProtocol` conformance.
/// Use `GestureStylus` as a strong reference or owner of a `GtkGestureStylus` instance.
///
open class GestureStylus: GestureSingle, GestureStylusProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GestureStylus` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkGestureStylus>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GestureStylus` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkGestureStylus>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GestureStylus` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GestureStylus` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GestureStylus` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkGestureStylus>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GestureStylus` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkGestureStylus>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkGestureStylus`.
    /// i.e., ownership is transferred to the `GestureStylus` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkGestureStylus>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `GestureStylusProtocol`
    /// Will retain `GtkGestureStylus`.
    /// - Parameter other: an instance of a related type that implements `GestureStylusProtocol`
    @inlinable public init<T: GestureStylusProtocol>(gestureStylus other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureStylusProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureStylusProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureStylusProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureStylusProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureStylusProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureStylusProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureStylusProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureStylusProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkGestureStylus`.
    @inlinable public init() {
        let rv = gtk_gesture_stylus_new()
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum GestureStylusPropertyName: String, PropertyNameProtocol {
    /// Mouse button number to listen to, or 0 to listen for any button.
    case button = "button"
    /// Whether the gesture is exclusive.
    /// 
    /// Exclusive gestures only listen to pointer and pointer emulated events.
    case exclusive = "exclusive"
    /// The number of touch points that trigger
    /// recognition on this gesture.
    case nPoints = "n-points"
    /// The name for this controller, typically used for debugging purposes.
    case name = "name"
    /// The limit for which events this controller will handle.
    case propagationLimit = "propagation-limit"
    /// The propagation phase at which this controller will handle events.
    case propagationPhase = "propagation-phase"
    /// Whether the gesture handles only touch events.
    case touchOnly = "touch-only"
    /// The widget receiving the `GdkEvents` that the controller will handle.
    case widget = "widget"
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
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: GestureStylusPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
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

    /// Get the value of a GestureStylus property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: GestureStylusPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a GestureStylus property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: GestureStylusPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum GestureStylusSignalName: String, SignalNameProtocol {
    /// Emitted when the gesture is recognized.
    /// 
    /// This means the number of touch sequences matches
    /// [property`Gtk.Gesture:n-points`].
    /// 
    /// Note: These conditions may also happen when an extra touch
    /// (eg. a third touch on a 2-touches gesture) is lifted, in that
    /// situation `sequence` won't pertain to the current set of active
    /// touches, so don't rely on this being true.
    case begin = "begin"
    /// Emitted whenever a sequence is cancelled.
    /// 
    /// This usually happens on active touches when
    /// [method`Gtk.EventController.reset`] is called on `gesture`
    /// (manually, due to grabs...), or the individual `sequence`
    /// was claimed by parent widgets' controllers (see
    /// [method`Gtk.Gesture.set_sequence_state`]).
    /// 
    /// `gesture` must forget everything about `sequence` as in
    /// response to this signal.
    case cancel = "cancel"
    /// Emitted when the stylus touches the device.
    case down = "down"
    /// Emitted when `gesture` either stopped recognizing the event
    /// sequences as something to be handled, or the number of touch
    /// sequences became higher or lower than [property`Gtk.Gesture:n-points`].
    /// 
    /// Note: `sequence` might not pertain to the group of sequences that
    /// were previously triggering recognition on `gesture` (ie. a just
    /// pressed touch sequence that exceeds [property`Gtk.Gesture:n-points`]).
    /// This situation may be detected by checking through
    /// [method`Gtk.Gesture.handles_sequence`].
    case end = "end"
    /// Emitted when the stylus moves while touching the device.
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// Emitted when the stylus is in proximity of the device.
    case proximity = "proximity"
    /// Emitted whenever a sequence state changes.
    /// 
    /// See [method`Gtk.Gesture.set_sequence_state`] to know
    /// more about the expectable sequence lifetimes.
    case sequenceStateChanged = "sequence-state-changed"
    /// Emitted when the stylus no longer touches the device.
    case up = "up"
    /// Emitted whenever an event is handled while the gesture is recognized.
    /// 
    /// `sequence` is guaranteed to pertain to the set of active touches.
    case update = "update"
    /// Mouse button number to listen to, or 0 to listen for any button.
    case notifyButton = "notify::button"
    /// Whether the gesture is exclusive.
    /// 
    /// Exclusive gestures only listen to pointer and pointer emulated events.
    case notifyExclusive = "notify::exclusive"
    /// The number of touch points that trigger
    /// recognition on this gesture.
    case notifyNPoints = "notify::n-points"
    /// The name for this controller, typically used for debugging purposes.
    case notifyName = "notify::name"
    /// The limit for which events this controller will handle.
    case notifyPropagationLimit = "notify::propagation-limit"
    /// The propagation phase at which this controller will handle events.
    case notifyPropagationPhase = "notify::propagation-phase"
    /// Whether the gesture handles only touch events.
    case notifyTouchOnly = "notify::touch-only"
    /// The widget receiving the `GdkEvents` that the controller will handle.
    case notifyWidget = "notify::widget"
}

// MARK: GestureStylus signals
public extension GestureStylusProtocol {
    /// Connect a Swift signal handler to the given, typed `GestureStylusSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - handler: The Swift signal handler (function or callback) to invoke on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: GestureStylusSignalName, flags f: ConnectFlags = ConnectFlags(0), handler h: @escaping SignalHandler) -> Int {
        connect(s, flags: f, handler: h)
    }
    
    
    /// Connect a C signal handler to the given, typed `GestureStylusSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - signalHandler: The C function to be called on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: GestureStylusSignalName, flags f: ConnectFlags = ConnectFlags(0), data userData: gpointer!, destroyData destructor: GClosureNotify? = nil, signalHandler h: @escaping GCallback) -> Int {
        connectSignal(s, flags: f, data: userData, destroyData: destructor, handler: h)
    }
    
    
    /// Emitted when the stylus touches the device.
    /// - Note: This represents the underlying `down` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter x: the X coordinate of the stylus event
    /// - Parameter y: the Y coordinate of the stylus event
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `down` signal is emitted
    @discardableResult @inlinable func onDown(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: GestureStylusRef, _ x: Double, _ y: Double) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder3<GestureStylusRef, Double, Double, Void>
        let cCallback: @convention(c) (gpointer, gdouble, gdouble, gpointer) -> Void = { unownedSelf, arg1, arg2, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(GestureStylusRef(raw: unownedSelf), Double(arg1), Double(arg2))
            return output
        }
        return connect(
            signal: .down,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `down` signal for using the `connect(signal:)` methods
    static var downSignal: GestureStylusSignalName { .down }
    
    /// Emitted when the stylus moves while touching the device.
    /// - Note: This represents the underlying `motion` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter x: the X coordinate of the stylus event
    /// - Parameter y: the Y coordinate of the stylus event
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `motion` signal is emitted
    @discardableResult @inlinable func onMotion(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: GestureStylusRef, _ x: Double, _ y: Double) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder3<GestureStylusRef, Double, Double, Void>
        let cCallback: @convention(c) (gpointer, gdouble, gdouble, gpointer) -> Void = { unownedSelf, arg1, arg2, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(GestureStylusRef(raw: unownedSelf), Double(arg1), Double(arg2))
            return output
        }
        return connect(
            signal: .motion,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `motion` signal for using the `connect(signal:)` methods
    static var motionSignal: GestureStylusSignalName { .motion }
    
    /// Emitted when the stylus is in proximity of the device.
    /// - Note: This represents the underlying `proximity` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter x: the X coordinate of the stylus event
    /// - Parameter y: the Y coordinate of the stylus event
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `proximity` signal is emitted
    @discardableResult @inlinable func onProximity(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: GestureStylusRef, _ x: Double, _ y: Double) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder3<GestureStylusRef, Double, Double, Void>
        let cCallback: @convention(c) (gpointer, gdouble, gdouble, gpointer) -> Void = { unownedSelf, arg1, arg2, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(GestureStylusRef(raw: unownedSelf), Double(arg1), Double(arg2))
            return output
        }
        return connect(
            signal: .proximity,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `proximity` signal for using the `connect(signal:)` methods
    static var proximitySignal: GestureStylusSignalName { .proximity }
    
    /// Emitted when the stylus no longer touches the device.
    /// - Note: This represents the underlying `up` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter x: the X coordinate of the stylus event
    /// - Parameter y: the Y coordinate of the stylus event
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `up` signal is emitted
    @discardableResult @inlinable func onUp(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: GestureStylusRef, _ x: Double, _ y: Double) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder3<GestureStylusRef, Double, Double, Void>
        let cCallback: @convention(c) (gpointer, gdouble, gdouble, gpointer) -> Void = { unownedSelf, arg1, arg2, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(GestureStylusRef(raw: unownedSelf), Double(arg1), Double(arg2))
            return output
        }
        return connect(
            signal: .up,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `up` signal for using the `connect(signal:)` methods
    static var upSignal: GestureStylusSignalName { .up }
    
    
}

// MARK: GestureStylus Class: GestureStylusProtocol extension (methods and fields)
public extension GestureStylusProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkGestureStylus` instance.
    @inlinable var gesture_stylus_ptr: UnsafeMutablePointer<GtkGestureStylus>! { return ptr?.assumingMemoryBound(to: GtkGestureStylus.self) }

    /// Returns the current values for the requested `axes`.
    /// 
    /// This function must be called from the handler of one of the
    /// [signal`Gtk.GestureStylus::down`], [signal`Gtk.GestureStylus::motion`],
    /// [signal`Gtk.GestureStylus::up`] or [signal`Gtk.GestureStylus::proximity`]
    /// signals.
    @inlinable func get(axes: UnsafeMutablePointer<GdkAxisUse>!, values: UnsafeMutablePointer<UnsafeMutablePointer<CDouble>?>!) -> Bool {
        let rv = ((gtk_gesture_stylus_get_axes(gesture_stylus_ptr, axes, values)) != 0)
        return rv
    }

    /// Returns the current value for the requested `axis`.
    /// 
    /// This function must be called from the handler of one of the
    /// [signal`Gtk.GestureStylus::down`], [signal`Gtk.GestureStylus::motion`],
    /// [signal`Gtk.GestureStylus::up`] or [signal`Gtk.GestureStylus::proximity`]
    /// signals.
    @inlinable func get(axis: GdkAxisUse, value: UnsafeMutablePointer<CDouble>!) -> Bool {
        let rv = ((gtk_gesture_stylus_get_axis(gesture_stylus_ptr, axis, value)) != 0)
        return rv
    }

    /// Returns the accumulated backlog of tracking information.
    /// 
    /// By default, GTK will limit rate of input events. On stylus input
    /// where accuracy of strokes is paramount, this function returns the
    /// accumulated coordinate/timing state before the emission of the
    /// current [Gtk.GestureStylus`motion`] signal.
    /// 
    /// This function may only be called within a [signal`Gtk.GestureStylus::motion`]
    /// signal handler, the state given in this signal and obtainable through
    /// [method`Gtk.GestureStylus.get_axis`] express the latest (most up-to-date)
    /// state in motion history.
    /// 
    /// The `backlog` is provided in chronological order.
    @inlinable func get(backlog: UnsafeMutablePointer<UnsafeMutablePointer<GdkTimeCoord>?>!, nElems: UnsafeMutablePointer<guint>!) -> Bool {
        let rv = ((gtk_gesture_stylus_get_backlog(gesture_stylus_ptr, backlog, nElems)) != 0)
        return rv
    }

    /// Returns the `GdkDeviceTool` currently driving input through this gesture.
    /// 
    /// This function must be called from the handler of one of the
    /// [signal`Gtk.GestureStylus::down`], [signal`Gtk.GestureStylus::motion`],
    /// [signal`Gtk.GestureStylus::up`] or [signal`Gtk.GestureStylus::proximity`]
    /// signals.
    @inlinable func getDeviceTool() -> Gdk.DeviceToolRef! {
        let rv = Gdk.DeviceToolRef(gtk_gesture_stylus_get_device_tool(gesture_stylus_ptr))
        return rv
    }
    /// Returns the `GdkDeviceTool` currently driving input through this gesture.
    /// 
    /// This function must be called from the handler of one of the
    /// [signal`Gtk.GestureStylus::down`], [signal`Gtk.GestureStylus::motion`],
    /// [signal`Gtk.GestureStylus::up`] or [signal`Gtk.GestureStylus::proximity`]
    /// signals.
    @inlinable var deviceTool: Gdk.DeviceToolRef! {
        /// Returns the `GdkDeviceTool` currently driving input through this gesture.
        /// 
        /// This function must be called from the handler of one of the
        /// [signal`Gtk.GestureStylus::down`], [signal`Gtk.GestureStylus::motion`],
        /// [signal`Gtk.GestureStylus::up`] or [signal`Gtk.GestureStylus::proximity`]
        /// signals.
        get {
            let rv = Gdk.DeviceToolRef(gtk_gesture_stylus_get_device_tool(gesture_stylus_ptr))
            return rv
        }
    }


}



// MARK: - GestureSwipe Class

/// `GtkGestureSwipe` is a `GtkGesture` for swipe gestures.
/// 
/// After a press/move/.../move/release sequence happens, the
/// [signal`Gtk.GestureSwipe::swipe`] signal will be emitted,
/// providing the velocity and directionality of the sequence
/// at the time it was lifted.
/// 
/// If the velocity is desired in intermediate points,
/// [method`Gtk.GestureSwipe.get_velocity`] can be called in a
/// [signal`Gtk.Gesture::update`] handler.
/// 
/// All velocities are reported in pixels/sec units.
///
/// The `GestureSwipeProtocol` protocol exposes the methods and properties of an underlying `GtkGestureSwipe` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `GestureSwipe`.
/// Alternatively, use `GestureSwipeRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol GestureSwipeProtocol: GestureSingleProtocol {
        /// Untyped pointer to the underlying `GtkGestureSwipe` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkGestureSwipe` instance.
    var gesture_swipe_ptr: UnsafeMutablePointer<GtkGestureSwipe>! { get }

    /// Required Initialiser for types conforming to `GestureSwipeProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GtkGestureSwipe` is a `GtkGesture` for swipe gestures.
/// 
/// After a press/move/.../move/release sequence happens, the
/// [signal`Gtk.GestureSwipe::swipe`] signal will be emitted,
/// providing the velocity and directionality of the sequence
/// at the time it was lifted.
/// 
/// If the velocity is desired in intermediate points,
/// [method`Gtk.GestureSwipe.get_velocity`] can be called in a
/// [signal`Gtk.Gesture::update`] handler.
/// 
/// All velocities are reported in pixels/sec units.
///
/// The `GestureSwipeRef` type acts as a lightweight Swift reference to an underlying `GtkGestureSwipe` instance.
/// It exposes methods that can operate on this data type through `GestureSwipeProtocol` conformance.
/// Use `GestureSwipeRef` only as an `unowned` reference to an existing `GtkGestureSwipe` instance.
///
public struct GestureSwipeRef: GestureSwipeProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkGestureSwipe` instance.
    /// For type-safe access, use the generated, typed pointer `gesture_swipe_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension GestureSwipeRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkGestureSwipe>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkGestureSwipe>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkGestureSwipe>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkGestureSwipe>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `GestureSwipeProtocol`
    @inlinable init<T: GestureSwipeProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: GestureSwipeProtocol>(_ other: T) -> GestureSwipeRef { GestureSwipeRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureSwipeProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureSwipeProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureSwipeProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureSwipeProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureSwipeProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Returns a newly created `GtkGesture` that recognizes swipes.
    @inlinable init() {
        let rv = gtk_gesture_swipe_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// `GtkGestureSwipe` is a `GtkGesture` for swipe gestures.
/// 
/// After a press/move/.../move/release sequence happens, the
/// [signal`Gtk.GestureSwipe::swipe`] signal will be emitted,
/// providing the velocity and directionality of the sequence
/// at the time it was lifted.
/// 
/// If the velocity is desired in intermediate points,
/// [method`Gtk.GestureSwipe.get_velocity`] can be called in a
/// [signal`Gtk.Gesture::update`] handler.
/// 
/// All velocities are reported in pixels/sec units.
///
/// The `GestureSwipe` type acts as a reference-counted owner of an underlying `GtkGestureSwipe` instance.
/// It provides the methods that can operate on this data type through `GestureSwipeProtocol` conformance.
/// Use `GestureSwipe` as a strong reference or owner of a `GtkGestureSwipe` instance.
///
open class GestureSwipe: GestureSingle, GestureSwipeProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GestureSwipe` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkGestureSwipe>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GestureSwipe` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkGestureSwipe>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GestureSwipe` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GestureSwipe` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GestureSwipe` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkGestureSwipe>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GestureSwipe` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkGestureSwipe>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkGestureSwipe`.
    /// i.e., ownership is transferred to the `GestureSwipe` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkGestureSwipe>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `GestureSwipeProtocol`
    /// Will retain `GtkGestureSwipe`.
    /// - Parameter other: an instance of a related type that implements `GestureSwipeProtocol`
    @inlinable public init<T: GestureSwipeProtocol>(gestureSwipe other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureSwipeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureSwipeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureSwipeProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureSwipeProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureSwipeProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureSwipeProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureSwipeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureSwipeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Returns a newly created `GtkGesture` that recognizes swipes.
    @inlinable public init() {
        let rv = gtk_gesture_swipe_new()
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum GestureSwipePropertyName: String, PropertyNameProtocol {
    /// Mouse button number to listen to, or 0 to listen for any button.
    case button = "button"
    /// Whether the gesture is exclusive.
    /// 
    /// Exclusive gestures only listen to pointer and pointer emulated events.
    case exclusive = "exclusive"
    /// The number of touch points that trigger
    /// recognition on this gesture.
    case nPoints = "n-points"
    /// The name for this controller, typically used for debugging purposes.
    case name = "name"
    /// The limit for which events this controller will handle.
    case propagationLimit = "propagation-limit"
    /// The propagation phase at which this controller will handle events.
    case propagationPhase = "propagation-phase"
    /// Whether the gesture handles only touch events.
    case touchOnly = "touch-only"
    /// The widget receiving the `GdkEvents` that the controller will handle.
    case widget = "widget"
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
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: GestureSwipePropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
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

    /// Get the value of a GestureSwipe property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: GestureSwipePropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a GestureSwipe property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: GestureSwipePropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum GestureSwipeSignalName: String, SignalNameProtocol {
    /// Emitted when the gesture is recognized.
    /// 
    /// This means the number of touch sequences matches
    /// [property`Gtk.Gesture:n-points`].
    /// 
    /// Note: These conditions may also happen when an extra touch
    /// (eg. a third touch on a 2-touches gesture) is lifted, in that
    /// situation `sequence` won't pertain to the current set of active
    /// touches, so don't rely on this being true.
    case begin = "begin"
    /// Emitted whenever a sequence is cancelled.
    /// 
    /// This usually happens on active touches when
    /// [method`Gtk.EventController.reset`] is called on `gesture`
    /// (manually, due to grabs...), or the individual `sequence`
    /// was claimed by parent widgets' controllers (see
    /// [method`Gtk.Gesture.set_sequence_state`]).
    /// 
    /// `gesture` must forget everything about `sequence` as in
    /// response to this signal.
    case cancel = "cancel"
    /// Emitted when `gesture` either stopped recognizing the event
    /// sequences as something to be handled, or the number of touch
    /// sequences became higher or lower than [property`Gtk.Gesture:n-points`].
    /// 
    /// Note: `sequence` might not pertain to the group of sequences that
    /// were previously triggering recognition on `gesture` (ie. a just
    /// pressed touch sequence that exceeds [property`Gtk.Gesture:n-points`]).
    /// This situation may be detected by checking through
    /// [method`Gtk.Gesture.handles_sequence`].
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// Emitted whenever a sequence state changes.
    /// 
    /// See [method`Gtk.Gesture.set_sequence_state`] to know
    /// more about the expectable sequence lifetimes.
    case sequenceStateChanged = "sequence-state-changed"
    /// Emitted when the recognized gesture is finished.
    /// 
    /// Velocity and direction are a product of previously recorded events.
    case swipe = "swipe"
    /// Emitted whenever an event is handled while the gesture is recognized.
    /// 
    /// `sequence` is guaranteed to pertain to the set of active touches.
    case update = "update"
    /// Mouse button number to listen to, or 0 to listen for any button.
    case notifyButton = "notify::button"
    /// Whether the gesture is exclusive.
    /// 
    /// Exclusive gestures only listen to pointer and pointer emulated events.
    case notifyExclusive = "notify::exclusive"
    /// The number of touch points that trigger
    /// recognition on this gesture.
    case notifyNPoints = "notify::n-points"
    /// The name for this controller, typically used for debugging purposes.
    case notifyName = "notify::name"
    /// The limit for which events this controller will handle.
    case notifyPropagationLimit = "notify::propagation-limit"
    /// The propagation phase at which this controller will handle events.
    case notifyPropagationPhase = "notify::propagation-phase"
    /// Whether the gesture handles only touch events.
    case notifyTouchOnly = "notify::touch-only"
    /// The widget receiving the `GdkEvents` that the controller will handle.
    case notifyWidget = "notify::widget"
}

// MARK: GestureSwipe signals
public extension GestureSwipeProtocol {
    /// Connect a Swift signal handler to the given, typed `GestureSwipeSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - handler: The Swift signal handler (function or callback) to invoke on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: GestureSwipeSignalName, flags f: ConnectFlags = ConnectFlags(0), handler h: @escaping SignalHandler) -> Int {
        connect(s, flags: f, handler: h)
    }
    
    
    /// Connect a C signal handler to the given, typed `GestureSwipeSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - signalHandler: The C function to be called on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: GestureSwipeSignalName, flags f: ConnectFlags = ConnectFlags(0), data userData: gpointer!, destroyData destructor: GClosureNotify? = nil, signalHandler h: @escaping GCallback) -> Int {
        connectSignal(s, flags: f, data: userData, destroyData: destructor, handler: h)
    }
    
    
    /// Emitted when the recognized gesture is finished.
    /// 
    /// Velocity and direction are a product of previously recorded events.
    /// - Note: This represents the underlying `swipe` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter velocityX: velocity in the X axis, in pixels/sec
    /// - Parameter velocityY: velocity in the Y axis, in pixels/sec
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `swipe` signal is emitted
    @discardableResult @inlinable func onSwipe(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: GestureSwipeRef, _ velocityX: Double, _ velocityY: Double) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder3<GestureSwipeRef, Double, Double, Void>
        let cCallback: @convention(c) (gpointer, gdouble, gdouble, gpointer) -> Void = { unownedSelf, arg1, arg2, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(GestureSwipeRef(raw: unownedSelf), Double(arg1), Double(arg2))
            return output
        }
        return connect(
            signal: .swipe,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `swipe` signal for using the `connect(signal:)` methods
    static var swipeSignal: GestureSwipeSignalName { .swipe }
    
    
}

// MARK: GestureSwipe Class: GestureSwipeProtocol extension (methods and fields)
public extension GestureSwipeProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkGestureSwipe` instance.
    @inlinable var gesture_swipe_ptr: UnsafeMutablePointer<GtkGestureSwipe>! { return ptr?.assumingMemoryBound(to: GtkGestureSwipe.self) }

    /// Gets the current velocity.
    /// 
    /// If the gesture is recognized, this function returns `true` and fills
    /// in `velocity_x` and `velocity_y` with the recorded velocity, as per the
    /// last events processed.
    @inlinable func getVelocity(velocityX: UnsafeMutablePointer<CDouble>!, velocityY: UnsafeMutablePointer<CDouble>!) -> Bool {
        let rv = ((gtk_gesture_swipe_get_velocity(gesture_swipe_ptr, velocityX, velocityY)) != 0)
        return rv
    }


}



// MARK: - GestureZoom Class

/// `GtkGestureZoom` is a `GtkGesture` for 2-finger pinch/zoom gestures.
/// 
/// Whenever the distance between both tracked sequences changes, the
/// [signal`Gtk.GestureZoom::scale-changed`] signal is emitted to report
/// the scale factor.
///
/// The `GestureZoomProtocol` protocol exposes the methods and properties of an underlying `GtkGestureZoom` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `GestureZoom`.
/// Alternatively, use `GestureZoomRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol GestureZoomProtocol: GestureProtocol {
        /// Untyped pointer to the underlying `GtkGestureZoom` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkGestureZoom` instance.
    var gesture_zoom_ptr: UnsafeMutablePointer<GtkGestureZoom>! { get }

    /// Required Initialiser for types conforming to `GestureZoomProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GtkGestureZoom` is a `GtkGesture` for 2-finger pinch/zoom gestures.
/// 
/// Whenever the distance between both tracked sequences changes, the
/// [signal`Gtk.GestureZoom::scale-changed`] signal is emitted to report
/// the scale factor.
///
/// The `GestureZoomRef` type acts as a lightweight Swift reference to an underlying `GtkGestureZoom` instance.
/// It exposes methods that can operate on this data type through `GestureZoomProtocol` conformance.
/// Use `GestureZoomRef` only as an `unowned` reference to an existing `GtkGestureZoom` instance.
///
public struct GestureZoomRef: GestureZoomProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkGestureZoom` instance.
    /// For type-safe access, use the generated, typed pointer `gesture_zoom_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension GestureZoomRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkGestureZoom>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkGestureZoom>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkGestureZoom>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkGestureZoom>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `GestureZoomProtocol`
    @inlinable init<T: GestureZoomProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: GestureZoomProtocol>(_ other: T) -> GestureZoomRef { GestureZoomRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureZoomProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureZoomProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureZoomProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureZoomProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureZoomProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Returns a newly created `GtkGesture` that recognizes
    /// pinch/zoom gestures.
    @inlinable init() {
        let rv = gtk_gesture_zoom_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// `GtkGestureZoom` is a `GtkGesture` for 2-finger pinch/zoom gestures.
/// 
/// Whenever the distance between both tracked sequences changes, the
/// [signal`Gtk.GestureZoom::scale-changed`] signal is emitted to report
/// the scale factor.
///
/// The `GestureZoom` type acts as a reference-counted owner of an underlying `GtkGestureZoom` instance.
/// It provides the methods that can operate on this data type through `GestureZoomProtocol` conformance.
/// Use `GestureZoom` as a strong reference or owner of a `GtkGestureZoom` instance.
///
open class GestureZoom: Gesture, GestureZoomProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GestureZoom` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkGestureZoom>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GestureZoom` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkGestureZoom>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GestureZoom` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GestureZoom` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GestureZoom` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkGestureZoom>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GestureZoom` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkGestureZoom>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkGestureZoom`.
    /// i.e., ownership is transferred to the `GestureZoom` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkGestureZoom>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `GestureZoomProtocol`
    /// Will retain `GtkGestureZoom`.
    /// - Parameter other: an instance of a related type that implements `GestureZoomProtocol`
    @inlinable public init<T: GestureZoomProtocol>(gestureZoom other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureZoomProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureZoomProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureZoomProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureZoomProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureZoomProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureZoomProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureZoomProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GestureZoomProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Returns a newly created `GtkGesture` that recognizes
    /// pinch/zoom gestures.
    @inlinable public init() {
        let rv = gtk_gesture_zoom_new()
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum GestureZoomPropertyName: String, PropertyNameProtocol {
    /// The number of touch points that trigger
    /// recognition on this gesture.
    case nPoints = "n-points"
    /// The name for this controller, typically used for debugging purposes.
    case name = "name"
    /// The limit for which events this controller will handle.
    case propagationLimit = "propagation-limit"
    /// The propagation phase at which this controller will handle events.
    case propagationPhase = "propagation-phase"
    /// The widget receiving the `GdkEvents` that the controller will handle.
    case widget = "widget"
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
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: GestureZoomPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
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

    /// Get the value of a GestureZoom property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: GestureZoomPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a GestureZoom property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: GestureZoomPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum GestureZoomSignalName: String, SignalNameProtocol {
    /// Emitted when the gesture is recognized.
    /// 
    /// This means the number of touch sequences matches
    /// [property`Gtk.Gesture:n-points`].
    /// 
    /// Note: These conditions may also happen when an extra touch
    /// (eg. a third touch on a 2-touches gesture) is lifted, in that
    /// situation `sequence` won't pertain to the current set of active
    /// touches, so don't rely on this being true.
    case begin = "begin"
    /// Emitted whenever a sequence is cancelled.
    /// 
    /// This usually happens on active touches when
    /// [method`Gtk.EventController.reset`] is called on `gesture`
    /// (manually, due to grabs...), or the individual `sequence`
    /// was claimed by parent widgets' controllers (see
    /// [method`Gtk.Gesture.set_sequence_state`]).
    /// 
    /// `gesture` must forget everything about `sequence` as in
    /// response to this signal.
    case cancel = "cancel"
    /// Emitted when `gesture` either stopped recognizing the event
    /// sequences as something to be handled, or the number of touch
    /// sequences became higher or lower than [property`Gtk.Gesture:n-points`].
    /// 
    /// Note: `sequence` might not pertain to the group of sequences that
    /// were previously triggering recognition on `gesture` (ie. a just
    /// pressed touch sequence that exceeds [property`Gtk.Gesture:n-points`]).
    /// This situation may be detected by checking through
    /// [method`Gtk.Gesture.handles_sequence`].
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// Emitted whenever the distance between both tracked sequences changes.
    case scaleChanged = "scale-changed"
    /// Emitted whenever a sequence state changes.
    /// 
    /// See [method`Gtk.Gesture.set_sequence_state`] to know
    /// more about the expectable sequence lifetimes.
    case sequenceStateChanged = "sequence-state-changed"
    /// Emitted whenever an event is handled while the gesture is recognized.
    /// 
    /// `sequence` is guaranteed to pertain to the set of active touches.
    case update = "update"
    /// The number of touch points that trigger
    /// recognition on this gesture.
    case notifyNPoints = "notify::n-points"
    /// The name for this controller, typically used for debugging purposes.
    case notifyName = "notify::name"
    /// The limit for which events this controller will handle.
    case notifyPropagationLimit = "notify::propagation-limit"
    /// The propagation phase at which this controller will handle events.
    case notifyPropagationPhase = "notify::propagation-phase"
    /// The widget receiving the `GdkEvents` that the controller will handle.
    case notifyWidget = "notify::widget"
}

// MARK: GestureZoom signals
public extension GestureZoomProtocol {
    /// Connect a Swift signal handler to the given, typed `GestureZoomSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - handler: The Swift signal handler (function or callback) to invoke on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: GestureZoomSignalName, flags f: ConnectFlags = ConnectFlags(0), handler h: @escaping SignalHandler) -> Int {
        connect(s, flags: f, handler: h)
    }
    
    
    /// Connect a C signal handler to the given, typed `GestureZoomSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - signalHandler: The C function to be called on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: GestureZoomSignalName, flags f: ConnectFlags = ConnectFlags(0), data userData: gpointer!, destroyData destructor: GClosureNotify? = nil, signalHandler h: @escaping GCallback) -> Int {
        connectSignal(s, flags: f, data: userData, destroyData: destructor, handler: h)
    }
    
    
    /// Emitted whenever the distance between both tracked sequences changes.
    /// - Note: This represents the underlying `scale-changed` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter scale: Scale delta, taking the initial state as 1:1
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `scaleChanged` signal is emitted
    @discardableResult @inlinable func onScaleChanged(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: GestureZoomRef, _ scale: Double) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<GestureZoomRef, Double, Void>
        let cCallback: @convention(c) (gpointer, gdouble, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(GestureZoomRef(raw: unownedSelf), Double(arg1))
            return output
        }
        return connect(
            signal: .scaleChanged,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `scale-changed` signal for using the `connect(signal:)` methods
    static var scaleChangedSignal: GestureZoomSignalName { .scaleChanged }
    
    
}

// MARK: GestureZoom Class: GestureZoomProtocol extension (methods and fields)
public extension GestureZoomProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkGestureZoom` instance.
    @inlinable var gesture_zoom_ptr: UnsafeMutablePointer<GtkGestureZoom>! { return ptr?.assumingMemoryBound(to: GtkGestureZoom.self) }

    /// Gets the scale delta.
    /// 
    /// If `gesture` is active, this function returns the zooming
    /// difference since the gesture was recognized (hence the
    /// starting point is considered 1:1). If `gesture` is not
    /// active, 1 is returned.
    @inlinable func getScaleDelta() -> CDouble {
        let rv = gtk_gesture_zoom_get_scale_delta(gesture_zoom_ptr)
        return rv
    }
    /// Gets the scale delta.
    /// 
    /// If `gesture` is active, this function returns the zooming
    /// difference since the gesture was recognized (hence the
    /// starting point is considered 1:1). If `gesture` is not
    /// active, 1 is returned.
    @inlinable var scaleDelta: CDouble {
        /// Gets the scale delta.
        /// 
        /// If `gesture` is active, this function returns the zooming
        /// difference since the gesture was recognized (hence the
        /// starting point is considered 1:1). If `gesture` is not
        /// active, 1 is returned.
        get {
            let rv = gtk_gesture_zoom_get_scale_delta(gesture_zoom_ptr)
            return rv
        }
    }


}



// MARK: - Grid Class

/// `GtkGrid` is a container which arranges its child widgets in
/// rows and columns.
/// 
/// ![An example GtkGrid](grid.png)
/// 
/// It supports arbitrary positions and horizontal/vertical spans.
/// 
/// Children are added using [method`Gtk.Grid.attach`]. They can span multiple
/// rows or columns. It is also possible to add a child next to an existing
/// child, using [method`Gtk.Grid.attach_next_to`]. To remove a child from the
/// grid, use [method`Gtk.Grid.remove`].
/// 
/// The behaviour of `GtkGrid` when several children occupy the same grid
/// cell is undefined.
/// 
/// # GtkGrid as GtkBuildable
/// 
/// Every child in a `GtkGrid` has access to a custom [iface`Gtk.Buildable`]
/// element, called `&lt;layout&gt;`. It can by used to specify a position in the
/// grid and optionally spans. All properties that can be used in the `&lt;layout&gt;`
/// element are implemented by [class`Gtk.GridLayoutChild`].
/// 
/// It is implemented by `GtkWidget` using [class`Gtk.LayoutManager`].
/// 
/// To showcase it, here is a simple example:
/// 
/// ```xml
/// &lt;object class="GtkGrid" id="my_grid"&gt;
///   &lt;child&gt;
///     &lt;object class="GtkButton" id="button1"&gt;
///       &lt;property name="label"&gt;Button 1&lt;/property&gt;
///       &lt;layout&gt;
///         &lt;property name="column"&gt;0&lt;/property&gt;
///         &lt;property name="row"&gt;0&lt;/property&gt;
///       &lt;/layout&gt;
///     &lt;/object&gt;
///   &lt;/child&gt;
///   &lt;child&gt;
///     &lt;object class="GtkButton" id="button2"&gt;
///       &lt;property name="label"&gt;Button 2&lt;/property&gt;
///       &lt;layout&gt;
///         &lt;property name="column"&gt;1&lt;/property&gt;
///         &lt;property name="row"&gt;0&lt;/property&gt;
///       &lt;/layout&gt;
///     &lt;/object&gt;
///   &lt;/child&gt;
///   &lt;child&gt;
///     &lt;object class="GtkButton" id="button3"&gt;
///       &lt;property name="label"&gt;Button 3&lt;/property&gt;
///       &lt;layout&gt;
///         &lt;property name="column"&gt;2&lt;/property&gt;
///         &lt;property name="row"&gt;0&lt;/property&gt;
///         &lt;property name="row-span"&gt;2&lt;/property&gt;
///       &lt;/layout&gt;
///     &lt;/object&gt;
///   &lt;/child&gt;
///   &lt;child&gt;
///     &lt;object class="GtkButton" id="button4"&gt;
///       &lt;property name="label"&gt;Button 4&lt;/property&gt;
///       &lt;layout&gt;
///         &lt;property name="column"&gt;0&lt;/property&gt;
///         &lt;property name="row"&gt;1&lt;/property&gt;
///         &lt;property name="column-span"&gt;2&lt;/property&gt;
///       &lt;/layout&gt;
///     &lt;/object&gt;
///   &lt;/child&gt;
/// &lt;/object&gt;
/// ```
/// 
/// It organizes the first two buttons side-by-side in one cell each.
/// The third button is in the last column but spans across two rows.
/// This is defined by the `row-span` property. The last button is
/// located in the second row and spans across two columns, which is
/// defined by the `column-span` property.
/// 
/// # CSS nodes
/// 
/// `GtkGrid` uses a single CSS node with name `grid`.
/// 
/// # Accessibility
/// 
/// `GtkGrid` uses the `GTK_ACCESSIBLE_ROLE_GROUP` role.
///
/// The `GridProtocol` protocol exposes the methods and properties of an underlying `GtkGrid` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Grid`.
/// Alternatively, use `GridRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol GridProtocol: WidgetProtocol, OrientableProtocol {
        /// Untyped pointer to the underlying `GtkGrid` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkGrid` instance.
    var grid_ptr: UnsafeMutablePointer<GtkGrid>! { get }

    /// Required Initialiser for types conforming to `GridProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GtkGrid` is a container which arranges its child widgets in
/// rows and columns.
/// 
/// ![An example GtkGrid](grid.png)
/// 
/// It supports arbitrary positions and horizontal/vertical spans.
/// 
/// Children are added using [method`Gtk.Grid.attach`]. They can span multiple
/// rows or columns. It is also possible to add a child next to an existing
/// child, using [method`Gtk.Grid.attach_next_to`]. To remove a child from the
/// grid, use [method`Gtk.Grid.remove`].
/// 
/// The behaviour of `GtkGrid` when several children occupy the same grid
/// cell is undefined.
/// 
/// # GtkGrid as GtkBuildable
/// 
/// Every child in a `GtkGrid` has access to a custom [iface`Gtk.Buildable`]
/// element, called `&lt;layout&gt;`. It can by used to specify a position in the
/// grid and optionally spans. All properties that can be used in the `&lt;layout&gt;`
/// element are implemented by [class`Gtk.GridLayoutChild`].
/// 
/// It is implemented by `GtkWidget` using [class`Gtk.LayoutManager`].
/// 
/// To showcase it, here is a simple example:
/// 
/// ```xml
/// &lt;object class="GtkGrid" id="my_grid"&gt;
///   &lt;child&gt;
///     &lt;object class="GtkButton" id="button1"&gt;
///       &lt;property name="label"&gt;Button 1&lt;/property&gt;
///       &lt;layout&gt;
///         &lt;property name="column"&gt;0&lt;/property&gt;
///         &lt;property name="row"&gt;0&lt;/property&gt;
///       &lt;/layout&gt;
///     &lt;/object&gt;
///   &lt;/child&gt;
///   &lt;child&gt;
///     &lt;object class="GtkButton" id="button2"&gt;
///       &lt;property name="label"&gt;Button 2&lt;/property&gt;
///       &lt;layout&gt;
///         &lt;property name="column"&gt;1&lt;/property&gt;
///         &lt;property name="row"&gt;0&lt;/property&gt;
///       &lt;/layout&gt;
///     &lt;/object&gt;
///   &lt;/child&gt;
///   &lt;child&gt;
///     &lt;object class="GtkButton" id="button3"&gt;
///       &lt;property name="label"&gt;Button 3&lt;/property&gt;
///       &lt;layout&gt;
///         &lt;property name="column"&gt;2&lt;/property&gt;
///         &lt;property name="row"&gt;0&lt;/property&gt;
///         &lt;property name="row-span"&gt;2&lt;/property&gt;
///       &lt;/layout&gt;
///     &lt;/object&gt;
///   &lt;/child&gt;
///   &lt;child&gt;
///     &lt;object class="GtkButton" id="button4"&gt;
///       &lt;property name="label"&gt;Button 4&lt;/property&gt;
///       &lt;layout&gt;
///         &lt;property name="column"&gt;0&lt;/property&gt;
///         &lt;property name="row"&gt;1&lt;/property&gt;
///         &lt;property name="column-span"&gt;2&lt;/property&gt;
///       &lt;/layout&gt;
///     &lt;/object&gt;
///   &lt;/child&gt;
/// &lt;/object&gt;
/// ```
/// 
/// It organizes the first two buttons side-by-side in one cell each.
/// The third button is in the last column but spans across two rows.
/// This is defined by the `row-span` property. The last button is
/// located in the second row and spans across two columns, which is
/// defined by the `column-span` property.
/// 
/// # CSS nodes
/// 
/// `GtkGrid` uses a single CSS node with name `grid`.
/// 
/// # Accessibility
/// 
/// `GtkGrid` uses the `GTK_ACCESSIBLE_ROLE_GROUP` role.
///
/// The `GridRef` type acts as a lightweight Swift reference to an underlying `GtkGrid` instance.
/// It exposes methods that can operate on this data type through `GridProtocol` conformance.
/// Use `GridRef` only as an `unowned` reference to an existing `GtkGrid` instance.
///
public struct GridRef: GridProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkGrid` instance.
    /// For type-safe access, use the generated, typed pointer `grid_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension GridRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkGrid>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkGrid>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkGrid>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkGrid>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `GridProtocol`
    @inlinable init<T: GridProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: GridProtocol>(_ other: T) -> GridRef { GridRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new grid widget.
    @inlinable init() {
        let rv = gtk_grid_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// `GtkGrid` is a container which arranges its child widgets in
/// rows and columns.
/// 
/// ![An example GtkGrid](grid.png)
/// 
/// It supports arbitrary positions and horizontal/vertical spans.
/// 
/// Children are added using [method`Gtk.Grid.attach`]. They can span multiple
/// rows or columns. It is also possible to add a child next to an existing
/// child, using [method`Gtk.Grid.attach_next_to`]. To remove a child from the
/// grid, use [method`Gtk.Grid.remove`].
/// 
/// The behaviour of `GtkGrid` when several children occupy the same grid
/// cell is undefined.
/// 
/// # GtkGrid as GtkBuildable
/// 
/// Every child in a `GtkGrid` has access to a custom [iface`Gtk.Buildable`]
/// element, called `&lt;layout&gt;`. It can by used to specify a position in the
/// grid and optionally spans. All properties that can be used in the `&lt;layout&gt;`
/// element are implemented by [class`Gtk.GridLayoutChild`].
/// 
/// It is implemented by `GtkWidget` using [class`Gtk.LayoutManager`].
/// 
/// To showcase it, here is a simple example:
/// 
/// ```xml
/// &lt;object class="GtkGrid" id="my_grid"&gt;
///   &lt;child&gt;
///     &lt;object class="GtkButton" id="button1"&gt;
///       &lt;property name="label"&gt;Button 1&lt;/property&gt;
///       &lt;layout&gt;
///         &lt;property name="column"&gt;0&lt;/property&gt;
///         &lt;property name="row"&gt;0&lt;/property&gt;
///       &lt;/layout&gt;
///     &lt;/object&gt;
///   &lt;/child&gt;
///   &lt;child&gt;
///     &lt;object class="GtkButton" id="button2"&gt;
///       &lt;property name="label"&gt;Button 2&lt;/property&gt;
///       &lt;layout&gt;
///         &lt;property name="column"&gt;1&lt;/property&gt;
///         &lt;property name="row"&gt;0&lt;/property&gt;
///       &lt;/layout&gt;
///     &lt;/object&gt;
///   &lt;/child&gt;
///   &lt;child&gt;
///     &lt;object class="GtkButton" id="button3"&gt;
///       &lt;property name="label"&gt;Button 3&lt;/property&gt;
///       &lt;layout&gt;
///         &lt;property name="column"&gt;2&lt;/property&gt;
///         &lt;property name="row"&gt;0&lt;/property&gt;
///         &lt;property name="row-span"&gt;2&lt;/property&gt;
///       &lt;/layout&gt;
///     &lt;/object&gt;
///   &lt;/child&gt;
///   &lt;child&gt;
///     &lt;object class="GtkButton" id="button4"&gt;
///       &lt;property name="label"&gt;Button 4&lt;/property&gt;
///       &lt;layout&gt;
///         &lt;property name="column"&gt;0&lt;/property&gt;
///         &lt;property name="row"&gt;1&lt;/property&gt;
///         &lt;property name="column-span"&gt;2&lt;/property&gt;
///       &lt;/layout&gt;
///     &lt;/object&gt;
///   &lt;/child&gt;
/// &lt;/object&gt;
/// ```
/// 
/// It organizes the first two buttons side-by-side in one cell each.
/// The third button is in the last column but spans across two rows.
/// This is defined by the `row-span` property. The last button is
/// located in the second row and spans across two columns, which is
/// defined by the `column-span` property.
/// 
/// # CSS nodes
/// 
/// `GtkGrid` uses a single CSS node with name `grid`.
/// 
/// # Accessibility
/// 
/// `GtkGrid` uses the `GTK_ACCESSIBLE_ROLE_GROUP` role.
///
/// The `Grid` type acts as a reference-counted owner of an underlying `GtkGrid` instance.
/// It provides the methods that can operate on this data type through `GridProtocol` conformance.
/// Use `Grid` as a strong reference or owner of a `GtkGrid` instance.
///
open class Grid: Widget, GridProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Grid` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkGrid>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Grid` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkGrid>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Grid` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Grid` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Grid` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkGrid>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Grid` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkGrid>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkGrid`.
    /// i.e., ownership is transferred to the `Grid` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkGrid>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `GridProtocol`
    /// Will retain `GtkGrid`.
    /// - Parameter other: an instance of a related type that implements `GridProtocol`
    @inlinable public init<T: GridProtocol>(grid other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new grid widget.
    @inlinable public init() {
        let rv = gtk_grid_new()
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum GridPropertyName: String, PropertyNameProtocol {
    /// The row to align to the baseline when valign is `GTK_ALIGN_BASELINE`.
    case baselineRow = "baseline-row"
    /// Whether the widget or any of its descendents can accept
    /// the input focus.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case canFocus = "can-focus"
    /// Whether the widget can receive pointer events.
    case canTarget = "can-target"
    /// If `true`, the columns are all the same width.
    case columnHomogeneous = "column-homogeneous"
    /// The amount of space between two consecutive columns.
    case columnSpacing = "column-spacing"
    /// A list of css classes applied to this widget.
    case cssClasses = "css-classes"
    /// The name of this widget in the CSS tree.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case cssName = "css-name"
    /// The cursor used by `widget`.
    case cursor = "cursor"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    case focusOnClick = "focus-on-click"
    /// Whether this widget itself will accept the input focus.
    case focusable = "focusable"
    /// How to distribute horizontal space if widget gets extra space.
    case halign = "halign"
    /// Whether the widget is the default widget.
    case hasDefault = "has-default"
    /// Whether the widget has the input focus.
    case hasFocus = "has-focus"
    /// Enables or disables the emission of the `query-tooltip` signal on `widget`.
    /// 
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using [signal`Gtk.Widget::query-tooltip`] to
    /// determine whether it will provide a tooltip or not.
    case hasTooltip = "has-tooltip"
    /// Override for height request of the widget.
    /// 
    /// If this is -1, the natural request will be used.
    case heightRequest = "height-request"
    /// Whether to expand horizontally.
    case hexpand = "hexpand"
    /// Whether to use the `hexpand` property.
    case hexpandSet = "hexpand-set"
    /// The `GtkLayoutManager` instance to use to compute the preferred size
    /// of the widget, and allocate its children.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case layoutManager = "layout-manager"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case marginBottom = "margin-bottom"
    /// Margin on end of widget, horizontally.
    /// 
    /// This property supports left-to-right and right-to-left text
    /// directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case marginEnd = "margin-end"
    /// Margin on start of widget, horizontally.
    /// 
    /// This property supports left-to-right and right-to-left text
    /// directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case marginStart = "margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case marginTop = "margin-top"
    /// The name of the widget.
    case name = "name"
    /// The requested opacity of the widget.
    case opacity = "opacity"
    /// How content outside the widget's content area is treated.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case overflow = "overflow"
    /// The parent widget of this widget.
    case parent = "parent"
    /// Whether the widget will receive the default action when it is focused.
    case receivesDefault = "receives-default"
    /// The `GtkRoot` widget of the widget tree containing this widget.
    /// 
    /// This will be `nil` if the widget is not contained in a root widget.
    case root = "root"
    /// If `true`, the rows are all the same height.
    case rowHomogeneous = "row-homogeneous"
    /// The amount of space between two consecutive rows.
    case rowSpacing = "row-spacing"
    /// The scale factor of the widget.
    case scaleFactor = "scale-factor"
    /// Whether the widget responds to input.
    case sensitive = "sensitive"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with Pango markup.
    /// 
    /// Also see [method`Gtk.Tooltip.set_markup`].
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`:
    /// [property`Gtk.Widget:has-tooltip`] will automatically be set to `true`
    /// and there will be taken care of [signal`Gtk.Widget::query-tooltip`] in
    /// the default signal handler.
    /// 
    /// Note that if both [property`Gtk.Widget:tooltip-text`] and
    /// [property`Gtk.Widget:tooltip-markup`] are set, the last one wins.
    case tooltipMarkup = "tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see [method`Gtk.Tooltip.set_text`].
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`:
    /// [property`Gtk.Widget:has-tooltip`] will automatically be set to `true`
    /// and there will be taken care of [signal`Gtk.Widget::query-tooltip`] in
    /// the default signal handler.
    /// 
    /// Note that if both [property`Gtk.Widget:tooltip-text`] and
    /// [property`Gtk.Widget:tooltip-markup`] are set, the last one wins.
    case tooltipText = "tooltip-text"
    /// How to distribute vertical space if widget gets extra space.
    case valign = "valign"
    /// Whether to expand vertically.
    case vexpand = "vexpand"
    /// Whether to use the `vexpand` property.
    case vexpandSet = "vexpand-set"
    /// Whether the widget is visible.
    case visible = "visible"
    /// Override for width request of the widget.
    /// 
    /// If this is -1, the natural request will be used.
    case widthRequest = "width-request"
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
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: GridPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
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

    /// Get the value of a Grid property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: GridPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Grid property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: GridPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum GridSignalName: String, SignalNameProtocol {
    /// Signals that all holders of a reference to the widget should release
    /// the reference that they hold.
    /// 
    /// May result in finalization of the widget if all references are released.
    /// 
    /// This signal is not suitable for saving widget state.
    case destroy = "destroy"
    /// Emitted when the text direction of a widget changes.
    case directionChanged = "direction-changed"
    /// Emitted when `widget` is hidden.
    case hide = "hide"
    /// Emitted if keyboard navigation fails.
    /// 
    /// See [method`Gtk.Widget.keynav_failed`] for details.
    case keynavFailed = "keynav-failed"
    /// Emitted when `widget` is going to be mapped.
    /// 
    /// A widget is mapped when the widget is visible (which is controlled with
    /// [property`Gtk.Widget:visible`]) and all its parents up to the toplevel widget
    /// are also visible.
    /// 
    /// The `map` signal can be used to determine whether a widget will be drawn,
    /// for instance it can resume an animation that was stopped during the
    /// emission of [signal`Gtk.Widget::unmap`].
    case map = "map"
    /// Emitted when a widget is activated via a mnemonic.
    /// 
    /// The default handler for this signal activates `widget` if `group_cycling`
    /// is `false`, or just makes `widget` grab focus if `group_cycling` is `true`.
    case mnemonicActivate = "mnemonic-activate"
    /// Emitted when the focus is moved.
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// Emitted when the widgets tooltip is about to be shown.
    /// 
    /// This happens when the [property`Gtk.Widget:has-tooltip`] property
    /// is `true` and the hover timeout has expired with the cursor hovering
    /// "above" `widget`; or emitted when `widget` got focus in keyboard mode.
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
    /// Emitted when `widget` is associated with a `GdkSurface`.
    /// 
    /// This means that [method`Gtk.Widget.realize`] has been called
    /// or the widget has been mapped (that is, it is going to be drawn).
    case realize = "realize"
    /// Emitted when `widget` is shown.
    case show = "show"
    /// Emitted when the widget state changes.
    /// 
    /// See [method`Gtk.Widget.get_state_flags`].
    case stateFlagsChanged = "state-flags-changed"
    /// Emitted when `widget` is going to be unmapped.
    /// 
    /// A widget is unmapped when either it or any of its parents up to the
    /// toplevel widget have been set as hidden.
    /// 
    /// As `unmap` indicates that a widget will not be shown any longer,
    /// it can be used to, for example, stop an animation on the widget.
    case unmap = "unmap"
    /// Emitted when the `GdkSurface` associated with `widget` is destroyed.
    /// 
    /// This means that [method`Gtk.Widget.unrealize`] has been called
    /// or the widget has been unmapped (that is, it is going to be hidden).
    case unrealize = "unrealize"
    /// The row to align to the baseline when valign is `GTK_ALIGN_BASELINE`.
    case notifyBaselineRow = "notify::baseline-row"
    /// Whether the widget or any of its descendents can accept
    /// the input focus.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyCanFocus = "notify::can-focus"
    /// Whether the widget can receive pointer events.
    case notifyCanTarget = "notify::can-target"
    /// If `true`, the columns are all the same width.
    case notifyColumnHomogeneous = "notify::column-homogeneous"
    /// The amount of space between two consecutive columns.
    case notifyColumnSpacing = "notify::column-spacing"
    /// A list of css classes applied to this widget.
    case notifyCssClasses = "notify::css-classes"
    /// The name of this widget in the CSS tree.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyCssName = "notify::css-name"
    /// The cursor used by `widget`.
    case notifyCursor = "notify::cursor"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    case notifyFocusOnClick = "notify::focus-on-click"
    /// Whether this widget itself will accept the input focus.
    case notifyFocusable = "notify::focusable"
    /// How to distribute horizontal space if widget gets extra space.
    case notifyHalign = "notify::halign"
    /// Whether the widget is the default widget.
    case notifyHasDefault = "notify::has-default"
    /// Whether the widget has the input focus.
    case notifyHasFocus = "notify::has-focus"
    /// Enables or disables the emission of the `query-tooltip` signal on `widget`.
    /// 
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using [signal`Gtk.Widget::query-tooltip`] to
    /// determine whether it will provide a tooltip or not.
    case notifyHasTooltip = "notify::has-tooltip"
    /// Override for height request of the widget.
    /// 
    /// If this is -1, the natural request will be used.
    case notifyHeightRequest = "notify::height-request"
    /// Whether to expand horizontally.
    case notifyHexpand = "notify::hexpand"
    /// Whether to use the `hexpand` property.
    case notifyHexpandSet = "notify::hexpand-set"
    /// The `GtkLayoutManager` instance to use to compute the preferred size
    /// of the widget, and allocate its children.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyLayoutManager = "notify::layout-manager"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case notifyMarginBottom = "notify::margin-bottom"
    /// Margin on end of widget, horizontally.
    /// 
    /// This property supports left-to-right and right-to-left text
    /// directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case notifyMarginEnd = "notify::margin-end"
    /// Margin on start of widget, horizontally.
    /// 
    /// This property supports left-to-right and right-to-left text
    /// directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case notifyMarginStart = "notify::margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case notifyMarginTop = "notify::margin-top"
    /// The name of the widget.
    case notifyName = "notify::name"
    /// The requested opacity of the widget.
    case notifyOpacity = "notify::opacity"
    /// How content outside the widget's content area is treated.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyOverflow = "notify::overflow"
    /// The parent widget of this widget.
    case notifyParent = "notify::parent"
    /// Whether the widget will receive the default action when it is focused.
    case notifyReceivesDefault = "notify::receives-default"
    /// The `GtkRoot` widget of the widget tree containing this widget.
    /// 
    /// This will be `nil` if the widget is not contained in a root widget.
    case notifyRoot = "notify::root"
    /// If `true`, the rows are all the same height.
    case notifyRowHomogeneous = "notify::row-homogeneous"
    /// The amount of space between two consecutive rows.
    case notifyRowSpacing = "notify::row-spacing"
    /// The scale factor of the widget.
    case notifyScaleFactor = "notify::scale-factor"
    /// Whether the widget responds to input.
    case notifySensitive = "notify::sensitive"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with Pango markup.
    /// 
    /// Also see [method`Gtk.Tooltip.set_markup`].
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`:
    /// [property`Gtk.Widget:has-tooltip`] will automatically be set to `true`
    /// and there will be taken care of [signal`Gtk.Widget::query-tooltip`] in
    /// the default signal handler.
    /// 
    /// Note that if both [property`Gtk.Widget:tooltip-text`] and
    /// [property`Gtk.Widget:tooltip-markup`] are set, the last one wins.
    case notifyTooltipMarkup = "notify::tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see [method`Gtk.Tooltip.set_text`].
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`:
    /// [property`Gtk.Widget:has-tooltip`] will automatically be set to `true`
    /// and there will be taken care of [signal`Gtk.Widget::query-tooltip`] in
    /// the default signal handler.
    /// 
    /// Note that if both [property`Gtk.Widget:tooltip-text`] and
    /// [property`Gtk.Widget:tooltip-markup`] are set, the last one wins.
    case notifyTooltipText = "notify::tooltip-text"
    /// How to distribute vertical space if widget gets extra space.
    case notifyValign = "notify::valign"
    /// Whether to expand vertically.
    case notifyVexpand = "notify::vexpand"
    /// Whether to use the `vexpand` property.
    case notifyVexpandSet = "notify::vexpand-set"
    /// Whether the widget is visible.
    case notifyVisible = "notify::visible"
    /// Override for width request of the widget.
    /// 
    /// If this is -1, the natural request will be used.
    case notifyWidthRequest = "notify::width-request"
}

// MARK: Grid has no signals
// MARK: Grid Class: GridProtocol extension (methods and fields)
public extension GridProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkGrid` instance.
    @inlinable var grid_ptr: UnsafeMutablePointer<GtkGrid>! { return ptr?.assumingMemoryBound(to: GtkGrid.self) }

    /// Adds a widget to the grid.
    /// 
    /// The position of `child` is determined by `column` and `row`.
    /// The number of “cells” that `child` will occupy is determined
    /// by `width` and `height`.
    @inlinable func attach<WidgetT: WidgetProtocol>(child: WidgetT, column: Int, row: Int, width: Int, height: Int) {
        gtk_grid_attach(grid_ptr, child.widget_ptr, gint(column), gint(row), gint(width), gint(height))
    
    }

    /// Adds a widget to the grid.
    /// 
    /// The widget is placed next to `sibling`, on the side determined by
    /// `side`. When `sibling` is `nil`, the widget is placed in row (for
    /// left or right placement) or column 0 (for top or bottom placement),
    /// at the end indicated by `side`.
    /// 
    /// Attaching widgets labeled `[1]`, `[2]`, `[3]` with ``sibling` == `nil`` and
    /// ``side` == `GTK_POS_LEFT`` yields a layout of `[3](#2)(#1)`.
    @inlinable func attachNextTo<WidgetT: WidgetProtocol>(child: WidgetT, sibling: WidgetT?, side: GtkPositionType, width: Int, height: Int) {
        gtk_grid_attach_next_to(grid_ptr, child.widget_ptr, sibling?.widget_ptr, side, gint(width), gint(height))
    
    }

    /// Returns which row defines the global baseline of `grid`.
    @inlinable func getBaselineRow() -> Int {
        let rv = Int(gtk_grid_get_baseline_row(grid_ptr))
        return rv
    }

    /// Gets the child of `grid` whose area covers the grid
    /// cell at `column`, `row`.
    @inlinable func getChildAt(column: Int, row: Int) -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_grid_get_child_at(grid_ptr, gint(column), gint(row)))) else { return nil }
        return rv
    }

    /// Returns whether all columns of `grid` have the same width.
    @inlinable func getColumnHomogeneous() -> Bool {
        let rv = ((gtk_grid_get_column_homogeneous(grid_ptr)) != 0)
        return rv
    }

    /// Returns the amount of space between the columns of `grid`.
    @inlinable func getColumnSpacing() -> Int {
        let rv = Int(gtk_grid_get_column_spacing(grid_ptr))
        return rv
    }

    /// Returns the baseline position of `row`.
    /// 
    /// See [method`Gtk.Grid.set_row_baseline_position`].
    @inlinable func getRowBaselinePosition(row: Int) -> GtkBaselinePosition {
        let rv = gtk_grid_get_row_baseline_position(grid_ptr, gint(row))
        return rv
    }

    /// Returns whether all rows of `grid` have the same height.
    @inlinable func getRowHomogeneous() -> Bool {
        let rv = ((gtk_grid_get_row_homogeneous(grid_ptr)) != 0)
        return rv
    }

    /// Returns the amount of space between the rows of `grid`.
    @inlinable func getRowSpacing() -> Int {
        let rv = Int(gtk_grid_get_row_spacing(grid_ptr))
        return rv
    }

    /// Inserts a column at the specified position.
    /// 
    /// Children which are attached at or to the right of this position
    /// are moved one column to the right. Children which span across this
    /// position are grown to span the new column.
    @inlinable func insertColumn(position: Int) {
        gtk_grid_insert_column(grid_ptr, gint(position))
    
    }

    /// Inserts a row or column at the specified position.
    /// 
    /// The new row or column is placed next to `sibling`, on the side
    /// determined by `side`. If `side` is `GTK_POS_TOP` or `GTK_POS_BOTTOM`,
    /// a row is inserted. If `side` is `GTK_POS_LEFT` of `GTK_POS_RIGHT`,
    /// a column is inserted.
    @inlinable func insertNextTo<WidgetT: WidgetProtocol>(sibling: WidgetT, side: GtkPositionType) {
        gtk_grid_insert_next_to(grid_ptr, sibling.widget_ptr, side)
    
    }

    /// Inserts a row at the specified position.
    /// 
    /// Children which are attached at or below this position
    /// are moved one row down. Children which span across this
    /// position are grown to span the new row.
    @inlinable func insertRow(position: Int) {
        gtk_grid_insert_row(grid_ptr, gint(position))
    
    }

    /// Queries the attach points and spans of `child` inside the given `GtkGrid`.
    @inlinable func query<WidgetT: WidgetProtocol>(child: WidgetT, column: UnsafeMutablePointer<gint>! = nil, row: UnsafeMutablePointer<gint>! = nil, width: UnsafeMutablePointer<gint>! = nil, height: UnsafeMutablePointer<gint>! = nil) {
        gtk_grid_query_child(grid_ptr, child.widget_ptr, column, row, width, height)
    
    }

    /// Removes a child from `grid`.
    /// 
    /// The child must have been added with
    /// [method`Gtk.Grid.attach`] or [method`Gtk.Grid.attach_next_to`].
    @inlinable func remove<WidgetT: WidgetProtocol>(child: WidgetT) {
        gtk_grid_remove(grid_ptr, child.widget_ptr)
    
    }

    /// Removes a column from the grid.
    /// 
    /// Children that are placed in this column are removed,
    /// spanning children that overlap this column have their
    /// width reduced by one, and children after the column
    /// are moved to the left.
    @inlinable func removeColumn(position: Int) {
        gtk_grid_remove_column(grid_ptr, gint(position))
    
    }

    /// Removes a row from the grid.
    /// 
    /// Children that are placed in this row are removed,
    /// spanning children that overlap this row have their
    /// height reduced by one, and children below the row
    /// are moved up.
    @inlinable func removeRow(position: Int) {
        gtk_grid_remove_row(grid_ptr, gint(position))
    
    }

    /// Sets which row defines the global baseline for the entire grid.
    /// 
    /// Each row in the grid can have its own local baseline, but only
    /// one of those is global, meaning it will be the baseline in the
    /// parent of the `grid`.
    @inlinable func setBaseline(row: Int) {
        gtk_grid_set_baseline_row(grid_ptr, gint(row))
    
    }

    /// Sets whether all columns of `grid` will have the same width.
    @inlinable func setColumn(homogeneous: Bool) {
        gtk_grid_set_column_homogeneous(grid_ptr, gboolean((homogeneous) ? 1 : 0))
    
    }

    /// Sets the amount of space between columns of `grid`.
    @inlinable func setColumn(spacing: Int) {
        gtk_grid_set_column_spacing(grid_ptr, guint(spacing))
    
    }

    /// Sets how the baseline should be positioned on `row` of the
    /// grid, in case that row is assigned more space than is requested.
    /// 
    /// The default baseline position is `GTK_BASELINE_POSITION_CENTER`.
    @inlinable func setRowBaselinePosition(row: Int, pos: GtkBaselinePosition) {
        gtk_grid_set_row_baseline_position(grid_ptr, gint(row), pos)
    
    }

    /// Sets whether all rows of `grid` will have the same height.
    @inlinable func setRow(homogeneous: Bool) {
        gtk_grid_set_row_homogeneous(grid_ptr, gboolean((homogeneous) ? 1 : 0))
    
    }

    /// Sets the amount of space between rows of `grid`.
    @inlinable func setRow(spacing: Int) {
        gtk_grid_set_row_spacing(grid_ptr, guint(spacing))
    
    }
    /// Returns which row defines the global baseline of `grid`.
    @inlinable var baselineRow: Int {
        /// Returns which row defines the global baseline of `grid`.
        get {
            let rv = Int(gtk_grid_get_baseline_row(grid_ptr))
            return rv
        }
        /// Sets which row defines the global baseline for the entire grid.
        /// 
        /// Each row in the grid can have its own local baseline, but only
        /// one of those is global, meaning it will be the baseline in the
        /// parent of the `grid`.
        nonmutating set {
            gtk_grid_set_baseline_row(grid_ptr, gint(newValue))
        }
    }

    /// Returns whether all columns of `grid` have the same width.
    @inlinable var columnHomogeneous: Bool {
        /// Returns whether all columns of `grid` have the same width.
        get {
            let rv = ((gtk_grid_get_column_homogeneous(grid_ptr)) != 0)
            return rv
        }
        /// Sets whether all columns of `grid` will have the same width.
        nonmutating set {
            gtk_grid_set_column_homogeneous(grid_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Returns the amount of space between the columns of `grid`.
    @inlinable var columnSpacing: Int {
        /// Returns the amount of space between the columns of `grid`.
        get {
            let rv = Int(gtk_grid_get_column_spacing(grid_ptr))
            return rv
        }
        /// Sets the amount of space between columns of `grid`.
        nonmutating set {
            gtk_grid_set_column_spacing(grid_ptr, guint(newValue))
        }
    }

    /// Returns whether all rows of `grid` have the same height.
    @inlinable var rowHomogeneous: Bool {
        /// Returns whether all rows of `grid` have the same height.
        get {
            let rv = ((gtk_grid_get_row_homogeneous(grid_ptr)) != 0)
            return rv
        }
        /// Sets whether all rows of `grid` will have the same height.
        nonmutating set {
            gtk_grid_set_row_homogeneous(grid_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Returns the amount of space between the rows of `grid`.
    @inlinable var rowSpacing: Int {
        /// Returns the amount of space between the rows of `grid`.
        get {
            let rv = Int(gtk_grid_get_row_spacing(grid_ptr))
            return rv
        }
        /// Sets the amount of space between rows of `grid`.
        nonmutating set {
            gtk_grid_set_row_spacing(grid_ptr, guint(newValue))
        }
    }

    // var parentInstance is unavailable because parent_instance is private

}



// MARK: - GridLayout Class

/// `GtkGridLayout` is a layout manager which arranges child widgets in
/// rows and columns.
/// 
/// Children have an "attach point" defined by the horizontal and vertical
/// index of the cell they occupy; children can span multiple rows or columns.
/// The layout properties for setting the attach points and spans are set
/// using the [class`Gtk.GridLayoutChild`] associated to each child widget.
/// 
/// The behaviour of `GtkGridLayout` when several children occupy the same
/// grid cell is undefined.
/// 
/// `GtkGridLayout` can be used like a `GtkBoxLayout` if all children are
/// attached to the same row or column; however, if you only ever need a
/// single row or column, you should consider using `GtkBoxLayout`.
///
/// The `GridLayoutProtocol` protocol exposes the methods and properties of an underlying `GtkGridLayout` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `GridLayout`.
/// Alternatively, use `GridLayoutRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol GridLayoutProtocol: LayoutManagerProtocol {
        /// Untyped pointer to the underlying `GtkGridLayout` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkGridLayout` instance.
    var grid_layout_ptr: UnsafeMutablePointer<GtkGridLayout>! { get }

    /// Required Initialiser for types conforming to `GridLayoutProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GtkGridLayout` is a layout manager which arranges child widgets in
/// rows and columns.
/// 
/// Children have an "attach point" defined by the horizontal and vertical
/// index of the cell they occupy; children can span multiple rows or columns.
/// The layout properties for setting the attach points and spans are set
/// using the [class`Gtk.GridLayoutChild`] associated to each child widget.
/// 
/// The behaviour of `GtkGridLayout` when several children occupy the same
/// grid cell is undefined.
/// 
/// `GtkGridLayout` can be used like a `GtkBoxLayout` if all children are
/// attached to the same row or column; however, if you only ever need a
/// single row or column, you should consider using `GtkBoxLayout`.
///
/// The `GridLayoutRef` type acts as a lightweight Swift reference to an underlying `GtkGridLayout` instance.
/// It exposes methods that can operate on this data type through `GridLayoutProtocol` conformance.
/// Use `GridLayoutRef` only as an `unowned` reference to an existing `GtkGridLayout` instance.
///
public struct GridLayoutRef: GridLayoutProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkGridLayout` instance.
    /// For type-safe access, use the generated, typed pointer `grid_layout_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension GridLayoutRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkGridLayout>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkGridLayout>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkGridLayout>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkGridLayout>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `GridLayoutProtocol`
    @inlinable init<T: GridLayoutProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: GridLayoutProtocol>(_ other: T) -> GridLayoutRef { GridLayoutRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridLayoutProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridLayoutProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridLayoutProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridLayoutProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridLayoutProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkGridLayout`.
    @inlinable init() {
        let rv = gtk_grid_layout_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// `GtkGridLayout` is a layout manager which arranges child widgets in
/// rows and columns.
/// 
/// Children have an "attach point" defined by the horizontal and vertical
/// index of the cell they occupy; children can span multiple rows or columns.
/// The layout properties for setting the attach points and spans are set
/// using the [class`Gtk.GridLayoutChild`] associated to each child widget.
/// 
/// The behaviour of `GtkGridLayout` when several children occupy the same
/// grid cell is undefined.
/// 
/// `GtkGridLayout` can be used like a `GtkBoxLayout` if all children are
/// attached to the same row or column; however, if you only ever need a
/// single row or column, you should consider using `GtkBoxLayout`.
///
/// The `GridLayout` type acts as a reference-counted owner of an underlying `GtkGridLayout` instance.
/// It provides the methods that can operate on this data type through `GridLayoutProtocol` conformance.
/// Use `GridLayout` as a strong reference or owner of a `GtkGridLayout` instance.
///
open class GridLayout: LayoutManager, GridLayoutProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GridLayout` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkGridLayout>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GridLayout` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkGridLayout>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GridLayout` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GridLayout` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GridLayout` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkGridLayout>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GridLayout` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkGridLayout>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkGridLayout`.
    /// i.e., ownership is transferred to the `GridLayout` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkGridLayout>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `GridLayoutProtocol`
    /// Will retain `GtkGridLayout`.
    /// - Parameter other: an instance of a related type that implements `GridLayoutProtocol`
    @inlinable public init<T: GridLayoutProtocol>(gridLayout other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridLayoutProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridLayoutProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridLayoutProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridLayoutProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridLayoutProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridLayoutProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridLayoutProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridLayoutProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkGridLayout`.
    @inlinable public init() {
        let rv = gtk_grid_layout_new()
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum GridLayoutPropertyName: String, PropertyNameProtocol {
    /// The row to align to the baseline, when `GtkWidget:valign` is set
    /// to `GTK_ALIGN_BASELINE`.
    case baselineRow = "baseline-row"
    /// Whether all the columns in the grid have the same width.
    case columnHomogeneous = "column-homogeneous"
    /// The amount of space between to consecutive columns.
    case columnSpacing = "column-spacing"
    /// Whether all the rows in the grid have the same height.
    case rowHomogeneous = "row-homogeneous"
    /// The amount of space between to consecutive rows.
    case rowSpacing = "row-spacing"
}

public extension GridLayoutProtocol {
    /// Bind a `GridLayoutPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: GridLayoutPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
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

    /// Get the value of a GridLayout property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: GridLayoutPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a GridLayout property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: GridLayoutPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum GridLayoutSignalName: String, SignalNameProtocol {
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// The row to align to the baseline, when `GtkWidget:valign` is set
    /// to `GTK_ALIGN_BASELINE`.
    case notifyBaselineRow = "notify::baseline-row"
    /// Whether all the columns in the grid have the same width.
    case notifyColumnHomogeneous = "notify::column-homogeneous"
    /// The amount of space between to consecutive columns.
    case notifyColumnSpacing = "notify::column-spacing"
    /// Whether all the rows in the grid have the same height.
    case notifyRowHomogeneous = "notify::row-homogeneous"
    /// The amount of space between to consecutive rows.
    case notifyRowSpacing = "notify::row-spacing"
}

// MARK: GridLayout has no signals
// MARK: GridLayout Class: GridLayoutProtocol extension (methods and fields)
public extension GridLayoutProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkGridLayout` instance.
    @inlinable var grid_layout_ptr: UnsafeMutablePointer<GtkGridLayout>! { return ptr?.assumingMemoryBound(to: GtkGridLayout.self) }

    /// Retrieves the row set with `gtk_grid_layout_set_baseline_row()`.
    @inlinable func getBaselineRow() -> Int {
        let rv = Int(gtk_grid_layout_get_baseline_row(grid_layout_ptr))
        return rv
    }

    /// Checks whether all columns of `grid` should have the same width.
    @inlinable func getColumnHomogeneous() -> Bool {
        let rv = ((gtk_grid_layout_get_column_homogeneous(grid_layout_ptr)) != 0)
        return rv
    }

    /// Retrieves the spacing set with `gtk_grid_layout_set_column_spacing()`.
    @inlinable func getColumnSpacing() -> Int {
        let rv = Int(gtk_grid_layout_get_column_spacing(grid_layout_ptr))
        return rv
    }

    /// Returns the baseline position of `row`.
    /// 
    /// If no value has been set with
    /// [method`Gtk.GridLayout.set_row_baseline_position`],
    /// the default value of `GTK_BASELINE_POSITION_CENTER`
    /// is returned.
    @inlinable func getRowBaselinePosition(row: Int) -> GtkBaselinePosition {
        let rv = gtk_grid_layout_get_row_baseline_position(grid_layout_ptr, gint(row))
        return rv
    }

    /// Checks whether all rows of `grid` should have the same height.
    @inlinable func getRowHomogeneous() -> Bool {
        let rv = ((gtk_grid_layout_get_row_homogeneous(grid_layout_ptr)) != 0)
        return rv
    }

    /// Retrieves the spacing set with `gtk_grid_layout_set_row_spacing()`.
    @inlinable func getRowSpacing() -> Int {
        let rv = Int(gtk_grid_layout_get_row_spacing(grid_layout_ptr))
        return rv
    }

    /// Sets which row defines the global baseline for the entire grid.
    /// 
    /// Each row in the grid can have its own local baseline, but only
    /// one of those is global, meaning it will be the baseline in the
    /// parent of the `grid`.
    @inlinable func setBaseline(row: Int) {
        gtk_grid_layout_set_baseline_row(grid_layout_ptr, gint(row))
    
    }

    /// Sets whether all columns of `grid` should have the same width.
    @inlinable func setColumn(homogeneous: Bool) {
        gtk_grid_layout_set_column_homogeneous(grid_layout_ptr, gboolean((homogeneous) ? 1 : 0))
    
    }

    /// Sets the amount of space to insert between consecutive columns.
    @inlinable func setColumn(spacing: Int) {
        gtk_grid_layout_set_column_spacing(grid_layout_ptr, guint(spacing))
    
    }

    /// Sets how the baseline should be positioned on `row` of the
    /// grid, in case that row is assigned more space than is requested.
    @inlinable func setRowBaselinePosition(row: Int, pos: GtkBaselinePosition) {
        gtk_grid_layout_set_row_baseline_position(grid_layout_ptr, gint(row), pos)
    
    }

    /// Sets whether all rows of `grid` should have the same height.
    @inlinable func setRow(homogeneous: Bool) {
        gtk_grid_layout_set_row_homogeneous(grid_layout_ptr, gboolean((homogeneous) ? 1 : 0))
    
    }

    /// Sets the amount of space to insert between consecutive rows.
    @inlinable func setRow(spacing: Int) {
        gtk_grid_layout_set_row_spacing(grid_layout_ptr, guint(spacing))
    
    }
    /// Retrieves the row set with `gtk_grid_layout_set_baseline_row()`.
    @inlinable var baselineRow: Int {
        /// Retrieves the row set with `gtk_grid_layout_set_baseline_row()`.
        get {
            let rv = Int(gtk_grid_layout_get_baseline_row(grid_layout_ptr))
            return rv
        }
        /// Sets which row defines the global baseline for the entire grid.
        /// 
        /// Each row in the grid can have its own local baseline, but only
        /// one of those is global, meaning it will be the baseline in the
        /// parent of the `grid`.
        nonmutating set {
            gtk_grid_layout_set_baseline_row(grid_layout_ptr, gint(newValue))
        }
    }

    /// Checks whether all columns of `grid` should have the same width.
    @inlinable var columnHomogeneous: Bool {
        /// Checks whether all columns of `grid` should have the same width.
        get {
            let rv = ((gtk_grid_layout_get_column_homogeneous(grid_layout_ptr)) != 0)
            return rv
        }
        /// Sets whether all columns of `grid` should have the same width.
        nonmutating set {
            gtk_grid_layout_set_column_homogeneous(grid_layout_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Retrieves the spacing set with `gtk_grid_layout_set_column_spacing()`.
    @inlinable var columnSpacing: Int {
        /// Retrieves the spacing set with `gtk_grid_layout_set_column_spacing()`.
        get {
            let rv = Int(gtk_grid_layout_get_column_spacing(grid_layout_ptr))
            return rv
        }
        /// Sets the amount of space to insert between consecutive columns.
        nonmutating set {
            gtk_grid_layout_set_column_spacing(grid_layout_ptr, guint(newValue))
        }
    }

    /// Checks whether all rows of `grid` should have the same height.
    @inlinable var rowHomogeneous: Bool {
        /// Checks whether all rows of `grid` should have the same height.
        get {
            let rv = ((gtk_grid_layout_get_row_homogeneous(grid_layout_ptr)) != 0)
            return rv
        }
        /// Sets whether all rows of `grid` should have the same height.
        nonmutating set {
            gtk_grid_layout_set_row_homogeneous(grid_layout_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Retrieves the spacing set with `gtk_grid_layout_set_row_spacing()`.
    @inlinable var rowSpacing: Int {
        /// Retrieves the spacing set with `gtk_grid_layout_set_row_spacing()`.
        get {
            let rv = Int(gtk_grid_layout_get_row_spacing(grid_layout_ptr))
            return rv
        }
        /// Sets the amount of space to insert between consecutive rows.
        nonmutating set {
            gtk_grid_layout_set_row_spacing(grid_layout_ptr, guint(newValue))
        }
    }


}



// MARK: - GridLayoutChild Class

/// `GtkLayoutChild` subclass for children in a `GtkGridLayout`.
///
/// The `GridLayoutChildProtocol` protocol exposes the methods and properties of an underlying `GtkGridLayoutChild` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `GridLayoutChild`.
/// Alternatively, use `GridLayoutChildRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol GridLayoutChildProtocol: LayoutChildProtocol {
        /// Untyped pointer to the underlying `GtkGridLayoutChild` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkGridLayoutChild` instance.
    var grid_layout_child_ptr: UnsafeMutablePointer<GtkGridLayoutChild>! { get }

    /// Required Initialiser for types conforming to `GridLayoutChildProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GtkLayoutChild` subclass for children in a `GtkGridLayout`.
///
/// The `GridLayoutChildRef` type acts as a lightweight Swift reference to an underlying `GtkGridLayoutChild` instance.
/// It exposes methods that can operate on this data type through `GridLayoutChildProtocol` conformance.
/// Use `GridLayoutChildRef` only as an `unowned` reference to an existing `GtkGridLayoutChild` instance.
///
public struct GridLayoutChildRef: GridLayoutChildProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkGridLayoutChild` instance.
    /// For type-safe access, use the generated, typed pointer `grid_layout_child_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension GridLayoutChildRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkGridLayoutChild>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkGridLayoutChild>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkGridLayoutChild>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkGridLayoutChild>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `GridLayoutChildProtocol`
    @inlinable init<T: GridLayoutChildProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: GridLayoutChildProtocol>(_ other: T) -> GridLayoutChildRef { GridLayoutChildRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridLayoutChildProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridLayoutChildProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridLayoutChildProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridLayoutChildProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridLayoutChildProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// `GtkLayoutChild` subclass for children in a `GtkGridLayout`.
///
/// The `GridLayoutChild` type acts as a reference-counted owner of an underlying `GtkGridLayoutChild` instance.
/// It provides the methods that can operate on this data type through `GridLayoutChildProtocol` conformance.
/// Use `GridLayoutChild` as a strong reference or owner of a `GtkGridLayoutChild` instance.
///
open class GridLayoutChild: LayoutChild, GridLayoutChildProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GridLayoutChild` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkGridLayoutChild>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GridLayoutChild` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkGridLayoutChild>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GridLayoutChild` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GridLayoutChild` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GridLayoutChild` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkGridLayoutChild>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GridLayoutChild` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkGridLayoutChild>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkGridLayoutChild`.
    /// i.e., ownership is transferred to the `GridLayoutChild` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkGridLayoutChild>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `GridLayoutChildProtocol`
    /// Will retain `GtkGridLayoutChild`.
    /// - Parameter other: an instance of a related type that implements `GridLayoutChildProtocol`
    @inlinable public init<T: GridLayoutChildProtocol>(gridLayoutChild other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridLayoutChildProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridLayoutChildProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridLayoutChildProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridLayoutChildProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridLayoutChildProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridLayoutChildProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridLayoutChildProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridLayoutChildProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum GridLayoutChildPropertyName: String, PropertyNameProtocol {
    /// The widget that is associated to the `GtkLayoutChild` instance.
    case childWidget = "child-widget"
    /// The column to place the child in.
    case column = "column"
    /// The number of columns the child spans to.
    case columnSpan = "column-span"
    /// The layout manager that created the `GtkLayoutChild` instance.
    case layoutManager = "layout-manager"
    /// The row to place the child in.
    case row = "row"
    /// The number of rows the child spans to.
    case rowSpan = "row-span"
}

public extension GridLayoutChildProtocol {
    /// Bind a `GridLayoutChildPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: GridLayoutChildPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
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

    /// Get the value of a GridLayoutChild property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: GridLayoutChildPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a GridLayoutChild property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: GridLayoutChildPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum GridLayoutChildSignalName: String, SignalNameProtocol {
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// The widget that is associated to the `GtkLayoutChild` instance.
    case notifyChildWidget = "notify::child-widget"
    /// The column to place the child in.
    case notifyColumn = "notify::column"
    /// The number of columns the child spans to.
    case notifyColumnSpan = "notify::column-span"
    /// The layout manager that created the `GtkLayoutChild` instance.
    case notifyLayoutManager = "notify::layout-manager"
    /// The row to place the child in.
    case notifyRow = "notify::row"
    /// The number of rows the child spans to.
    case notifyRowSpan = "notify::row-span"
}

// MARK: GridLayoutChild has no signals
// MARK: GridLayoutChild Class: GridLayoutChildProtocol extension (methods and fields)
public extension GridLayoutChildProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkGridLayoutChild` instance.
    @inlinable var grid_layout_child_ptr: UnsafeMutablePointer<GtkGridLayoutChild>! { return ptr?.assumingMemoryBound(to: GtkGridLayoutChild.self) }

    /// Retrieves the column number to which `child` attaches its left side.
    @inlinable func getColumn() -> Int {
        let rv = Int(gtk_grid_layout_child_get_column(grid_layout_child_ptr))
        return rv
    }

    /// Retrieves the number of columns that `child` spans to.
    @inlinable func getColumnSpan() -> Int {
        let rv = Int(gtk_grid_layout_child_get_column_span(grid_layout_child_ptr))
        return rv
    }

    /// Retrieves the row number to which `child` attaches its top side.
    @inlinable func getRow() -> Int {
        let rv = Int(gtk_grid_layout_child_get_row(grid_layout_child_ptr))
        return rv
    }

    /// Retrieves the number of rows that `child` spans to.
    @inlinable func getRowSpan() -> Int {
        let rv = Int(gtk_grid_layout_child_get_row_span(grid_layout_child_ptr))
        return rv
    }

    /// Sets the column number to attach the left side of `child`.
    @inlinable func set(column: Int) {
        gtk_grid_layout_child_set_column(grid_layout_child_ptr, gint(column))
    
    }

    /// Sets the number of columns `child` spans to.
    @inlinable func setColumn(span: Int) {
        gtk_grid_layout_child_set_column_span(grid_layout_child_ptr, gint(span))
    
    }

    /// Sets the row to place `child` in.
    @inlinable func set(row: Int) {
        gtk_grid_layout_child_set_row(grid_layout_child_ptr, gint(row))
    
    }

    /// Sets the number of rows `child` spans to.
    @inlinable func setRow(span: Int) {
        gtk_grid_layout_child_set_row_span(grid_layout_child_ptr, gint(span))
    
    }
    /// The column to place the child in.
    @inlinable var column: Int {
        /// Retrieves the column number to which `child` attaches its left side.
        get {
            let rv = Int(gtk_grid_layout_child_get_column(grid_layout_child_ptr))
            return rv
        }
        /// Sets the column number to attach the left side of `child`.
        nonmutating set {
            gtk_grid_layout_child_set_column(grid_layout_child_ptr, gint(newValue))
        }
    }

    /// Retrieves the number of columns that `child` spans to.
    @inlinable var columnSpan: Int {
        /// Retrieves the number of columns that `child` spans to.
        get {
            let rv = Int(gtk_grid_layout_child_get_column_span(grid_layout_child_ptr))
            return rv
        }
        /// Sets the number of columns `child` spans to.
        nonmutating set {
            gtk_grid_layout_child_set_column_span(grid_layout_child_ptr, gint(newValue))
        }
    }

    /// The row to place the child in.
    @inlinable var row: Int {
        /// Retrieves the row number to which `child` attaches its top side.
        get {
            let rv = Int(gtk_grid_layout_child_get_row(grid_layout_child_ptr))
            return rv
        }
        /// Sets the row to place `child` in.
        nonmutating set {
            gtk_grid_layout_child_set_row(grid_layout_child_ptr, gint(newValue))
        }
    }

    /// Retrieves the number of rows that `child` spans to.
    @inlinable var rowSpan: Int {
        /// Retrieves the number of rows that `child` spans to.
        get {
            let rv = Int(gtk_grid_layout_child_get_row_span(grid_layout_child_ptr))
            return rv
        }
        /// Sets the number of rows `child` spans to.
        nonmutating set {
            gtk_grid_layout_child_set_row_span(grid_layout_child_ptr, gint(newValue))
        }
    }


}



// MARK: - GridView Class

/// `GtkGridView` presents a large dynamic grid of items.
/// 
/// `GtkGridView` uses its factory to generate one child widget for each
/// visible item and shows them in a grid. The orientation of the grid view
/// determines if the grid reflows vertically or horizontally.
/// 
/// `GtkGridView` allows the user to select items according to the selection
/// characteristics of the model. For models that allow multiple selected items,
/// it is possible to turn on _rubberband selection_, using
/// [property`Gtk.GridView:enable-rubberband`].
/// 
/// To learn more about the list widget framework, see the
/// [overview](section-list-widget.html).
/// 
/// # CSS nodes
/// 
/// ```
/// gridview
/// ├── child[.activatable]
/// │
/// ├── child[.activatable]
/// │
/// ┊
/// ╰── [rubberband]
/// ```
/// 
/// `GtkGridView` uses a single CSS node with name `gridview`. Each child uses
/// a single CSS node with name `child`. If the [property`Gtk.ListItem:activatable`]
/// property is set, the corresponding row will have the `.activatable` style
/// class. For rubberband selection, a subnode with name `rubberband` is used.
/// 
/// # Accessibility
/// 
/// `GtkGridView` uses the `GTK_ACCESSIBLE_ROLE_GRID` role, and the items
/// use the `GTK_ACCESSIBLE_ROLE_GRID_CELL` role.
///
/// The `GridViewProtocol` protocol exposes the methods and properties of an underlying `GtkGridView` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `GridView`.
/// Alternatively, use `GridViewRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol GridViewProtocol: ListBaseProtocol {
        /// Untyped pointer to the underlying `GtkGridView` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkGridView` instance.
    var grid_view_ptr: UnsafeMutablePointer<GtkGridView>! { get }

    /// Required Initialiser for types conforming to `GridViewProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GtkGridView` presents a large dynamic grid of items.
/// 
/// `GtkGridView` uses its factory to generate one child widget for each
/// visible item and shows them in a grid. The orientation of the grid view
/// determines if the grid reflows vertically or horizontally.
/// 
/// `GtkGridView` allows the user to select items according to the selection
/// characteristics of the model. For models that allow multiple selected items,
/// it is possible to turn on _rubberband selection_, using
/// [property`Gtk.GridView:enable-rubberband`].
/// 
/// To learn more about the list widget framework, see the
/// [overview](section-list-widget.html).
/// 
/// # CSS nodes
/// 
/// ```
/// gridview
/// ├── child[.activatable]
/// │
/// ├── child[.activatable]
/// │
/// ┊
/// ╰── [rubberband]
/// ```
/// 
/// `GtkGridView` uses a single CSS node with name `gridview`. Each child uses
/// a single CSS node with name `child`. If the [property`Gtk.ListItem:activatable`]
/// property is set, the corresponding row will have the `.activatable` style
/// class. For rubberband selection, a subnode with name `rubberband` is used.
/// 
/// # Accessibility
/// 
/// `GtkGridView` uses the `GTK_ACCESSIBLE_ROLE_GRID` role, and the items
/// use the `GTK_ACCESSIBLE_ROLE_GRID_CELL` role.
///
/// The `GridViewRef` type acts as a lightweight Swift reference to an underlying `GtkGridView` instance.
/// It exposes methods that can operate on this data type through `GridViewProtocol` conformance.
/// Use `GridViewRef` only as an `unowned` reference to an existing `GtkGridView` instance.
///
public struct GridViewRef: GridViewProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkGridView` instance.
    /// For type-safe access, use the generated, typed pointer `grid_view_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension GridViewRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkGridView>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkGridView>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkGridView>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkGridView>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `GridViewProtocol`
    @inlinable init<T: GridViewProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: GridViewProtocol>(_ other: T) -> GridViewRef { GridViewRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridViewProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridViewProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridViewProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridViewProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridViewProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkGridView` that uses the given `factory` for
    /// mapping items to widgets.
    /// 
    /// The function takes ownership of the
    /// arguments, so you can write code like
    /// ```c
    /// grid_view = gtk_grid_view_new (create_model (),
    ///   gtk_builder_list_item_factory_new_from_resource ("/resource.ui"));
    /// ```
    @inlinable init<ListItemFactoryT: ListItemFactoryProtocol, SelectionModelT: SelectionModelProtocol>( model: SelectionModelT?, factory: ListItemFactoryT?) {
        let rv = gtk_grid_view_new(model?.selection_model_ptr, factory?.list_item_factory_ptr)
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// `GtkGridView` presents a large dynamic grid of items.
/// 
/// `GtkGridView` uses its factory to generate one child widget for each
/// visible item and shows them in a grid. The orientation of the grid view
/// determines if the grid reflows vertically or horizontally.
/// 
/// `GtkGridView` allows the user to select items according to the selection
/// characteristics of the model. For models that allow multiple selected items,
/// it is possible to turn on _rubberband selection_, using
/// [property`Gtk.GridView:enable-rubberband`].
/// 
/// To learn more about the list widget framework, see the
/// [overview](section-list-widget.html).
/// 
/// # CSS nodes
/// 
/// ```
/// gridview
/// ├── child[.activatable]
/// │
/// ├── child[.activatable]
/// │
/// ┊
/// ╰── [rubberband]
/// ```
/// 
/// `GtkGridView` uses a single CSS node with name `gridview`. Each child uses
/// a single CSS node with name `child`. If the [property`Gtk.ListItem:activatable`]
/// property is set, the corresponding row will have the `.activatable` style
/// class. For rubberband selection, a subnode with name `rubberband` is used.
/// 
/// # Accessibility
/// 
/// `GtkGridView` uses the `GTK_ACCESSIBLE_ROLE_GRID` role, and the items
/// use the `GTK_ACCESSIBLE_ROLE_GRID_CELL` role.
///
/// The `GridView` type acts as a reference-counted owner of an underlying `GtkGridView` instance.
/// It provides the methods that can operate on this data type through `GridViewProtocol` conformance.
/// Use `GridView` as a strong reference or owner of a `GtkGridView` instance.
///
open class GridView: ListBase, GridViewProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GridView` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkGridView>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GridView` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkGridView>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GridView` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GridView` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GridView` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkGridView>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `GridView` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkGridView>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkGridView`.
    /// i.e., ownership is transferred to the `GridView` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkGridView>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `GridViewProtocol`
    /// Will retain `GtkGridView`.
    /// - Parameter other: an instance of a related type that implements `GridViewProtocol`
    @inlinable public init<T: GridViewProtocol>(gridView other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridViewProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridViewProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridViewProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridViewProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridViewProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridViewProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridViewProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `GridViewProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkGridView` that uses the given `factory` for
    /// mapping items to widgets.
    /// 
    /// The function takes ownership of the
    /// arguments, so you can write code like
    /// ```c
    /// grid_view = gtk_grid_view_new (create_model (),
    ///   gtk_builder_list_item_factory_new_from_resource ("/resource.ui"));
    /// ```
    @inlinable public init<ListItemFactoryT: ListItemFactoryProtocol, SelectionModelT: SelectionModelProtocol>( model: SelectionModelT?, factory: ListItemFactoryT?) {
        let rv = gtk_grid_view_new(model?.selection_model_ptr, factory?.list_item_factory_ptr)
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum GridViewPropertyName: String, PropertyNameProtocol {
    /// Whether the widget or any of its descendents can accept
    /// the input focus.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case canFocus = "can-focus"
    /// Whether the widget can receive pointer events.
    case canTarget = "can-target"
    /// A list of css classes applied to this widget.
    case cssClasses = "css-classes"
    /// The name of this widget in the CSS tree.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case cssName = "css-name"
    /// The cursor used by `widget`.
    case cursor = "cursor"
    /// Allow rubberband selection.
    case enableRubberband = "enable-rubberband"
    /// Factory for populating list items.
    case factory = "factory"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    case focusOnClick = "focus-on-click"
    /// Whether this widget itself will accept the input focus.
    case focusable = "focusable"
    /// How to distribute horizontal space if widget gets extra space.
    case halign = "halign"
    /// Whether the widget is the default widget.
    case hasDefault = "has-default"
    /// Whether the widget has the input focus.
    case hasFocus = "has-focus"
    /// Enables or disables the emission of the `query-tooltip` signal on `widget`.
    /// 
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using [signal`Gtk.Widget::query-tooltip`] to
    /// determine whether it will provide a tooltip or not.
    case hasTooltip = "has-tooltip"
    /// Override for height request of the widget.
    /// 
    /// If this is -1, the natural request will be used.
    case heightRequest = "height-request"
    /// Whether to expand horizontally.
    case hexpand = "hexpand"
    /// Whether to use the `hexpand` property.
    case hexpandSet = "hexpand-set"
    /// The `GtkLayoutManager` instance to use to compute the preferred size
    /// of the widget, and allocate its children.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case layoutManager = "layout-manager"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case marginBottom = "margin-bottom"
    /// Margin on end of widget, horizontally.
    /// 
    /// This property supports left-to-right and right-to-left text
    /// directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case marginEnd = "margin-end"
    /// Margin on start of widget, horizontally.
    /// 
    /// This property supports left-to-right and right-to-left text
    /// directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case marginStart = "margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case marginTop = "margin-top"
    /// Maximum number of columns per row.
    /// 
    /// If this number is smaller than [property`Gtk.GridView:min-columns`],
    /// that value is used instead.
    case maxColumns = "max-columns"
    /// Minimum number of columns per row.
    case minColumns = "min-columns"
    /// Model for the items displayed.
    case model = "model"
    /// The name of the widget.
    case name = "name"
    /// The requested opacity of the widget.
    case opacity = "opacity"
    /// The orientation of the list. See GtkOrientable:orientation
    /// for details.
    case orientation = "orientation"
    /// How content outside the widget's content area is treated.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case overflow = "overflow"
    /// The parent widget of this widget.
    case parent = "parent"
    /// Whether the widget will receive the default action when it is focused.
    case receivesDefault = "receives-default"
    /// The `GtkRoot` widget of the widget tree containing this widget.
    /// 
    /// This will be `nil` if the widget is not contained in a root widget.
    case root = "root"
    /// The scale factor of the widget.
    case scaleFactor = "scale-factor"
    /// Whether the widget responds to input.
    case sensitive = "sensitive"
    /// Activate rows on single click and select them on hover.
    case singleClickActivate = "single-click-activate"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with Pango markup.
    /// 
    /// Also see [method`Gtk.Tooltip.set_markup`].
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`:
    /// [property`Gtk.Widget:has-tooltip`] will automatically be set to `true`
    /// and there will be taken care of [signal`Gtk.Widget::query-tooltip`] in
    /// the default signal handler.
    /// 
    /// Note that if both [property`Gtk.Widget:tooltip-text`] and
    /// [property`Gtk.Widget:tooltip-markup`] are set, the last one wins.
    case tooltipMarkup = "tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see [method`Gtk.Tooltip.set_text`].
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`:
    /// [property`Gtk.Widget:has-tooltip`] will automatically be set to `true`
    /// and there will be taken care of [signal`Gtk.Widget::query-tooltip`] in
    /// the default signal handler.
    /// 
    /// Note that if both [property`Gtk.Widget:tooltip-text`] and
    /// [property`Gtk.Widget:tooltip-markup`] are set, the last one wins.
    case tooltipText = "tooltip-text"
    /// How to distribute vertical space if widget gets extra space.
    case valign = "valign"
    /// Whether to expand vertically.
    case vexpand = "vexpand"
    /// Whether to use the `vexpand` property.
    case vexpandSet = "vexpand-set"
    /// Whether the widget is visible.
    case visible = "visible"
    /// Override for width request of the widget.
    /// 
    /// If this is -1, the natural request will be used.
    case widthRequest = "width-request"
}

public extension GridViewProtocol {
    /// Bind a `GridViewPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: GridViewPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
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

    /// Get the value of a GridView property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: GridViewPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a GridView property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: GridViewPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum GridViewSignalName: String, SignalNameProtocol {
    /// Emitted when a cell has been activated by the user,
    /// usually via activating the GtkGridView|list.activate-item action.
    /// 
    /// This allows for a convenient way to handle activation in a gridview.
    /// See [property`Gtk.ListItem:activatable`] for details on how to use
    /// this signal.
    case activate = "activate"
    /// Signals that all holders of a reference to the widget should release
    /// the reference that they hold.
    /// 
    /// May result in finalization of the widget if all references are released.
    /// 
    /// This signal is not suitable for saving widget state.
    case destroy = "destroy"
    /// Emitted when the text direction of a widget changes.
    case directionChanged = "direction-changed"
    /// Emitted when `widget` is hidden.
    case hide = "hide"
    /// Emitted if keyboard navigation fails.
    /// 
    /// See [method`Gtk.Widget.keynav_failed`] for details.
    case keynavFailed = "keynav-failed"
    /// Emitted when `widget` is going to be mapped.
    /// 
    /// A widget is mapped when the widget is visible (which is controlled with
    /// [property`Gtk.Widget:visible`]) and all its parents up to the toplevel widget
    /// are also visible.
    /// 
    /// The `map` signal can be used to determine whether a widget will be drawn,
    /// for instance it can resume an animation that was stopped during the
    /// emission of [signal`Gtk.Widget::unmap`].
    case map = "map"
    /// Emitted when a widget is activated via a mnemonic.
    /// 
    /// The default handler for this signal activates `widget` if `group_cycling`
    /// is `false`, or just makes `widget` grab focus if `group_cycling` is `true`.
    case mnemonicActivate = "mnemonic-activate"
    /// Emitted when the focus is moved.
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// Emitted when the widgets tooltip is about to be shown.
    /// 
    /// This happens when the [property`Gtk.Widget:has-tooltip`] property
    /// is `true` and the hover timeout has expired with the cursor hovering
    /// "above" `widget`; or emitted when `widget` got focus in keyboard mode.
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
    /// Emitted when `widget` is associated with a `GdkSurface`.
    /// 
    /// This means that [method`Gtk.Widget.realize`] has been called
    /// or the widget has been mapped (that is, it is going to be drawn).
    case realize = "realize"
    /// Emitted when `widget` is shown.
    case show = "show"
    /// Emitted when the widget state changes.
    /// 
    /// See [method`Gtk.Widget.get_state_flags`].
    case stateFlagsChanged = "state-flags-changed"
    /// Emitted when `widget` is going to be unmapped.
    /// 
    /// A widget is unmapped when either it or any of its parents up to the
    /// toplevel widget have been set as hidden.
    /// 
    /// As `unmap` indicates that a widget will not be shown any longer,
    /// it can be used to, for example, stop an animation on the widget.
    case unmap = "unmap"
    /// Emitted when the `GdkSurface` associated with `widget` is destroyed.
    /// 
    /// This means that [method`Gtk.Widget.unrealize`] has been called
    /// or the widget has been unmapped (that is, it is going to be hidden).
    case unrealize = "unrealize"
    /// Whether the widget or any of its descendents can accept
    /// the input focus.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyCanFocus = "notify::can-focus"
    /// Whether the widget can receive pointer events.
    case notifyCanTarget = "notify::can-target"
    /// A list of css classes applied to this widget.
    case notifyCssClasses = "notify::css-classes"
    /// The name of this widget in the CSS tree.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyCssName = "notify::css-name"
    /// The cursor used by `widget`.
    case notifyCursor = "notify::cursor"
    /// Allow rubberband selection.
    case notifyEnableRubberband = "notify::enable-rubberband"
    /// Factory for populating list items.
    case notifyFactory = "notify::factory"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    case notifyFocusOnClick = "notify::focus-on-click"
    /// Whether this widget itself will accept the input focus.
    case notifyFocusable = "notify::focusable"
    /// How to distribute horizontal space if widget gets extra space.
    case notifyHalign = "notify::halign"
    /// Whether the widget is the default widget.
    case notifyHasDefault = "notify::has-default"
    /// Whether the widget has the input focus.
    case notifyHasFocus = "notify::has-focus"
    /// Enables or disables the emission of the `query-tooltip` signal on `widget`.
    /// 
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using [signal`Gtk.Widget::query-tooltip`] to
    /// determine whether it will provide a tooltip or not.
    case notifyHasTooltip = "notify::has-tooltip"
    /// Override for height request of the widget.
    /// 
    /// If this is -1, the natural request will be used.
    case notifyHeightRequest = "notify::height-request"
    /// Whether to expand horizontally.
    case notifyHexpand = "notify::hexpand"
    /// Whether to use the `hexpand` property.
    case notifyHexpandSet = "notify::hexpand-set"
    /// The `GtkLayoutManager` instance to use to compute the preferred size
    /// of the widget, and allocate its children.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyLayoutManager = "notify::layout-manager"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case notifyMarginBottom = "notify::margin-bottom"
    /// Margin on end of widget, horizontally.
    /// 
    /// This property supports left-to-right and right-to-left text
    /// directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case notifyMarginEnd = "notify::margin-end"
    /// Margin on start of widget, horizontally.
    /// 
    /// This property supports left-to-right and right-to-left text
    /// directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case notifyMarginStart = "notify::margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case notifyMarginTop = "notify::margin-top"
    /// Maximum number of columns per row.
    /// 
    /// If this number is smaller than [property`Gtk.GridView:min-columns`],
    /// that value is used instead.
    case notifyMaxColumns = "notify::max-columns"
    /// Minimum number of columns per row.
    case notifyMinColumns = "notify::min-columns"
    /// Model for the items displayed.
    case notifyModel = "notify::model"
    /// The name of the widget.
    case notifyName = "notify::name"
    /// The requested opacity of the widget.
    case notifyOpacity = "notify::opacity"
    /// The orientation of the list. See GtkOrientable:orientation
    /// for details.
    case notifyOrientation = "notify::orientation"
    /// How content outside the widget's content area is treated.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyOverflow = "notify::overflow"
    /// The parent widget of this widget.
    case notifyParent = "notify::parent"
    /// Whether the widget will receive the default action when it is focused.
    case notifyReceivesDefault = "notify::receives-default"
    /// The `GtkRoot` widget of the widget tree containing this widget.
    /// 
    /// This will be `nil` if the widget is not contained in a root widget.
    case notifyRoot = "notify::root"
    /// The scale factor of the widget.
    case notifyScaleFactor = "notify::scale-factor"
    /// Whether the widget responds to input.
    case notifySensitive = "notify::sensitive"
    /// Activate rows on single click and select them on hover.
    case notifySingleClickActivate = "notify::single-click-activate"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with Pango markup.
    /// 
    /// Also see [method`Gtk.Tooltip.set_markup`].
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`:
    /// [property`Gtk.Widget:has-tooltip`] will automatically be set to `true`
    /// and there will be taken care of [signal`Gtk.Widget::query-tooltip`] in
    /// the default signal handler.
    /// 
    /// Note that if both [property`Gtk.Widget:tooltip-text`] and
    /// [property`Gtk.Widget:tooltip-markup`] are set, the last one wins.
    case notifyTooltipMarkup = "notify::tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see [method`Gtk.Tooltip.set_text`].
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`:
    /// [property`Gtk.Widget:has-tooltip`] will automatically be set to `true`
    /// and there will be taken care of [signal`Gtk.Widget::query-tooltip`] in
    /// the default signal handler.
    /// 
    /// Note that if both [property`Gtk.Widget:tooltip-text`] and
    /// [property`Gtk.Widget:tooltip-markup`] are set, the last one wins.
    case notifyTooltipText = "notify::tooltip-text"
    /// How to distribute vertical space if widget gets extra space.
    case notifyValign = "notify::valign"
    /// Whether to expand vertically.
    case notifyVexpand = "notify::vexpand"
    /// Whether to use the `vexpand` property.
    case notifyVexpandSet = "notify::vexpand-set"
    /// Whether the widget is visible.
    case notifyVisible = "notify::visible"
    /// Override for width request of the widget.
    /// 
    /// If this is -1, the natural request will be used.
    case notifyWidthRequest = "notify::width-request"
}

// MARK: GridView signals
public extension GridViewProtocol {
    /// Connect a Swift signal handler to the given, typed `GridViewSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - handler: The Swift signal handler (function or callback) to invoke on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: GridViewSignalName, flags f: ConnectFlags = ConnectFlags(0), handler h: @escaping SignalHandler) -> Int {
        connect(s, flags: f, handler: h)
    }
    
    
    /// Connect a C signal handler to the given, typed `GridViewSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - signalHandler: The C function to be called on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: GridViewSignalName, flags f: ConnectFlags = ConnectFlags(0), data userData: gpointer!, destroyData destructor: GClosureNotify? = nil, signalHandler h: @escaping GCallback) -> Int {
        connectSignal(s, flags: f, data: userData, destroyData: destructor, handler: h)
    }
    
    
    /// Emitted when a cell has been activated by the user,
    /// usually via activating the GtkGridView|list.activate-item action.
    /// 
    /// This allows for a convenient way to handle activation in a gridview.
    /// See [property`Gtk.ListItem:activatable`] for details on how to use
    /// this signal.
    /// - Note: This represents the underlying `activate` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter position: position of item to activate
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `activate` signal is emitted
    @discardableResult @inlinable func onActivate(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: GridViewRef, _ position: UInt) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<GridViewRef, UInt, Void>
        let cCallback: @convention(c) (gpointer, guint, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(GridViewRef(raw: unownedSelf), UInt(arg1))
            return output
        }
        return connect(
            signal: .activate,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `activate` signal for using the `connect(signal:)` methods
    static var activateSignal: GridViewSignalName { .activate }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::enable-rubberband` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyEnableRubberband` signal is emitted
    @discardableResult @inlinable func onNotifyEnableRubberband(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: GridViewRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<GridViewRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(GridViewRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyEnableRubberband,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::enable-rubberband` signal for using the `connect(signal:)` methods
    static var notifyEnableRubberbandSignal: GridViewSignalName { .notifyEnableRubberband }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::factory` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyFactory` signal is emitted
    @discardableResult @inlinable func onNotifyFactory(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: GridViewRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<GridViewRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(GridViewRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyFactory,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::factory` signal for using the `connect(signal:)` methods
    static var notifyFactorySignal: GridViewSignalName { .notifyFactory }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::max-columns` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyMaxColumns` signal is emitted
    @discardableResult @inlinable func onNotifyMaxColumns(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: GridViewRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<GridViewRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(GridViewRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyMaxColumns,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::max-columns` signal for using the `connect(signal:)` methods
    static var notifyMaxColumnsSignal: GridViewSignalName { .notifyMaxColumns }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::min-columns` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyMinColumns` signal is emitted
    @discardableResult @inlinable func onNotifyMinColumns(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: GridViewRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<GridViewRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(GridViewRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyMinColumns,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::min-columns` signal for using the `connect(signal:)` methods
    static var notifyMinColumnsSignal: GridViewSignalName { .notifyMinColumns }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::model` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifyModel` signal is emitted
    @discardableResult @inlinable func onNotifyModel(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: GridViewRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<GridViewRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(GridViewRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifyModel,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::model` signal for using the `connect(signal:)` methods
    static var notifyModelSignal: GridViewSignalName { .notifyModel }
    
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    /// - Note: This represents the underlying `notify::single-click-activate` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notifySingleClickActivate` signal is emitted
    @discardableResult @inlinable func onNotifySingleClickActivate(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: GridViewRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder2<GridViewRef, ParamSpecRef, Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call(GridViewRef(raw: unownedSelf), ParamSpecRef(raw: arg1))
            return output
        }
        return connect(
            signal: .notifySingleClickActivate,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify::single-click-activate` signal for using the `connect(signal:)` methods
    static var notifySingleClickActivateSignal: GridViewSignalName { .notifySingleClickActivate }
    
}

// MARK: GridView Class: GridViewProtocol extension (methods and fields)
public extension GridViewProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkGridView` instance.
    @inlinable var grid_view_ptr: UnsafeMutablePointer<GtkGridView>! { return ptr?.assumingMemoryBound(to: GtkGridView.self) }

    /// Returns whether rows can be selected by dragging with the mouse.
    @inlinable func getEnableRubberband() -> Bool {
        let rv = ((gtk_grid_view_get_enable_rubberband(grid_view_ptr)) != 0)
        return rv
    }

    /// Gets the factory that's currently used to populate list items.
    @inlinable func getFactory() -> ListItemFactoryRef! {
        let rv = ListItemFactoryRef(gconstpointer: gconstpointer(gtk_grid_view_get_factory(grid_view_ptr)))
        return rv
    }

    /// Gets the maximum number of columns that the grid will use.
    @inlinable func getMaxColumns() -> Int {
        let rv = Int(gtk_grid_view_get_max_columns(grid_view_ptr))
        return rv
    }

    /// Gets the minimum number of columns that the grid will use.
    @inlinable func getMinColumns() -> Int {
        let rv = Int(gtk_grid_view_get_min_columns(grid_view_ptr))
        return rv
    }

    /// Gets the model that's currently used to read the items displayed.
    @inlinable func getModel() -> SelectionModelRef! {
        let rv = SelectionModelRef(gconstpointer: gconstpointer(gtk_grid_view_get_model(grid_view_ptr)))
        return rv
    }

    /// Returns whether items will be activated on single click and
    /// selected on hover.
    @inlinable func getSingleClickActivate() -> Bool {
        let rv = ((gtk_grid_view_get_single_click_activate(grid_view_ptr)) != 0)
        return rv
    }

    /// Sets whether selections can be changed by dragging with the mouse.
    @inlinable func set(enableRubberband: Bool) {
        gtk_grid_view_set_enable_rubberband(grid_view_ptr, gboolean((enableRubberband) ? 1 : 0))
    
    }

    /// Sets the `GtkListItemFactory` to use for populating list items.
    @inlinable func set(factory: ListItemFactoryRef? = nil) {
        gtk_grid_view_set_factory(grid_view_ptr, factory?.list_item_factory_ptr)
    
    }
    /// Sets the `GtkListItemFactory` to use for populating list items.
    @inlinable func set<ListItemFactoryT: ListItemFactoryProtocol>(factory: ListItemFactoryT?) {
        gtk_grid_view_set_factory(grid_view_ptr, factory?.list_item_factory_ptr)
    
    }

    /// Sets the maximum number of columns to use.
    /// 
    /// This number must be at least 1.
    /// 
    /// If `max_columns` is smaller than the minimum set via
    /// [method`Gtk.GridView.set_min_columns`], that value is used instead.
    @inlinable func set(maxColumns: Int) {
        gtk_grid_view_set_max_columns(grid_view_ptr, guint(maxColumns))
    
    }

    /// Sets the minimum number of columns to use.
    /// 
    /// This number must be at least 1.
    /// 
    /// If `min_columns` is smaller than the minimum set via
    /// [method`Gtk.GridView.set_max_columns`], that value is ignored.
    @inlinable func set(minColumns: Int) {
        gtk_grid_view_set_min_columns(grid_view_ptr, guint(minColumns))
    
    }

    /// Sets the imodel to use.
    /// 
    /// This must be a [iface`Gtk.SelectionModel`].
    @inlinable func set(model: SelectionModelRef? = nil) {
        gtk_grid_view_set_model(grid_view_ptr, model?.selection_model_ptr)
    
    }
    /// Sets the imodel to use.
    /// 
    /// This must be a [iface`Gtk.SelectionModel`].
    @inlinable func set<SelectionModelT: SelectionModelProtocol>(model: SelectionModelT?) {
        gtk_grid_view_set_model(grid_view_ptr, model?.selection_model_ptr)
    
    }

    /// Sets whether items should be activated on single click and
    /// selected on hover.
    @inlinable func set(singleClickActivate: Bool) {
        gtk_grid_view_set_single_click_activate(grid_view_ptr, gboolean((singleClickActivate) ? 1 : 0))
    
    }
    /// Returns whether rows can be selected by dragging with the mouse.
    @inlinable var enableRubberband: Bool {
        /// Returns whether rows can be selected by dragging with the mouse.
        get {
            let rv = ((gtk_grid_view_get_enable_rubberband(grid_view_ptr)) != 0)
            return rv
        }
        /// Sets whether selections can be changed by dragging with the mouse.
        nonmutating set {
            gtk_grid_view_set_enable_rubberband(grid_view_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Factory for populating list items.
    @inlinable var factory: ListItemFactoryRef! {
        /// Gets the factory that's currently used to populate list items.
        get {
            let rv = ListItemFactoryRef(gconstpointer: gconstpointer(gtk_grid_view_get_factory(grid_view_ptr)))
            return rv
        }
        /// Sets the `GtkListItemFactory` to use for populating list items.
        nonmutating set {
            gtk_grid_view_set_factory(grid_view_ptr, UnsafeMutablePointer<GtkListItemFactory>(newValue?.list_item_factory_ptr))
        }
    }

    /// Gets the maximum number of columns that the grid will use.
    @inlinable var maxColumns: Int {
        /// Gets the maximum number of columns that the grid will use.
        get {
            let rv = Int(gtk_grid_view_get_max_columns(grid_view_ptr))
            return rv
        }
        /// Sets the maximum number of columns to use.
        /// 
        /// This number must be at least 1.
        /// 
        /// If `max_columns` is smaller than the minimum set via
        /// [method`Gtk.GridView.set_min_columns`], that value is used instead.
        nonmutating set {
            gtk_grid_view_set_max_columns(grid_view_ptr, guint(newValue))
        }
    }

    /// Gets the minimum number of columns that the grid will use.
    @inlinable var minColumns: Int {
        /// Gets the minimum number of columns that the grid will use.
        get {
            let rv = Int(gtk_grid_view_get_min_columns(grid_view_ptr))
            return rv
        }
        /// Sets the minimum number of columns to use.
        /// 
        /// This number must be at least 1.
        /// 
        /// If `min_columns` is smaller than the minimum set via
        /// [method`Gtk.GridView.set_max_columns`], that value is ignored.
        nonmutating set {
            gtk_grid_view_set_min_columns(grid_view_ptr, guint(newValue))
        }
    }

    /// Model for the items displayed.
    @inlinable var model: SelectionModelRef! {
        /// Gets the model that's currently used to read the items displayed.
        get {
            let rv = SelectionModelRef(gconstpointer: gconstpointer(gtk_grid_view_get_model(grid_view_ptr)))
            return rv
        }
        /// Sets the imodel to use.
        /// 
        /// This must be a [iface`Gtk.SelectionModel`].
        nonmutating set {
            gtk_grid_view_set_model(grid_view_ptr, UnsafeMutablePointer<GtkSelectionModel>(newValue?.selection_model_ptr))
        }
    }

    /// Returns whether items will be activated on single click and
    /// selected on hover.
    @inlinable var singleClickActivate: Bool {
        /// Returns whether items will be activated on single click and
        /// selected on hover.
        get {
            let rv = ((gtk_grid_view_get_single_click_activate(grid_view_ptr)) != 0)
            return rv
        }
        /// Sets whether items should be activated on single click and
        /// selected on hover.
        nonmutating set {
            gtk_grid_view_set_single_click_activate(grid_view_ptr, gboolean((newValue) ? 1 : 0))
        }
    }


}



// MARK: - HeaderBar Class

/// `GtkHeaderBar` is a widget for creating custom title bars for windows.
/// 
/// ![An example GtkHeaderBar](headerbar.png)
/// 
/// `GtkHeaderBar` is similar to a horizontal `GtkCenterBox`. It allows
/// children to be placed at the start or the end. In addition, it allows
/// the window title to be displayed. The title will be centered with respect
/// to the width of the box, even if the children at either side take up
/// different amounts of space.
/// 
/// `GtkHeaderBar` can add typical window frame controls, such as minimize,
/// maximize and close buttons, or the window icon.
/// 
/// For these reasons, `GtkHeaderBar` is the natural choice for use as the
/// custom titlebar widget of a `GtkWindow (see [method`Gtk.Window.set_titlebar`]),
/// as it gives features typical of titlebars while allowing the addition of
/// child widgets.
/// 
/// ## GtkHeaderBar as GtkBuildable
/// 
/// The `GtkHeaderBar` implementation of the `GtkBuildable` interface supports
/// adding children at the start or end sides by specifying “start” or “end” as
/// the “type” attribute of a &lt;child&gt; element, or setting the title widget by
/// specifying “title” value.
/// 
/// By default the `GtkHeaderBar` uses a `GtkLabel` displaying the title of the
/// window it is contained in as the title widget, equivalent to the following
/// UI definition:
/// 
/// ```xml
/// &lt;object class="GtkHeaderBar"&gt;
///   &lt;property name="title-widget"&gt;
///     &lt;object class="GtkLabel"&gt;
///       &lt;property name="label" translatable="yes"&gt;Label&lt;/property&gt;
///       &lt;property name="single-line-mode"&gt;True&lt;/property&gt;
///       &lt;property name="ellipsize"&gt;end&lt;/property&gt;
///       &lt;property name="width-chars"&gt;5&lt;/property&gt;
///       &lt;style&gt;
///         &lt;class name="title"/&gt;
///       &lt;/style&gt;
///     &lt;/object&gt;
///   &lt;/property&gt;
/// &lt;/object&gt;
/// ```
/// 
/// # CSS nodes
/// 
/// ```
/// headerbar
/// ╰── windowhandle
///     ╰── box
///         ├── box.start
///         │   ├── windowcontrols.start
///         │   ╰── [other children]
///         ├── [Title Widget]
///         ╰── box.end
///             ├── [other children]
///             ╰── windowcontrols.end
/// ```
/// 
/// A `GtkHeaderBar`'s CSS node is called `headerbar`. It contains a `windowhandle`
/// subnode, which contains a `box` subnode, which contains two `box` subnodes at
/// the start and end of the header bar, as well as a center node that represents
/// the title.
/// 
/// Each of the boxes contains a `windowcontrols` subnode, see
/// [class`Gtk.WindowControls`] for details, as well as other children.
/// 
/// # Accessibility
/// 
/// `GtkHeaderBar` uses the `GTK_ACCESSIBLE_ROLE_GROUP` role.
///
/// The `HeaderBarProtocol` protocol exposes the methods and properties of an underlying `GtkHeaderBar` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `HeaderBar`.
/// Alternatively, use `HeaderBarRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol HeaderBarProtocol: WidgetProtocol {
        /// Untyped pointer to the underlying `GtkHeaderBar` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GtkHeaderBar` instance.
    var header_bar_ptr: UnsafeMutablePointer<GtkHeaderBar>! { get }

    /// Required Initialiser for types conforming to `HeaderBarProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GtkHeaderBar` is a widget for creating custom title bars for windows.
/// 
/// ![An example GtkHeaderBar](headerbar.png)
/// 
/// `GtkHeaderBar` is similar to a horizontal `GtkCenterBox`. It allows
/// children to be placed at the start or the end. In addition, it allows
/// the window title to be displayed. The title will be centered with respect
/// to the width of the box, even if the children at either side take up
/// different amounts of space.
/// 
/// `GtkHeaderBar` can add typical window frame controls, such as minimize,
/// maximize and close buttons, or the window icon.
/// 
/// For these reasons, `GtkHeaderBar` is the natural choice for use as the
/// custom titlebar widget of a `GtkWindow (see [method`Gtk.Window.set_titlebar`]),
/// as it gives features typical of titlebars while allowing the addition of
/// child widgets.
/// 
/// ## GtkHeaderBar as GtkBuildable
/// 
/// The `GtkHeaderBar` implementation of the `GtkBuildable` interface supports
/// adding children at the start or end sides by specifying “start” or “end” as
/// the “type” attribute of a &lt;child&gt; element, or setting the title widget by
/// specifying “title” value.
/// 
/// By default the `GtkHeaderBar` uses a `GtkLabel` displaying the title of the
/// window it is contained in as the title widget, equivalent to the following
/// UI definition:
/// 
/// ```xml
/// &lt;object class="GtkHeaderBar"&gt;
///   &lt;property name="title-widget"&gt;
///     &lt;object class="GtkLabel"&gt;
///       &lt;property name="label" translatable="yes"&gt;Label&lt;/property&gt;
///       &lt;property name="single-line-mode"&gt;True&lt;/property&gt;
///       &lt;property name="ellipsize"&gt;end&lt;/property&gt;
///       &lt;property name="width-chars"&gt;5&lt;/property&gt;
///       &lt;style&gt;
///         &lt;class name="title"/&gt;
///       &lt;/style&gt;
///     &lt;/object&gt;
///   &lt;/property&gt;
/// &lt;/object&gt;
/// ```
/// 
/// # CSS nodes
/// 
/// ```
/// headerbar
/// ╰── windowhandle
///     ╰── box
///         ├── box.start
///         │   ├── windowcontrols.start
///         │   ╰── [other children]
///         ├── [Title Widget]
///         ╰── box.end
///             ├── [other children]
///             ╰── windowcontrols.end
/// ```
/// 
/// A `GtkHeaderBar`'s CSS node is called `headerbar`. It contains a `windowhandle`
/// subnode, which contains a `box` subnode, which contains two `box` subnodes at
/// the start and end of the header bar, as well as a center node that represents
/// the title.
/// 
/// Each of the boxes contains a `windowcontrols` subnode, see
/// [class`Gtk.WindowControls`] for details, as well as other children.
/// 
/// # Accessibility
/// 
/// `GtkHeaderBar` uses the `GTK_ACCESSIBLE_ROLE_GROUP` role.
///
/// The `HeaderBarRef` type acts as a lightweight Swift reference to an underlying `GtkHeaderBar` instance.
/// It exposes methods that can operate on this data type through `HeaderBarProtocol` conformance.
/// Use `HeaderBarRef` only as an `unowned` reference to an existing `GtkHeaderBar` instance.
///
public struct HeaderBarRef: HeaderBarProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GtkHeaderBar` instance.
    /// For type-safe access, use the generated, typed pointer `header_bar_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension HeaderBarRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GtkHeaderBar>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GtkHeaderBar>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GtkHeaderBar>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GtkHeaderBar>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `HeaderBarProtocol`
    @inlinable init<T: HeaderBarProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: HeaderBarProtocol>(_ other: T) -> HeaderBarRef { HeaderBarRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GtkHeaderBar` widget.
    @inlinable init() {
        let rv = gtk_header_bar_new()
        ptr = UnsafeMutableRawPointer(rv)
    }
}

/// `GtkHeaderBar` is a widget for creating custom title bars for windows.
/// 
/// ![An example GtkHeaderBar](headerbar.png)
/// 
/// `GtkHeaderBar` is similar to a horizontal `GtkCenterBox`. It allows
/// children to be placed at the start or the end. In addition, it allows
/// the window title to be displayed. The title will be centered with respect
/// to the width of the box, even if the children at either side take up
/// different amounts of space.
/// 
/// `GtkHeaderBar` can add typical window frame controls, such as minimize,
/// maximize and close buttons, or the window icon.
/// 
/// For these reasons, `GtkHeaderBar` is the natural choice for use as the
/// custom titlebar widget of a `GtkWindow (see [method`Gtk.Window.set_titlebar`]),
/// as it gives features typical of titlebars while allowing the addition of
/// child widgets.
/// 
/// ## GtkHeaderBar as GtkBuildable
/// 
/// The `GtkHeaderBar` implementation of the `GtkBuildable` interface supports
/// adding children at the start or end sides by specifying “start” or “end” as
/// the “type” attribute of a &lt;child&gt; element, or setting the title widget by
/// specifying “title” value.
/// 
/// By default the `GtkHeaderBar` uses a `GtkLabel` displaying the title of the
/// window it is contained in as the title widget, equivalent to the following
/// UI definition:
/// 
/// ```xml
/// &lt;object class="GtkHeaderBar"&gt;
///   &lt;property name="title-widget"&gt;
///     &lt;object class="GtkLabel"&gt;
///       &lt;property name="label" translatable="yes"&gt;Label&lt;/property&gt;
///       &lt;property name="single-line-mode"&gt;True&lt;/property&gt;
///       &lt;property name="ellipsize"&gt;end&lt;/property&gt;
///       &lt;property name="width-chars"&gt;5&lt;/property&gt;
///       &lt;style&gt;
///         &lt;class name="title"/&gt;
///       &lt;/style&gt;
///     &lt;/object&gt;
///   &lt;/property&gt;
/// &lt;/object&gt;
/// ```
/// 
/// # CSS nodes
/// 
/// ```
/// headerbar
/// ╰── windowhandle
///     ╰── box
///         ├── box.start
///         │   ├── windowcontrols.start
///         │   ╰── [other children]
///         ├── [Title Widget]
///         ╰── box.end
///             ├── [other children]
///             ╰── windowcontrols.end
/// ```
/// 
/// A `GtkHeaderBar`'s CSS node is called `headerbar`. It contains a `windowhandle`
/// subnode, which contains a `box` subnode, which contains two `box` subnodes at
/// the start and end of the header bar, as well as a center node that represents
/// the title.
/// 
/// Each of the boxes contains a `windowcontrols` subnode, see
/// [class`Gtk.WindowControls`] for details, as well as other children.
/// 
/// # Accessibility
/// 
/// `GtkHeaderBar` uses the `GTK_ACCESSIBLE_ROLE_GROUP` role.
///
/// The `HeaderBar` type acts as a reference-counted owner of an underlying `GtkHeaderBar` instance.
/// It provides the methods that can operate on this data type through `HeaderBarProtocol` conformance.
/// Use `HeaderBar` as a strong reference or owner of a `GtkHeaderBar` instance.
///
open class HeaderBar: Widget, HeaderBarProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HeaderBar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GtkHeaderBar>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HeaderBar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GtkHeaderBar>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HeaderBar` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HeaderBar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HeaderBar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GtkHeaderBar>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `HeaderBar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GtkHeaderBar>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GtkHeaderBar`.
    /// i.e., ownership is transferred to the `HeaderBar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GtkHeaderBar>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `HeaderBarProtocol`
    /// Will retain `GtkHeaderBar`.
    /// - Parameter other: an instance of a related type that implements `HeaderBarProtocol`
    @inlinable public init<T: HeaderBarProtocol>(headerBar other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `HeaderBarProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }

    /// Creates a new `GtkHeaderBar` widget.
    @inlinable public init() {
        let rv = gtk_header_bar_new()
        super.init(gpointer: gpointer(rv))
        if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


}

public enum HeaderBarPropertyName: String, PropertyNameProtocol {
    /// Whether the widget or any of its descendents can accept
    /// the input focus.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case canFocus = "can-focus"
    /// Whether the widget can receive pointer events.
    case canTarget = "can-target"
    /// A list of css classes applied to this widget.
    case cssClasses = "css-classes"
    /// The name of this widget in the CSS tree.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case cssName = "css-name"
    /// The cursor used by `widget`.
    case cursor = "cursor"
    /// The decoration layout for buttons.
    /// 
    /// If this property is not set, the
    /// [property`Gtk.Settings:gtk-decoration-layout`] setting is used.
    case decorationLayout = "decoration-layout"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    case focusOnClick = "focus-on-click"
    /// Whether this widget itself will accept the input focus.
    case focusable = "focusable"
    /// How to distribute horizontal space if widget gets extra space.
    case halign = "halign"
    /// Whether the widget is the default widget.
    case hasDefault = "has-default"
    /// Whether the widget has the input focus.
    case hasFocus = "has-focus"
    /// Enables or disables the emission of the `query-tooltip` signal on `widget`.
    /// 
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using [signal`Gtk.Widget::query-tooltip`] to
    /// determine whether it will provide a tooltip or not.
    case hasTooltip = "has-tooltip"
    /// Override for height request of the widget.
    /// 
    /// If this is -1, the natural request will be used.
    case heightRequest = "height-request"
    /// Whether to expand horizontally.
    case hexpand = "hexpand"
    /// Whether to use the `hexpand` property.
    case hexpandSet = "hexpand-set"
    /// The `GtkLayoutManager` instance to use to compute the preferred size
    /// of the widget, and allocate its children.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case layoutManager = "layout-manager"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case marginBottom = "margin-bottom"
    /// Margin on end of widget, horizontally.
    /// 
    /// This property supports left-to-right and right-to-left text
    /// directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case marginEnd = "margin-end"
    /// Margin on start of widget, horizontally.
    /// 
    /// This property supports left-to-right and right-to-left text
    /// directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case marginStart = "margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case marginTop = "margin-top"
    /// The name of the widget.
    case name = "name"
    /// The requested opacity of the widget.
    case opacity = "opacity"
    /// How content outside the widget's content area is treated.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case overflow = "overflow"
    /// The parent widget of this widget.
    case parent = "parent"
    /// Whether the widget will receive the default action when it is focused.
    case receivesDefault = "receives-default"
    /// The `GtkRoot` widget of the widget tree containing this widget.
    /// 
    /// This will be `nil` if the widget is not contained in a root widget.
    case root = "root"
    /// The scale factor of the widget.
    case scaleFactor = "scale-factor"
    /// Whether the widget responds to input.
    case sensitive = "sensitive"
    /// Whether to show title buttons like close, minimize, maximize.
    /// 
    /// Which buttons are actually shown and where is determined
    /// by the [property`Gtk.HeaderBar:decoration-layout`] property,
    /// and by the state of the window (e.g. a close button will not
    /// be shown if the window can't be closed).
    case showTitleButtons = "show-title-buttons"
    case titleWidget = "title-widget"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with Pango markup.
    /// 
    /// Also see [method`Gtk.Tooltip.set_markup`].
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`:
    /// [property`Gtk.Widget:has-tooltip`] will automatically be set to `true`
    /// and there will be taken care of [signal`Gtk.Widget::query-tooltip`] in
    /// the default signal handler.
    /// 
    /// Note that if both [property`Gtk.Widget:tooltip-text`] and
    /// [property`Gtk.Widget:tooltip-markup`] are set, the last one wins.
    case tooltipMarkup = "tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see [method`Gtk.Tooltip.set_text`].
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`:
    /// [property`Gtk.Widget:has-tooltip`] will automatically be set to `true`
    /// and there will be taken care of [signal`Gtk.Widget::query-tooltip`] in
    /// the default signal handler.
    /// 
    /// Note that if both [property`Gtk.Widget:tooltip-text`] and
    /// [property`Gtk.Widget:tooltip-markup`] are set, the last one wins.
    case tooltipText = "tooltip-text"
    /// How to distribute vertical space if widget gets extra space.
    case valign = "valign"
    /// Whether to expand vertically.
    case vexpand = "vexpand"
    /// Whether to use the `vexpand` property.
    case vexpandSet = "vexpand-set"
    /// Whether the widget is visible.
    case visible = "visible"
    /// Override for width request of the widget.
    /// 
    /// If this is -1, the natural request will be used.
    case widthRequest = "width-request"
}

public extension HeaderBarProtocol {
    /// Bind a `HeaderBarPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: HeaderBarPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
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

    /// Get the value of a HeaderBar property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: HeaderBarPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a HeaderBar property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: HeaderBarPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
    }
}

public enum HeaderBarSignalName: String, SignalNameProtocol {
    /// Signals that all holders of a reference to the widget should release
    /// the reference that they hold.
    /// 
    /// May result in finalization of the widget if all references are released.
    /// 
    /// This signal is not suitable for saving widget state.
    case destroy = "destroy"
    /// Emitted when the text direction of a widget changes.
    case directionChanged = "direction-changed"
    /// Emitted when `widget` is hidden.
    case hide = "hide"
    /// Emitted if keyboard navigation fails.
    /// 
    /// See [method`Gtk.Widget.keynav_failed`] for details.
    case keynavFailed = "keynav-failed"
    /// Emitted when `widget` is going to be mapped.
    /// 
    /// A widget is mapped when the widget is visible (which is controlled with
    /// [property`Gtk.Widget:visible`]) and all its parents up to the toplevel widget
    /// are also visible.
    /// 
    /// The `map` signal can be used to determine whether a widget will be drawn,
    /// for instance it can resume an animation that was stopped during the
    /// emission of [signal`Gtk.Widget::unmap`].
    case map = "map"
    /// Emitted when a widget is activated via a mnemonic.
    /// 
    /// The default handler for this signal activates `widget` if `group_cycling`
    /// is `false`, or just makes `widget` grab focus if `group_cycling` is `true`.
    case mnemonicActivate = "mnemonic-activate"
    /// Emitted when the focus is moved.
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// Emitted when the widgets tooltip is about to be shown.
    /// 
    /// This happens when the [property`Gtk.Widget:has-tooltip`] property
    /// is `true` and the hover timeout has expired with the cursor hovering
    /// "above" `widget`; or emitted when `widget` got focus in keyboard mode.
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
    /// Emitted when `widget` is associated with a `GdkSurface`.
    /// 
    /// This means that [method`Gtk.Widget.realize`] has been called
    /// or the widget has been mapped (that is, it is going to be drawn).
    case realize = "realize"
    /// Emitted when `widget` is shown.
    case show = "show"
    /// Emitted when the widget state changes.
    /// 
    /// See [method`Gtk.Widget.get_state_flags`].
    case stateFlagsChanged = "state-flags-changed"
    /// Emitted when `widget` is going to be unmapped.
    /// 
    /// A widget is unmapped when either it or any of its parents up to the
    /// toplevel widget have been set as hidden.
    /// 
    /// As `unmap` indicates that a widget will not be shown any longer,
    /// it can be used to, for example, stop an animation on the widget.
    case unmap = "unmap"
    /// Emitted when the `GdkSurface` associated with `widget` is destroyed.
    /// 
    /// This means that [method`Gtk.Widget.unrealize`] has been called
    /// or the widget has been unmapped (that is, it is going to be hidden).
    case unrealize = "unrealize"
    /// Whether the widget or any of its descendents can accept
    /// the input focus.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyCanFocus = "notify::can-focus"
    /// Whether the widget can receive pointer events.
    case notifyCanTarget = "notify::can-target"
    /// A list of css classes applied to this widget.
    case notifyCssClasses = "notify::css-classes"
    /// The name of this widget in the CSS tree.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyCssName = "notify::css-name"
    /// The cursor used by `widget`.
    case notifyCursor = "notify::cursor"
    /// The decoration layout for buttons.
    /// 
    /// If this property is not set, the
    /// [property`Gtk.Settings:gtk-decoration-layout`] setting is used.
    case notifyDecorationLayout = "notify::decoration-layout"
    /// Whether the widget should grab focus when it is clicked with the mouse.
    /// 
    /// This property is only relevant for widgets that can take focus.
    case notifyFocusOnClick = "notify::focus-on-click"
    /// Whether this widget itself will accept the input focus.
    case notifyFocusable = "notify::focusable"
    /// How to distribute horizontal space if widget gets extra space.
    case notifyHalign = "notify::halign"
    /// Whether the widget is the default widget.
    case notifyHasDefault = "notify::has-default"
    /// Whether the widget has the input focus.
    case notifyHasFocus = "notify::has-focus"
    /// Enables or disables the emission of the `query-tooltip` signal on `widget`.
    /// 
    /// A value of `true` indicates that `widget` can have a tooltip, in this case
    /// the widget will be queried using [signal`Gtk.Widget::query-tooltip`] to
    /// determine whether it will provide a tooltip or not.
    case notifyHasTooltip = "notify::has-tooltip"
    /// Override for height request of the widget.
    /// 
    /// If this is -1, the natural request will be used.
    case notifyHeightRequest = "notify::height-request"
    /// Whether to expand horizontally.
    case notifyHexpand = "notify::hexpand"
    /// Whether to use the `hexpand` property.
    case notifyHexpandSet = "notify::hexpand-set"
    /// The `GtkLayoutManager` instance to use to compute the preferred size
    /// of the widget, and allocate its children.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyLayoutManager = "notify::layout-manager"
    /// Margin on bottom side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case notifyMarginBottom = "notify::margin-bottom"
    /// Margin on end of widget, horizontally.
    /// 
    /// This property supports left-to-right and right-to-left text
    /// directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case notifyMarginEnd = "notify::margin-end"
    /// Margin on start of widget, horizontally.
    /// 
    /// This property supports left-to-right and right-to-left text
    /// directions.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case notifyMarginStart = "notify::margin-start"
    /// Margin on top side of widget.
    /// 
    /// This property adds margin outside of the widget's normal size
    /// request, the margin will be added in addition to the size from
    /// [method`Gtk.Widget.set_size_request`] for example.
    case notifyMarginTop = "notify::margin-top"
    /// The name of the widget.
    case notifyName = "notify::name"
    /// The requested opacity of the widget.
    case notifyOpacity = "notify::opacity"
    /// How content outside the widget's content area is treated.
    /// 
    /// This property is meant to be set by widget implementations,
    /// typically in their instance init function.
    case notifyOverflow = "notify::overflow"
    /// The parent widget of this widget.
    case notifyParent = "notify::parent"
    /// Whether the widget will receive the default action when it is focused.
    case notifyReceivesDefault = "notify::receives-default"
    /// The `GtkRoot` widget of the widget tree containing this widget.
    /// 
    /// This will be `nil` if the widget is not contained in a root widget.
    case notifyRoot = "notify::root"
    /// The scale factor of the widget.
    case notifyScaleFactor = "notify::scale-factor"
    /// Whether the widget responds to input.
    case notifySensitive = "notify::sensitive"
    /// Whether to show title buttons like close, minimize, maximize.
    /// 
    /// Which buttons are actually shown and where is determined
    /// by the [property`Gtk.HeaderBar:decoration-layout`] property,
    /// and by the state of the window (e.g. a close button will not
    /// be shown if the window can't be closed).
    case notifyShowTitleButtons = "notify::show-title-buttons"
    case notifyTitleWidget = "notify::title-widget"
    /// Sets the text of tooltip to be the given string, which is marked up
    /// with Pango markup.
    /// 
    /// Also see [method`Gtk.Tooltip.set_markup`].
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`:
    /// [property`Gtk.Widget:has-tooltip`] will automatically be set to `true`
    /// and there will be taken care of [signal`Gtk.Widget::query-tooltip`] in
    /// the default signal handler.
    /// 
    /// Note that if both [property`Gtk.Widget:tooltip-text`] and
    /// [property`Gtk.Widget:tooltip-markup`] are set, the last one wins.
    case notifyTooltipMarkup = "notify::tooltip-markup"
    /// Sets the text of tooltip to be the given string.
    /// 
    /// Also see [method`Gtk.Tooltip.set_text`].
    /// 
    /// This is a convenience property which will take care of getting the
    /// tooltip shown if the given string is not `nil`:
    /// [property`Gtk.Widget:has-tooltip`] will automatically be set to `true`
    /// and there will be taken care of [signal`Gtk.Widget::query-tooltip`] in
    /// the default signal handler.
    /// 
    /// Note that if both [property`Gtk.Widget:tooltip-text`] and
    /// [property`Gtk.Widget:tooltip-markup`] are set, the last one wins.
    case notifyTooltipText = "notify::tooltip-text"
    /// How to distribute vertical space if widget gets extra space.
    case notifyValign = "notify::valign"
    /// Whether to expand vertically.
    case notifyVexpand = "notify::vexpand"
    /// Whether to use the `vexpand` property.
    case notifyVexpandSet = "notify::vexpand-set"
    /// Whether the widget is visible.
    case notifyVisible = "notify::visible"
    /// Override for width request of the widget.
    /// 
    /// If this is -1, the natural request will be used.
    case notifyWidthRequest = "notify::width-request"
}

// MARK: HeaderBar has no signals
// MARK: HeaderBar Class: HeaderBarProtocol extension (methods and fields)
public extension HeaderBarProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GtkHeaderBar` instance.
    @inlinable var header_bar_ptr: UnsafeMutablePointer<GtkHeaderBar>! { return ptr?.assumingMemoryBound(to: GtkHeaderBar.self) }

    /// Gets the decoration layout of the `GtkHeaderBar`.
    @inlinable func getDecorationLayout() -> String! {
        let rv = gtk_header_bar_get_decoration_layout(header_bar_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Returns whether this header bar shows the standard window
    /// title buttons.
    @inlinable func getShowTitleButtons() -> Bool {
        let rv = ((gtk_header_bar_get_show_title_buttons(header_bar_ptr)) != 0)
        return rv
    }

    /// Retrieves the title widget of the header.
    /// 
    /// See [method`Gtk.HeaderBar.set_title_widget`].
    @inlinable func getTitleWidget() -> WidgetRef! {
        guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_header_bar_get_title_widget(header_bar_ptr))) else { return nil }
        return rv
    }

    /// Adds `child` to `bar`, packed with reference to the
    /// end of the `bar`.
    @inlinable func packEnd<WidgetT: WidgetProtocol>(child: WidgetT) {
        gtk_header_bar_pack_end(header_bar_ptr, child.widget_ptr)
    
    }

    /// Adds `child` to `bar`, packed with reference to the
    /// start of the `bar`.
    @inlinable func packStart<WidgetT: WidgetProtocol>(child: WidgetT) {
        gtk_header_bar_pack_start(header_bar_ptr, child.widget_ptr)
    
    }

    /// Removes a child from the `GtkHeaderBar`.
    /// 
    /// The child must have been added with
    /// [method`Gtk.HeaderBar.pack_start`],
    /// [method`Gtk.HeaderBar.pack_end`] or
    /// [method`Gtk.HeaderBar.set_title_widget`].
    @inlinable func remove<WidgetT: WidgetProtocol>(child: WidgetT) {
        gtk_header_bar_remove(header_bar_ptr, child.widget_ptr)
    
    }

    /// Sets the decoration layout for this header bar.
    /// 
    /// This property overrides the
    /// [property`Gtk.Settings:gtk-decoration-layout`] setting.
    /// 
    /// There can be valid reasons for overriding the setting, such
    /// as a header bar design that does not allow for buttons to take
    /// room on the right, or only offers room for a single close button.
    /// Split header bars are another example for overriding the setting.
    /// 
    /// The format of the string is button names, separated by commas.
    /// A colon separates the buttons that should appear on the left
    /// from those on the right. Recognized button names are minimize,
    /// maximize, close and icon (the window icon).
    /// 
    /// For example, “icon:minimize,maximize,close” specifies a icon
    /// on the left, and minimize, maximize and close buttons on the right.
    @inlinable func setDecoration(layout: UnsafePointer<CChar>? = nil) {
        gtk_header_bar_set_decoration_layout(header_bar_ptr, layout)
    
    }

    /// Sets whether this header bar shows the standard window
    /// title buttons.
    @inlinable func setShowTitleButtons(setting: Bool) {
        gtk_header_bar_set_show_title_buttons(header_bar_ptr, gboolean((setting) ? 1 : 0))
    
    }

    /// Sets the title for the `GtkHeaderBar`.
    /// 
    /// When set to `nil`, the headerbar will display the title of
    /// the window it is contained in.
    /// 
    /// The title should help a user identify the current view.
    /// To achieve the same style as the builtin title, use the
    /// “title” style class.
    /// 
    /// You should set the title widget to `nil`, for the window
    /// title label to be visible again.
    @inlinable func set(titleWidget: WidgetRef? = nil) {
        gtk_header_bar_set_title_widget(header_bar_ptr, titleWidget?.widget_ptr)
    
    }
    /// Sets the title for the `GtkHeaderBar`.
    /// 
    /// When set to `nil`, the headerbar will display the title of
    /// the window it is contained in.
    /// 
    /// The title should help a user identify the current view.
    /// To achieve the same style as the builtin title, use the
    /// “title” style class.
    /// 
    /// You should set the title widget to `nil`, for the window
    /// title label to be visible again.
    @inlinable func set<WidgetT: WidgetProtocol>(titleWidget: WidgetT?) {
        gtk_header_bar_set_title_widget(header_bar_ptr, titleWidget?.widget_ptr)
    
    }
    /// Gets the decoration layout of the `GtkHeaderBar`.
    @inlinable var decorationLayout: String! {
        /// Gets the decoration layout of the `GtkHeaderBar`.
        get {
            let rv = gtk_header_bar_get_decoration_layout(header_bar_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Sets the decoration layout for this header bar.
        /// 
        /// This property overrides the
        /// [property`Gtk.Settings:gtk-decoration-layout`] setting.
        /// 
        /// There can be valid reasons for overriding the setting, such
        /// as a header bar design that does not allow for buttons to take
        /// room on the right, or only offers room for a single close button.
        /// Split header bars are another example for overriding the setting.
        /// 
        /// The format of the string is button names, separated by commas.
        /// A colon separates the buttons that should appear on the left
        /// from those on the right. Recognized button names are minimize,
        /// maximize, close and icon (the window icon).
        /// 
        /// For example, “icon:minimize,maximize,close” specifies a icon
        /// on the left, and minimize, maximize and close buttons on the right.
        nonmutating set {
            gtk_header_bar_set_decoration_layout(header_bar_ptr, newValue)
        }
    }

    /// Returns whether this header bar shows the standard window
    /// title buttons.
    @inlinable var showTitleButtons: Bool {
        /// Returns whether this header bar shows the standard window
        /// title buttons.
        get {
            let rv = ((gtk_header_bar_get_show_title_buttons(header_bar_ptr)) != 0)
            return rv
        }
        /// Sets whether this header bar shows the standard window
        /// title buttons.
        nonmutating set {
            gtk_header_bar_set_show_title_buttons(header_bar_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Retrieves the title widget of the header.
    /// 
    /// See [method`Gtk.HeaderBar.set_title_widget`].
    @inlinable var titleWidget: WidgetRef! {
        /// Retrieves the title widget of the header.
        /// 
        /// See [method`Gtk.HeaderBar.set_title_widget`].
        get {
            guard let rv = WidgetRef(gconstpointer: gconstpointer(gtk_header_bar_get_title_widget(header_bar_ptr))) else { return nil }
            return rv
        }
        /// Sets the title for the `GtkHeaderBar`.
        /// 
        /// When set to `nil`, the headerbar will display the title of
        /// the window it is contained in.
        /// 
        /// The title should help a user identify the current view.
        /// To achieve the same style as the builtin title, use the
        /// “title” style class.
        /// 
        /// You should set the title widget to `nil`, for the window
        /// title label to be visible again.
        nonmutating set {
            gtk_header_bar_set_title_widget(header_bar_ptr, UnsafeMutablePointer<GtkWidget>(newValue?.widget_ptr))
        }
    }


}



