import SGML

public protocol AriaRowCountAttributeModifier {
    associatedtype AriaRowCountAttributeValueType: AttributeValueRepresentable =
        String
}

extension AriaRowCountAttributeModifier where Self: Attributes & Mutable {

    public func ariaRowCount(
        _ value: AriaRowCountAttributeValueType?
    ) -> Self {
        setAttribute(
            key: AriaAttributeKey.rowCount,
            value: value?.attributeValue
        )
    }
}
