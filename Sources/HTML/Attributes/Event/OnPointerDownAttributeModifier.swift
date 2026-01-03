import SGML

public protocol OnPointerDownAttributeModifier {
    associatedtype
        OnPointerDownAttributeValueType: AttributeValueRepresentable = String
}

extension OnPointerDownAttributeModifier where Self: Attributes & Mutable {

    public func onPointerDown(
        _ value: OnPointerDownAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.pointerDown,
            value: value?.attributeValue
        )
    }
}
