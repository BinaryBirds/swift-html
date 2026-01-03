import SGML

public protocol OnMessageErrorAttributeModifier {
    associatedtype
        OnMessageErrorAttributeValueType: AttributeValueRepresentable = String
}

extension OnMessageErrorAttributeModifier where Self: Attributes & Mutable {

    public func onMessageError(
        _ value: OnMessageErrorAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.messageError,
            value: value?.attributeValue
        )
    }
}
