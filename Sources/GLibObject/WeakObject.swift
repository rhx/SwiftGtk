import CGLib
import GLib

/// This protocol is used to constrain generic argument T of GWeak container for weak references. Wrappers with strong references to underlying GObjects must NOT conform to this protocol.
public protocol GWeakCapturing {
    init(raw: UnsafeMutableRawPointer)
}

/// Storage for weak references of GObject reference counting. Use only unowning wrappers as a generic parameter T.
@propertyWrapper
public final class GWeak<T: ObjectProtocol & GWeakCapturing> {

    /// Safe storage for the GObject weak reference.
    private var storage: UnsafeMutablePointer<UnsafeMutablePointer<gpointer?>>

    /// Safe public inteface required by the PropertyWrapper. The storage is always optional due to nature of weak references.
    public var wrappedValue: T? {
        get { storage.pointee.pointee.flatMap(T.init(raw:)) }
        set { assign(newValue: newValue) }
    }

    /// Initializer required by the property wrapper.
    public init(wrappedValue: T?) {
        self.storage = UnsafeMutablePointer.allocate(capacity: 1)
        self.storage.pointee = UnsafeMutablePointer.allocate(capacity: 1)
        self.storage.pointee.pointee = nil
        assign(newValue: wrappedValue) 
    }

    /// Convenience init with ommited label.
    public convenience init(_ other: T?) {
        self.init(wrappedValue: other)
    }

    /// If there is a reference already, safely deregisters it. Then weak reference is registered for replacement GObject instance.
    private func assign(newValue: T?) {
        let current = wrappedValue
        current?.removeWeakPointer(weakPointerLocation: storage.pointee)
        storage.pointee.pointee = newValue?.ptr
        newValue?.addWeakPointer(weakPointerLocation: storage.pointee)
        
    }

    /// If weak reference is no longer needed, safely deregisters it and deallocates storage.
    deinit {
        assign(newValue: nil)
        storage.pointee.deallocate()
        storage.deallocate()
    }
} 

/// Opaque class containing all information about weak notification required to remove it, if deallocated. 
final class WeakReferenceContainer {

    typealias Container = (closureBox: AnyObject, handler: GWeakNotify, unownedInstance: UnsafeMutableRawPointer)
    
    private var container: Container? = nil

    init() { }

    /// Unsafely associates this instance with new weak notifiaction
    func inject(closureBox: AnyObject, handler: @escaping GWeakNotify, unownedInstance: UnsafeMutableRawPointer) {
        self.container = (closureBox: closureBox, handler: handler, unownedInstance: unownedInstance)
    }

    /// Unsafely removes data identifying existing notification
    func dispose() {
        container = nil
    }

    /// In case this instance is being deinitialized and container exists, notification is no longer needed and should be deregistered. After notification is deregistered, all Swift instances are disposed of. 
    deinit {
        if let container = container {
            let data = Unmanaged.passUnretained(container.closureBox)
            ObjectRef(raw: container.unownedInstance).weakUnref(notify: container.handler, data: data.toOpaque())
            data.release()
        }
    }

} 

extension ObjectProtocol {

    /// This method registers notification which is called when underlying GObject instance is being released from memory. 
    /// - Argument handler: Handler called when instance is being destroyed.
    /// - Argument objectBeingDestroyed: Unsafe pointer to the instance being destroyed.
    /// - Returns: Opaque referenced token. Retain this token to keep notification alive. Releasing this token will result in deregistation of the notification.
    public func addWeakObserver( _ handler: @escaping (_ objectBeingDestroyed: gpointer) -> Void ) -> AnyObject {
        typealias SwiftHandler = GLib.ClosureHolder<gpointer, Void>
        let container = WeakReferenceContainer()
        let notificationBox: (gpointer) -> Void = { [weak container] arg in handler(arg); container?.dispose()}
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = {  userData, unownedSelf in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeRetainedValue()
            holder.call(unownedSelf)
        }
        let closureBox = SwiftHandler(notificationBox)
        let data = Unmanaged.passRetained(closureBox)
        let notificationHanler = unsafeBitCast(cCallback, to: GWeakNotify.self)
        self.weakRef(notify: notificationHanler, data: data.toOpaque())
        container.inject(closureBox: closureBox, handler: notificationHanler, unownedInstance: self.ptr)
        return container
    }
}
