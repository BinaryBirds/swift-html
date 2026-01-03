import SGML

public protocol AriaMultiSelectableAttributeModifier {
    associatedtype
        AriaMultiSelectableAttributeValueType: AttributeValueRepresentable =
        String
}

extension AriaMultiSelectableAttributeModifier
where Self: Attributes & Mutable {

    public func ariaMultiSelectable(
        _ value: AriaMultiSelectableAttributeValueType?
    ) -> Self {
        setAttribute(
            key: AriaAttributeKey.multiSelectable,
            value: value?.attributeValue
        )
    }
}
