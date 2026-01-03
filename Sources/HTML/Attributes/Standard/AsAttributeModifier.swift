import SGML

public protocol AsAttributeModifier {
    associatedtype AsAttributeValueType: AttributeValueRepresentable = String
}

extension AsAttributeModifier where Self: Attributes & Mutable {

    public func `as`(
        _ value: AsAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.`as`,
            value: value?.attributeValue
        )
    }
}
