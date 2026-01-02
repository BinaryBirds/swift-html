import SGML

public protocol CiteAttributeModifier {
    associatedtype CiteAttributeValue: AttributeValueRepresentable = String
}

extension CiteAttributeModifier where Self: Attributes & Mutable {

    /// Sets a cite attribute.
    public func cite(
        _ value: CiteAttributeValue?
    ) -> Self {
        setAttribute(key: .cite, value: value?.attributeValue)
    }
}
