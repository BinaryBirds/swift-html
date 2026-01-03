import SGML

public protocol OnSelectionChangeAttributeModifier {
    associatedtype
        OnSelectionChangeAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnSelectionChangeAttributeModifier where Self: Attributes & Mutable {

    public func onSelectionChange(
        _ value: OnSelectionChangeAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.selectionChange,
            value: value?.attributeValue
        )
    }
}
