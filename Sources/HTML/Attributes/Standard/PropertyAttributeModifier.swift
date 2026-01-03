import SGML

public protocol PropertyAttributeModifier {
    associatedtype PropertyAttributeValueType: AttributeValueRepresentable =
        String
}

extension PropertyAttributeModifier where Self: Attributes & Mutable {

    public func property(

        _ value: PropertyAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.property,
            value: value?.attributeValue
        )
    }
}
