import SGML

public protocol AriaExpandedAttributeModifier {
    associatedtype AriaExpandedAttributeValueType: AttributeValueRepresentable =
        String
}

extension AriaExpandedAttributeModifier where Self: Attributes & Mutable {

    public func ariaExpanded(
        _ value: AriaExpandedAttributeValueType?
    ) -> Self {
        setAttribute(
            key: AriaAttributeKey.expanded,
            value: value?.attributeValue
        )
    }
}
