import SGML

public protocol OnUnhandledRejectionAttributeModifier {
    associatedtype
        OnUnhandledRejectionAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnUnhandledRejectionAttributeModifier
where Self: Attributes & Mutable {

    public func onUnhandledRejection(
        _ value: OnUnhandledRejectionAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.unhandledRejection,
            value: value?.attributeValue
        )
    }
}
