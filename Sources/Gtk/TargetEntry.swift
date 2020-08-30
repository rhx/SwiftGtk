//
//  TargetEntry.swift
//  SwiftGtk
//
//  Created by Rene Hexel on 25/4/17.
//  Copyright © 2017, 2018, 2019, 2020 Rene Hexel.  All rights reserved.
//
import Foundation
import CGtk

public extension GtkTargetEntry {
    /// Drag and drop target entry convenience constructor
    ///
    /// - Parameters:
    ///   - target: name of the target
    ///   - flags: target restrictions (defaults to `.same_app`)
    ///   - info: target information
    @inlinable init(target: String, flags: TargetFlags = .sameApp, info: Int = 0) {
        self.init()
        self.target = strdup(target)
        self.flags = flags.rawValue
        self.info = guint(info)
    }
}

/// Construct an array of `GtkTargetEntry` elements
/// - Parameter f: flags to use for all entries
/// - Parameter i: information to record for all entries
/// - Parameter names: names of the target entries
@inlinable public func GtkTargetEntries(flags f: TargetFlags = .sameApp, info i: Int = 0, _ names: String...) -> [GtkTargetEntry] {
    return names.map { GtkTargetEntry(target: $0, flags: f, info: i) }
}
