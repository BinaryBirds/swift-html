import SGML

public protocol PlaceholderAttributeModifier {
    associatedtype PlaceholderAttributeValue: AttributeValueRepresentable = String
}

extension PlaceholderAttributeModifier where Self: Attributes & Mutable {

    public func placeholder(
        _ value: PlaceholderAttributeValue?
    ) -> Self {
        setAttribute(key: .placeholder, value: value?.attributeValue)
    }
}
