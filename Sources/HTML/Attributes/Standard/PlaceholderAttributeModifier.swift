import SGML

public protocol PlaceholderAttributeModifier {
    associatedtype PlaceholderAttributeValueType: AttributeValueRepresentable =
        String
}

extension PlaceholderAttributeModifier where Self: Attributes & Mutable {

    public func placeholder(
        _ value: PlaceholderAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.placeholder,
            value: value?.attributeValue
        )
    }
}
