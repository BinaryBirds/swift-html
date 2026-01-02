import SGML

public protocol OnMouseUpAttributeModifier {
    associatedtype OnMouseUpAttributeValueType: AttributeValueRepresentable = String
}

extension OnMouseUpAttributeModifier where Self: Attributes & Mutable {

    public func onMouseUp(
        _ value: OnMouseUpAttributeValueType?
    ) -> Self {
        setAttribute(key: .onmouseup, value: value?.attributeValue)
    }
}
