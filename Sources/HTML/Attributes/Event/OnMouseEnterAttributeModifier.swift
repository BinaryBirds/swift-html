import SGML

public protocol OnMouseEnterAttributeModifier {
    associatedtype OnMouseEnterAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnMouseEnterAttributeModifier where Self: Attributes & Mutable {

    public func onMouseEnter(
        _ value: OnMouseEnterAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.mouseEnter,
            value: value?.attributeValue
        )
    }
}
