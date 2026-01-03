import SGML

public protocol DecodingAttributeModifier {
    associatedtype DecodingAttributeValueType: AttributeValueRepresentable =
        String
}

extension DecodingAttributeModifier where Self: Attributes & Mutable {

    public func decoding(

        _ value: DecodingAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.decoding,
            value: value?.attributeValue
        )
    }
}
