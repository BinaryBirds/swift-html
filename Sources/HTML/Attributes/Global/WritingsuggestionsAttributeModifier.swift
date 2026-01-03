import SGML

public protocol WritingSuggestionsAttributeModifier {
    associatedtype
        WritingSuggestionsAttributeValueType: AttributeValueRepresentable =
        String
}

extension WritingSuggestionsAttributeModifier where Self: Attributes & Mutable {

    public func writingSuggestions(
        _ value: WritingSuggestionsAttributeValueType?
    ) -> Self {
        setAttribute(
            key: GlobalAttributeKey.writingsuggestions,
            value: value?.attributeValue
        )
    }
}
