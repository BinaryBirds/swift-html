import SGML

public enum PopoverAttributeValue: String, AttributeValueRepresentable {
    /// Closes other popovers when opened; has light dismiss and responds to close requests.
    case auto
    /// Does not close other popovers; does not light dismiss or respond to close requests.
    case manual
    /// Closes other hint popovers when opened, but not other auto popovers.
    case hint
}

public protocol PopoverAttributeModifier {
    associatedtype PopoverAttributeValueType: AttributeValueRepresentable =
        PopoverAttributeValue
}

extension PopoverAttributeModifier where Self: Attributes & Mutable {

    public func popover(
        _ value: PopoverAttributeValueType?
    ) -> Self {
        setAttribute(
            key: GlobalAttributeKey.popover,
            value: value?.attributeValue
        )
    }
}
