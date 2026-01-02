import SGML

public protocol OnMouseOutAttributeModifier {
    associatedtype OnMouseOutAttributeValueType: AttributeValueRepresentable = String
}

extension OnMouseOutAttributeModifier where Self: Attributes & Mutable {

    public func onMouseOut(
        _ value: OnMouseOutAttributeValueType?
    ) -> Self {
        setAttribute(key: .onmouseout, value: value?.attributeValue)
    }
}
