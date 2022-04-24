//
//  Box.swift
//  SwiftGtk
//
//  Created by Rene Hexel on 23/4/17.
//  Copyright © 2017, 2018, 2020, 2021 Rene Hexel.  All rights reserved.
//
import CGLib
import CGtk
import GLib
import GLibObject
import GIO
import Cairo


/// Box protocol convenience methods
public extension BoxProtocol {
    /// Append a list of children
    /// - Parameter children: sequence of widgets to append
    @inlinable func append<S: Swift.Sequence>(children: S) where S.Element: WidgetProtocol {
        children.forEach(append)
    }

    /// Set the start margin of the box
    ///
    /// - Parameter marginStart: start margin

    @inlinable func set(marginStart: Int) { setMarginStart(margin: marginStart) }
    /// Set the end margin of the box
    ///
    /// - Parameter marginEnd: end margin
    @inlinable func set(marginEnd: Int) { setMarginEnd(margin: marginEnd) }
}

