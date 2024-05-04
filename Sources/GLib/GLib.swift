//
//  GLib.swift
//  GLib
//
//  Created by Rene Hexel on 27/04/2017.
//  Copyright © 2016, 2017, 2018, 2019, 2020, 2023 Rene Hexel.  All rights reserved.
//
import CGLib

/// Protocol for GLib types that wrap pointers.
public protocol PointerWrapper {
    /// Untyped pointer to the underlying instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Required Initialiser for types conforming to `PointerWrapper`
    init(raw: UnsafeMutableRawPointer)
}

/// The key for passing the log message to `logStructuredArray` (required)
public let logKeyMessage  = "MESSAGE"
/// The key for passing the log priority to `logStructuredArray` (required)
public let logKeyPriority = "PRIORITY"
/// The key for passing the log domain to `logStructuredArray` (optional)
public let logKeyDomain   = "GLIB_DOMAIN"
/// The key for passing the source file name to `logStructuredArray` (optional)
public let logKeyFile    = "CODE_FILE"
/// The key for passing the source line number as a string to `logStructuredArray` (optional)
public let logKeyLine    = "CODE_LINE"
/// The key for passing the source function name to `logStructuredArray` (optional)
public let logKeyFunc    = "CODE_FUNC"

/// Log priority 1 for passing to the `logKeyPriority` field for `logStructuredArray`
public let logPriority1: UnsafePointer<CChar> = UnsafePointer(strdup("1"))
/// Log priority 2 for passing to the `logKeyPriority` field for `logStructuredArray`
public let logPriority2: UnsafePointer<CChar> = UnsafePointer(strdup("2"))
/// Log priority 3 for passing to the `logKeyPriority` field for `logStructuredArray`
public let logPriority3: UnsafePointer<CChar> = UnsafePointer(strdup("3"))
/// Log priority 4 for passing to the `logKeyPriority` field for `logStructuredArray`
public let logPriority4: UnsafePointer<CChar> = UnsafePointer(strdup("4"))
/// Log priority 5 for passing to the `logKeyPriority` field for `logStructuredArray`
public let logPriority5: UnsafePointer<CChar> = UnsafePointer(strdup("5"))
/// Log priority 6 for passing to the `logKeyPriority` field for `logStructuredArray`
public let logPriority6: UnsafePointer<CChar> = UnsafePointer(strdup("6"))
/// Log priority 7 for passing to the `logKeyPriority` field for `logStructuredArray`
public let logPriority7: UnsafePointer<CChar> = UnsafePointer(strdup("7"))

/// Conversion dictionary from `LogLevelFlags` to the corresponding priorities
@usableFromInline let priorities: [LogLevelFlags : UnsafePointer<CChar>] = [
    .error: logPriority3, .critical: logPriority4, .warning: logPriority4,
    .message: logPriority5, .info: logPriority6, .debug: logPriority7
]

/// Opaque type. See RecMutexLocker for details.
public struct GRecMutexLocker {}

public extension LogLevelFlags {
    /// return the priority string as required by
    /// the `logKeyPriority` field for `logStructuredArray`
    @inlinable var priorityString: UnsafePointer<CChar> {
        priorities[self] ?? logPriority5
    }

    /// log level for debug messages, see `g_debug()`
    static let debug = LogLevelFlags.levelDebug
    /// log level for informational messages, see `g_info()`
    static let info = LogLevelFlags.levelInfo
    /// log level for messages, see `g_message()`
    static let message = LogLevelFlags.levelMessage
    /// log level for warnings, see `g_warning()`
    static let warning = LogLevelFlags.levelWarning
    /// log level for critical warning messages, see
    ///     `g_critical()`.
    ///     This level is also used for messages produced by `g_return_if_fail()`
    ///     and `g_return_val_if_fail()`.
    static let critical = LogLevelFlags.levelCritical
    /// log level for errors, see `g_error()`.
    ///     This level is also used for messages produced by `g_assert()`.
    static let error = LogLevelFlags.levelError
}

extension LogLevelFlags: Hashable {}

#if !os(Linux)
/// Logging function
///
/// - Parameters:
///   - message: log message
///   - level: log level (defaults to `.debug`)
@inlinable public func g_log(_ message: String, level flags: LogLevelFlags = .debug) {
    message.utf8CString.withUnsafeBufferPointer {
        g_log(messagePtr: $0.baseAddress, level: flags)
    }
}

/// Logging function
///
/// - Parameters:
///   - messagePtr: optional pointer to a C string message (nothing gets logged if `nil`)
///   - level: log level (defaults to `.debug`)
@inlinable public func g_log(messagePtr: UnsafePointer<CChar>?, level: LogLevelFlags = .debug) {
    guard let base = messagePtr else { return }
    let varargs = [OpaquePointer(base)]
    withVaList(varargs) {
        g_logv(nil, level.value, "%s", $0)
    }
}

/// Logging function
///
/// - Parameters:
///   - domain: the domain this logging function occurs in
///   - message: log message
///   - level: log level (defaults to `.debug`)
@inlinable public func g_log(domain: String, _ message: String, level: LogLevelFlags = .debug) {
    message.utf8CString.withUnsafeBufferPointer {
        guard let base = $0.baseAddress else { return }
        let varargs = [OpaquePointer(base)]
        withVaList(varargs) {
            g_logv(domain, level.value, "%s", $0)
        }
    }
}
#else

/// Logging function
///
/// - Parameters:
///   - message: log message
///   - level: log level (defaults to `.debug`)
@inlinable public func g_log(_ message: String, level flags: LogLevelFlags = .debug) {
    var buffer = message
    if message.firstIndex(of: "%") != nil {
        buffer = message.reduce("") { $0 + ($1 == "%" ? "%%" : String($1)) }
    }
    withUnsafeMutableBytes(of: &buffer) {
        let msg = $0.baseAddress?.assumingMemoryBound(to: CChar.self)
        g_log(messagePtr: msg, level: flags)
    }
}

/// Logging function
///
/// - Parameters:
///   - messagePtr: optional pointer to a C string message (nothing gets logged if `nil`)
///   - level: log level (defaults to `.debug`)
@inlinable public func g_log(messagePtr: UnsafePointer<CChar>?, level: LogLevelFlags = .debug) {
    guard let msg = messagePtr else { return }
#if swift(<5.2)
    g_logv(nil, level.value, msg, CVaListPointer(_fromUnsafeMutablePointer: UnsafeMutableRawPointer(mutating: msg)))
#else
    guard GLIB_MAJOR_VERSION > 2 || GLIB_MINOR_VERSION >= 50 else {
        print(String(cString: msg))
        return
    }
    logKeyMessage.withCString {
        let messageField = GLogField(key: $0, value: gconstpointer(msg), length: -1)
        logKeyPriority.withCString {
            let priority = level.priorityString
            let priorityField = GLogField(key: $0, value: priority, length: -1)
            var fields = [messageField, priorityField]
            logStructuredArray(logLevel: level, fields: &fields, nFields: fields.count)
        }
    }
#endif
}

/// Logging function
///
/// - Parameters:
///   - domain: the domain this logging function occurs in
///   - message: log message
///   - level: log level (defaults to `.debug`)
@inlinable public func g_log(domain: String, _ message: String, level: LogLevelFlags = .debug) {
    var buffer = message
    if message.firstIndex(of: "%") != nil {
        buffer = message.reduce("") { $0 + ($1 == "%" ? "%%" : String($1)) }
    }
    withUnsafeMutableBytes(of: &buffer) {
        guard let buffer = $0.baseAddress else { return }
        let msg = buffer.assumingMemoryBound(to: CChar.self)
#if swift(<5.2)
        g_logv(domain, level.value, msg, CVaListPointer(_fromUnsafeMutablePointer: buffer))
#else
        guard GLIB_MAJOR_VERSION > 2 || GLIB_MINOR_VERSION >= 50 else {
            print(message)
            return
        }
        logKeyMessage.withCString {
            let messageField = GLogField(key: $0, value: gconstpointer(msg), length: -1)
            logKeyPriority.withCString {
                let priority = level.priorityString
                let priorityField = GLogField(key: $0, value: priority, length: -1)
                logKeyDomain.withCString { domainKey in
                    domain.withCString {
                        let domainField = GLogField(key: domainKey, value: $0, length: -1)
                        var fields = [messageField, priorityField, domainField]
                        logStructuredArray(logLevel: level, fields: &fields, nFields: fields.count)
                    }
                }
            }
        }
#endif
    }
}
#endif

/// Log a warning message
///
/// - Parameters:
///   - message: warning message
///   - domain: the domain this logging occurs in (defaults to `nil`)
@inlinable public func g_warning(_ message: String, domain: String? = nil) {
    if let d = domain {
        g_log(domain: d, message, level: .warning)
    } else {
        g_log(message, level: .warning)
    }
}

#if os(macOS) || os(Linux)
/// Change the mode oft a filesystem object.
///
/// This function is a wrapper around the `chmod()` system call,
/// changing the mode of the filesystem object pointed to by `path`.
///
/// - Parameters:
///   - path: The filesystem path of the object to query.
///   - mode: The new mode for the object.
/// - Returns: `0` on success, `-1` on error.
@inlinable
public func g_chmod(_ path: UnsafePointer<CChar>, _ mode: gint) -> CInt {
    return chmod(path, mode_t(mode))
}

/// Create a file.
///
/// This function is a wrapper around the `creat()` system call,
/// creating a filesystem object pointed to by `path`.
///
/// - Parameters:
///   - path: The filesystem path of the object to create.
///   - mode: The new mode for the object.
/// - Returns: `0` on success, `-1` on error.
@inlinable
public func g_creat(_ path: UnsafePointer<CChar>, _ mode: gint) -> CInt {
    return creat(path, mode_t(mode))
}

/// Open or create a buiffered stream.
///
/// This function is a wrapper around the `fopen()` system call,
/// creating a filesystem stream object pointed to by `path`.
///
/// - Parameters:
///   - path: The filesystem path of the object to open.
///   - mode: The new mode for the object when created.
/// - Returns: a pointer to the new stream object, `nil` on error.
@inlinable
public func g_fopen(_ path: UnsafePointer<CChar>, _ mode: UnsafePointer<CChar>) -> UnsafeMutablePointer<FILE>? {
    return fopen(path, mode)
}

/// Repen a buiffered stream.
///
/// This function is a wrapper around the `freopen()` system call,
/// reopening a filesystem stream object pointed to by `path` and
/// associates the stream with the given file pointer.
///
/// - Parameters:
///   - path: The filesystem path of the object to open.
///   - mode: The new mode for the object when created.
///   - stream: The stream to associate with the file pointer.
/// - Returns: a pointer to the  stream object, `nil` on error.
@inlinable
public func g_freopen(_ path: UnsafePointer<CChar>, _ mode: UnsafePointer<CChar>, _ stream: UnsafeMutablePointer<FILE>!) -> UnsafeMutablePointer<FILE>? {
    return freopen(path, mode, stream)
}

/// Syncronize a filesystem object.
///
/// This function is a wrapper around the `fsync()` system call,
/// synchronising the files descriptor passed in.
///
/// - Parameters:
///   - fileDescriptor: The file descriptor to syncronise.
/// - Returns: `0` on success, `-1` on error.
@inlinable
public func g_fsync(_ fileDescriptor: CInt) -> CInt {
    return fsync(fileDescriptor)
}

/// Get information about a filesystem object.
///
/// This function is a wrapper around the `lstat()` system call,
/// returning information about the file pointed to by `path`,
/// without following symbolic links.
///
/// - Parameters:
///   - path: The filesystem path of the object to query.
///   - buf: A `GStatBuf` structure to fill in with information about the file.
/// - Returns: `0` on success, `-1` on error.
@inlinable
public func g_lstat(_ path: UnsafePointer<CChar>, _ buf: UnsafeMutablePointer<GStatBuf>!) -> CInt {
    return lstat(path, buf)
}

/// Create a directory.
///
/// This function is a wrapper around the `mkdir()` system call,
/// creating a directory pointed to by `path`.
///
/// - Parameters:
///   - path: The filesystem path of the directory to create.
///   - mode: The new mode for the directory.
/// - Returns: `0` on success, `-1` on error.
@inlinable
public func g_mkdir(_ path: UnsafePointer<CChar>, _ mode: gint) -> CInt {
    return mkdir(path, mode_t(mode))
}

#if os(macOS)
/// Open a file.
///
/// This function is a wrapper around the `open()` system call,
/// opening a filesystem object pointed to by `path`.
///
/// - Parameters:
///   - path: The filesystem path of the object to open.
///   - flags: The flags to use when opening the object.
///   - mode: The new mode for the object.
/// - Returns: `0` on success, `-1` on error.
@inlinable
public func g_open(_ path: UnsafePointer<CChar>, _ flags: CInt, _ mode: gint = 0) -> CInt {
    return open(path, flags, mode_t(mode))
}
#endif

/// Remove a filesystem object.
///
/// This function is a wrapper around the `remove()` system call,
/// removing the filesystem object pointed to by `path`.
///
/// - Parameter path: The filesystem path of the object to remove.
/// - Returns: `0` on success, `-1` on error.
@inlinable
public func g_remove(_ path: UnsafePointer<CChar>) -> CInt {
    return remove(path)
}

/// Rename a filesystem object.
///
/// This function is a wrapper around the `rename()` system call,
/// renaming the filesystem object pointed to by `old` to `new`.
///
/// - Parameters:
///   - old: The old filesystem path.
///   - new: The new filesystem path.
/// - Returns: `0` on success, `-1` on error.
@inlinable
public func g_rename(_ old: UnsafePointer<CChar>, _ new: UnsafePointer<CChar>) -> CInt {
    return rename(old, new)
}

/// Get information about a filesystem object.
///
/// This function is a wrapper around the `stat()` system call,
/// returning information about the file pointed to by `path`.
///
/// - Parameters:
///   - path: The filesystem path of the object to query.
///   - buf: A `GStatBuf` structure to fill in with information about the file.
/// - Returns: `0` on success, `-1` on error.
@inlinable
public func g_stat(_ path: UnsafePointer<CChar>, _ buf: UnsafeMutablePointer<GStatBuf>!) -> CInt {
    return stat(path, buf)
}

/// Set filesystem object times.
///
/// This function is a wrapper around the `utime()` system call,
/// setting time information about the file pointed to by `path`.
///
/// - Parameters:
///   - path: The filesystem path of the object to query.
///   - times: Pointer to a`utimbuf` structure with information about the file access and modification times.
/// - Returns: `0` on success, `-1` on error.
@inlinable
public func g_utime(_ path: UnsafePointer<CChar>, _ times: UnsafePointer<utimbuf>!) -> CInt {
    return utime(path, times)
}
#endif

#if os(Linux)
/// Set the program name.
///
/// This function is a wrapper around the `g_set_prgname()` function,
/// setting the program name to the given string.
///
/// - Parameters:
///   - name: The new program name.
/// - Returns: `0` on success, `-1` on error (not implemented).
@inlinable
public func g_set_prgname_once(_ name: UnsafePointer<CChar>) -> CInt {
    g_set_prgname(name)
    return 0
}
#endif