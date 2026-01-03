import SGML

public protocol OnMouseDownAttributeModifier {
    associatedtype OnMouseDownAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnMouseDownAttributeModifier where Self: Attributes & Mutable {

    public func onMouseDown(
        _ value: OnMouseDownAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.mouseDown,
            value: value?.attributeValue
        )
    }
}
