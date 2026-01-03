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

    public func `if`(
        _ condition: Bool,
        _ trueBlock: (Self) -> Self,
        `else` falseBlock: ((Self) -> Self)? = nil
    ) -> Self {
        if condition {
            return trueBlock(self)
        }
        return falseBlock?(self) ?? self
    }
}
