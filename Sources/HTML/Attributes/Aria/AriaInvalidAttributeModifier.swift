import SGML

public protocol AriaInvalidAttributeModifier {
    associatedtype AriaInvalidAttributeValueType: AttributeValueRepresentable =
        String
}

extension AriaInvalidAttributeModifier where Self: Attributes & Mutable {

    public func ariaInvalid(
        _ value: AriaInvalidAttributeValueType?
    ) -> Self {
        setAttribute(
            key: AriaAttributeKey.invalid,
            value: value?.attributeValue
        )
    }
}
