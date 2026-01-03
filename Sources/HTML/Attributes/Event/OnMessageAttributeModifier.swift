import SGML

public protocol OnMessageAttributeModifier {
    associatedtype OnMessageAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnMessageAttributeModifier where Self: Attributes & Mutable {

    public func onMessage(
        _ value: OnMessageAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.message,
            value: value?.attributeValue
        )
    }
}
