#if os(Linux)
    import Glibc
#else
    import Darwin
#endif

import XCTest
import CGLib
@testable import GLib

class GLibTests: XCTestCase {

    /// check that we can get the current date and time
    func testDateTime() {
        let dateTime = DateTime.newNowLocal()
        XCTAssertNotNil(dateTime)
    }

    /// check that we can convert the given Unix UTC time
    func testDateTimeUnixUTC() {
        let t = gint64(time(nil))
        let dateTime = DateTime(unixUTC: t)
        let unix = dateTime.toUnix()
        XCTAssertEqual(unix, t)
        let offs = dateTime.utcOffset
        XCTAssertEqual(offs, 0)
        let abbr = dateTime.timezoneAbbreviation
        XCTAssertEqual(abbr, "UTC")
    }

    /// check that we can read a directory
    func testDirOpen() {
        let existing_path = "/tmp"
        do {
            guard let dir = try Dir.open(path: existing_path, flags: 0) else {
                XCTFail() ; return
            }
            defer { dir.close() }
            let first: String! = dir.readName()    // get the first entry
            XCTAssertNotNil(first)
            XCTAssertFalse(first.isEmpty)
            dir.rewind()                            // go back
            let first_again = dir.readName()       // get first entry again
            XCTAssertEqual(first, first_again)
        } catch {
            XCTFail("\(error)")
        }
    }

    /// check that we can handle errors
    func testErrorType() {
        let nonexistent = "/non/existent/path"
        do {
            guard let dir = try Dir.open(path: nonexistent, flags: 0) else {
                XCTFail() ; return
            }
            defer { dir.close() }
            XCTFail("\(nonexistent) should have failed to open")
        } catch let e as GLibError {
            XCTAssertFalse(e.description.isEmpty)
        } catch {
            XCTFail("Unknown error: \(error)")
        }
    }

    /// check that we can get the default main context
    func testDefaultMainContext() {
        let context = MainContext.defaultContext()
        let p = context.ref()
        XCTAssertEqual(p?.main_context_ptr, context.main_context_ptr)
        context.unref()
        XCTAssertNil(context.findSourceByID(sourceID: 123))
        XCTAssertNotNil(context.pollFunc)
        let pending = context.pending()
        XCTAssertEqual(context.iteration(mayBlock: false), pending)
        XCTAssertFalse(context.isOwner)
        context.pushThreadDefault()
        XCTAssertTrue(context.isOwner)
    }

    /// check that we can create a main loop
    func testMainLoopCreation() {
        let mainLoop = MainLoop()
        let context = mainLoop.context
        XCTAssertNotNil(context)
    }

    /// test mainloop run and timeout_add / timeout_add_full
    func testTimeoutAdd() {
        let mainLoop = MainLoop()
        let context = MainContextRef(mainLoop.context)
        var count1 = 10
        withUnsafeMutablePointer(to: &count1) {
            let rv = timeoutAdd(interval: 10, function: {
                guard let p = $0?.assumingMemoryBound(to: Int.self) else {
                    XCTFail("Unexpected NULL pointer")
                    return 0
                }
                p.pointee -= 1
                return p.pointee == 0 ? 0 : 1
            }, data: UnsafeMutableRawPointer($0))
            XCTAssertEqual(rv, 1)
            while $0.pointee > 0 {
                let oldCount = $0.pointee
                let trigger = context.iteration(mayBlock: true)
                let value = trigger ? oldCount - 1 : oldCount
                XCTAssertEqual($0.pointee, value)
            }
        }
        XCTAssertFalse(context.pending())

        var count2 = 10
        let rv = timeout(add: 5) {
            count2 -= 1
            return count2 != 0
        }
        XCTAssertEqual(rv, 2)
        while count2 > 0 {
            let oldCount = count2
            let trigger = context.iteration(mayBlock: true)
            let value = trigger ? oldCount - 1 : oldCount
            XCTAssertEqual(count2, value)
        }
        XCTAssertFalse(context.pending())
    }
    
    func testLog() {
        var logResult = false
        let old = withUnsafeMutablePointer(to: &logResult) {
            (result: UnsafeMutablePointer<Bool>) -> GLogFunc in
            logSetWriterFunc(func: {
                guard LogLevelFlags($0) == .debug, let fields = $1,
                      let resultPtr = $3?.assumingMemoryBound(to: Bool.self) else { return .unhandled }
                resultPtr.pointee = strcmp(fields[0].value.assumingMemoryBound(to: CChar.self), "testLog") == 0
                return .handled
            }, userData: gpointer(result), userDataFree: { _ in })
            return g_log_set_default_handler({
                guard $0 == nil, LogLevelFlags($1) == .debug,
                      let message = $2,
                      let resultPtr = $3?.assumingMemoryBound(to: Bool.self) else { return }
                resultPtr.pointee = strcmp(message, "testLog") == 0
            }, gpointer(result))
        }
        g_log("testLog")
        g_log_set_default_handler(old, nil)
        XCTAssertTrue(logResult)
    }

    func testLogLevel() {
        var logResult = false
        let old = withUnsafeMutablePointer(to: &logResult) {
            (result: UnsafeMutablePointer<Bool>) -> GLogFunc in
            logSetWriterFunc(func: {
                guard LogLevelFlags($0) == .critical, let fields = $1,
                      let resultPtr = $3?.assumingMemoryBound(to: Bool.self) else { return .unhandled }
                resultPtr.pointee = strcmp(fields[0].value.assumingMemoryBound(to: CChar.self), "testLogLevel") == 0
                return .handled
            }, userData: gpointer(result), userDataFree: { _ in })
            return g_log_set_default_handler({
                guard $0 == nil, LogLevelFlags($1) == .critical,
                      let message = $2,
                      let resultPtr = $3?.assumingMemoryBound(to: Bool.self) else { return }
                resultPtr.pointee = strcmp(message, "testLogLevel") == 0
            }, gpointer(result))
        }
        g_log("testLogLevel", level: .critical)
        g_log_set_default_handler(old, nil)
        XCTAssertTrue(logResult)
    }

    func testLogDomain() {
        var logResult = false
        let old = withUnsafeMutablePointer(to: &logResult) {
            (result: UnsafeMutablePointer<Bool>) -> GLogFunc in
            logSetWriterFunc(func: {
                guard LogLevelFlags($0) == .debug, let fields = $1,
                      let resultPtr = $3?.assumingMemoryBound(to: Bool.self) else { return .unhandled }
                resultPtr.pointee = strcmp(fields[0].value.assumingMemoryBound(to: CChar.self), "test") == 0
                                 && strcmp(fields[2].value.assumingMemoryBound(to: CChar.self), "testDomain") == 0
                return .handled
            }, userData: gpointer(result), userDataFree: { _ in })
            return g_log_set_default_handler({
                guard let domain = $0, LogLevelFlags($1) == .debug,
                      let message = $2,
                      let resultPtr = $3?.assumingMemoryBound(to: Bool.self) else { return }
                resultPtr.pointee =
                    strcmp(domain, "testDomain") == 0 &&
                    strcmp(message, "test") == 0
            }, gpointer(result))
        }
        g_log(domain: "testDomain", "test")
        g_log_set_default_handler(old, nil)
        XCTAssertTrue(logResult)
    }

    func testLogDomainLevel() {
        var logResult = false
        let old = withUnsafeMutablePointer(to: &logResult) {
            (result: UnsafeMutablePointer<Bool>) -> GLogFunc in
            logSetWriterFunc(func: {
                guard LogLevelFlags($0) == .message, let fields = $1,
                      let resultPtr = $3?.assumingMemoryBound(to: Bool.self) else { return .unhandled }
                resultPtr.pointee = strcmp(fields[0].value.assumingMemoryBound(to: CChar.self), "%%s") == 0
                    && strcmp(fields[2].value.assumingMemoryBound(to: CChar.self), "testDomainLevel") == 0
                return .handled
            }, userData: gpointer(result), userDataFree: { _ in })
            return g_log_set_default_handler({
                guard let domain = $0, LogLevelFlags($1) == .message,
                      let message = $2,
                      let resultPtr = $3?.assumingMemoryBound(to: Bool.self) else { return }
                resultPtr.pointee =
                    strcmp(domain, "testDomainLevel") == 0 &&
                    strcmp(message, "%s") == 0
            }, gpointer(result))
        }
        g_log(domain: "testDomainLevel", "%s", level: .message)
        g_log_set_default_handler(old, nil)
        XCTAssertTrue(logResult)
    }

    func testMutex() {
        let mutex = Mutex()
        withExtendedLifetime(mutex) {
            XCTAssertTrue(mutex.trylock())
            mutex.unlock()
            mutex.lock()
            XCTAssertFalse(mutex.trylock())
            mutex.unlock()
            XCTAssertTrue(mutex.trylock())
            mutex.unlock()
        }
    }

    func testFloatIEEE754() {
        let val = Float(1.5)
        var value = GFloatIEEE754(v_float: val)
        withUnsafeMutablePointer(to: &value) {
            let ieee = FloatIEEE754Ref($0)
            XCTAssertEqual(ieee.vFloat, val)
            XCTAssertEqual(ieee.mpn.biased_exponent, 127)
            XCTAssertEqual(ieee.mpn.mantissa, 4194304)
            XCTAssertEqual(ieee.mpn.sign, 0)
        }
    }

    func testDoubleIEEE754() {
        let val = -1.5
        var value = GDoubleIEEE754(v_double: val)
        withUnsafeMutablePointer(to: &value) {
            let ieee = DoubleIEEE754Ref($0)
            XCTAssertEqual(ieee.vDouble, val)
            XCTAssertEqual(ieee.mpn.biased_exponent, 1023)
            XCTAssertEqual(ieee.mpn.mantissa_low, 0)
            XCTAssertEqual(ieee.mpn.mantissa_high, 524288)
            XCTAssertEqual(ieee.mpn.sign, 1)
        }
    }
}
