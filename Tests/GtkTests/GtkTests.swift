import XCTest
import CGtk
import Dispatch
@testable import Gtk

var cstring = strdup("Test")
var args = [cstring]
var numArgs: Int32 = args.withUnsafeMutableBufferPointer {
    var n = Int32(args.count)
    var argv = $0.baseAddress
    gtk_init(&n, &argv)
    return n
}

class GtkTests: XCTestCase {
    override class func setUp() {
        usleep(100000) // FIXME: ensure gtk is initialised
    }
    func testMajorVersion() { XCTAssertEqual(getMajorVersion(), gtk_get_major_version()) }
    func testMinorVersion() { XCTAssertEqual(getMinorVersion(), gtk_get_minor_version()) }
    func testMicroVersion() { XCTAssertEqual(getMicroVersion(), gtk_get_micro_version()) }
    func testInterfaceAge() { XCTAssertEqual(getInterfaceAge(), gtk_get_interface_age()) }
    func testBinaryAge()    { XCTAssertEqual(getBinaryAge(),    gtk_get_binary_age())    }

    /// test that we can run and quit an app
    func testApp() {
        let application: Application! = Application()
        XCTAssertNotNil(application)
        var appWasRunning = false
        var appDidStart = false
        let status = application.run(startupHandler: { _ in
            XCTAssertFalse(appDidStart)
            appDidStart = true
            XCTAssertFalse(appWasRunning)
        }, activationHandler: { app in
            appWasRunning = true
            app.quit()
        })
        XCTAssertEqual(status, 0)
        XCTAssertTrue(appWasRunning)
    }

    /// text text buffers
    func testTextBuffer() {
        guard var buffer = TextBuffer() else { XCTFail() ; return }
        let text = "Hello, world!\n"
        buffer.text = text
        XCTAssertEqual(buffer.text, text)
    }

    // test dialog convenience constructors
    func testDialog() {
        XCTAssertNotNil(Dialog(text: "Test").ptr)
        XCTAssertNotNil(Dialog(firstText: "OK", secondText: "Cancel").ptr)
        XCTAssertNotNil(Dialog(firstText: "OK", secondText: "Cancel", thirdText: "Review Windows").ptr)
    }

    // test message dialog convenience methods
    func testMessageDialog() {
        let dialog1 = MessageDialog(text: "A simple message dialog")
        dialog1.set(secondaryText: "Change secondary text")
        XCTAssertNotNil(dialog1.ptr)
        let dialog2 = MessageDialog(markup: "Dialog <b>with markup</b>", secondaryMarkup: "and secondary markup")
        dialog2.set(secondaryText: "Change secondary text")
        XCTAssertNotNil(dialog2.ptr)
    }
    
    // test file chooser
    func testFileChooser() {
        XCTAssertNotNil(FileChooserDialog(firstText: "Cancel", secondText: "Okay").ptr)
    }
}

extension GtkTests {
    static var allTests : [(String, (GtkTests) -> () throws -> Void)] {
        return [
            ("testApp",             testApp),
            ("testDialog",          testDialog),
            ("testMessageDialog",   testMessageDialog),
            ("testTextBuffer",      testTextBuffer),
            ("testMajorVersion",    testMajorVersion),
            ("testMinorVersion",    testMinorVersion),
            ("testMicroVersion",    testMicroVersion),
            ("testInterfaceAge",    testInterfaceAge),
            ("testBinaryAge",       testBinaryAge),
        ]
    }
}
