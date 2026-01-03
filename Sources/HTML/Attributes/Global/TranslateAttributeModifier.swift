import SGML

public enum TranslateAttributeValue: String, Sendable,
    AttributeValueRepresentable
{
    /// Specifies that the content of the element should be translated.
    case yes
    /// Specifies that the content of the element must not be translated.
    case no
}

public protocol TranslateAttributeModifier {
    associatedtype TranslateAttributeValueType: AttributeValueRepresentable =
        TranslateAttributeValue
}

extension TranslateAttributeModifier where Self: Attributes & Mutable {

    public func translate(
        _ value: TranslateAttributeValueType?
    ) -> Self {
        setAttribute(
            key: GlobalAttributeKey.translate,
            value: value?.attributeValue
        )
    }
}
