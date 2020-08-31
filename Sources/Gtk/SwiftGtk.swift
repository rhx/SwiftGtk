import CGLib
import CCairo
import CPango
import CGdkPixbuf
import CGdk
import CAtk
import CGtk
import GLib
import GLibObject
import GIO
import Cairo

/// Internal Class that wraps a 2-parameter closure to make sure the closure
/// is retained until no longer required
public class DualClosureHolder<S, T, U> {
    
    public let call: (S, T) -> U
    
    public init(_ closure: @escaping (S, T) -> U) {
        self.call = closure
    }
}

/// Internal Class that wraps a 3-parameter closure to make sure the closure
/// is retained until no longer required
public class Closure3Holder<S, T, U, V> {

    public let call: (S, T, U) -> V

    public init(_ closure: @escaping (S, T, U) -> V) {
        self.call = closure
    }
}

/// Internal Class that wraps a 4-parameter closure to make sure the closure
/// is retained until no longer required
public class Closure4Holder<S, T, U, V, W> {

    public let call: (S, T, U, V) -> W

    public init(_ closure: @escaping (S, T, U, V) -> W) {
        self.call = closure
    }
}

/// Internal Class that wraps a 5-parameter closure to make sure the closure
/// is retained until no longer required
public class Closure5Holder<S, T, U, V, W, X> {

    public let call: (S, T, U, V, W) -> X

    public init(_ closure: @escaping (S, T, U, V, W) -> X) {
        self.call = closure
    }
}

/// Internal Class that wraps a 6-parameter closure to make sure the closure
/// is retained until no longer required
public class Closure6Holder<S, T, U, V, W, X, Y> {

    public let call: (S, T, U, V, W, X) -> Y

    public init(_ closure: @escaping (S, T, U, V, W, X) -> Y) {
        self.call = closure
    }
}

/// Internal Class that wraps a 7-parameter closure to make sure the closure
/// is retained until no longer required
public class Closure7Holder<S, T, U, V, W, X, Y, Z> {

    public let call: (S, T, U, V, W, X, Y) -> Z

    public init(_ closure: @escaping (S, T, U, V, W, X, Y) -> Z) {
        self.call = closure
    }
}


/// A closure taking a reference to the current application as an argument
public typealias ApplicationSignalHandler = (ApplicationRef) -> Void

/// Internal type for Application SignalHandler closure holder
@usableFromInline typealias ApplicationSignalHandlerClosureHolder = ClosureHolder<ApplicationRef,Void>

/// A closure taking a reference to the current box and cairo_t as an argument
public typealias BoxSignalHandler = (BoxRef, Cairo.ContextRef) -> Bool

/// Internal type for Drawing SignalHandler closure holder
@usableFromInline typealias BoxSignalHandlerClosureHolder = DualClosureHolder<BoxRef,Cairo.ContextRef, Bool>

/**
 * Convert a swift string (or UnsafePointer<Char>) into
 * an UnsafeMutablePointer<CChar> as used by many POSIX functions.
 * Use with caution: the returned pointer is not really mutable, but many
 * C APIs fail to declare them `const'
 */
@usableFromInline func cstring(_ arg: UnsafePointer<CChar>) -> UnsafeMutablePointer<CChar> {
    return UnsafeMutablePointer<CChar>(mutating: arg)
}


/**
 * Convert an array of strings into a null-terminated array of
 * C strings (argument vector)
 */
@usableFromInline func argv(_ arguments: [String]) -> [UnsafeMutablePointer<CChar>?] {
    return arguments.map { let s = cstring($0); return s } + [nil]
}
