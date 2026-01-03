import SGML

public protocol ItemPropAttributeModifier {
    associatedtype ItemPropAttributeValueType: AttributeValueRepresentable =
        String
}

extension ItemPropAttributeModifier where Self: Attributes & Mutable {

    public func itemProp(
        _ value: ItemPropAttributeValueType?
    ) -> Self {
        setAttribute(
            key: GlobalAttributeKey.itemprop,
            value: value?.attributeValue
        )
    }
}
