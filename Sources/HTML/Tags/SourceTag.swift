/// The `<source>` tag is used to specify multiple media resources for media elements, such as `<video>`, `<audio>`, and `<picture>`.
///
/// The `<source>` tag allows you to specify alternative video/audio/image files which the browser may choose from, based on browser support or viewport width.
/// The browser will choose the first `<source>` it supports.
public struct Source:
    HTMLShortTag,
    /// attribute modifiers
    GlobalAttributeModifier,
    TypeAttributeModifier,
    MediaAttributeModifier,
    SrcAttributeModifier,
    SrcsetAttributeModifier,
    WidthAttributeModifier,
    HeightAttributeModifier,
    SizesAttributeModifier
{
    /// The attribute storage for the tag.
    public var attributes: AttributeStore

    /// The content model category for the tag.
    public var categories: ContentModel {
        []
    }

    public init() {
        self.attributes = .init()
    }
}
