//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

import Foundation

public extension Node {

    static func embed() -> Node {
        Node(type: .empty, name: "embed")
    }
}

/// The <embed> tag defines a container for an external resource, such as a web page, a picture, a media player, or a plug-in application.
public struct Embed: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }

    public init() {
        self.node = .embed()
    }
    
    /// Specifies the height of the embedded content
    public func height(_ value: Double) -> Self {
        .init(node.addOrReplace(Attribute(key: "height", value: String(value))))
    }
    
    /// Specifies the address of the external file to embed
    public func src(_ value: String) -> Self {
        .init(node.addOrReplace(Attribute(key: "src", value: value)))
    }
    
    /// Specifies the media type of the embedded content
    public func type(_ value: String) -> Self {
        .init(node.addOrReplace(Attribute(key: "type", value: value)))
    }
    
    /// Specifies the width of the embedded content
    public func width(_ value: Double) -> Self {
        .init(node.addOrReplace(Attribute(key: "width", value: String(value))))
    }
}
