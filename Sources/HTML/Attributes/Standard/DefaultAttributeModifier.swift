import SGML

public protocol DefaultAttributeModifier {
    associatedtype DefaultAttributeValueType: AttributeValueRepresentable =
        String
}

extension DefaultAttributeModifier where Self: Attributes & Mutable {

    public func `default`(
        _ value: DefaultAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.`default`,
            value: value?.attributeValue
        )
    }
}
