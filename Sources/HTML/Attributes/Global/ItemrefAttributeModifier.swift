import SGML

public protocol ItemrefAttributeModifier {
    associatedtype ItemrefAttributeValueType: AttributeValueRepresentable = String
}

extension ItemrefAttributeModifier where Self: Attributes & Mutable {

    public func itemref(
        _ value: ItemrefAttributeValueType?
    ) -> Self {
        setAttribute(key: .itemref, value: value?.attributeValue)
    }
}
