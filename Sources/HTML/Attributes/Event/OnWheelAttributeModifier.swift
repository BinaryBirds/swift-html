import SGML

public protocol OnWheelAttributeModifier {
    associatedtype OnWheelAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnWheelAttributeModifier where Self: Attributes & Mutable {

    public func onWheel(
        _ value: OnWheelAttributeValueType?
    ) -> Self {
        setAttribute(key: EventAttributeKey.wheel, value: value?.attributeValue)
    }
}
