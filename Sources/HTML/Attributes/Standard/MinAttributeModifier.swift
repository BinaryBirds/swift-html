import SGML

public protocol MinAttributeModifier {
    associatedtype MinAttributeValueType: AttributeValueRepresentable = Double
}

extension MinAttributeModifier where Self: Attributes & Mutable {

    public func min(

        _ value: MinAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.min,
            value: value?.attributeValue
        )
    }
}
