import SGML

public protocol OnDurationChangeAttributeModifier {
    associatedtype
        OnDurationChangeAttributeValueType: AttributeValueRepresentable = String
}

extension OnDurationChangeAttributeModifier where Self: Attributes & Mutable {

    public func onDurationChange(
        _ value: OnDurationChangeAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.durationChange,
            value: value?.attributeValue
        )
    }
}
