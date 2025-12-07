public struct TranslateAttribute: HTMLAttribute {

    public enum Value: String, Sendable {
        /// Specifies that the content of the element should be translated.
        case yes
        /// Specifies that the content of the element must not be translated.
        case no
    }

    public var value: String?

    public init(
        _ value: Value?
    ) {
        self.value = value?.rawValue
    }
}

public protocol TranslateAttributeModifier {

}

extension TranslateAttributeModifier where Self: Attributes & Mutable {

    public func translate(
        _ value: TranslateAttribute.Value?
    ) -> Self {
        setAttribute(TranslateAttribute(value))
    }
}
