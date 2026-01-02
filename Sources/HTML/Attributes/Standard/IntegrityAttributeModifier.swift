import SGML

public protocol IntegrityAttributeModifier {
    associatedtype IntegrityAttributeValueType: AttributeValueRepresentable =
        String
}

extension IntegrityAttributeModifier where Self: Attributes & Mutable {

    public func integrity(
        _ value: IntegrityAttributeValueType?
    ) -> Self {
        setAttribute(key: .integrity, value: value?.attributeValue)
    }
}
