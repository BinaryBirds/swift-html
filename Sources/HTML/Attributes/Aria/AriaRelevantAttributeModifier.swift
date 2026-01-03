import SGML

public protocol AriaRelevantAttributeModifier {
    associatedtype AriaRelevantAttributeValueType: AttributeValueRepresentable =
        String
}

extension AriaRelevantAttributeModifier where Self: Attributes & Mutable {

    public func ariaRelevant(
        _ value: AriaRelevantAttributeValueType?
    ) -> Self {
        setAttribute(
            key: AriaAttributeKey.relevant,
            value: value?.attributeValue
        )
    }
}
