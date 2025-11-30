/// The `<track>` tag specifies text tracks for `<audio>` or `<video>` elements.
///
/// This element is used to specify subtitles, caption files or other files containing text, that should be visible when the media is playing.
///
/// Tracks are formatted in WebVTT format (.vtt files).
public struct Track:
    HTMLShortTag,
    /// attribute modifiers
    GlobalAttributeModifier,
    SrcAttributeModifier

//kind — The type of text track
//✅src — Address of the resource
//srclang — Language of the text track
//label — User-visible label
//default — Enable the track if no other text track is more suitable
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
        self = setAttribute(SrcAttribute(src))
    }

}

//extension Track {
//
//    public enum Kind: String {
//        /// The track defines translation of dialogue and sound effects (suitable for deaf users)
//        case captions
//        /// The track defines chapter titles (suitable for navigating the media resource)
//        case chapters
//        /// The track defines a textual description of the video content (suitable for blind users)
//        case descriptions
//        /// The track defines content used by scripts. Not visible for the user
//        case metadata
//        /// The track defines subtitles, used to display subtitles in a video
//        case subtitles
//    }
//
//    /// Specifies that the track is to be enabled if the user's preferences do not indicate that another track would be more appropriate
//    public func `default`(_ condition: Bool = true) -> Self {
//        flagAttribute("default", nil, condition)
//    }
//
//    /// Specifies the kind of text track
//    public func kind(_ value: Kind) -> Self {
//        attribute("kind", value.rawValue)
//    }
//
//    /// Specifies the title of the text track
//    public func label(_ value: String) -> Self {
//        attribute("label", value)
//    }
//
//    /// Specifies the language of the track text data (required if kind="subtitles")
//    public func srclang(_ value: String) -> Self {
//        attribute("srclang", value)
//    }
//}
