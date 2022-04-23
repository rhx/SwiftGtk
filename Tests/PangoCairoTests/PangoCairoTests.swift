import XCTest
import CCairo
import Cairo
import Pango
@testable import PangoCairo

class PangoCairoTests: XCTestCase {

    func testPangoCairoContext() {
        let w = 320
        let h = 240
        let argb32: cairo_format_t = .argb32
        let surface = imageSurfaceCreate(format: argb32, width: w, height: h)
        guard let cp = cairo_create(surface._ptr) else { XCTFail() ; return }
        let cairo_context = Cairo.Context(cp)
        guard let context = createContext(cr: cairo_context) else { XCTFail() ; return }
        XCTAssertNotNil(context.fontMap)
        XCTAssertNotNil(context.fontDescription)
        XCTAssertNotNil(context.gravityHint)
        XCTAssertNotNil(context.matrix)
        let serial = context.serial + 1
        context.changed()
        XCTAssertEqual(context.serial, serial)
    }

}
