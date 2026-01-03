import SGML

public enum AutoCapitalizeAttributeValue: String, AttributeValueRepresentable {
    /// Keyword: off. State: none.
    case off = "off"

    /// Keyword: none. State: none.
    case none = "none"

    /// Keyword: on. State: sentences.
    case on = "on"

    /// Keyword: sentences. State: sentences.
    case sentences = "sentences"

    /// Keyword: words. State: words.
    case words = "words"

    /// Keyword: characters. State: characters.
    case characters = "characters"
}

public protocol AutoCapitalizeAttributeModifier {
    associatedtype
        AutoCapitalizeAttributeValueType: AttributeValueRepresentable =
        AutoCapitalizeAttributeValue
}

extension AutoCapitalizeAttributeModifier where Self: Attributes & Mutable {

    public func autoCapitalize(
        _ value: AutoCapitalizeAttributeValueType?
    ) -> Self {
        setAttribute(
            key: GlobalAttributeKey.autocapitalize,
            value: value?.attributeValue
        )
    }
}
