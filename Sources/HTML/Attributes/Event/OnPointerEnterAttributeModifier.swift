import SGML

public protocol OnPointerEnterAttributeModifier {
    associatedtype OnPointerEnterAttributeValueType: AttributeValueRepresentable = String
}

extension OnPointerEnterAttributeModifier where Self: Attributes & Mutable {

    public func onPointerEnter(
        _ value: OnPointerEnterAttributeValueType?
    ) -> Self {
        setAttribute(key: EventAttributeKey.onpointerenter, value: value?.attributeValue)
    }
}
