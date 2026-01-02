import SGML

public protocol ValueAttributeModifier {
    associatedtype ValueAttributeValueType: AttributeValueRepresentable = String
}

extension ValueAttributeModifier where Self: Attributes & Mutable {

    public func value(
        _ value: ValueAttributeValueType?
    ) -> Self {
        setAttribute(key: .value, value: value?.attributeValue)
    }
}
