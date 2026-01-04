import SGML

public enum AriaInvalidAttributeValue: String, AttributeValueRepresentable {
    /// A grammatical error was detected.
    case grammar
    /// There are no detected errors in the value.
    case `false` = "false"
    /// A spelling error was detected.
    case spelling
    /// The value entered by the user has failed validation.
    case `true` = "true"
}

public protocol AriaInvalidAttributeModifier {
    associatedtype AriaInvalidAttributeValueType: AttributeValueRepresentable =
        AriaInvalidAttributeValue
}

extension AriaInvalidAttributeModifier where Self: Attributes & Mutable {

    public func ariaInvalid(
        _ value: AriaInvalidAttributeValueType?
    ) -> Self {
        setAttribute(
            key: AriaAttributeKey.invalid,
            value: value?.attributeValue
        )
    }
}
