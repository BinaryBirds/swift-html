import SGML

public protocol AriaReadOnlyAttributeModifier {
    associatedtype AriaReadOnlyAttributeValueType: AttributeValueRepresentable =
        String
}

extension AriaReadOnlyAttributeModifier where Self: Attributes & Mutable {

    public func ariaReadOnly(
        _ value: AriaReadOnlyAttributeValueType?
    ) -> Self {
        setAttribute(
            key: AriaAttributeKey.readOnly,
            value: value?.attributeValue
        )
    }
}
