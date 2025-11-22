public protocol Mutable: Sendable {

    func modify(
        _ block: (inout Self) -> Void
    ) -> Self
}

extension Mutable {

    public func modify(
        _ block: (inout Self) -> Void
    ) -> Self {
        var mutableSelf = self
        block(&mutableSelf)
        return mutableSelf
    }
}
