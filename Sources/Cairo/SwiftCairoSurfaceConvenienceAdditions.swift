//
//  SwiftCairoSurfaceConvenienceAdditions.swift
//  SwiftCairo
//
//  Created by Rene Hexel on 29/4/17.
//  Copyright © 2017, 2018, 2019, 2020 Rene Hexel.  All rights reserved.
//
import CCairo
import GLib
import GLibObject

public extension SurfaceProtocol {
    /// Device offset as an x/y tuple
    @inlinable var deviceOffset: (x: Double, y: Double) {
        get {
            var x = Double(0)
            var y = Double(0)
            cairo_surface_get_device_offset(_ptr, &x, &y)
            return (x: x, y: y)
        }
        nonmutating set {
            setDeviceOffset(x: newValue.x, y: newValue.y)
        }
    }
    /// Set the device offset
    ///
    /// - Parameters:
    ///   - x: horizontal offset
    ///   - y: vertical offset
    @inlinable func setDeviceOffset(x: Double = 0, y: Double = 0) {
        cairo_surface_set_device_offset(_ptr, x, y)
    }

    /// Device scale as an x/y tuple
    @inlinable var deviceScale: (x: Double, y: Double) {
        get {
            var x = Double(0)
            var y = Double(0)
            cairo_surface_get_device_scale(_ptr, &x, &y)
            return (x: x, y: y)
        }
        nonmutating set {
            setDeviceScale(x: newValue.x, y: newValue.y)
        }
    }
    /// Set the device scale
    ///
    /// - Parameters:
    ///   - x: horizontal scale
    ///   - y: vertical scale
    @inlinable func setDeviceScale(x: Double = 1, y: Double = 1) {
        cairo_surface_set_device_scale(_ptr, x, y)
    }
}
