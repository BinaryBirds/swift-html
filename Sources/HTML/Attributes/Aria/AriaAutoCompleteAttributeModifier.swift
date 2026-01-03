import SGML

public protocol AriaAutoCompleteAttributeModifier {
    associatedtype AriaAutoCompleteAttributeValueType: AttributeValueRepresentable = String
}

extension AriaAutoCompleteAttributeModifier where Self: Attributes & Mutable {

    public func ariaAutoComplete(
        _ value: AriaAutoCompleteAttributeValueType?
    ) -> Self {
        setAttribute(key: AriaAttributeKey.autoComplete, value: value?.attributeValue)
    }
}
