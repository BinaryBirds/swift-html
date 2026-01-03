import SGML

public protocol OnMouseLeaveAttributeModifier {
    associatedtype OnMouseLeaveAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnMouseLeaveAttributeModifier where Self: Attributes & Mutable {

    public func onMouseLeave(
        _ value: OnMouseLeaveAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.mouseLeave,
            value: value?.attributeValue
        )
    }
}
