import SGML

public protocol AriaValueNowAttributeModifier {
    associatedtype AriaValueNowAttributeValueType: AttributeValueRepresentable =
        String
}

extension AriaValueNowAttributeModifier where Self: Attributes & Mutable {

    public func ariaValueNow(
        _ value: AriaValueNowAttributeValueType?
    ) -> Self {
        setAttribute(
            key: AriaAttributeKey.valueNow,
            value: value?.attributeValue
        )
    }
}
