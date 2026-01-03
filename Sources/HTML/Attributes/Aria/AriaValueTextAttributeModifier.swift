import SGML

public protocol AriaValueTextAttributeModifier {
    associatedtype
        AriaValueTextAttributeValueType: AttributeValueRepresentable = String
}

extension AriaValueTextAttributeModifier where Self: Attributes & Mutable {

    public func ariaValueText(
        _ value: AriaValueTextAttributeValueType?
    ) -> Self {
        setAttribute(
            key: AriaAttributeKey.valueText,
            value: value?.attributeValue
        )
    }
}
