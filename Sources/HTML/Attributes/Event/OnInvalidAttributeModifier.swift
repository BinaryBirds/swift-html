import SGML

public protocol OnInvalidAttributeModifier {
    associatedtype OnInvalidAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnInvalidAttributeModifier where Self: Attributes & Mutable {

    public func onInvalid(
        _ value: OnInvalidAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.invalid,
            value: value?.attributeValue
        )
    }
}
