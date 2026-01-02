import SGML

public protocol SlotAttributeModifier {
    associatedtype SlotAttributeValueType: AttributeValueRepresentable = String
}

extension SlotAttributeModifier where Self: Attributes & Mutable {

    public func slot(
        _ value: SlotAttributeValueType?
    ) -> Self {
        setAttribute(key: GlobalAttributeKey.slot, value: value?.attributeValue)
    }
}
