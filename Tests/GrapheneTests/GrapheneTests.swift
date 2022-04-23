import XCTest
@testable import Graphene

final class GrapheneTests: XCTestCase {
    /// Test BoxProtocol
    func testBox() throws {
        let zeroBox: BoxRef    = .zero()
        let zeroPoint: Point3D = .zero()
        XCTAssertTrue(zeroBox.contains(point: zeroPoint))
        XCTAssertEqual(zeroBox.width, 0)
        XCTAssertEqual(zeroBox.height, 0)
        XCTAssertEqual(zeroBox.depth, 0)
    }
    /// Test EulerProtocol
    func testEuler() throws {
        guard let euler = EulerRef.alloc() else { XCTFail() ; return }
        guard let vector = Vec3Ref.alloc() else { XCTFail() ; return }
        _ = euler.init_(x: 1, y: 2, z: 3)
        euler.toVec3(res: vector)
        XCTAssertEqual(vector.x, 1, accuracy: 1e-5)
        XCTAssertEqual(vector.y, 2, accuracy: 1e-5)
        XCTAssertEqual(vector.z, 3, accuracy: 1e-5)
        euler.free()
        vector.free()
    }
    /// Test VectorProtocol
    func testVector() throws {
        guard let vector = Vec2Ref.alloc() else { XCTFail() ; return }
        _ = vector.init_(x: 3, y: 4)
        XCTAssertEqual(vector.x, 3, accuracy: 1e-5)
        XCTAssertEqual(vector.y, 4, accuracy: 1e-5)
        XCTAssertEqual(vector.length(), 5, accuracy: 1e-5)
        vector.free()
    }
}
