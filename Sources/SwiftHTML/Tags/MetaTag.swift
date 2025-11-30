/// The `<meta>` tag defines metadata about an HTML document.
///
/// Metadata is data (information) about data.
///
/// `<meta>` tags always go inside the `<head>` element, and are typically used to specify character set, page description, keywords, author of the document, and viewport settings.
///
/// Metadata will not be displayed on the page, but is machine parsable.
/// Metadata is used by browsers (how to display content or reload page), search engines (keywords), and other web services.
///
/// There is a method to let web designers take control over the viewport (the user's visible area of a web page), through the `<meta>` tag (See "Setting The Viewport" example below).
public struct Meta:
    HTMLShortTag,
    /// attribute modifiers
    GlobalAttributeModifier,
    MediaAttributeModifier
//✅ name — Metadata name
//http-equiv — Pragma directive
//content — Value of the element
//charset — Character encoding declaration
//✅ media — Applicable media
{

    public struct Name: Attribute {

        public static let name = "name"

        public enum Value: String, Sendable {
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

        public var value: String?

        public init(
            _ value: Value
        ) {
            self.value = value.rawValue
        }
    }

    public var attributes: AttributeStore

    /// The content model category for the tag.
    public var categories: ContentModel {
        [
            .metadata
            //            If the itemprop attribute is present: flow content.
            //            If the itemprop attribute is present: phrasing content.
        ]
    }

    public init() {
        self.attributes = .init()
    }

    /// Specifies the character encoding for the HTML document.
    public func charset(
        _ value: String
    ) -> Self {
        modify {
            $0.attributes.set(
                name: "charset",
                value: value
            )
        }
    }

    /// Set a custom name for the given meta tag.
    public func name(
        _ value: Name.Value
    ) -> Self {
        setAttribute(Name(value))
    }
}

extension Meta {

    //
    //    public enum HttpEquiv: String {
    //        /// Specifies a content policy for the document.
    //        case contentSecurityPolicy = "content-security-policy"
    //        /// Specifies the character encoding for the document.
    //        case contentType = "content-type"
    //        /// Specified the preferred style sheet to use.
    //        case defaultStyle = "default-style"
    //        /// Defines a time interval for the document to refresh itself.
    //        case refresh
    //    }
    //

    //
    //    /// Specifies the value associated with the http-equiv or name attribute
    //    public func content(_ value: String) -> Self {
    //        attribute("content", value)
    //    }
    //
    //    /// Provides an HTTP header for the information/value of the content attribute
    //    public func httpEquiv(_ value: HttpEquiv) -> Self {
    //        attribute("http-equiv", value.rawValue)
    //    }
    //
}
