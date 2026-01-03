import SGML

public protocol TypeAttributeModifier {
    associatedtype TypeAttributeValueType: AttributeValueRepresentable = String
}

extension TypeAttributeModifier where Self: Attributes & Mutable {

    public func type(
        _ value: TypeAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.type,
            value: value?.attributeValue
        )
    }
}
