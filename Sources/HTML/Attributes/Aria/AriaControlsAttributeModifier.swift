import SGML

public protocol AriaControlsAttributeModifier {
    associatedtype AriaControlsAttributeValueType: AttributeValueRepresentable =
        String
}

extension AriaControlsAttributeModifier where Self: Attributes & Mutable {

    public func ariaControls(
        _ value: AriaControlsAttributeValueType?
    ) -> Self {
        setAttribute(
            key: AriaAttributeKey.controls,
            value: value?.attributeValue
        )
    }
}
