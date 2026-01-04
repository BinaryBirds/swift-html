import SGML

public enum KindAttributeValue: String, AttributeValueRepresentable {
    /// Transcription or translation of dialogue for when sound is available but not understood.
    case subtitles
    /// Transcription or translation of dialogue, sound effects, and other audio information.
    case captions
    /// Textual descriptions of video intended for audio synthesis.
    case descriptions
    /// Tracks intended for use from script.
    case chapters
    /// Metadata tracks.
    case metadata
}

public protocol KindAttributeModifier {
    associatedtype KindAttributeValueType: AttributeValueRepresentable =
        KindAttributeValue
}

extension KindAttributeModifier where Self: Attributes & Mutable {

    public func kind(
        _ value: KindAttributeValueType?
    ) -> Self {
        setAttribute(
            key: StandardAttributeKey.kind,
            value: value?.attributeValue
        )
    }
}
