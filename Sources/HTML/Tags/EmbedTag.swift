import SGML

/// The `<embed>` tag defines a container for an external resource, such as a web page, a picture, a media player, or a plug-in application.
public struct Embed:
    HTMLShortTag,
    /// attribute modifiers
    GlobalAttributeModifier,
    WidthAttributeModifier,
    HeightAttributeModifier,
    SrcAttributeModifier,
    TypeAttributeModifier
{

    /// The attribute storage for the tag.
    public var attributes: AttributeStore

    /// The content model category for the tag.
    public var categories: ContentModel {
        [
            .flow,
            .phrasing,
            .embedded,
            .interactive,
            .palpable,
        ]
    }

    public init() {
        self.attributes = .init()
    }

}
