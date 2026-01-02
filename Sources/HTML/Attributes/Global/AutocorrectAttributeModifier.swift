import SGML

public protocol AutocorrectAttributeModifier {
    associatedtype AutocorrectAttributeValueType: AttributeValueRepresentable = String
}

extension AutocorrectAttributeModifier where Self: Attributes & Mutable {

    public func autocorrect(
        _ value: AutocorrectAttributeValueType?
    ) -> Self {
        setAttribute(key: .autocorrect, value: value?.attributeValue)
    }
}
