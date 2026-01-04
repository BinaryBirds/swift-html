import SGML

public enum AriaCheckedAttributeValue: String, AttributeValueRepresentable {
    /// The element supports being checked but is not currently checked.
    case `false` = "false"
    /// The element is checked.
    case `true` = "true"
    /// Mixed state (indeterminate) for tri-state controls.
    case mixed
    /// The element does not support being checked.
    case undefined
}

public protocol AriaCheckedAttributeModifier {
    associatedtype AriaCheckedAttributeValueType: AttributeValueRepresentable =
        AriaCheckedAttributeValue
}

extension AriaCheckedAttributeModifier where Self: Attributes & Mutable {

    public func ariaChecked(
        _ value: AriaCheckedAttributeValueType?
    ) -> Self {
        setAttribute(
            key: AriaAttributeKey.checked,
            value: value?.attributeValue
        )
    }
}
