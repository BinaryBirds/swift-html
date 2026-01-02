import SGML

public protocol OnKeyPressAttributeModifier {
    associatedtype OnKeyPressAttributeValueType: AttributeValueRepresentable = String
}

extension OnKeyPressAttributeModifier where Self: Attributes & Mutable {

    public func onKeyPress(
        _ value: OnKeyPressAttributeValueType?
    ) -> Self {
        setAttribute(key: EventAttributeKey.onkeypress, value: value?.attributeValue)
    }
}
