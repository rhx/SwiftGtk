//
//  GLibSignal.swift
//  GLibObject
//
//  Created by Rene Hexel on 29/4/17.
//  Copyright © 2017, 2018, 2020 Rene Hexel.  All rights reserved.
//
import CGLib
import GLib

public extension ObjectProtocol {
    /// Emit a signal with a given number and arguments.
    ///
    /// - Parameters:
    ///   - number: signal number
    ///   - quark: the detail (defaults to 0)
    ///   - arguments: array of arguments passed to the signal, followed by a location for the return value (if required)
    @inlinable func emit(signal number: Int, detail quark: GQuark = 0, arguments: [CVarArg]) {
        withVaList(arguments) {
            g_signal_emit_valist(ptr, guint(number), quark, $0)
        }
    }

    /// Emit a signal with a given number and parameters.
    ///
    /// - Parameters:
    ///   - number: signal number
    ///   - quark: the detail (defaults to 0)
    ///   - parameters: list of parameters passed to the signal, followed by a location for the return value (if required)
    @inlinable func emit(signal number: Int, detail quark: GQuark = 0, _ parameters: CVarArg...) {
        emit(signal: number, detail: quark, arguments: parameters)
    }

    /// Emit a signal with a given name.
    ///
    /// - Parameters:
    ///   - signalName: name of the signal to emit
    ///   - arguments: array of arguments passed to the signal, followed by a location for the return value (if required)
    @inlinable func emit<S: SignalNameProtocol>(_ signalName: S, arguments: [CVarArg]) {
        var quark = GQuark(0)
        var id = guint(0)
        guard g_signal_parse_name(signalName.rawValue, type, &id, &quark, 1) != 0 else { return }
        emit(signal: Int(id), detail: quark, arguments: arguments)
    }

    /// Emit a signal with a given name.
    ///
    /// - Parameters:
    ///   - signalName: name of the signal to emit
    ///   - parameters: list of parameters passed to the signal, followed by a location for the return value (if required)
    @inlinable func emit<S: SignalNameProtocol>(_ signalName: S, _ parameters: CVarArg...) {
        emit(signalName, arguments: parameters)
    }
}
