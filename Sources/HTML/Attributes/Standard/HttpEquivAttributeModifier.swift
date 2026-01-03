import SGML

public enum HttpEquivAttributeValue: String, AttributeValueRepresentable {
    /// Specifies a content policy for the document.
    case contentSecurityPolicy = "content-security-policy"
    /// Specifies the character encoding for the document.
    case contentType = "content-type"
    /// Specified the preferred style sheet to use.
    case defaultStyle = "default-style"
    /// Defines a time interval for the document to refresh itself.
    case refresh
}

public protocol HttpEquivAttributeModifier {
    associatedtype HttpEquivAttributeValueType: AttributeValueRepresentable =
        HttpEquivAttributeValue
}

extension HttpEquivAttributeModifier where Self: Attributes & Mutable {

    /// Provides an HTTP header for the information/value of the content attribute.
    public func httpEquiv(
        _ value: HttpEquivAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.httpEquiv,
            value: value?.attributeValue
        )
    }
}
