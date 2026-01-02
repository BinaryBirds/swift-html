import SGML

public protocol ColspanAttributeModifier {
    associatedtype ColspanAttributeValueType: AttributeValueRepresentable = Int
}

extension ColspanAttributeModifier where Self: Attributes & Mutable {

    public func colSpan(
        _ value: ColspanAttributeValueType?
    ) -> Self {
        setAttribute(key: StandardAttributeKey.colspan, value: value?.attributeValue)
    }
}
