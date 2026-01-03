import SGML

public protocol AriaFlowToAttributeModifier {
    associatedtype AriaFlowToAttributeValueType: AttributeValueRepresentable =
        String
}

extension AriaFlowToAttributeModifier where Self: Attributes & Mutable {

    public func ariaFlowTo(
        _ value: AriaFlowToAttributeValueType?
    ) -> Self {
        setAttribute(key: AriaAttributeKey.flowTo, value: value?.attributeValue)
    }
}
