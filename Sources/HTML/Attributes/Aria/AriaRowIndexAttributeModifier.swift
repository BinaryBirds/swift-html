import SGML

public protocol AriaRowIndexAttributeModifier {
    associatedtype AriaRowIndexAttributeValueType: AttributeValueRepresentable =
        String
}

extension AriaRowIndexAttributeModifier where Self: Attributes & Mutable {

    public func ariaRowIndex(
        _ value: AriaRowIndexAttributeValueType?
    ) -> Self {
        setAttribute(
            key: AriaAttributeKey.rowIndex,
            value: value?.attributeValue
        )
    }
}
