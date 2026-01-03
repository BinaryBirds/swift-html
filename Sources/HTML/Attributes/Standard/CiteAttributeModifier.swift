import SGML

public protocol CiteAttributeModifier {
    associatedtype CiteAttributeValueType: AttributeValueRepresentable = String
}

extension CiteAttributeModifier where Self: Attributes & Mutable {

    /// Sets a cite attribute.
    public func cite(
        _ value: CiteAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.cite,
            value: value?.attributeValue
        )
    }
}
