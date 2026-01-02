import SGML

public protocol TypeAttributeModifier {
    associatedtype TypeAttributeValue: AttributeValueRepresentable = String
}

extension TypeAttributeModifier where Self: Attributes & Mutable {

    public func type(
        _ value: TypeAttributeValue?
    ) -> Self {
        setAttribute(key: .type, value: value?.attributeValue)
    }
}
