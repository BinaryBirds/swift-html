import SGML

public protocol AltAttributeModifier {
    associatedtype AltAttributeValueType: AttributeValueRepresentable = String
}

extension AltAttributeModifier where Self: Attributes & Mutable {

    public func alt(
        _ value: AltAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.alt,
            value: value?.attributeValue
        )
    }
}
