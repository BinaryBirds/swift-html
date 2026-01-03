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
    HttpEquivAttributeModifier,
    CharsetAttributeModifier
{
    public var attributes: AttributeStore
    public var categories: ContentModel {
        var contentModel: ContentModel = [.metadata]
        if hasAttribute(name: "itemprop") {
            contentModel.insert(.flow)
        }
        if hasAttribute(name: "itemprop") {
            contentModel.insert(.phrasing)
        }
        return contentModel
    }

    public init() {
        self.attributes = .init()
    }

}
