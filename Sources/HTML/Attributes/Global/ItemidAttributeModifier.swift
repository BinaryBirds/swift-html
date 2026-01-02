import SGML

public protocol ItemidAttributeModifier {
    associatedtype ItemidAttributeValueType: AttributeValueRepresentable = String
}

extension ItemidAttributeModifier where Self: Attributes & Mutable {

    public func itemid(
        _ value: ItemidAttributeValueType?
    ) -> Self {
        setAttribute(key: .itemid, value: value?.attributeValue)
    }
}
