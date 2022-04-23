import XCTest
@testable import GModule

class GModuleTests: XCTestCase {

    func testSupported() {
        XCTAssertTrue(moduleSupported())
    }

    func testNonExistent() {
        XCTAssertNil(ModuleRef.open(fileName: "non/existent", flags: []))
    }
}
