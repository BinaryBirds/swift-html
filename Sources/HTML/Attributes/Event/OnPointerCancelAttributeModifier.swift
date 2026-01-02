import SGML

public protocol OnPointerCancelAttributeModifier {
    associatedtype OnPointerCancelAttributeValueType: AttributeValueRepresentable = String
}

extension OnPointerCancelAttributeModifier where Self: Attributes & Mutable {

    public func onPointerCancel(
        _ value: OnPointerCancelAttributeValueType?
    ) -> Self {
        setAttribute(key: .onpointercancel, value: value?.attributeValue)
    }
}
