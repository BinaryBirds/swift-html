import SGML

/// The `<track>` tag specifies text tracks for `<audio>` or `<video>` elements.
///
/// This element is used to specify subtitles, caption files or other files containing text, that should be visible when the media is playing.
///
/// Tracks are formatted in WebVTT format (.vtt files).
public struct Track:
    HTMLShortTag,
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

    /// The content model category for the tag.
    public var categories: ContentModel {
        []
    }

    public init(
        src: String
    ) {
        self.attributes = .init()
        self = setAttribute(name: "src", value: src)
    }

    public enum KindAttributeValue: String, AttributeValueRepresentable {
        /// The track defines translation of dialogue and sound effects (suitable for deaf users).
        case captions
        /// The track defines chapter titles (suitable for navigating the media resource).
        case chapters
        /// The track defines a textual description of the video content (suitable for blind users).
        case descriptions
        /// The track defines content used by scripts. Not visible for the user.
        case metadata
        /// The track defines subtitles, used to display subtitles in a video.
        case subtitles
    }

    public typealias KindAttributeValueType = KindAttributeValue

}

