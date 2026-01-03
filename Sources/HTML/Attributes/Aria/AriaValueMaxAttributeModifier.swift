import SGML

public protocol AriaValueMaxAttributeModifier {
    associatedtype AriaValueMaxAttributeValueType: AttributeValueRepresentable =
        String
}

extension AriaValueMaxAttributeModifier where Self: Attributes & Mutable {

    public func ariaValueMax(
        _ value: AriaValueMaxAttributeValueType?
    ) -> Self {
        setAttribute(
            key: AriaAttributeKey.valueMax,
            value: value?.attributeValue
        )
    }
}
