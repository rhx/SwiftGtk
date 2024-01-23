import XCTest
import GLib
@testable import Gdk

class GdkTests: XCTestCase {

    func testEvent() {
        let event = Event(type: .keyPress)
        XCTAssertEqual(event.type, event.event_ptr.pointee.type)
        XCTAssertEqual(event.type, EventType.keyPress)
    }

    func testEventType() {
        let doubleButton = EventType.doubleButtonPress
        XCTAssertEqual(doubleButton, EventType._2buttonPress)
    }

    func testThreadsAddIdle() {
        let mainLoop = MainLoopRef(context: mainContextDefault(), isRunning: false)
        var done = false
        let id = threadsAddIdle(priority: priorityHighIdle) {
            done = true
            mainLoop.quit()
            return false
        }
        XCTAssertEqual(done, false)
        XCTAssertNotEqual(id, 0)
        mainLoop.run()
        XCTAssertEqual(done, true)
    }
}
