import SGML

public protocol OnMessageErrorAttributeModifier {
    associatedtype OnMessageErrorAttributeValueType: AttributeValueRepresentable = String
}

extension OnMessageErrorAttributeModifier where Self: Attributes & Mutable {

    public func onMessageError(
        _ value: OnMessageErrorAttributeValueType?
    ) -> Self {
        setAttribute(key: EventAttributeKey.onmessageerror, value: value?.attributeValue)
    }
}
