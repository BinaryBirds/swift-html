import SGML

public protocol EnterKeyHintAttributeModifier {
    associatedtype EnterKeyHintAttributeValueType: AttributeValueRepresentable = String
}

extension EnterKeyHintAttributeModifier where Self: Attributes & Mutable {

    public func enterKeyHint(
        _ value: EnterKeyHintAttributeValueType?
    ) -> Self {
        setAttribute(key: GlobalAttributeKey.enterkeyhint, value: value?.attributeValue)
    }
}
