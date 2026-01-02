import SGML

public protocol OnDragOverAttributeModifier {
    associatedtype OnDragOverAttributeValueType: AttributeValueRepresentable = String
}

extension OnDragOverAttributeModifier where Self: Attributes & Mutable {

    public func onDragOver(
        _ value: OnDragOverAttributeValueType?
    ) -> Self {
        setAttribute(key: .ondragover, value: value?.attributeValue)
    }
}
