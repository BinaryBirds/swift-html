import SGML

public protocol OnMouseOverAttributeModifier {
    associatedtype OnMouseOverAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnMouseOverAttributeModifier where Self: Attributes & Mutable {

    public func onMouseOver(
        _ value: OnMouseOverAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.mouseOver,
            value: value?.attributeValue
        )
    }
}
