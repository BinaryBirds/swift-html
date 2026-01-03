import SGML

public protocol AriaPressedAttributeModifier {
    associatedtype AriaPressedAttributeValueType: AttributeValueRepresentable = String
}

extension AriaPressedAttributeModifier where Self: Attributes & Mutable {

    public func ariaPressed(
        _ value: AriaPressedAttributeValueType?
    ) -> Self {
        setAttribute(key: AriaAttributeKey.pressed, value: value?.attributeValue)
    }
}
