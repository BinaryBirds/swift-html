import SGML

public protocol OnPointerMoveAttributeModifier {
    associatedtype OnPointerMoveAttributeValueType: AttributeValueRepresentable = String
}

extension OnPointerMoveAttributeModifier where Self: Attributes & Mutable {

    public func onPointerMove(
        _ value: OnPointerMoveAttributeValueType?
    ) -> Self {
        setAttribute(key: EventAttributeKey.onpointermove, value: value?.attributeValue)
    }
}
