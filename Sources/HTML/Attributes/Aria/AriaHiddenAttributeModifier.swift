import SGML

public protocol AriaHiddenAttributeModifier {
    associatedtype AriaHiddenAttributeValueType: AttributeValueRepresentable =
        String
}

extension AriaHiddenAttributeModifier where Self: Attributes & Mutable {

    public func ariaHidden(
        _ value: AriaHiddenAttributeValueType?
    ) -> Self {
        setAttribute(key: AriaAttributeKey.hidden, value: value?.attributeValue)
    }
}
