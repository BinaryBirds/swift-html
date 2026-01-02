import SGML

public protocol ValueAttributeModifier {
    associatedtype ValueAttributeValue: AttributeValueRepresentable = String
}

extension ValueAttributeModifier where Self: Attributes & Mutable {

    public func value(
        _ value: ValueAttributeValue?
    ) -> Self {
        setAttribute(name: "value", value: value?.attributeValue)
    }
}
