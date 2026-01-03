import SGML

public protocol AriaActiveDescendantAttributeModifier {
    associatedtype
        AriaActiveDescendantAttributeValueType: AttributeValueRepresentable =
        String
}

extension AriaActiveDescendantAttributeModifier
where Self: Attributes & Mutable {

    public func ariaActiveDescendant(
        _ value: AriaActiveDescendantAttributeValueType?
    ) -> Self {
        setAttribute(
            key: AriaAttributeKey.activeDescendant,
            value: value?.attributeValue
        )
    }
}
