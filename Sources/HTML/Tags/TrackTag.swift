import SGML

/// The `<track>` tag specifies text tracks for `<audio>` or `<video>` elements.
///
/// This element is used to specify subtitles, caption files or other files containing text, that should be visible when the media is playing.
///
/// Tracks are formatted in WebVTT format (.vtt files).
public struct Track:
    ShortTag,
    /// attribute modifiers
    GlobalAttributesModifier,
    SrcAttributeModifier,
    LabelAttributeModifier,
    KindAttributeModifier,
    SrcLangAttributeModifier,
    DefaultAttributeModifier
{

    /// The attribute storage for the tag.
    public var attributes: AttributeStore

    public init(
        src: String
    ) {
        self.attributes = .init()
        self = setAttribute(name: "src", value: src)
    }
}
