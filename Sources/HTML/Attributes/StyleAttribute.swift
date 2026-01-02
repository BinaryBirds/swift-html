import SGML

public protocol StyleAttributeModifier {
    associatedtype StyleAttributeValue: AttributeValueRepresentable = String
}

extension StyleAttributeModifier where Self: Attributes & Mutable {

    /// Sets an style attribute.
    public func style(
        _ value: StyleAttributeValue?
    ) -> Self {
        setAttribute(name: "style", value: value?.attributeValue)
    }
}
