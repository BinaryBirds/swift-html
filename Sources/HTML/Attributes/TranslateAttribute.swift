import SGML

public enum TranslateValue: String, Sendable, AttributeValueRepresentable {
    /// Specifies that the content of the element should be translated.
    case yes
    /// Specifies that the content of the element must not be translated.
    case no
}

public protocol TranslateAttributeModifier {
    associatedtype TranslateAttributeValue: AttributeValueRepresentable = TranslateValue
}

extension TranslateAttributeModifier where Self: Attributes & Mutable {

    public func translate(
        _ value: TranslateAttributeValue?
    ) -> Self {
        setAttribute(name: "translate", value: value?.attributeValue)
    }
}
