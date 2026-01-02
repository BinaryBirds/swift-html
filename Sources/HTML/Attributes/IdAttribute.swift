import SGML

public protocol IdAttributeModifier {
    associatedtype IdAttributeValue: AttributeValueRepresentable = String
}

extension IdAttributeModifier where Self: Attributes & Mutable {

    /// Sets an id attribute.
    public func id(
        _ value: IdAttributeValue?
    ) -> Self {
        setAttribute(name: "id", value: value?.attributeValue)
    }
}
