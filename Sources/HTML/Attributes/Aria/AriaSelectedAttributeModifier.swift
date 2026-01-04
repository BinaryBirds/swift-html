import SGML

public enum AriaSelectedAttributeValue: String, AttributeValueRepresentable {
    /// The selectable element is selected.
    case `true` = "true"
    /// The selectable element is not selected.
    case `false` = "false"
    /// The element is not selectable.
    case undefined
}

public protocol AriaSelectedAttributeModifier {
    associatedtype AriaSelectedAttributeValueType: AttributeValueRepresentable =
        AriaSelectedAttributeValue
}

extension AriaSelectedAttributeModifier where Self: Attributes & Mutable {

    public func ariaSelected(
        _ value: AriaSelectedAttributeValueType?
    ) -> Self {
        setAttribute(
            key: AriaAttributeKey.selected,
            value: value?.attributeValue
        )
    }
}
