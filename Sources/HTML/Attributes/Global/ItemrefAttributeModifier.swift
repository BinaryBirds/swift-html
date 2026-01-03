import SGML

public protocol ItemRefAttributeModifier {
    associatedtype ItemRefAttributeValueType: AttributeValueRepresentable =
        String
}

extension ItemRefAttributeModifier where Self: Attributes & Mutable {

    public func itemRef(
        _ value: ItemRefAttributeValueType?
    ) -> Self {
        setAttribute(
            key: GlobalAttributeKey.itemref,
            value: value?.attributeValue
        )
    }
}
