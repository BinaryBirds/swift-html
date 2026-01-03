import SGML

public protocol AcceptCharsetAttributeModifier {
    associatedtype
        AcceptCharsetAttributeValueType: AttributeValueRepresentable = String
}

extension AcceptCharsetAttributeModifier where Self: Attributes & Mutable {

    public func acceptCharset(
        _ value: AcceptCharsetAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.acceptCharset,
            value: value?.attributeValue
        )
    }
}
