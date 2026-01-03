import SGML

public protocol OnTimeUpdateAttributeModifier {
    associatedtype OnTimeUpdateAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnTimeUpdateAttributeModifier where Self: Attributes & Mutable {

    public func onTimeUpdate(
        _ value: OnTimeUpdateAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.timeUpdate,
            value: value?.attributeValue
        )
    }
}
