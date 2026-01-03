import SGML

public protocol OnStalledAttributeModifier {
    associatedtype OnStalledAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnStalledAttributeModifier where Self: Attributes & Mutable {

    public func onStalled(
        _ value: OnStalledAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.stalled,
            value: value?.attributeValue
        )
    }
}
