import SGML

public protocol PlaceholderAttributeModifier {
    associatedtype PlaceholderAttributeValue: AttributeValueRepresentable = String
}

extension PlaceholderAttributeModifier where Self: Attributes & Mutable {

    public func placeholder(
        _ value: PlaceholderAttributeValue?
    ) -> Self {
        setAttribute(name: "placeholder", value: value?.attributeValue)
    }
}
