@inlinable func ptrCast<S,T>(_ p: UnsafeMutablePointer<S>) -> UnsafeMutablePointer<T> {
    unsafeBitCast(p, to: UnsafeMutablePointer<T>.self)
}

@inlinable func ptrCast<T>(_ p: UnsafeRawPointer) -> UnsafeMutablePointer<T> {
    unsafeBitCast(p, to: UnsafeMutablePointer<T>.self)
}
