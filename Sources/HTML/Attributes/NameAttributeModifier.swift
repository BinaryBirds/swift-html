import SGML

public protocol NameAttributeModifier {
    associatedtype NameAttributeValueType: AttributeValueRepresentable = String
}

extension NameAttributeModifier where Self: Attributes & Mutable {

    /// Sets a name attribute.
    public func name(
        _ value: NameAttributeValueType?
    ) -> Self {
        setAttribute(key: .name, value: value?.attributeValue)
    }
}
