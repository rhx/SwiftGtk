import XCTest
@testable import Atk

class AtkTests: XCTestCase {

    func testTextAttribute() {
        guard let name = textAttributeGetName(attr: .leftMargin) else { XCTFail() ; return }
        XCTAssertEqual(name, "left-margin")
    }

}
