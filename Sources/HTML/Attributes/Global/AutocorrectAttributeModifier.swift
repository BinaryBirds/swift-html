import SGML

public protocol AutoCorrectAttributeModifier {
    associatedtype AutoCorrectAttributeValueType: AttributeValueRepresentable =
        String
}

extension AutoCorrectAttributeModifier where Self: Attributes & Mutable {

    public func autoCorrect(
        _ value: AutoCorrectAttributeValueType?
    ) -> Self {
        setAttribute(
            key: GlobalAttributeKey.autocorrect,
            value: value?.attributeValue
        )
    }
}
