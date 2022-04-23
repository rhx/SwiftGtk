import XCTest
@testable import GdkPixBuf

class GdkPixbufTests: XCTestCase {

    /// test simple pixel buffer properties
    func testPixbuf() {
        let w = 320
        let h = 240
        let b = 8
        let pixbuf = Pixbuf(colorspace: .rgb, hasAlpha: false, bitsPerSample: b, width: w, height: h)
        XCTAssert(pixbuf.colorspace == .rgb)
        XCTAssertFalse(pixbuf.hasAlpha)
        XCTAssertEqual(pixbuf.bitsPerSample, b)
        XCTAssertEqual(pixbuf.width, w)
        XCTAssertEqual(pixbuf.height, h)
        XCTAssertEqual(pixbuf.byteLength, w*h*3)
        XCTAssertEqual(pixbuf.rowstride, w*3)
    }

}
