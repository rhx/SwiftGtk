import CGLib
import CCairo
import CPango
import CGdkPixbuf
import CGdk
import CAtk
import CGtk
import GLib
import GObject
import Cairo
import GIO

/// Internal Class that wraps a 2-parameter closure to make sure the closure
/// is retained until no longer required
public class DualClosureHolder<S, T, U> {
    
    public let call: (S, T) -> U
    
    public init(_ closure: @escaping (S, T) -> U) {
        self.call = closure
    }
}


/// A closure taking a reference to the current application as an argument
public typealias ApplicationSignalHandler = (ApplicationRef) -> Void

/// Internal type for Application SignalHandler closure holder
typealias ApplicationSignalHandlerClosureHolder = ClosureHolder<ApplicationRef,Void>

/// A closure taking a reference to the current box and cairo_t as an argument
public typealias BoxSignalHandler = (BoxRef, Cairo.ContextRef) -> Bool

/// Internal type for Drawing SignalHandler closure holder
typealias BoxSignalHandlerClosureHolder = DualClosureHolder<BoxRef,Cairo.ContextRef, Bool>

/// A closure taking a reference to the current box and cairo_t as an argument
public typealias WidgetSignalHandler = (WidgetRef, Cairo.ContextRef) -> Bool

/// Internal type for Drawing SignalHandler closure holder
typealias WidgetSignalHandlerClosureHolder = DualClosureHolder<WidgetRef,Cairo.ContextRef, Bool>

/**
 * Convert a swift string (or UnsafePointer<Char>) into
 * an UnsafeMutablePointer<CChar> as used by many POSIX functions.
 * Use with caution: the returned pointer is not really mutable, but many
 * C APIs fail to declare them `const'
 */
func cstring(_ arg: UnsafePointer<CChar>) -> UnsafeMutablePointer<CChar> {
    return UnsafeMutablePointer<CChar>(mutating: arg)
}


/**
 * Convert an array of strings into a null-terminated array of
 * C strings (argument vector)
 * Removing the let/return would be nicer, but crashes:
 public func argv(arguments: [String]) -> [UnsafeMutablePointer<CChar>] {
 return arguments.map { cstring($0) } + [UnsafeMutablePointer<CChar>(nil)]
 }
 */
func argv(_ arguments: [String]) -> [UnsafeMutablePointer<CChar>?] {
    return arguments.map { let s = cstring($0); return s } + [nil]
}


/// Widget convenience methods
public extension Widget {
}

public extension WidgetRef {
    public init(_ object: UnsafeMutablePointer<GObject>) {
        ptr = UnsafeMutablePointer(object)
    }
}


/// Text view convenience methods
public extension TextViewProtocol {
    public var text: String {
        get {
            let text = TextBufferRef(buffer).text
            return text
        }
        set {
            var b = TextBufferRef(buffer)
            b.text = newValue
        }
    }
}

/// A holder for the bounds of a text buffer
class BoundsIter: TextIter {
    /// the actual text iterator
    var iter = GtkTextIter()

    /// default constructor
    ///
    /// - returns: an iterator with the pointer pointing to the internal var
    init() {
        super.init(&iter)
    }
}


/// Text buffer convenience mentods
public extension TextBufferProtocol {
    /// A string containing the text stored inside the text buffer,
    /// including hidden characters
    public var text: String {
        get {
            let text = ptr.withMemoryRebound(to: GtkTextBuffer.self, capacity: 1) { (buf: UnsafeMutablePointer<GtkTextBuffer>) -> String in
                var beg = GtkTextIter()
                var end = GtkTextIter()
                gtk_text_buffer_get_bounds(buf, &beg, &end)
                return getText(start: TextIterRef(&beg), end: TextIterRef(&end), includeHiddenChars: true) ?? ""
            }
            return text
        }
        set {
            set(text: newValue, len: -1)
        }
    }

    /// bounds for the start and end of the text buffer
    public var bounds: (start: TextIter, end: TextIter) {
        let beg = BoundsIter()
        let end = BoundsIter()
        gtk_text_buffer_get_bounds(ptr.withMemoryRebound(to: GtkTextBuffer.self, capacity: 1) { $0 }, beg.ptr, end.ptr)
        return (start: beg, end: end)
    }
}

public extension TextBuffer {
    /// Default contstructor
    ///
    /// - returns: a new text buffer with a new tag table
    public convenience init?() {
        guard let buffer = gtk_text_buffer_new(nil) else { return nil }
        self.init(buffer)
    }
}


/// Box protocol convenience methods
public extension BoxProtocol {
    /// Connection helper function
    private func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: BoxSignalHandlerClosureHolder, handler: @convention(c) (gpointer, gpointer, gpointer) -> gboolean) -> CUnsignedLong {
        let opaqueHolder = Unmanaged.passRetained(data).toOpaque()
        let callback = unsafeBitCast(handler, to: Callback.self)
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
    public func connectSignal(name: UnsafePointer<gchar>, flags f: ConnectFlags = ConnectFlags(0), handler: BoxSignalHandler) -> CUnsignedLong {
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
    public func connect<T>(signal s: T, flags f: ConnectFlags = ConnectFlags(0), handler: BoxSignalHandler) -> CUnsignedLong where T: SignalNameProtocol {
        return connectSignal(name: s.rawValue, flags: f, handler: handler)
    }
    
    /// Connects a (Box,Cairo.Context) -> Bool closure or function to a box signal for
    /// the receiver object.  Similar to g_signal_connect(), but allows
    /// to provide a Swift closure that can capture its surrounding context.
    @discardableResult
    public func connect(signal: BoxSignalName, flags f: ConnectFlags = ConnectFlags(0), handler: BoxSignalHandler) -> CUnsignedLong {
        return connectSignal(name: signal.rawValue, flags: f, handler: handler)
    }
    
    /// Connects a (Box,Cairo.Context) -> Bool closure or function to the "draw"
    /// signal of the receiver object.  Similar to g_signal_connect(), but allows
    /// to provide a Swift closure that can capture its surrounding context.
    @discardableResult
    public func onDraw(flags f: ConnectFlags = ConnectFlags(0), handler: BoxSignalHandler) -> CUnsignedLong {
        return connectSignal(name: BoxSignalName.draw.rawValue, flags: f, handler: handler)
    }
}





/// Widget protocol convenience methods
public extension WidgetProtocol {
    /// Connection helper function
    private func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: WidgetSignalHandlerClosureHolder, handler: @convention(c) (gpointer, gpointer, gpointer) -> gboolean) -> CUnsignedLong {
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
    
    /// Connects a (WidgetRef,Cairo.Context) -> Void closure or function to a signal for
    /// the receiver object.  Similar to g_signal_connect(), but allows
    /// to provide a Swift closure that can capture its surrounding context.
    @discardableResult
    public func connectSignal(name: UnsafePointer<gchar>, flags f: ConnectFlags = ConnectFlags(0), handler: WidgetSignalHandler) -> CUnsignedLong {
        let rv = _connect(signal: name, flags: f, data: DualClosureHolder(handler)) {
            let holder = Unmanaged<WidgetSignalHandlerClosureHolder>.fromOpaque($2).takeUnretainedValue()
            let rv: gboolean = holder.call(WidgetRef(raw: $0), Cairo.ContextRef(raw: $1)) ? 1 : 0
            return rv
        }
        return rv
    }
    
    /// Connects a (WidgetRef,Cairo.Context)) -> Void closure or function to a box signal for
    /// the receiver object.  Similar to g_signal_connect(), but allows
    /// to provide a Swift closure that can capture its surrounding context.
    @discardableResult
    public func connect<T>(signal s: T, flags f: ConnectFlags = ConnectFlags(0), handler: WidgetSignalHandler) -> CUnsignedLong where T: SignalNameProtocol {
        return connectSignal(name: s.rawValue, flags: f, handler: handler)
    }
    
    /// Connects a (WidgetRef,Cairo.Context) -> Bool closure or function to a box signal for
    /// the receiver object.  Similar to g_signal_connect(), but allows
    /// to provide a Swift closure that can capture its surrounding context.
    @discardableResult
    public func connect(signal: WidgetSignalName, flags f: ConnectFlags = ConnectFlags(0), handler: WidgetSignalHandler) -> CUnsignedLong {
        return connectSignal(name: signal.rawValue, flags: f, handler: handler)
    }
    
    /// Connects a (WidgetRef,Cairo.Context) -> Bool closure or function to the "draw"
    /// signal of the receiver object.  Similar to g_signal_connect(), but allows
    /// to provide a Swift closure that can capture its surrounding context.
    @discardableResult
    public func onDraw(flags f: ConnectFlags = ConnectFlags(0), handler: WidgetSignalHandler) -> CUnsignedLong {
        return connectSignal(name: WidgetSignalName.draw.rawValue, flags: f, handler: handler)
    }
}


/// Application protocol convenience methods
public extension ApplicationProtocol {
    /// Connection helper function
    private func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: ApplicationSignalHandlerClosureHolder, handler: @convention(c) (gpointer, gpointer) -> Void) -> CUnsignedLong {
        let opaqueHolder = Unmanaged.passRetained(data).toOpaque()
        let callback = unsafeBitCast(handler, to: Callback.self)
        let rv = signalConnectData(detailedSignal: name, cHandler: callback, data: opaqueHolder, destroyData: {
            if let swift = $0 {
                let holder = Unmanaged<ApplicationSignalHandlerClosureHolder>.fromOpaque(swift)
                holder.release()
            }
            let _ = $1
            }, connectFlags: flags)
        return rv
    }

    /// Connects a (Void) -> Void closure or function to a signal for
    /// the receiver object.  Similar to g_signal_connect(), but allows
    /// to provide a Swift closure that can capture its surrounding context.
    @discardableResult
    public func connectSignal(name: UnsafePointer<gchar>, flags f: ConnectFlags = ConnectFlags(0), handler: ApplicationSignalHandler) -> CUnsignedLong {
        let rv = _connect(signal: name, flags: f, data: ClosureHolder(handler)) {
            let holder = Unmanaged<ApplicationSignalHandlerClosureHolder>.fromOpaque($1).takeUnretainedValue()
            holder.call(ApplicationRef(raw: $0))
        }
        return rv
    }

    /// Connects a (Void) -> Void closure or function to a signal for
    /// the receiver object.  Similar to g_signal_connect(), but allows
    /// to provide a Swift closure that can capture its surrounding context.
    @discardableResult
    public func connect<T>(signal s: T, flags f: ConnectFlags = ConnectFlags(0), handler: ApplicationSignalHandler) -> CUnsignedLong where T: SignalNameProtocol {
        return connectSignal(name: s.rawValue, flags: f, handler: handler)
    }

    /// Connects a (Void) -> Void closure or function to an application signal for
    /// the receiver object.  Similar to g_signal_connect(), but allows
    /// to provide a Swift closure that can capture its surrounding context.
    @discardableResult
    public func connect(signal: ApplicationSignalName, flags f: ConnectFlags = ConnectFlags(0), handler: ApplicationSignalHandler) -> CUnsignedLong {
        return connectSignal(name: signal.rawValue, flags: f, handler: handler)
    }
}


/// Application convenience methods
public extension Application {
    /// Creates a new #GtkApplication instance.
    ///
    /// When using #GtkApplication, it is not necessary to call gtk_init()
    /// manually. It is called as soon as the application gets registered as
    /// the primary instance.
    ///
    /// Concretely, gtk_init() is called in the default handler for the
    /// #GApplication::startup signal. Therefore, #GtkApplication subclasses should
    /// chain up in their #GApplication::startup handler before using any GTK+ API.
    ///
    /// Note that commandline arguments are not passed to gtk_init().
    /// All GTK+ functionality that is available via commandline arguments
    /// can also be achieved by setting suitable environment variables
    /// such as `G_DEBUG`, so this should not be a big
    /// problem. If you absolutely must support GTK+ commandline arguments,
    /// you can explicitly call gtk_init() before creating the application
    /// instance.
    ///
    /// If non-%NULL, the application ID must be valid.  See
    /// g_application_id_is_valid().
    ///
    /// If no application ID is given then some features (most notably application
    /// uniqueness) will be disabled. A null application ID is only allowed with
    /// GTK+ 3.6 or later.
    public convenience init?(id: UnsafePointer<gchar>? = nil, flags: ApplicationFlags = .flags_none) {
        let rv: UnsafeMutablePointer<GtkApplication>?
        if let application_id = id {
            GLib.set(applicationName: application_id)
            rv = gtk_application_new(id, flags)
        } else {
            rv = gtk_application_new(nil, flags)
        }
        guard let app = rv else { return nil }
        self.init(app)
    }


    /// Runs the application.
    ///    This function is intended to be run from main() and its return value is intended to be returned by main(). Although you are expected to pass the argc , argv parameters from main() to this function, it is possible to pass NULL if argv is not available or commandline handling is not required. Note that on Windows, argc and argv are ignored, and g_win32_get_command_line() is called internally (for proper support of Unicode commandline arguments).
    ///    GApplication will attempt to parse the commandline arguments. You can add commandline flags to the list of recognised options by way of g_application_add_main_option_entries(). After this, the “handle-local-options” signal is emitted, from which the application can inspect the values of its GOptionEntrys.
    ///    “handle-local-options” is a good place to handle options such as --version, where an immediate reply from the local process is desired (instead of communicating with an already-running instance). A “handle-local-options” handler can stop further processing by returning a non-negative value, which then becomes the exit status of the process.
    ///    What happens next depends on the flags: if G_APPLICATION_HANDLES_COMMAND_LINE was specified then the remaining commandline arguments are sent to the primary instance, where a “command-line” signal is emitted. Otherwise, the remaining commandline arguments are assumed to be a list of files. If there are no files listed, the application is activated via the “activate” signal. If there are one or more files, and G_APPLICATION_HANDLES_OPEN was specified then the files are opened via the “open” signal.
    ///    If you are interested in doing more complicated local handling of the commandline then you should implement your own GApplication subclass and override local_command_line(). In this case, you most likely want to return TRUE from your local_command_line() implementation to suppress the default handling. See gapplication-example-cmdline2.c for an example.
    ///    If, after the above is done, the use count of the application is zero then the exit status is returned immediately. If the use count is non-zero then the default main context is iterated until the use count falls to zero, at which point 0 is returned.
    ///    If the G_APPLICATION_IS_SERVICE flag is set, then the service will run for as much as 10 seconds with a use count of zero while waiting for the message that caused the activation to arrive. After that, if the use count falls to zero the application will exit immediately, except in the case that g_application_set_inactivity_timeout() is in use.
    ///    This function sets the prgname (g_set_prgname()), if not already set, to the basename of argv[0].
    ///    Since 2.40, applications that are not explicitly flagged as services or launchers (ie: neither G_APPLICATION_IS_SERVICE or G_APPLICATION_IS_LAUNCHER are given as flags) will check (from the default handler for local_command_line) if "--gapplication-service" was given in the command line. If this flag is present then normal commandline processing is interrupted and the G_APPLICATION_IS_SERVICE flag is set. This provides a "compromise" solution whereby running an application directly from the commandline will invoke it in the normal way (which can be useful for debugging) while still allowing applications to be D-Bus activated in service mode. The D-Bus service file should invoke the executable with "--gapplication-service" as the sole commandline argument. This approach is suitable for use by most graphical applications but should not be used from applications like editors that need precise control over when processes invoked via the commandline will exit and what their exit status will be.
    func run(arguments: [String]? = nil, startupHandler: ApplicationSignalHandler? = nil, activationHandler: ApplicationSignalHandler? = nil) -> Int {
        if let s = startupHandler {
            connect(signal:.startup, handler: s)
        }
        if let a = activationHandler {
            connect(signal:.activate, handler: a)
        }
        return ptr.withMemoryRebound(to: GApplication.self, capacity: 1) {
            let rv: Int32
            if let params = arguments, params.count != 0 {
                var av = argv(params)
                rv = g_application_run($0, CInt(params.count), &av)
            } else {
                rv = g_application_run($0, 0, nil)
            }
            return Int(rv)
        }
    }




    /// Create and run an application with an optional ID and optional flags.
    ///    This function is intended to be run from main() and its return value is intended to be returned by main(). Although you are expected to pass the argc , argv parameters from main() to this function, it is possible to pass NULL if argv is not available or commandline handling is not required. Note that on Windows, argc and argv are ignored, and g_win32_get_command_line() is called internally (for proper support of Unicode commandline arguments).
    ///    GApplication will attempt to parse the commandline arguments. You can add commandline flags to the list of recognised options by way of g_application_add_main_option_entries(). After this, the “handle-local-options” signal is emitted, from which the application can inspect the values of its GOptionEntrys.
    ///    “handle-local-options” is a good place to handle options such as --version, where an immediate reply from the local process is desired (instead of communicating with an already-running instance). A “handle-local-options” handler can stop further processing by returning a non-negative value, which then becomes the exit status of the process.
    ///    What happens next depends on the flags: if G_APPLICATION_HANDLES_COMMAND_LINE was specified then the remaining commandline arguments are sent to the primary instance, where a “command-line” signal is emitted. Otherwise, the remaining commandline arguments are assumed to be a list of files. If there are no files listed, the application is activated via the “activate” signal. If there are one or more files, and G_APPLICATION_HANDLES_OPEN was specified then the files are opened via the “open” signal.
    ///    If you are interested in doing more complicated local handling of the commandline then you should implement your own GApplication subclass and override local_command_line(). In this case, you most likely want to return TRUE from your local_command_line() implementation to suppress the default handling. See gapplication-example-cmdline2.c for an example.
    ///    If, after the above is done, the use count of the application is zero then the exit status is returned immediately. If the use count is non-zero then the default main context is iterated until the use count falls to zero, at which point 0 is returned.
    ///    If the G_APPLICATION_IS_SERVICE flag is set, then the service will run for as much as 10 seconds with a use count of zero while waiting for the message that caused the activation to arrive. After that, if the use count falls to zero the application will exit immediately, except in the case that g_application_set_inactivity_timeout() is in use.
    ///    This function sets the prgname (g_set_prgname()), if not already set, to the basename of argv[0].
    ///    Since 2.40, applications that are not explicitly flagged as services or launchers (ie: neither G_APPLICATION_IS_SERVICE or G_APPLICATION_IS_LAUNCHER are given as flags) will check (from the default handler for local_command_line) if "--gapplication-service" was given in the command line. If this flag is present then normal commandline processing is interrupted and the G_APPLICATION_IS_SERVICE flag is set. This provides a "compromise" solution whereby running an application directly from the commandline will invoke it in the normal way (which can be useful for debugging) while still allowing applications to be D-Bus activated in service mode. The D-Bus service file should invoke the executable with "--gapplication-service" as the sole commandline argument. This approach is suitable for use by most graphical applications but should not be used from applications like editors that need precise control over when processes invoked via the commandline will exit and what their exit status will be.
    static func run(id name: UnsafePointer<gchar>? = nil, flags f: ApplicationFlags = .flags_none, arguments args: [String]? = nil, startupHandler s: ApplicationSignalHandler? = nil, activationHandler a: ApplicationSignalHandler? = nil) -> Int? {
        return Application(id: name, flags: f)?.run(arguments: args, startupHandler: s, activationHandler: a)
    }
}
