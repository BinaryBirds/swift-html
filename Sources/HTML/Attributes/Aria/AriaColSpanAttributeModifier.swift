import SGML

public protocol AriaColSpanAttributeModifier {
    associatedtype AriaColSpanAttributeValueType: AttributeValueRepresentable =
        String
}

extension AriaColSpanAttributeModifier where Self: Attributes & Mutable {

    public func ariaColSpan(
        _ value: AriaColSpanAttributeValueType?
    ) -> Self {
        setAttribute(
            key: AriaAttributeKey.colSpan,
            value: value?.attributeValue
        )
    }
}
