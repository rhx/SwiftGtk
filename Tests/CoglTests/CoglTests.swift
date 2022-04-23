import XCTest
@testable import Cogl

class CoglTests: XCTestCase {
    func testFixedPoint() {
        let x = Fixed(doubleValue: 0.5)
        let y = Fixed(doubleValue: 2)
        let z = mul(x, y)
        XCTAssertEqual(z.doubleValue, 1)
    }
}
