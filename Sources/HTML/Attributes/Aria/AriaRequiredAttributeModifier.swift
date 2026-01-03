import SGML

public protocol AriaRequiredAttributeModifier {
    associatedtype AriaRequiredAttributeValueType: AttributeValueRepresentable =
        String
}

extension AriaRequiredAttributeModifier where Self: Attributes & Mutable {

    public func ariaRequired(
        _ value: AriaRequiredAttributeValueType?
    ) -> Self {
        setAttribute(
            key: AriaAttributeKey.required,
            value: value?.attributeValue
        )
    }
}
