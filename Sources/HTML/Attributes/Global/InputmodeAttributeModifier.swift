import SGML

public enum InputModeAttributeValue: String, AttributeValueRepresentable {
    /// The user agent should not display a virtual keyboard.
    case none
    /// The user agent should display a virtual keyboard capable of text input.
    case text
    /// The user agent should display a virtual keyboard capable of telephone input.
    case tel
    /// The user agent should display a virtual keyboard optimized for URL input.
    case url
    /// The user agent should display a virtual keyboard optimized for email input.
    case email
    /// The user agent should display a virtual keyboard capable of numeric input.
    case numeric
    /// The user agent should display a virtual keyboard capable of fractional numeric input.
    case decimal
    /// The user agent should display a virtual keyboard optimized for search.
    case search
}

public protocol InputModeAttributeModifier {
    associatedtype InputModeAttributeValueType: AttributeValueRepresentable =
        InputModeAttributeValue
}

extension InputModeAttributeModifier where Self: Attributes & Mutable {

    public func inputMode(
        _ value: InputModeAttributeValueType?
    ) -> Self {
        setAttribute(
            key: GlobalAttributeKey.inputmode,
            value: value?.attributeValue
        )
    }
}
