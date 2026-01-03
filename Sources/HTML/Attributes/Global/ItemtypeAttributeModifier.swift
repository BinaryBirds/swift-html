import SGML

public protocol ItemTypeAttributeModifier {
    associatedtype ItemTypeAttributeValueType: AttributeValueRepresentable =
        String
}

extension ItemTypeAttributeModifier where Self: Attributes & Mutable {

    public func itemType(
        _ value: ItemTypeAttributeValueType?
    ) -> Self {
        setAttribute(
            key: GlobalAttributeKey.itemtype,
            value: value?.attributeValue
        )
    }
}
