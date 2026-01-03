import SGML

public protocol AriaValueMinAttributeModifier {
    associatedtype AriaValueMinAttributeValueType: AttributeValueRepresentable =
        String
}

extension AriaValueMinAttributeModifier where Self: Attributes & Mutable {

    public func ariaValueMin(
        _ value: AriaValueMinAttributeValueType?
    ) -> Self {
        setAttribute(
            key: AriaAttributeKey.valueMin,
            value: value?.attributeValue
        )
    }
}
