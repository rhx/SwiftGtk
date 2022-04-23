import XCTest
import CCairo
@testable import Cairo

class CairoTests: XCTestCase {

    func testSurface() {
        let width = 320
        let height = 240
        let surface = imageSurfaceCreate(format: CAIRO_FORMAT_ARGB32, width: width, height: height)
        XCTAssertEqual(cairo_image_surface_get_width(surface._ptr), CInt(width))
        XCTAssertEqual(cairo_image_surface_get_height(surface._ptr), CInt(height))
        XCTAssertEqual(cairo_image_surface_get_stride(surface._ptr), CInt(width*4))
    }

    func testContextAndPath() {
        let width = 320
        let height = 240
        let surface = imageSurfaceCreate(format: CAIRO_FORMAT_ARGB32, width: width, height: height)
        let cr = Context(surface: surface)
        let w = Double(width / 4)
        let h = Double(height / 2)
        cr.moveTo(0, 0)
        cr.lineTo(w, h)
        let extents = cr.pathExtents
        XCTAssertEqual(extents.x1, 0)
        XCTAssertEqual(extents.y1, 0)
        XCTAssertEqual(extents.x2, w)
        XCTAssertEqual(extents.y2, h)
    }

    
    func testRectangle() {
        let width = 320
        let height = 240
        let surface = imageSurfaceCreate(format: CAIRO_FORMAT_ARGB32, width: width, height: height)
        let cr = Context(surface: surface)
        let w = Double(width / 4)
        let h = Double(height / 2)
        cr.rectangle(x: 0, y: 0, width: w, height: h)
        let extents = cr.pathExtents
        XCTAssertEqual(extents.x1, 0)
        XCTAssertEqual(extents.y1, 0)
        XCTAssertEqual(extents.x2, w)
        XCTAssertEqual(extents.y2, h)
        XCTAssert(cr.isInFill(w/2, h/2))
        XCTAssertFalse(cr.isInStroke(w/2, h/2))
        XCTAssert(cr.isInStroke(w, h))
    }
    
}
