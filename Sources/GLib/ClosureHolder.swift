public final class ThrowingClosureHolder<S,T> {
    public let call: (S) throws ->  T
    
    @inlinable public init(_ closure: @escaping (S) throws -> T) {
        self.call = closure
    }
}

public final class ClosureHolder<S,T> {
    public let call: (S) ->  T
    
    @inlinable public init(_ closure: @escaping (S) -> T) {
        self.call = closure
    }
}