import SGML

public protocol OnPointerOverAttributeModifier {
    associatedtype
        OnPointerOverAttributeValueType: AttributeValueRepresentable = String
}

extension OnPointerOverAttributeModifier where Self: Attributes & Mutable {

    public func onPointerOver(
        _ value: OnPointerOverAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.pointerOver,
            value: value?.attributeValue
        )
    }
}
