import SGML

public protocol OnDragLeaveAttributeModifier {
    associatedtype OnDragLeaveAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnDragLeaveAttributeModifier where Self: Attributes & Mutable {

    public func onDragLeave(
        _ value: OnDragLeaveAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.dragLeave,
            value: value?.attributeValue
        )
    }
}
