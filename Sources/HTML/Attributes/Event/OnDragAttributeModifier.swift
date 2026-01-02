import SGML

public protocol OnDragAttributeModifier {
    associatedtype OnDragAttributeValueType: AttributeValueRepresentable = String
}

extension OnDragAttributeModifier where Self: Attributes & Mutable {

    public func onDrag(
        _ value: OnDragAttributeValueType?
    ) -> Self {
        setAttribute(key: .ondrag, value: value?.attributeValue)
    }
}
