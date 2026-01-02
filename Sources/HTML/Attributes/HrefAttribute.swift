import SGML

public protocol HrefAttributeModifier {
    associatedtype HrefAttributeValue: AttributeValueRepresentable = String
}

extension HrefAttributeModifier where Self: Attributes & Mutable {

    /// Sets a href attribute.
    public func href(
        _ value: HrefAttributeValue?
    ) -> Self {
        setAttribute(name: "href", value: value?.attributeValue)
    }
}
