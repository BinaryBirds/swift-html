import SGML

public protocol ValueAttributeModifier {
    associatedtype ValueAttributeValueType: AttributeValueRepresentable = String
}

extension ValueAttributeModifier where Self: Attributes & Mutable {

    public func value(
        _ value: ValueAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.value,
            value: value?.attributeValue
        )
    }
}
