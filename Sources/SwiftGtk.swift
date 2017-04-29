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

#if os(macOS)
    /// This seems to be missing on macOS in gtk-3.22
    func gtk_clipboard_get_selection(_ clipboard: UnsafeMutablePointer<GtkClipboard>) -> GdkAtom? {
        return nil
    }
#endif

/// Internal Class that wraps a 2-parameter closure to make sure the closure
/// is retained until no longer required
public class DualClosureHolder<S, T, U> {
    
    public let call: (S, T) -> U
    
    public init(_ closure: @escaping (S, T) -> U) {
        self.call = closure
    }
}


/// A closure taking a reference to the current application as an argument
public typealias ApplicationSignalHandler = (ApplicationRef) -> Void

/// Internal type for Application SignalHandler closure holder
typealias ApplicationSignalHandlerClosureHolder = ClosureHolder<ApplicationRef,Void>

/// A closure taking a reference to the current box and cairo_t as an argument
public typealias BoxSignalHandler = (BoxRef, Cairo.ContextRef) -> Bool

/// Internal type for Drawing SignalHandler closure holder
typealias BoxSignalHandlerClosureHolder = DualClosureHolder<BoxRef,Cairo.ContextRef, Bool>

/**
 * Convert a swift string (or UnsafePointer<Char>) into
 * an UnsafeMutablePointer<CChar> as used by many POSIX functions.
 * Use with caution: the returned pointer is not really mutable, but many
 * C APIs fail to declare them `const'
 */
func cstring(_ arg: UnsafePointer<CChar>) -> UnsafeMutablePointer<CChar> {
    return UnsafeMutablePointer<CChar>(mutating: arg)
}


/**
 * Convert an array of strings into a null-terminated array of
 * C strings (argument vector)
 */
func argv(_ arguments: [String]) -> [UnsafeMutablePointer<CChar>?] {
    return arguments.map { let s = cstring($0); return s } + [nil]
}
