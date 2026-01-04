import SGML

public enum AriaPressedAttributeValue: String, AttributeValueRepresentable {
    /// The button supports being pressed but is not currently pressed.
    case `false` = "false"
    /// Indicates a mixed mode value for a tri-state toggle button.
    case mixed
    /// The button is pressed.
    case `true` = "true"
    /// The element does not support being pressed.
    case undefined
}

public protocol AriaPressedAttributeModifier {
    associatedtype AriaPressedAttributeValueType: AttributeValueRepresentable =
        AriaPressedAttributeValue
}

extension AriaPressedAttributeModifier where Self: Attributes & Mutable {

    public func ariaPressed(
        _ value: AriaPressedAttributeValueType?
    ) -> Self {
        setAttribute(
            key: AriaAttributeKey.pressed,
            value: value?.attributeValue
        )
    }
}
