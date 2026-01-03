import SGML

public protocol OnKeyDownAttributeModifier {
    associatedtype OnKeyDownAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnKeyDownAttributeModifier where Self: Attributes & Mutable {

    public func onKeyDown(
        _ value: OnKeyDownAttributeValueType?
    ) -> Self {
        setAttribute(
            key: EventAttributeKey.keyDown,
            value: value?.attributeValue
        )
    }
}
