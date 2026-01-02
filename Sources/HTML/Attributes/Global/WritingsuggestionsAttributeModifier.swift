import SGML

public protocol WritingsuggestionsAttributeModifier {
    associatedtype WritingsuggestionsAttributeValueType: AttributeValueRepresentable = String
}

extension WritingsuggestionsAttributeModifier where Self: Attributes & Mutable {

    public func writingsuggestions(
        _ value: WritingsuggestionsAttributeValueType?
    ) -> Self {
        setAttribute(key: .writingsuggestions, value: value?.attributeValue)
    }
}
