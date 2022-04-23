//
//  GLibType.swift
//  GLibObject
//
//  Created by Rene Hexel on 17/4/17.
//  Copyright © 2017, 2018, 2020 Rene Hexel.  All rights reserved.
//
import CGLib
import GLib

//
// Unfortunately, the G_TYPE_* macros are not imported into Swift
// Therefore, rewe create them manually here
//
public extension GType {
    static let invalid   = GType( 0 << TYPE_FUNDAMENTAL_SHIFT)
    static let none      = GType( 1 << TYPE_FUNDAMENTAL_SHIFT)
    static let interface = GType( 2 << TYPE_FUNDAMENTAL_SHIFT)
    static let char      = GType( 3 << TYPE_FUNDAMENTAL_SHIFT)
    static let uchar     = GType( 4 << TYPE_FUNDAMENTAL_SHIFT)
    static let boolean   = GType( 5 << TYPE_FUNDAMENTAL_SHIFT)
    static let int       = GType( 6 << TYPE_FUNDAMENTAL_SHIFT)
    static let uint      = GType( 7 << TYPE_FUNDAMENTAL_SHIFT)
    static let long      = GType( 8 << TYPE_FUNDAMENTAL_SHIFT)
    static let ulong     = GType( 9 << TYPE_FUNDAMENTAL_SHIFT)
    static let int64     = GType(10 << TYPE_FUNDAMENTAL_SHIFT)
    static let uint64    = GType(11 << TYPE_FUNDAMENTAL_SHIFT)
    static let `enum`    = GType(12 << TYPE_FUNDAMENTAL_SHIFT)
    static let flags     = GType(13 << TYPE_FUNDAMENTAL_SHIFT)
    static let float     = GType(14 << TYPE_FUNDAMENTAL_SHIFT)
    static let double    = GType(15 << TYPE_FUNDAMENTAL_SHIFT)
    static let string    = GType(16 << TYPE_FUNDAMENTAL_SHIFT)
    static let pointer   = GType(17 << TYPE_FUNDAMENTAL_SHIFT)
    static let boxed     = GType(18 << TYPE_FUNDAMENTAL_SHIFT)
    static let param     = GType(19 << TYPE_FUNDAMENTAL_SHIFT)
    static let object    = GType(20 << TYPE_FUNDAMENTAL_SHIFT)
    static let variant   = GType(21 << TYPE_FUNDAMENTAL_SHIFT)
    static let max       = GType(TYPE_FUNDAMENTAL_MAX)
}

public extension GType {
    @inlinable func test(flags: TypeFundamentalFlags) -> Bool {
        return g_type_test_flags(self, flags.rawValue) != 0
    }
    @inlinable func test(flags: TypeFlags) -> Bool {
        return g_type_test_flags(self, flags.rawValue) != 0
    }
    /// Return the fundamental type which is the ancestor of `self`.
    @inlinable var fundamental: GType   { return g_type_fundamental(self) }
    /// Return `true` iff `self` is a fundamental type.
    @inlinable var isFundamental: Bool  { return self <= GType.max }
    /// Return `true` iff `self` is a derived type.
    @inlinable var isDerived: Bool      { return !self.isFundamental }
    /// Return `true` iff `self` is an interface type.
    @inlinable var isInterface: Bool    { return self.fundamental == .interface }
    /// Return `true` iff `self` is a classed type.
    @inlinable var isClassed: Bool      { return test(flags: .classed) }
    /// Return `true` iff `self` is a derivable type.
    @inlinable var isDerivable: Bool    { return test(flags: .derivable) }
    /// Return `true` iff `self` is a deep derivable type.
    @inlinable var isDeepDerivable: Bool { return test(flags: .deepDerivable) }
    /// Return `true` iff `self` is an instantiatable type.
    @inlinable var isInstantiable: Bool { return test(flags: .instantiatable) }
    /// Return `true` iff `self` is an abstract type.
    @inlinable var isAbstract: Bool     { return test(flags: .abstract) }
    /// Return `true` iff `self` is an abstract value type.
    @inlinable var isAbstractValue: Bool { return test(flags: .valueAbstract) }
    /// Return `true` iff `self` is a value type.
    @inlinable var isValueType: Bool    { return g_type_check_is_value_type(self) != 0 }
    /// Return `true` iff `self` has a value table.
    @inlinable var hasValueTable: Bool  { return g_type_value_table_peek(self) != nil }
    /// Return `true` iff `a` is transformable into `b`
    @inlinable static func transformable(from a: GType, to b: GType) -> Bool {
        return g_value_type_transformable(a, b) != 0
    }
}

//fileprivate struct _GTypeClass { let g_type: GType }
//fileprivate struct _GTypeInstance { let g_class: UnsafeMutablePointer<_GTypeClass>? }

/// Convenience extensions for Object types
public extension ObjectProtocol {
    /// Underlying type
    @inlinable var type: GType {
        let typeInstance = ptr.assumingMemoryBound(to: Optional<UnsafeMutablePointer<GType>>.self)
        guard let cls = typeInstance.pointee else { return .invalid }
        return cls.pointee
    }

    /// Name of the underlying type
    @inlinable var typeName: String {
        return String(cString: g_type_name(type))
    }
}
