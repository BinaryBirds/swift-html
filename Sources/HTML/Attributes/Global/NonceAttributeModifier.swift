import SGML

public protocol NonceAttributeModifier {
    associatedtype NonceAttributeValueType: AttributeValueRepresentable = String
}

extension NonceAttributeModifier where Self: Attributes & Mutable {

    public func nonce(
        _ value: NonceAttributeValueType?
    ) -> Self {
        setAttribute(
            key: GlobalAttributeKey.nonce,
            value: value?.attributeValue
        )
    }
}
