import SGML

public protocol OnErrorAttributeModifier {
    associatedtype OnErrorAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnErrorAttributeModifier where Self: Attributes & Mutable {

    public func onError(
        _ value: OnErrorAttributeValueType?
    ) -> Self {
        setAttribute(key: EventAttributeKey.error, value: value?.attributeValue)
    }
}
