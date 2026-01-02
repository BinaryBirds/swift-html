import SGML

public protocol OnDragLeaveAttributeModifier {
    associatedtype OnDragLeaveAttributeValueType: AttributeValueRepresentable = String
}

extension OnDragLeaveAttributeModifier where Self: Attributes & Mutable {

    public func onDragLeave(
        _ value: OnDragLeaveAttributeValueType?
    ) -> Self {
        setAttribute(key: .ondragleave, value: value?.attributeValue)
    }
}
