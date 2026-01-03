import SGML

public protocol AriaDisabledAttributeModifier {
    associatedtype AriaDisabledAttributeValueType: AttributeValueRepresentable =
        String
}

extension AriaDisabledAttributeModifier where Self: Attributes & Mutable {

    public func ariaDisabled(
        _ value: AriaDisabledAttributeValueType?
    ) -> Self {
        setAttribute(
            key: AriaAttributeKey.disabled,
            value: value?.attributeValue
        )
    }
}
