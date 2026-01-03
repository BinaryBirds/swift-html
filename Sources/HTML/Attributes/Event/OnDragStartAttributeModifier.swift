import SGML

public protocol OnDragStartAttributeModifier {
    associatedtype OnDragStartAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnDragStartAttributeModifier where Self: Attributes & Mutable {

    public func onDragStart(
        _ value: OnDragStartAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.dragStart,
            value: value?.attributeValue
        )
    }
}
