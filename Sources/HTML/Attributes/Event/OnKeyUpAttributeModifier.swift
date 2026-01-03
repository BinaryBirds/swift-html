import SGML

public protocol OnKeyUpAttributeModifier {
    associatedtype OnKeyUpAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnKeyUpAttributeModifier where Self: Attributes & Mutable {

    public func onKeyUp(
        _ value: OnKeyUpAttributeValueType?
    ) -> Self {
        setAttribute(key: EventAttributeKey.keyUp, value: value?.attributeValue)
    }
}
