import SGML

public protocol HeadersAttributeModifier {
    associatedtype HeadersAttributeValueType: AttributeValueRepresentable =
        String
}

extension HeadersAttributeModifier where Self: Attributes & Mutable {

    public func headers(

        _ value: HeadersAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.headers,
            value: value?.attributeValue
        )
    }
}
