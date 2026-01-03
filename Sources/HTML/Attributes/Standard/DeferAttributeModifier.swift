import SGML

public protocol DeferAttributeModifier {

}

extension DeferAttributeModifier where Self: Attributes & Mutable {

    public func `defer`() -> Self {
        setAttribute(
            key: StandardAttributeKey.defer
        )
    }
}
