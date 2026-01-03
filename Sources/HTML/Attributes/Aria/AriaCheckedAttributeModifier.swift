import SGML

public protocol AriaCheckedAttributeModifier {
    associatedtype AriaCheckedAttributeValueType: AttributeValueRepresentable =
        String
}

extension AriaCheckedAttributeModifier where Self: Attributes & Mutable {

    public func ariaChecked(
        _ value: AriaCheckedAttributeValueType?
    ) -> Self {
        setAttribute(
            key: AriaAttributeKey.checked,
            value: value?.attributeValue
        )
    }
}
