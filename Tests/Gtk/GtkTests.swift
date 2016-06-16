import XCTest
@testable import Gtk

var app: Application!

class GtkTests: XCTestCase {
    func testApp() {
        app = Application()
        XCTAssertNotNil(app)
        let status = app.run {
            app.quit()
        }
        XCTAssertEqual(status, 0)
    }
}

extension GtkTests {
    static var allTests : [(String, (GtkTests) -> () throws -> Void)] {
        return [
            ("testApp", testApp),
        ]
    }
}
