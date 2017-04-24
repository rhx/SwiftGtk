//
//  TargetEntry.swift
//  SwiftGtk
//
//  Created by Rene Hexel on 25/4/17.
//  Copyright © 2017 Rene Hexel.  All rights reserved.
//
import CGtk

fileprivate let string: (UnsafePointer<CChar>) -> UnsafeMutablePointer<CChar> = { UnsafeMutablePointer(mutating: $0) }

public extension GtkTargetEntry {
    public init(target: String, flags: TargetFlags = .same_app, info: Int = 0) {
        self.target = string(target)
        self.flags = flags.rawValue
        self.info = guint(info)
    }
}
