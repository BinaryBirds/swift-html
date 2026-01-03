import SGML

public protocol ItemIdAttributeModifier {
    associatedtype ItemIdAttributeValueType: AttributeValueRepresentable =
        String
}

extension ItemIdAttributeModifier where Self: Attributes & Mutable {

    public func itemId(
        _ value: ItemIdAttributeValueType?
    ) -> Self {
        setAttribute(
            key: GlobalAttributeKey.itemid,
            value: value?.attributeValue
        )
    }
}
