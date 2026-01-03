import SGML

public protocol AriaHasPopupAttributeModifier {
    associatedtype AriaHasPopupAttributeValueType: AttributeValueRepresentable = String
}

extension AriaHasPopupAttributeModifier where Self: Attributes & Mutable {

    public func ariaHasPopup(
        _ value: AriaHasPopupAttributeValueType?
    ) -> Self {
        setAttribute(key: AriaAttributeKey.hasPopup, value: value?.attributeValue)
    }
}
