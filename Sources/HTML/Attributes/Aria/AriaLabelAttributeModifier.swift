import SGML

public protocol AriaLabelAttributeModifier {
    associatedtype AriaLabelAttributeValueType: AttributeValueRepresentable =
        String
}

extension AriaLabelAttributeModifier where Self: Attributes & Mutable {

    public func ariaLabel(
        _ value: AriaLabelAttributeValueType?
    ) -> Self {
        setAttribute(key: AriaAttributeKey.label, value: value?.attributeValue)
    }
}
