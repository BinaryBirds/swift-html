import SGML

public protocol SizesAttributeModifier {
    associatedtype SizesAttributeValueType: AttributeValueRepresentable = String
}

extension SizesAttributeModifier where Self: Attributes & Mutable {

    public func sizes(
        _ value: SizesAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.sizes,
            value: value?.attributeValue
        )
    }
}
