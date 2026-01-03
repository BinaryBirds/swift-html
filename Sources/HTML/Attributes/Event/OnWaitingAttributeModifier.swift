import SGML

public protocol OnWaitingAttributeModifier {
    associatedtype OnWaitingAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnWaitingAttributeModifier where Self: Attributes & Mutable {

    public func onWaiting(
        _ value: OnWaitingAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.waiting,
            value: value?.attributeValue
        )
    }
}
