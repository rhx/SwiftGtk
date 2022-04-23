import XCTest
import CGLib
@testable import GLibObject

class GLibObjectTests: XCTestCase {
    fileprivate static var initialised: Bool = false

    override func setUp() {
        if !GLibObjectTests.initialised {
            GLibObjectTests.initialised = true
        }
    }
    /// test fundamental types
    func testTypeFundamental() {
        let gt = GType.object
        let type = typeFundamental(typeID: gt)
        XCTAssertEqual(type, gt)
        let name = typeName(type: gt)
        XCTAssertNotNil(name)
    }

    /// test whether creating an empty object works
    func testCreateObject() {
        let object = Object.new(0)
        XCTAssertNil(object)
    }

    /// test values and transformations
    func testValues() {
        let a = Value()
        XCTAssertFalse(a.typeCheckValueHolds(type: .boolean))
        XCTAssertFalse(a.typeCheckValueHolds(type: .string))
        XCTAssertFalse(a.typeCheckValueHolds(type: .double))
        XCTAssertFalse(a.typeCheckValueHolds(type: .float))
        XCTAssertFalse(a.typeCheckValueHolds(type: .long))
        XCTAssertFalse(a.typeCheckValueHolds(type: .ulong))
        XCTAssertFalse(a.typeCheckValueHolds(type: .int))
        XCTAssertFalse(a.typeCheckValueHolds(type: .uint))
        XCTAssertFalse(a.typeCheckValueHolds(type: .int64))
        XCTAssertFalse(a.typeCheckValueHolds(type: .uint64))
        XCTAssertFalse(a.typeCheckValueHolds(type: .char))
        XCTAssertFalse(a.typeCheckValueHolds(type: .uchar))
        XCTAssertFalse(a.typeCheckValueHolds(type: .object))
        XCTAssertFalse(a.typeCheckValueHolds(type: .param))
        a.set(type: .string)
        XCTAssertTrue(a.typeCheckValueHolds(type: .string))
        let s: StaticString = "Hello, world!"
        a.set(s)
        XCTAssertTrue(a.typeCheckValueHolds(type: .string))
        let t = s.description
        XCTAssertEqual(a.string, t)
        a.set(t)
        XCTAssertTrue(a.typeCheckValueHolds(type: .string))
        XCTAssertEqual(a.string, t)
        a.set(1)
        XCTAssertTrue(a.typeCheckValueHolds(type: .long))
        XCTAssertEqual(a.long, 1)
        let i: Int = a.get()
        XCTAssertEqual(i, 1)
        let b: Value = "Hello, world!"
        XCTAssertTrue(b.typeCheckValueHolds(type: .string))
        XCTAssertTrue(GType.transformable(from: .long, to: .string))
        XCTAssertTrue(a.transform(destValue: b))
        XCTAssertTrue(b.typeCheckValueHolds(type: .string))
        XCTAssertEqual(b.string, "1")
        valueRegisterTransformFunc(srcType: .long, destType: .string) {
            guard let src = $0.map({ ValueRef(constPointer: $0) }),
                  let dst = $1.map({ ValueRef($0) }) else { XCTFail(); return }
            let v: Int = src.get()
            dst.string = "\(2*v)"
        }
        XCTAssertTrue(a.transform(destValue: b))
        XCTAssertTrue(b.typeCheckValueHolds(type: .string))
        XCTAssertEqual(b.string, "2")
        let anyString: Any = t
        let anyValue = Value(anyString)
        XCTAssertTrue(anyValue.typeCheckValueHolds(type: .string))
        XCTAssertEqual(anyValue.string, t)
    }

    /// test bindings between two instances
    func testBindings() {
        let type = type_a_get_type()
        XCTAssertNotEqual(type, 0)
        XCTAssertNotEqual(type, typeB)
        XCTAssertTrue(type.isClassed)
        XCTAssertTrue(type.isDerived)
        XCTAssertTrue(type.isDerivable)
        XCTAssertTrue(type.isDeepDerivable)
        XCTAssertTrue(type.isInstantiable)
        XCTAssertTrue(type.isValueType)
        XCTAssertFalse(type.isAbstract)
        XCTAssertFalse(type.isAbstractValue)
        guard let targetObject = Object.new(type),
              let sourceObject = Object.new(type) else {
                XCTFail("Cannot instantiate objects")
                return
        }
        targetObject.object_ptr.withMemoryRebound(to: GTypeA.self, capacity: 1) {
            let ptrA = $0
            XCTAssertEqual(ptrA.pointee.integer, 0)
            let value1: Value = 1
            type_a_set_property(targetObject.object_ptr, 1, value1.value_ptr, nil)
            XCTAssertEqual(ptrA.pointee.integer, 1)
            var binding: BindingRef!
            sourceObject.object_ptr.withMemoryRebound(to: GTypeA.self, capacity: 1) {
                let ptrB = $0
                let value2: Value = 2
                type_a_set_property(sourceObject.object_ptr, 1, value2.value_ptr, nil)
                XCTAssertEqual(ptrB.pointee.integer, 2)
                binding = sourceObject.bind(integerProperty, target: targetObject, property: integerProperty, flags: .syncCreate)
                XCTAssertNotNil(binding)
                XCTAssertEqual(ptrA.pointee.integer, 2)
            }
            defer { binding.unbind() }
            let v = binding.get(property: .flags)
            let f: BindingFlags? = v.get()
            XCTAssertNotNil(f)
            XCTAssertEqual(f, BindingFlags.syncCreate)
            XCTAssertEqual(v.bindingFlags, BindingFlags.syncCreate)
            XCTAssertEqual(v.bindingFlags.rawValue, binding.flags.rawValue)
            let maybeS = binding.get(property: .source).object
            XCTAssertNotNil(maybeS)
            guard let s = maybeS else { return }
            let source = ObjectRef(s)
            XCTAssertEqual(source.ptr, sourceObject.ptr)
            let maybeT = binding.get(property: .target).object
            XCTAssertNotNil(maybeT)
            guard let t = maybeT else { return }
            let target = ObjectRef(t)
            XCTAssertEqual(target.ptr, targetObject.ptr)
            let sourcePropertyName = binding.get(property: .sourceProperty).string
            XCTAssertEqual(sourcePropertyName, integerProperty.rawValue)
            let targetPropertyName = binding.get(property: .targetProperty).string
            XCTAssertEqual(targetPropertyName, integerProperty.rawValue)
        }
    }


    /// test value transformer bindings between two instances
    func disabledtestTransformerBindings() {
        let type = type_a_get_type()
        XCTAssertNotEqual(type, 0)
        XCTAssertNotEqual(type, typeB)
        XCTAssertTrue(type.isClassed)
        XCTAssertTrue(type.isDerived)
        XCTAssertTrue(type.isDerivable)
        XCTAssertTrue(type.isDeepDerivable)
        XCTAssertTrue(type.isInstantiable)
        XCTAssertTrue(type.isValueType)
        XCTAssertFalse(type.isAbstract)
        XCTAssertFalse(type.isAbstractValue)
        guard let objA = Object.new(type),
            let objB = Object.new(type) else {
                XCTFail("Cannot instantiate objects")
                return
        }
        withExtendedLifetime(objA) { $0.object_ptr.withMemoryRebound(to: GTypeA.self, capacity: 1) {
            let ptrA = $0
            XCTAssertEqual(ptrA.pointee.integer, 0)
            let value1: Value = 1
            type_a_set_property(objA.object_ptr, 1, value1.value_ptr, nil)
            XCTAssertEqual(ptrA.pointee.integer, 1)
            withExtendedLifetime(objB) { $0.object_ptr.withMemoryRebound(to: GTypeA.self, capacity: 1) {
                let ptrB = $0
                let value2: Value = 2
                type_a_set_property(objB.object_ptr, 1, value2.value_ptr, nil)
                XCTAssertEqual(ptrB.pointee.integer, 2)
                let binding = objB.bind(integerProperty, to: objA, property: integerProperty, flags: .syncCreate) { (u: (Value, Value)) -> Bool in
                    let v: Int = u.0.get()
                    print("Got \(v)")
                    u.1.set(2*v)
                    return true
                }
                XCTAssertNotNil(binding)
                let v = binding?.get(property: .flags)
                let f: BindingFlags? = v?.get()
                XCTAssertNotNil(f)
                XCTAssertEqual(f, BindingFlags.syncCreate)
                XCTAssertEqual(v?.bindingFlags, BindingFlags.syncCreate)
                XCTAssertEqual(v?.bindingFlags.rawValue, binding?.flags.rawValue)
                type_a_set_property(objB.object_ptr, 1, value2.value_ptr, nil)
                XCTAssertEqual(ptrB.pointee.integer, 2)
                XCTAssertEqual(ptrA.pointee.integer, 4)
                binding?.unbind()
            }}
        }}
    }

    
    /// test typed bindings and transformations between two instances
    func testTypedBindings() {
        let type = type_a_get_type()
        XCTAssertNotEqual(type, 0)
        XCTAssertNotEqual(type, typeB)
        XCTAssertTrue(type.isClassed)
        XCTAssertTrue(type.isDerived)
        XCTAssertTrue(type.isDerivable)
        XCTAssertTrue(type.isDeepDerivable)
        XCTAssertTrue(type.isInstantiable)
        XCTAssertTrue(type.isValueType)
        XCTAssertFalse(type.isAbstract)
        XCTAssertFalse(type.isAbstractValue)
        guard let objA = Object.new(type),
            let objB = Object.new(type) else {
                XCTFail("Cannot instantiate objects")
                return
        }
        objA.object_ptr.withMemoryRebound(to: GTypeA.self, capacity: 1) {
            let ptrA = $0
            XCTAssertEqual(ptrA.pointee.integer, 0)
            let value1: Value = 1
            type_a_set_property(objA.object_ptr, 1, value1.value_ptr, nil)
            XCTAssertEqual(ptrA.pointee.integer, 1)
            objB.object_ptr.withMemoryRebound(to: GTypeA.self, capacity: 1) {
                let ptrB = $0
                let value2: Value = 2
                type_a_set_property(objB.object_ptr, 1, value2.value_ptr, nil)
                XCTAssertEqual(ptrB.pointee.integer, 2)
                let binding = objB.bind(integerProperty, to: objA, property: integerProperty, flags: .syncCreate) { 3 * $0 }
                XCTAssertNotNil(binding)
                XCTAssertEqual(ptrA.pointee.integer, 6)
                binding?.unbind()
            }
        }
    }


    /// test typed bindings and transformations between instances of two distinct types
    func testTypedDistinctBindings() {
        let typeA = type_a_get_type()
        let typeB = type_b_get_type()
        XCTAssertNotEqual(typeA, 0)
        XCTAssertNotEqual(typeB, 0)
        XCTAssertNotEqual(typeA, typeB)
        XCTAssertTrue(typeA.isClassed)
        XCTAssertTrue(typeB.isClassed)
        XCTAssertTrue(typeA.isDerived)
        XCTAssertTrue(typeB.isDerived)
        XCTAssertTrue(typeA.isDerivable)
        XCTAssertTrue(typeB.isDerivable)
        XCTAssertTrue(typeA.isDeepDerivable)
        XCTAssertTrue(typeB.isDeepDerivable)
        XCTAssertTrue(typeA.isInstantiable)
        XCTAssertTrue(typeB.isInstantiable)
        XCTAssertTrue(typeA.isValueType)
        XCTAssertTrue(typeB.isValueType)
        XCTAssertFalse(typeA.isAbstract)
        XCTAssertFalse(typeB.isAbstract)
        XCTAssertFalse(typeA.isAbstractValue)
        XCTAssertFalse(typeB.isAbstractValue)
        guard let objA = Object.new(typeA),
              let objB = Object.new(typeB) else {
                XCTFail("Cannot instantiate objects")
                return
        }
        objA.object_ptr.withMemoryRebound(to: GTypeA.self, capacity: 1) {
            let ptrA = $0
            XCTAssertEqual(ptrA.pointee.integer, 0)
            let value1: Value = 1
            type_a_set_property(objA.object_ptr, 1, value1.value_ptr, nil)
            XCTAssertEqual(ptrA.pointee.integer, 1)
            objB.object_ptr.withMemoryRebound(to: GTypeB.self, capacity: 1) {
                let ptrB = $0
                let value2: Value = "2"
                type_b_set_property(objB.object_ptr, 1, value2.value_ptr, nil)
                XCTAssertEqual(ptrB.pointee.string, "2")
                let binding = objB.bind(stringProperty, to: objA, property: integerProperty) { Int($0).map { $0*4 } }
                XCTAssertNotNil(binding)
                XCTAssertEqual(ptrA.pointee.integer, 8)
                binding?.unbind()
            }
        }
    }

    func testInitiallyUnowned() {
        // InitiallyUnowned is actually not of type InitiallyUnownedClassRef.metatypeReference?
        let initiallyUnowned = InitiallyUnowned(raw: ObjectRef.new(g_initially_unowned_get_type())!.ptr)
        XCTAssertNotEqual(initiallyUnowned is InitiallyUnownedProtocol, typeIsA(type: initiallyUnowned.type, isAType: InitiallyUnownedClassRef.metatypeReference))
        let object = Object.new(.object)!
        XCTAssertEqual(object is InitiallyUnownedProtocol, typeIsA(type: object.type, isAType: InitiallyUnownedClassRef.metatypeReference))
    }
}

fileprivate struct GTypeA {
    var parent: GObject
    var integer: Int
}
fileprivate let integerProperty: PropertyName = "integer"

fileprivate struct GTypeAClass {
    var parent: GObjectClass
}

fileprivate struct GTypeB {
    var parent: GObject
    var string: String
}
fileprivate let stringProperty: PropertyName = "string"

fileprivate struct GTypeBClass {
    var parent: GObjectClass
}

fileprivate func type_a_class_init(_ cl: gpointer?, _: gpointer?) {
    guard let object_class = cl?.assumingMemoryBound(to: GObjectClass.self) else { return }
    object_class.pointee.set_property = type_a_set_property
    object_class.pointee.get_property = type_a_get_property
    g_object_class_install_property(object_class, 1, g_param_spec_long(integerProperty.name, integerProperty.name, "Integer property", Int.min, Int.max, 0, G_PARAM_READWRITE))
}

fileprivate func type_b_class_init(_ cl: gpointer?, _: gpointer?) {
    guard let object_class = cl?.assumingMemoryBound(to: GObjectClass.self) else { return }
    object_class.pointee.set_property = type_b_set_property
    object_class.pointee.get_property = type_b_get_property
    g_object_class_install_property(object_class, 1, g_param_spec_string(stringProperty.name, stringProperty.name, "String property", "", G_PARAM_READWRITE))
}

fileprivate var typeA: GType = 0
fileprivate var typeB: GType = 0

fileprivate func type_a_get_type() -> GType {
    if typeA == 0 {
        typeA = g_type_register_static_simple(.object, "GTypeA", guint(MemoryLayout<GTypeAClass>.size), type_a_class_init, guint(MemoryLayout<GTypeA>.size), nil,  GTypeFlags(rawValue: 0))
    }
    return typeA
}

fileprivate func type_b_get_type() -> GType {
    if typeB == 0 {
        typeB = g_type_register_static_simple(.object, "GTypeB", guint(MemoryLayout<GTypeBClass>.size), type_b_class_init, guint(MemoryLayout<GTypeB>.size), nil,  GTypeFlags(rawValue: 0))
    }
    return typeB
}

fileprivate func type_a_set_property(_ object: UnsafeMutablePointer<GObject>?, _ property_id: guint, _ value: UnsafePointer<GValue>?, _ pspec: UnsafeMutablePointer<GParamSpec>?) {
    guard let iptr = object.map({ $0.withMemoryRebound(to: GTypeA.self, capacity: 1) { p in p } }),
          let valueRef = value.map(ValueRef.init) else { return }
    iptr.pointee.integer = valueRef.get()
//    print("Set a (\(iptr)): \(iptr.pointee.integer) from \(valueRef.ptr) = \(value!)")
}

fileprivate func type_a_get_property(_ object: UnsafeMutablePointer<GObject>?, _ property_id: guint, _ value: UnsafeMutablePointer<GValue>?, _ pspec: UnsafeMutablePointer<GParamSpec>?) {
    guard let iptr = object.map({ $0.withMemoryRebound(to: GTypeA.self, capacity: 1) { p in p } }),
          let valueRef = value.map({ ValueRef($0) }) else { return }
    valueRef.set(iptr.pointee.integer)
//    let i: Int = valueRef.get()
//    print("Get a (\(iptr)): \(i) (should be \(iptr.pointee.integer)) into \(valueRef.ptr) = \(value!)")
}

fileprivate func type_b_set_property(_ object: UnsafeMutablePointer<GObject>?, _ property_id: guint, _ value: UnsafePointer<GValue>?, _ pspec: UnsafeMutablePointer<GParamSpec>?) {
    guard let iptr = object.map({ $0.withMemoryRebound(to: GTypeB.self, capacity: 1) { p in p } }),
        let valueRef = value.map(ValueRef.init),
        let s: String = valueRef.get() else { return }
    iptr.pointee.string = s
//    print("Set b (\(iptr)): \(iptr.pointee.string) from \(valueRef.ptr) (\(value!)) = \(value!)")
}

fileprivate func type_b_get_property(_ object: UnsafeMutablePointer<GObject>?, _ property_id: guint, _ value: UnsafeMutablePointer<GValue>?, _ pspec: UnsafeMutablePointer<GParamSpec>?) {
    guard let iptr = object.map({ $0.withMemoryRebound(to: GTypeB.self, capacity: 1) { p in p } }),
          let valueRef = value.map({ ValueRef($0) }) else { return }
    valueRef.set(iptr.pointee.string)
//    let s: String = valueRef.get()
//    print("Get b (\(iptr)): \(s) (should be \(iptr.pointee.string)) into \(valueRef.ptr) = \(value!)")
}
