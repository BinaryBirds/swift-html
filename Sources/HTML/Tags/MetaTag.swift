import SGML

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
    GlobalAttributesModifier,
    ContentAttributeModifier,
    NameAttributeModifier,
    MediaAttributeModifier,
    HttpEquivAttributeModifier
//✅ name — Metadata name
//http-equiv — Pragma directive
//content — Value of the element
//charset — Character encoding declaration
//✅ media — Applicable media
{
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

}
