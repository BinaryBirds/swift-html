import SGML

public protocol AriaRowSpanAttributeModifier {
    associatedtype AriaRowSpanAttributeValueType: AttributeValueRepresentable =
        String
}

extension AriaRowSpanAttributeModifier where Self: Attributes & Mutable {

    public func ariaRowSpan(
        _ value: AriaRowSpanAttributeValueType?
    ) -> Self {
        setAttribute(
            key: AriaAttributeKey.rowSpan,
            value: value?.attributeValue
        )
    }
}
