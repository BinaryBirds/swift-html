import SGML

public protocol AsyncAttributeModifier {

}

extension AsyncAttributeModifier where Self: Attributes & Mutable {

    public func `async`() -> Self {
        setAttribute(
            key: StandardAttributeKey.`async`
        )
    }
}
