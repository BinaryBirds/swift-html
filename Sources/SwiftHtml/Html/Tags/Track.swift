//
//  Track.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

/// The `<track>` tag specifies text tracks for `<audio>` or `<video>` elements.
///
/// This element is used to specify subtitles, caption files or other files containing text, that should be visible when the media is playing.
///
/// Tracks are formatted in WebVTT format (.vtt files).
public final class Track: Tag {
    
    public init(src: String) {
        let node = Node(type: .empty, name: "track", attributes: [Attribute(key: "src", value: src)])
        super.init(node)
    }
}

public extension Track {
    
    enum Kind: String {
        /// The track defines translation of dialogue and sound effects (suitable for deaf users)
        case captions
        /// The track defines chapter titles (suitable for navigating the media resource)
        case chapters
        /// The track defines a textual description of the video content (suitable for blind users)
        case descriptions
        /// The track defines content used by scripts. Not visible for the user
        case metadata
        /// The track defines subtitles, used to display subtitles in a video
        case subtitles
    }
    
    /// Specifies that the track is to be enabled if the user's preferences do not indicate that another track would be more appropriate
    func `default`() -> Self {
        node.addOrReplace(Attribute(key: "default"))
        return self
    }
    
    /// Specifies the kind of text track
    func kind(_ value: Kind) -> Self {
        node.addOrReplace(Attribute(key: "kind", value: value.rawValue))
        return self
    }
    
    /// Specifies the title of the text track
    func label(_ value: String) -> Self {
        node.addOrReplace(Attribute(key: "label", value: value))
        return self
    }
    
    /// Required. Specifies the URL of the track file
    func src(_ value: String) -> Self {
        node.addOrReplace(Attribute(key: "src", value: value))
        return self
    }
    
    /// Specifies the language of the track text data (required if kind="subtitles")
    func srclang(_ value: String) -> Self {
        node.addOrReplace(Attribute(key: "srclang", value: value))
        return self
    }
}