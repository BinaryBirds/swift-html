import SGML

public protocol OnPointerLeaveAttributeModifier {
    associatedtype OnPointerLeaveAttributeValueType: AttributeValueRepresentable = String
}

extension OnPointerLeaveAttributeModifier where Self: Attributes & Mutable {

    public func onPointerLeave(
        _ value: OnPointerLeaveAttributeValueType?
    ) -> Self {
        setAttribute(key: .onpointerleave, value: value?.attributeValue)
    }
}
