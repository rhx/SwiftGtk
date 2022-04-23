//
//  Cogl.swift
//  Cogl
//
//  Created by Rene Hexel on 25/9/16.
//
//
import CGLib
import CCogl
import GLib
import GLibObject

/// A Cogl texture
public typealias CoglTexture = _CoglTexture

/// Cogl frame buffer
public typealias CoglFramebuffer = _CoglTexture

/// Fixed point number, particularly fast on machines without and FPU
public typealias Fixed = CoglFixed

/// Some convenience methods for the fixed-point type
public extension Fixed {
    /// Create a fixed-point number from a Double
    init(doubleValue d: Double) { self = cogl_double_to_fixed(d) }
    /// Create a fixed-point number from a Float
    init(floatValue f: Float) { self = cogl_double_to_fixed(Double(f)) }
    /// Create a fixed-point number from an Int
    init(intValue i: Int) { self = CInt(i) << FIXED_Q }

    /// Truncated integer representation of the fixed-point value
    var intValue: Int {
        get { return Int(self >> FIXED_Q) }
        mutating set { self = CInt(newValue) << FIXED_Q }
    }

    /// Double precision representation of the fixed-point value
    var doubleValue: Double {
        get { return Double(self) / 65536 }
        mutating set { self = cogl_double_to_fixed(newValue) }
    }

    /// Smallest possible number greater than zero expressed as a fixed-point number.
    static var 𝜀 = FIXED_EPSILON
}

/// Calculate the sine of the given angle in fixed-point notation
public func sin(_ angle: Angle) -> Fixed { return cogl_fixed_sin(angle) }

/// Calculate the cosine of the given angle in fixed-point notation
public func cos(_ angle: Angle) -> Fixed { return cogl_fixed_cos(angle) }

/// Calculate the tangent of the given angle in fixed-point notation
public func tan(_ angle: Angle) -> Fixed { return cogl_fixed_tan (angle) }

/// Calculate computes the principal value of the arc tangent of `a` in fixed point notation
public func atan(_ a: Fixed) -> Angle { return cogl_fixed_atan(a) }

/// Compute the principal value in fixed point notation
/// of the arc tangent of `y/x`, using the signs of both arguments
/// to determine the quadrant of the return value.
public func atan2(_ a: Fixed, _ b: Fixed) -> Angle { return cogl_fixed_atan2(a, b) }

/// Multiply two fixed-point numbers.
public func mul(_ a: Fixed, _ b: Fixed) -> Fixed { return cogl_fixed_mul(a, b) }

/// Divide two fixed-point numbers.
public func div(_ a: Fixed, _ b: Fixed) -> Fixed { return cogl_fixed_div(a, b) }

/// Multiplies two fixed-point values and then divide the result
/// by a third fixed-point value.
public func mul_div(_ a: Fixed, _ b: Fixed, _ c: Fixed) -> Fixed { return cogl_fixed_mul_div(a, b, c) }

/// Calculate the square root of a fixed-point number
public func sqrt(_ x: Fixed) -> Fixed { return cogl_fixed_sqrt(x) }

/// Calculate the base-2 logarithm of a given, positive integer as a fixed-point number.
public func log2(_ x: Int) -> Fixed {
    precondition(x > 0)
    return cogl_fixed_log2(CUnsignedInt(x))
}

/// Calculate the integral pow(2, a) of a given fixed-point number.
public func pow2(_ a: Fixed) -> Int { return Int(cogl_fixed_pow2(a)) }

/// Calculate x to the power of a.
public func pow(_ x: Int, _ a: Fixed) -> Int { return Int(cogl_fixed_pow(CUnsignedInt(x), a)) }
