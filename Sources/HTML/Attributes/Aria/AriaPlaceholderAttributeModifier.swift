import SGML

public protocol AriaPlaceholderAttributeModifier {
    associatedtype
        AriaPlaceholderAttributeValueType: AttributeValueRepresentable = String
}

extension AriaPlaceholderAttributeModifier where Self: Attributes & Mutable {

    public func ariaPlaceholder(
        _ value: AriaPlaceholderAttributeValueType?
    ) -> Self {
        setAttribute(
            key: AriaAttributeKey.placeholder,
            value: value?.attributeValue
        )
    }
}
