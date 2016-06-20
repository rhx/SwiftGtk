import XCTest
import CGtk
@testable import Gtk

class GtkTests: XCTestCase {
    func testMajorVersion() { XCTAssertEqual(getMajorVersion(), gtk_get_major_version()) }
    func testMinorVersion() { XCTAssertEqual(getMinorVersion(), gtk_get_minor_version()) }
    func testMicroVersion() { XCTAssertEqual(getMicroVersion(), gtk_get_micro_version()) }
    func testInterfaceAge() { XCTAssertEqual(getInterfaceAge(), gtk_get_interface_age()) }
    func testBinaryAge()    { XCTAssertEqual(getBinaryAge(),    gtk_get_binary_age())    }

    /// test that we can run and quit an app
    func testApp() {
        let app: Application! = Application()
        XCTAssertNotNil(app)
        var appWasRunning = false
        var appDidStart = false
        let status = app.run(startupHandler: {
            XCTAssertFalse(appDidStart)
            appDidStart = true
            XCTAssertFalse(appWasRunning)
        }, activationHandler: {
            appWasRunning = true
            app.quit()
        })
        XCTAssertEqual(status, 0)
        XCTAssertTrue(appWasRunning)
    }
}

extension GtkTests {
    static var allTests : [(String, (GtkTests) -> () throws -> Void)] {
        return [
            ("testApp",             testApp),
            ("testMajorVersion",    testMajorVersion),
            ("testMinorVersion",    testMinorVersion),
            ("testMicroVersion",    testMicroVersion),
            ("testInterfaceAge",    testInterfaceAge),
            ("testBinaryAge",       testBinaryAge),
        ]
    }
}
