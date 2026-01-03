import SGML

public protocol AlphaAttributeModifier {
    associatedtype AlphaAttributeValueType: AttributeValueRepresentable = String
}

extension AlphaAttributeModifier where Self: Attributes & Mutable {

    public func alpha(
        _ value: AlphaAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.alpha,
            value: value?.attributeValue
        )
    }
}
