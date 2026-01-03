import SGML

/// The `<embed>` tag defines a container for an external resource, such as a web page, a picture, a media player, or a plug-in application.
public struct Embed:
    ShortTag,
    /// attribute modifiers
    GlobalAttributesModifier,
    WidthAttributeModifier,
    HeightAttributeModifier,
    SrcAttributeModifier,
    TypeAttributeModifier
{

    /// The attribute storage for the tag.
    public var attributes: AttributeStore

    public init() {
        self.attributes = .init()
    }

}
