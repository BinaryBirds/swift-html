import SGML

public protocol OnPointerOutAttributeModifier {
    associatedtype OnPointerOutAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnPointerOutAttributeModifier where Self: Attributes & Mutable {

    public func onPointerOut(
        _ value: OnPointerOutAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.pointerOut,
            value: value?.attributeValue
        )
    }
}
