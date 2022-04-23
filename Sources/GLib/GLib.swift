//
//  GLib.swift
//  GLib
//
//  Created by Rene Hexel on 27/04/2017.
//  Copyright © 2016, 2017, 2018, 2019, 2020 Rene Hexel.  All rights reserved.
//
import CGLib

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
