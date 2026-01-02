import SGML

public protocol ItempropAttributeModifier {
    associatedtype ItempropAttributeValueType: AttributeValueRepresentable = String
}

extension ItempropAttributeModifier where Self: Attributes & Mutable {

    public func itemprop(
        _ value: ItempropAttributeValueType?
    ) -> Self {
        setAttribute(key: .itemprop, value: value?.attributeValue)
    }
}
