import SGML

public protocol SizeAttributeModifier {
    associatedtype SizeAttributeValueType: AttributeValueRepresentable = Int
}

extension SizeAttributeModifier where Self: Attributes & Mutable {

    public func size(
        _ value: SizeAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.size,
            value: value?.attributeValue
        )
    }
}
