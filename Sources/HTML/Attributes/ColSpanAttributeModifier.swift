import SGML

public protocol ColspanAttributeModifier {
    associatedtype ColspanAttributeValueType: AttributeValueRepresentable = Int
}

extension ColspanAttributeModifier where Self: Attributes & Mutable {

    public func colspan(
        _ value: ColspanAttributeValueType?
    ) -> Self {
        setAttribute(key: .colspan, value: value?.attributeValue)
    }
}
