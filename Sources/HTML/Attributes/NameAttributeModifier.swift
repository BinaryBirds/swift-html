import SGML

public protocol NameAttributeModifier {
    associatedtype NameAttributeValue: AttributeValueRepresentable = String
}

extension NameAttributeModifier where Self: Attributes & Mutable {

    /// Sets a name attribute.
    public func name(
        _ value: NameAttributeValue?
    ) -> Self {
        setAttribute(key: .name, value: value?.attributeValue)
    }
}
