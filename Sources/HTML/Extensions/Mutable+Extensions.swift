import SGML

extension Mutable {

    public func check(
        _ condition: Bool,
        _ trueBlock: (Self) -> Self,
        else falseBlock: ((Self) -> Self)? = nil
    ) -> Self {
        if condition {
            return trueBlock(self)
        }
        return falseBlock?(self) ?? self
    }
}
