import SGML

public protocol OnSuspendAttributeModifier {
    associatedtype OnSuspendAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnSuspendAttributeModifier where Self: Attributes & Mutable {

    public func onSuspend(
        _ value: OnSuspendAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.suspend,
            value: value?.attributeValue
        )
    }
}
