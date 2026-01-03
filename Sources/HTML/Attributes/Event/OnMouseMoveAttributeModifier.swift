import SGML

public protocol OnMouseMoveAttributeModifier {
    associatedtype OnMouseMoveAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnMouseMoveAttributeModifier where Self: Attributes & Mutable {

    public func onMouseMove(
        _ value: OnMouseMoveAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.mouseMove,
            value: value?.attributeValue
        )
    }
}
