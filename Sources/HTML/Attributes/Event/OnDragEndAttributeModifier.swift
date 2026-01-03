import SGML

public protocol OnDragEndAttributeModifier {
    associatedtype OnDragEndAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnDragEndAttributeModifier where Self: Attributes & Mutable {

    public func onDragEnd(
        _ value: OnDragEndAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.dragEnd,
            value: value?.attributeValue
        )
    }
}
