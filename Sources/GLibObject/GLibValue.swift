//
//  GLibValue.swift
//  GLibObject
//
//  Created by Rene Hexel on 17/4/17.
//  Copyright © 2016, 2017, 2018, 2020, 2021 Rene Hexel.  All rights reserved.
//
#if os(macOS) || os(iOS) || os(tvOS)
    import Darwin
#else
    import Glibc
#endif
import CGLib
import GLib
import GObjectCHelpers

public extension ValueProtocol {
    /// Return the value as bindingFlags
    @inlinable var bindingFlags: BindingFlags {
        get {
            let data: UnsafePointer<BindingFlags> = dataPointer()
            return data.pointee
        }
    }
    ///
    /// Set the receiver up to hold a value of the given type
    ///
    /// - Parameter type: the type of value to hold
    @inlinable func set(type: GType) { _ = init_(gType: type) }

    /// Generic Value accessor.
    ///
    /// - Returns: an optional String if stored as the value
    @inlinable func get() -> String { return string }
    /// Generic Value accessor.
    ///
    /// - Returns: a Bool if stored as the value
    @inlinable func get() -> Bool { return boolean }
    /// Generic Value accessor.
    ///
    /// - Returns: a Double if stored as the value
    @inlinable func get() -> Double { return double }
    /// Generic Value accessor.
    ///
    /// - Returns: a Float if stored as the value
    @inlinable func get() -> Float { return Float(float) }
    /// Generic Value accessor.
    ///
    /// - Returns: an Int if stored as the value
    @inlinable func get() -> Int { return Int(long) }
    /// Generic Value accessor.
    ///
    /// - Returns: a UInt if stored as the value
    @inlinable func get() -> UInt { return UInt(ulong) }
    /// Generic Value accessor.
    ///
    /// - Returns: an Int if stored as the value
    @inlinable func get() -> Int64 { return Int64(int64) }
    /// Generic Value accessor.
    ///
    /// - Returns: a UInt if stored as the value
    @inlinable func get() -> UInt64 { return UInt64(uint64) }
    /// Generic Value accessor.
    ///
    /// - Returns: an Int if stored as the value
    @inlinable func get() -> Int32 { return Int32(int) }
    /// Generic Value accessor.
    ///
    /// - Returns: a UInt if stored as the value
    @inlinable func get() -> UInt32 { return UInt32(uint) }
    /// Generic Value accessor.
    ///
    /// - Returns: an Int8 if stored as the value
    @inlinable func get() -> Int8 { return Int8(schar) }
    /// Generic Value accessor.
    ///
    /// - Returns: an optional UInt if stored as the value
    @inlinable func get() -> UInt8 { return UInt8(uchar) }
    /// Generic Value copier.
    ///
    /// - Returns: a `Value` containing a copy of the receiver
    @inlinable func get() -> Value { return Value(self) }
    /// ObjectRef Value accessor.
    ///
    /// - Returns: an optional Object reference if stored as the value
    @inlinable func get() -> ObjectRef? { return object }
    /// ParamSpec Value accessor.
    ///
    /// - Returns: an optional ParamSpec reference if stored as the value
    @inlinable func get() -> ParamSpecRef? { return param }
    /// Variant Value accessor.
    ///
    /// - Returns: an optional Variant reference if stored as the value
    @inlinable func get() -> Variant? {
        let ptr = variant
        return ptr.map { Variant($0) }
    }
    /// BindingFlags Value accessor.
    ///
    /// - Returns: optional BindingFlags if stored as the value
    @inlinable func get() -> BindingFlags? {
        guard typeCheckValueHolds(type: g_binding_flags_get_type()) else { return nil }
        return bindingFlags
    }

    /// Generic, mutable pointer Value accessor.
    ///
    /// - Returns: an optional pointer if stored as the value
    @inlinable func get<T>() -> UnsafeMutablePointer<T>? {
        let ptr = pointer
        return ptr.map { $0.assumingMemoryBound(to: T.self) }
    }
    /// Generic, force-unwrapped mutable pointer Value accessor
    ///
    /// - Returns: a force-unwrapped, optional pointer if stored as the value
    @inlinable func geUnsafeMutablePointer<T>() -> UnsafeMutablePointer<T>! {
        let ptr = pointer
        return ptr.map { $0.assumingMemoryBound(to: T.self) }
    }
    /// Generic Value accessor for object types.
    /// - Warning: this method does not check whether the object actually conforms to the given object subtype.  If you want run time safety, you need to check the (meta)type of the returned reference!
    /// - Returns: the unwrapped value if conforming to object type or `nil`
    @inlinable func get<O: ObjectProtocol>() -> O? {
        if typeCheckValueHolds(type: .object)  { let o = object ; return o?.ptr.flatMap { O(raw: $0) } }
        return nil
    }
    /// Generic Value accessor for unknown types.
    ///
    /// - Returns: the unwrapped value if conforming to the given type or `nil`
    @inlinable func get<T>() -> T? {
        if typeCheckValueHolds(type: .boolean) { return boolean as? T }
        if typeCheckValueHolds(type: .string)  { return string  as? T }
        if typeCheckValueHolds(type: .double)  { return double  as? T }
        if typeCheckValueHolds(type: .float)   { let f = float  ; return f as? T ?? Double(f) as? T }
        if typeCheckValueHolds(type: .long)    { let l = long   ; return l as? T ?? Int(l)    as? T }
        if typeCheckValueHolds(type: .ulong)   { let u = ulong  ; return u as? T ?? UInt(u)   as? T }
        if typeCheckValueHolds(type: .int)     { let i = int    ; return i as? T ?? Int32(i)  as? T }
        if typeCheckValueHolds(type: .uint)    { let u = uint   ; return u as? T ?? UInt32(u) as? T }
        if typeCheckValueHolds(type: .int64)   { let i = int64  ; return i as? T ?? Int64(i)  as? T }
        if typeCheckValueHolds(type: .uint64)  { let u = uint64 ; return u as? T ?? UInt64(u) as? T }
        if typeCheckValueHolds(type: .char)    { let i = schar  ; return i as? T ?? Int8(i)   as? T }
        if typeCheckValueHolds(type: .uchar)   { let u = uchar  ; return u as? T ?? UInt8(u)  as? T }
        if typeCheckValueHolds(type: .object)  { let o = object ; return o as? T ?? o?.ptr.flatMap { ObjectRef(raw: $0) as? T } }
        if typeCheckValueHolds(type: .param)   { let o = param  ; return o.flatMap { ParamSpecRef($0) as? T } ?? o.flatMap { ParamSpec($0) as? T } }
        g_warn_message("GLibObject", #file, #line, #function, "Cannot retrieve value of type \(gtype) to type \(T.self)")
        return nil
    }

    /// Generic Value accessor for Object classes.
    ///
    /// - Returns: nil
    @inlinable func dataPointer<T>() -> UnsafePointer<T> {
        let ptr = glibobject_value_dataptr(value_ptr)
        return UnsafePointer(ptr.assumingMemoryBound(to: T.self))
    }

    /// Generic Value accessor for Object classes.
    ///
    /// - Returns: nil
    @inlinable func mutableDataPointer<T>() -> UnsafeMutablePointer<T> {
        let ptr = glibobject_value_dataptr(value_ptr)
        return ptr.assumingMemoryBound(to: T.self)
    }

    /// Generic value copier.
    ///
    /// - Parameter value: original `Value` to copy
    @inlinable func set(_ value: ValueBase) { unset() ; set(type: value.value_ptr.pointee.g_type) ; g_value_copy(value.value_ptr, value_ptr) }

    /// Generic value copier.
    ///
    /// - Parameter value: original `ValueRef` to copy
    @inlinable func set(_ value: ValueRef) { unset() ; set(type: value.value_ptr.pointee.g_type) ; g_value_copy(value.value_ptr, value_ptr) }

    /// Generic value copier.
    ///
    /// - Parameter value: original value of kind `ValueProtocol` to copy
    @inlinable func set(_ value: ValueProtocol) { unset() ; set(type: value.value_ptr.pointee.g_type) ; g_value_copy(value.value_ptr, value_ptr) }

    /// Generic value setter.
    ///
    /// - Parameter value: String value to set
    @inlinable func set(_ value: String) { unset() ; set(type: .string) ; setString(vString: value) }

    /// Generic value setter.
    ///
    /// - Parameter value: static String value to set
    @inlinable func set(_ s: StaticString) {
        unset()
        set(type: .string)
        s.utf8Start.withMemoryRebound(to: CChar.self, capacity: s.utf8CodeUnitCount) {
            setStaticString(vString: $0)
        }
    }

    /// Generic value setter.
    ///
    /// - Parameter value: String protocol value to set
    @inlinable func set<S: Swift.StringProtocol>(_ value: S) { unset() ; set(type: .string) ; setString(vString: String(value)) }

    /// Generic value setter.
    ///
    /// - Parameter value: Bool value to set
    @inlinable func set(_ value: Bool) { unset() ; set(type: .boolean) ; setBoolean(vBoolean: value) }

    /// Generic value setter.
    ///
    /// - Parameter value: Double value to set
    @inlinable func set(_ value: Double) { unset() ; set(type: .double) ; setDouble(vDouble: value) }

    /// Generic value setter.
    ///
    /// - Parameter value: Int value to set
    @inlinable func set(_ value: Int) { unset() ; set(type: .long) ; setLong(vLong: glong(value)) }

    /// Generic value setter.
    ///
    /// - Parameter value: UInt value to set
    @inlinable func set(_ value: UInt) { unset() ; set(type: .ulong) ; setUlong(vUlong: gulong(value)) }

    /// Generic value setter.
    ///
    /// - Parameter value: Int64 value to set
    @inlinable func set(_ value: Int64) { unset() ; set(type: .int64) ; setInt64(vInt64: gint64(value)) }

    /// Generic value setter.
    ///
    /// - Parameter value: UInt64 value to set
    @inlinable func set(_ value: UInt64) { unset() ; set(type: .uint64) ; setUint64(vUint64: guint64(value)) }

    /// Generic value setter.
    ///
    /// - Parameter value: Int32 value to set
    @inlinable func set(_ value: Int32) { unset() ; set(type: .int) ; setInt(vInt: gint(value)) }

    /// Generic value setter.
    ///
    /// - Parameter value: UInt32 value to set
    @inlinable func set(_ value: UInt32) { unset() ; set(type: .uint) ; setUint(vUint: guint(value)) }

    /// Generic value setter.
    ///
    /// - Parameter value: Int8 value to set
    @inlinable func set(_ value: Int8) { unset() ; set(type: .char) ; setSchar(vChar: value) }

    /// Generic value setter.
    ///
    /// - Parameter value: UInt8 value to set
    @inlinable func set(_ value: UInt8) { unset() ; set(type: .uchar) ; setUchar(vUchar: value) }

    /// Generic object setter.
    ///
    /// - Parameter object: GObject or subclass to set
    @inlinable func set<O: ObjectProtocol>(_ object: O) { unset() ; set(type: .object) ; setObject(vObject: object) }

    /// Generic ParamSpec setter.
    ///
    /// - Parameter spec: ParamSpec to set
    @inlinable func set<P: ParamSpecProtocol>(_ spec: P) { unset() ; set(type: .param) ; set(param: spec) }

    /// Generic Optional setter.
    ///
    /// - Parameter spec: optional value to set (or unset if `nil`)
    @inlinable func set<O>(_ optional: O?) {
        guard let o = optional else {
            unset()
            return
        }
        if let v = o as? Bool   { set(v) ; return }
        if let v = o as? Int    { set(v) ; return }
        if let v = o as? UInt   { set(v) ; return }
        if let v = o as? Int32  { set(v) ; return }
        if let v = o as? UInt32 { set(v) ; return }
        if let v = o as? Int64  { set(v) ; return }
        if let v = o as? UInt64 { set(v) ; return }
        if let v = o as? Int8   { set(v) ; return }
        if let v = o as? UInt8  { set(v) ; return }
        if let v = o as? Double { set(v) ; return }
        if let v = o as? String { set(v) ; return }
        if let v = o as? StaticString { set(v) ; return }
        if let v = o as? ValueBase { set(v) ; return }
        if let v = o as? ValueRef { set(v) ; return }
        if let v = o as? ValueProtocol { set(ValueRef(v.value_ptr)) ; return }
        if let v = o as? Object { unset() ; set(type: .object) ; setObject(vObject: v) ; return }
        if let v = o as? ObjectRef { unset() ; set(type: .object) ; setObject(vObject: v) ; return }
        if let v = o as? ObjectProtocol { unset() ; set(type: .object) ; setObject(vObject: ObjectRef(v.object_ptr)) ; return }
        if let v = o as? ParamSpec { unset() ; set(type: .param) ; set(param: v) ; return }
        if let v = o as? ParamSpecRef { unset() ; set(type: .param) ; set(param: v) ; return }
        if let v = o as? ParamSpecProtocol { unset() ; set(type: .param) ; set(param: ParamSpecRef(v.param_spec_ptr)) ; return }
        unset()
        g_warn_message("GLibObject", #file, #line, #function, "Cannot set \(o) of type \(O.self) as a Value")
    }

    /// Generic Variant setter.
    ///
    /// - Parameter variant: Variant to set
    @inlinable func set<V: VariantProtocol>(_ v: V) { take(variant: v) ; v.ref() }

    /// Generic Transformer
    ///
    /// - Parameters:
    ///   - f: transformation function or closure
    /// - Returns: `true` if destination value has been set, `false` if unset
    @inlinable func transform<T, U>(_ f: (T?) -> U?) -> U? { return f(get()) }

    /// Generic Transformer
    ///
    /// - Parameters:
    ///   - f: transformation function or closure
    /// - Returns: `true` if destination value has been set, `false` if unset
    @inlinable func transform<T, U>(_ f: (T) -> U?) -> U? {
        return get().flatMap { f($0) }
    }

    /// Generic Transformer
    ///
    /// - Parameters:
    ///   - dest_value: destination value to fill
    ///   - f: transformation function or closure
    /// - Returns: `true` if destination value has been set, `false` if unset
    @inlinable func transform<T, U, V: ValueProtocol>(to dest_value: V, _ f: (T) -> U?) -> Bool {
        let u = transform(f)
        dest_value.set(u)
        return u != nil
    }

    /// Generic Transformer
    ///
    /// - Parameters:
    ///   - dest_value: destination value to fill
    ///   - f: transformation function or closure
    /// - Returns: `true` if destination value has been set, `false` if unset
    @inlinable func transform<T, U, V: ValueProtocol>(to dest_value: V, _ f: (T?) -> U?) -> Bool {
        let u = transform(f)
        dest_value.set(u)
        return u != nil
    }
}

/// This class is the main Swift wrapper with memory management
/// for underlying `GValues` (the opaque GLib structure used to
/// hold different types of values.
/// - Note: this class conforms to ExpressibleBy*Literal for storage of primitive types such as `String`, `Int`, `Double`, or `Bool`
open class Value: ValueBase, ExpressibleByStringLiteral, ExpressibleByIntegerLiteral, ExpressibleByFloatLiteral, ExpressibleByBooleanLiteral {
    public typealias StringLiteralType = StaticString
    public typealias ExtendedGraphemeClusterLiteralType = StaticString
    public typealias UnicodeScalarLiteralType = StaticString
    public typealias IntegerLiteralType = Int
    public typealias FloatLiteralType = Double
    public typealias BooleanLiteralType = Bool

    /// Designated initialiser, allocating a value in memory
    @inlinable required public init() {
        let ptr = UnsafeMutablePointer<GValue>.allocate(capacity: 1)
        memset(UnsafeMutableRawPointer(ptr), 0, MemoryLayout<GValue>.size)
        super.init(ptr)
    }
    @inlinable deinit { ptr.deallocate() }

    /// Convenience, optional value constructor
    /// - Note: The value container will be `unset` if the value is `nil`
    /// - Parameter v: optional value to initialise with (or `unset` if `nil`)
    @inlinable convenience override public init<T>(_ v: T?) {
        self.init()
        set(v)
    }

    /// Creates an instance initialized to the given string value.
    ///
    /// Do not call this initializer directly. Instead, initialize a variable or
    /// constant using an integer literal. For example:
    ///
    ///     let s: Value = "string"
    ///
    /// - Parameter value: The value of the new instance.
    @inlinable public required convenience init(stringLiteral value: StringLiteralType) { self.init(value) }

    /// Creates an instance initialized to the given value.
    ///
    /// Do not call this initializer directly. Instead, initialize a variable or
    /// constant using an integer literal. For example:
    ///
    ///     let s: Value = "string"
    ///
    /// - Parameter value: The value of the new instance.
    @inlinable public required convenience init(extendedGraphemeClusterLiteral value: ExtendedGraphemeClusterLiteralType) {
        self.init(value)
    }

    /// Creates an instance initialized to the given value.
    ///
    /// Do not call this initializer directly. Instead, initialize a variable or
    /// constant using an integer literal. For example:
    ///
    ///     let s: Value = "string"
    ///
    /// - Parameter value: The value of the new instance.
    @inlinable public required convenience init(unicodeScalarLiteral value: UnicodeScalarLiteralType) {
        self.init(value)
    }

    /// Creates an instance initialized to the specified integer value.
    ///
    /// Do not call this initializer directly. Instead, initialize a variable or
    /// constant using an integer literal. For example:
    ///
    ///     let x: Value = 23
    ///
    /// In this example, the assignment to the `x` constant calls this integer
    /// literal initializer behind the scenes.
    ///
    /// - Parameter value: The value to create.
    @inlinable public required convenience init(integerLiteral value: IntegerLiteralType) {
        self.init(value)
    }

    /// Creates an instance initialized to the specified floating-point value.
    ///
    /// Do not call this initializer directly. Instead, initialize a variable or
    /// constant using a floating-point literal. For example:
    ///
    ///     let x: Value = 21.5
    ///
    /// In this example, the assignment to the `x` constant calls this
    /// floating-point literal initializer behind the scenes.
    ///
    /// - Parameter value: The value to create.
    @inlinable public required convenience init(floatLiteral value: FloatLiteralType) {
        self.init(value)
    }

    /// Creates an instance initialized to the given Boolean value.
    ///
    /// Do not call this initializer directly. Instead, initialize a variable or
    /// constant using one of the Boolean literals `true` and `false`. For
    /// example:
    ///
    ///     let twasBrilling: Value = true
    ///
    /// In this example, the assignment to the `twasBrillig` constant calls this
    /// Boolean literal initializer behind the scenes.
    ///
    /// - Parameter value: The value of the new instance.
    @inlinable public required convenience init(booleanLiteral value: BooleanLiteralType) {
        self.init(value)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `StringProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable required public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }
}
