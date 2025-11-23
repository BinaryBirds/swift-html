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
public struct Meta: ShortTag, MetadataContent, MediaAttributeModifier,
    MetaNameAttributeModifier
{

    public var attributes: AttributeStore

    public init() {
        self.attributes = .init()
    }

    /// Specifies the character encoding for the HTML document.
    public func charset(
        _ value: String
    ) -> Self {
        modify {
            $0.attributes.setValueBy(
                name: "charset",
                value: value
            )
        }
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
