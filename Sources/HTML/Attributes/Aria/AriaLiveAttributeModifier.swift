import SGML

public enum AriaLiveAttributeValue: String, AttributeValueRepresentable {
    /// Updates have the highest priority and should be presented immediately.
    case assertive
    /// Updates should not be presented unless the user is focused on the region.
    case off
    /// Updates should be presented at the next graceful opportunity.
    case polite
}

public protocol AriaLiveAttributeModifier {
    associatedtype AriaLiveAttributeValueType: AttributeValueRepresentable =
        AriaLiveAttributeValue
}

extension AriaLiveAttributeModifier where Self: Attributes & Mutable {

    public func ariaLive(
        _ value: AriaLiveAttributeValueType?
    ) -> Self {
        setAttribute(key: AriaAttributeKey.live, value: value?.attributeValue)
    }
}
