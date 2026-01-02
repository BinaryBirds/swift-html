import SGML

public protocol InputModeAttributeModifier {
    associatedtype InputModeAttributeValueType: AttributeValueRepresentable = String
}

extension InputModeAttributeModifier where Self: Attributes & Mutable {

    public func inputMode(
        _ value: InputModeAttributeValueType?
    ) -> Self {
        setAttribute(key: GlobalAttributeKey.inputmode, value: value?.attributeValue)
    }
}
