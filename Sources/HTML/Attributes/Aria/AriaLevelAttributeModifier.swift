import SGML

public protocol AriaLevelAttributeModifier {
    associatedtype AriaLevelAttributeValueType: AttributeValueRepresentable =
        String
}

extension AriaLevelAttributeModifier where Self: Attributes & Mutable {

    public func ariaLevel(
        _ value: AriaLevelAttributeValueType?
    ) -> Self {
        setAttribute(key: AriaAttributeKey.level, value: value?.attributeValue)
    }
}
