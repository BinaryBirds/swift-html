import SGML

public protocol IntegrityAttributeModifier {
    associatedtype IntegrityAttributeValue: AttributeValueRepresentable = String
}

extension IntegrityAttributeModifier where Self: Attributes & Mutable {

    public func integrity(
        _ value: IntegrityAttributeValue?
    ) -> Self {
        setAttribute(name: "integrity", value: value?.attributeValue)
    }
}
