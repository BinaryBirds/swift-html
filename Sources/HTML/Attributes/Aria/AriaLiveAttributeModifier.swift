import SGML

public protocol AriaLiveAttributeModifier {
    associatedtype AriaLiveAttributeValueType: AttributeValueRepresentable = String
}

extension AriaLiveAttributeModifier where Self: Attributes & Mutable {

    public func ariaLive(
        _ value: AriaLiveAttributeValueType?
    ) -> Self {
        setAttribute(key: AriaAttributeKey.live, value: value?.attributeValue)
    }
}
