//
//  Meta.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

/// The `<meta>` tag defines metadata about an HTML document. Metadata is data (information) about data.
///
/// `<meta>` tags always go inside the `<head>` element, and are typically used to specify character set, page description, keywords, author of the document, and viewport settings.
///
/// Metadata will not be displayed on the page, but is machine parsable.
///
/// Metadata is used by browsers (how to display content or reload page), search engines (keywords), and other web services.
///
/// There is a method to let web designers take control over the viewport (the user's visible area of a web page), through the `<meta>` tag (See "Setting The Viewport" example below).
open class Meta: EmptyTag {

}

extension Meta {

    public enum Name: String {
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

    public enum HttpEquiv: String {
        /// Specifies a content policy for the document.
        case contentSecurityPolicy = "content-security-policy"
        /// Specifies the character encoding for the document.
        case contentType = "content-type"
        /// Specified the preferred style sheet to use.
        case defaultStyle = "default-style"
        /// Defines a time interval for the document to refresh itself.
        case refresh
    }

    /// Specifies the character encoding for the HTML document
    public func charset(_ value: String) -> Self {
        attribute("charset", value)
    }

    /// Specifies the value associated with the http-equiv or name attribute
    public func content(_ value: String) -> Self {
        attribute("content", value)
    }

    /// Provides an HTTP header for the information/value of the content attribute
    public func httpEquiv(_ value: HttpEquiv) -> Self {
        attribute("http-equiv", value.rawValue)
    }

    /// set a custom name for the given meta tag
    public func name(_ value: String) -> Self {
        attribute("name", value)
    }

    /// Specifies a name for the metadata
    public func name(_ value: Name) -> Self {
        name(value.rawValue)
    }

    /// Specifies what media/device the linked document is optimized for
    public func media(_ value: String) -> Self {
        attribute("media", value)
    }

    /// Specifies what media/device the linked document is optimized for
    ///
    /// If multiple queries were provided they're going to be concatenated with an `and` operand
    public func media(_ queries: MediaQuery...) -> Self {
        media(queries)
    }

    /// Specifies what media/device the linked document is optimized for
    ///
    /// If multiple queries were provided they're going to be concatenated with an `and` operand
    public func media(_ queries: [MediaQuery]) -> Self {
        media(queries.map(\.value).joined(separator: " and "))
    }
}
