import SGML

public protocol OnPointerUpAttributeModifier {
    associatedtype OnPointerUpAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnPointerUpAttributeModifier where Self: Attributes & Mutable {

    public func onPointerUp(
        _ value: OnPointerUpAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.pointerUp,
            value: value?.attributeValue
        )
    }
}
