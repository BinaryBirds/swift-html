import SGML

public protocol ItemtypeAttributeModifier {
    associatedtype ItemtypeAttributeValueType: AttributeValueRepresentable = String
}

extension ItemtypeAttributeModifier where Self: Attributes & Mutable {

    public func itemtype(
        _ value: ItemtypeAttributeValueType?
    ) -> Self {
        setAttribute(key: .itemtype, value: value?.attributeValue)
    }
}
