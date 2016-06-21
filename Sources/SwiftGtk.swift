import CGLib
import CCairo
import CPango
import CGdkPixbuf
import CGdk
import CAtk
import CGtk
import GLib
import GObject
import GIO

/// A closure taking a reference to the current application as an argument
public typealias ApplicationSignalHandler = (ApplicationRef) -> Void

/// Internal Class that wraps a closure to make sure the closure is retained
/// until no longer required
class ClosureHolder<S,T> {
    let call: (S) -> T

    init(_ closure: (S) -> T) {
        self.call = closure
    }
}

/// Internal type for SignalHandler closure holder
typealias SignalHandlerClosureHolder = ClosureHolder<ApplicationRef,Void>


/**
 * Convert a swift string (or UnsafePointer<Char>) into
 * an UnsafeMutablePointer<CChar> as used by many POSIX functions.
 * Use with caution: the returned pointer is not really mutable, but many
 * C APIs fail to declare them `const'
 */
func cstring(_ arg: UnsafePointer<CChar>) -> UnsafeMutablePointer<CChar> {
    return UnsafeMutablePointer<CChar>(arg)
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
    return arguments.map { let s = cstring($0); return s } + [UnsafeMutablePointer<CChar>(nil)]
}


/// Widget convenience methods
public extension Widget {
}

public extension WidgetRef {
    public init(_ object: UnsafeMutablePointer<GObject>) {
        ptr = UnsafeMutablePointer(object)
    }
}

/// Application protocol convenience methods
public extension ApplicationProtocol {
    /// Connection helper function
    private func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: SignalHandlerClosureHolder, handler: @convention(c) (gpointer, gpointer) -> Void) -> CUnsignedLong {
        let opaqueHolder = OpaquePointer(bitPattern: Unmanaged.passRetained(data))
        let callback = unsafeBitCast(handler, to: Callback.self)
        let rv = signalConnectData(detailedSignal: name, cHandler: callback, data: opaqueHolder, destroyData: {
            if let swift = OpaquePointer($0) {
                let holder = Unmanaged<SignalHandlerClosureHolder>.fromOpaque(swift)
                holder.release()
            }
            let _ = $1
            }, connectFlags: flags)
        return rv
    }

    /// Connects a (Void) -> Void closure or function to a signal for
    /// the receiver object.  Similar to g_signal_connect(), but allows
    /// to provide a Swift closure that can capture its surrounding context.
    public func connect(signal name: UnsafePointer<gchar>, flags f: ConnectFlags = ConnectFlags(0), handler: ApplicationSignalHandler) -> CUnsignedLong {
        let rv = _connect(signal: name, flags: f, data: ClosureHolder(handler)) {
            let ptr = OpaquePointer($1)
            let holder = Unmanaged<SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(ApplicationRef(UnsafeMutablePointer($0)))
        }
        return rv
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
            let _ = connect(signal: "startup", handler: s)
        }
        if let a = activationHandler {
            let _ = connect(signal: "activate", handler: a)
        }
        if let params = arguments where params.count != 0 {
            var av = argv(params)
            return Int(g_application_run(UnsafeMutablePointer<GApplication>(ptr), CInt(params.count), &av))
        } else {
            return Int(g_application_run(UnsafeMutablePointer<GApplication>(ptr), 0, nil))
        }
    }
}
