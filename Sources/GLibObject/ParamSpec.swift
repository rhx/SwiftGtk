//
//  ParamSpec.swift
//  GLibObject
//
//  Created by Rene Hexel on 29/4/17.
//  Copyright © 2017, 2018, 2020 Rene Hexel.  All rights reserved.
//
import CGLib
import GLib

public extension ParamSpecRef {
    /// Create a parameter specification reference from a lookup table.
    ///
    /// - Parameters:
    ///   - name: property name to look up
    ///   - pool: lookup table to consult
    ///   - ownerType: type of the property owner (defaults to `.object`)
    ///   - walkAncestors: `false` to avoid checking ancestors (defaults to `true`)
    @inlinable init?<P: PropertyNameProtocol>(name: P, from pool: UnsafeMutablePointer<GParamSpecPool>!, ownerType: GType = .object, walkAncestors: Bool = true) {
        guard let p = g_param_spec_pool_lookup(pool, name.rawValue, ownerType, gboolean(walkAncestors ? 1 : 0)) else { return nil }
        self.init(p)
    }

    /// Create a parameter specification reference from a lookup table.
    ///
    /// - Parameters:
    ///   - name: property name to look up
    ///   - pool: reference to the lookup table to consult
    ///   - ownerType: type of the property owner (defaults to `.object`)
    ///   - walkAncestors: `false` to avoid checking ancestors (defaults to `true`)
    @inlinable init?<N: PropertyNameProtocol, P: ParamSpecPoolProtocol>(name: N, from pool: P!, ownerType: GType = .object, walkAncestors: Bool = true) {
        guard let p = g_param_spec_pool_lookup(pool._ptr, name.rawValue, ownerType, gboolean(walkAncestors ? 1 : 0)) else { return nil }
        self.init(p)
    }
}
