import SGML

public protocol OnFocusAttributeModifier {
    associatedtype OnFocusAttributeValueType: AttributeValueRepresentable =
        String
}

extension OnFocusAttributeModifier where Self: Attributes & Mutable {

    public func onFocus(
        _ value: OnFocusAttributeValueType?
    ) -> Self {
        setAttribute(key: EventAttributeKey.focus, value: value?.attributeValue)
    }
}
