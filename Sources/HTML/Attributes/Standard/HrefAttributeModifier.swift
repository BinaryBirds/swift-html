import SGML

public protocol HrefAttributeModifier {
    associatedtype HrefAttributeValueType: AttributeValueRepresentable = String
}

extension HrefAttributeModifier where Self: Attributes & Mutable {

    /// Sets a href attribute.
    public func href(
        _ value: HrefAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.href,
            value: value?.attributeValue
        )
    }
}
