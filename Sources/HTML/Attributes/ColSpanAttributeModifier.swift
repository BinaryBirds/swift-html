import SGML

public protocol ColspanAttributeModifier {
    associatedtype ColspanAttributeValue: AttributeValueRepresentable = Int
}

extension ColspanAttributeModifier where Self: Attributes & Mutable {

    public func colspan(
        _ value: ColspanAttributeValue?
    ) -> Self {
        setAttribute(key: .colspan, value: value?.attributeValue)
    }
}
