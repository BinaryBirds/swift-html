import SGML

public protocol OnResetAttributeModifier {
    associatedtype OnResetAttributeValueType: AttributeValueRepresentable = String
}

extension OnResetAttributeModifier where Self: Attributes & Mutable {

    public func onReset(
        _ value: OnResetAttributeValueType?
    ) -> Self {
        setAttribute(key: EventAttributeKey.onreset, value: value?.attributeValue)
    }
}
