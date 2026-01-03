import SGML

public protocol DefaultAttributeModifier {
}

extension DefaultAttributeModifier where Self: Attributes & Mutable {

    public func `default`() -> Self {
        setAttribute(
            key: StandardAttributeKey.`default`
        )
    }
}
