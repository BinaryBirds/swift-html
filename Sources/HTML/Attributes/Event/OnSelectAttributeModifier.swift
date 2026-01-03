import SGML

public protocol OnSelectAttributeModifier {
    associatedtype OnSelectAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnSelectAttributeModifier where Self: Attributes & Mutable {

    public func onSelect(
        _ value: OnSelectAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.select,
            value: value?.attributeValue
        )
    }
}
