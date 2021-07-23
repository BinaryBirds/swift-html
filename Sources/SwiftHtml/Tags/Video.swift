//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

import Foundation

public extension Node {

    static func video(_ children: [Node] = []) -> Node {
        Node(type: .standard, name: "video", children: children)
    }
}

public struct Video: Tag {
    
    public enum Preload: String {
        /// The author thinks that the browser should load the entire video when the page loads
        case auto
        /// The author thinks that the browser should load only metadata when the page loads
        case metadata
        /// The author thinks that the browser should NOT load the video when the page loads
        case none
    }
    
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(_ children: [Node] = []) {
        self.node = .video(children)
    }

    public init(@TagBuilder _ builder: () -> [Tag]) {
        self.init(builder().map(\.node))
    }
    
    /// Specifies that the video will start playing as soon as it is ready
    public func autoplay() -> Self {
        .init(node.addOrReplace(Attribute(key: "autoplay")))
    }
    
    /// Specifies that video controls should be displayed (such as a play/pause button etc).
    public func controls() -> Self {
        .init(node.addOrReplace(Attribute(key: "controls")))
    }
    
    /// Sets the height of the video player
    public func height(_ value: Double) -> Self {
        .init(node.addOrReplace(Attribute(key: "height", value: String(value))))
    }
    
    /// Specifies that the video will start over again, every time it is finished
    public func loop() -> Self {
        .init(node.addOrReplace(Attribute(key: "loop")))
    }
    
    /// Specifies that the audio output of the video should be muted
    public func muted() -> Self {
        .init(node.addOrReplace(Attribute(key: "muted")))
    }
    
    /// Specifies an image to be shown while the video is downloading, or until the user hits the play button
    func poster(_ value: String) -> Self {
        .init(node.addOrReplace(Attribute(key: "poster", value: value)))
    }
    
    /// Specifies if and how the author thinks the video should be loaded when the page loads
    func preload(_ value: Preload) -> Self {
        .init(node.addOrReplace(Attribute(key: "preload", value: value.rawValue)))
    }
    
    /// Specifies the URL of the video file
    func src(_ value: String) -> Self {
        .init(node.addOrReplace(Attribute(key: "src", value: value)))
    }
    
    /// Sets the width of the video player
    public func width(_ value: Double) -> Self {
        .init(node.addOrReplace(Attribute(key: "width", value: String(value))))
    }
}



