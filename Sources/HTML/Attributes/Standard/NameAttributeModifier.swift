import SGML

public enum NameAttributeValue: String, AttributeValueRepresentable {
    /// Specifies the name of the Web application that the page represents
    case applicationName = "application-name"
    /// Specifies the name of the author of the document.
    case author
    /// Specifies a description of the page. Search engines can pick up this description to show with the results of searches.
    case description
    /// Specifies one of the software packages used to generate the document (not used on hand-authored pages).
    case generator
    /// Specifies a comma-separated list of keywords - relevant to the page (Informs search engines what the page is about).
    case keywords
    /// Controls the viewport (the user's visible area of a web page).
    case viewport
    /// robots
    case robots

    /// https://css-tricks.com/meta-theme-color-and-trickery/
    case colorScheme = "color-scheme"
    case themeColor = "theme-color"
    case appleMobileWebAppTitle = "apple-mobile-web-app-title"
    case appleMobileWebAppCapable = "apple-mobile-web-app-capable"
    case appleMobileWebAppStatusBarStyle =
        "apple-mobile-web-app-status-bar-style"
}

public protocol NameAttributeModifier {
    associatedtype NameAttributeValueType: AttributeValueRepresentable =
        NameAttributeValue
}

extension NameAttributeModifier where Self: Attributes & Mutable {

    /// Sets a name attribute.
    public func name(
        _ value: NameAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.name,
            value: value?.attributeValue
        )
    }
}
