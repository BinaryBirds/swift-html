import SGML

public protocol AriaSelectedAttributeModifier {
    associatedtype AriaSelectedAttributeValueType: AttributeValueRepresentable =
        String
}

extension AriaSelectedAttributeModifier where Self: Attributes & Mutable {

    public func ariaSelected(
        _ value: AriaSelectedAttributeValueType?
    ) -> Self {
        setAttribute(
            key: AriaAttributeKey.selected,
            value: value?.attributeValue
        )
    }
}
