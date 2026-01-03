import SGML

public protocol AriaOwnsAttributeModifier {
    associatedtype AriaOwnsAttributeValueType: AttributeValueRepresentable =
        String
}

extension AriaOwnsAttributeModifier where Self: Attributes & Mutable {

    public func ariaOwns(
        _ value: AriaOwnsAttributeValueType?
    ) -> Self {
        setAttribute(key: AriaAttributeKey.owns, value: value?.attributeValue)
    }
}
