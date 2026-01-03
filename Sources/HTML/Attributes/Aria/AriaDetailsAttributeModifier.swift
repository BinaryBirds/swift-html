import SGML

public protocol AriaDetailsAttributeModifier {
    associatedtype AriaDetailsAttributeValueType: AttributeValueRepresentable =
        String
}

extension AriaDetailsAttributeModifier where Self: Attributes & Mutable {

    public func ariaDetails(
        _ value: AriaDetailsAttributeValueType?
    ) -> Self {
        setAttribute(
            key: AriaAttributeKey.details,
            value: value?.attributeValue
        )
    }
}
