import SGML

public enum AriaAutoCompleteAttributeValue: String, AttributeValueRepresentable
{
    /// No automatic suggestion is displayed.
    case none
    /// A single suggested completion may be inserted after the caret.
    case inline
    /// A list of possible values may be displayed.
    case list
    /// Both inline and list suggestions may be provided.
    case both
}

public protocol AriaAutoCompleteAttributeModifier {
    associatedtype
        AriaAutoCompleteAttributeValueType: AttributeValueRepresentable =
        AriaAutoCompleteAttributeValue
}

extension AriaAutoCompleteAttributeModifier where Self: Attributes & Mutable {

    public func ariaAutoComplete(
        _ value: AriaAutoCompleteAttributeValueType?
    ) -> Self {
        setAttribute(
            key: AriaAttributeKey.autoComplete,
            value: value?.attributeValue
        )
    }
}
