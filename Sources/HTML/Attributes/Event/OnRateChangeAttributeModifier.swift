import SGML

public protocol OnRateChangeAttributeModifier {
    associatedtype OnRateChangeAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnRateChangeAttributeModifier where Self: Attributes & Mutable {

    public func onRateChange(
        _ value: OnRateChangeAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.rateChange,
            value: value?.attributeValue
        )
    }
}
