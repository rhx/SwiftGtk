import XCTest
import CGdk
@testable import Gdk

class GdkTests: XCTestCase {

    /// Checks that GDK registers its app launch context type.
    ///
    /// Type registration does not require a display connection.
    func testAppLaunchContextType() {
        XCTAssertNotEqual(gdk_app_launch_context_get_type(), .invalid)
    }

}
