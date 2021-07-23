//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

import Foundation

public extension Node {

    static func track() -> Node {
        Node(type: .empty, name: "track")
    }
}

/// The <track> tag specifies text tracks for <audio> or <video> elements.
///
/// This element is used to specify subtitles, caption files or other files containing text, that should be visible when the media is playing.
///
/// Tracks are formatted in WebVTT format (.vtt files).
public struct Track: Tag {
    
    public enum Kind: String {
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
    
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(src: String) {
        self.node = .track()
        self.node.attributes.append(.init(key: "src", value: src))
    }
    
    /// Specifies that the track is to be enabled if the user's preferences do not indicate that another track would be more appropriate
    public func `default`() -> Self {
        .init(node.addOrReplace(Attribute(key: "default")))
    }
    
    /// Specifies the kind of text track
    public func kind(_ value: Kind) -> Self {
        .init(node.addOrReplace(Attribute(key: "kind", value: value.rawValue)))
    }
    
    /// Specifies the title of the text track
    public func label(_ value: String) -> Self {
        .init(node.addOrReplace(Attribute(key: "label", value: value)))
    }
    
    /// Required. Specifies the URL of the track file
    public func src(_ value: String) -> Self {
        .init(node.addOrReplace(Attribute(key: "src", value: value)))
    }
    
    /// Specifies the language of the track text data (required if kind="subtitles")
    public func srclang(_ value: String) -> Self {
        .init(node.addOrReplace(Attribute(key: "srclang", value: value)))
    }
}
