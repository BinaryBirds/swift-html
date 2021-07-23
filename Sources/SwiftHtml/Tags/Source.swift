//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

import Foundation


public extension Node {

    static func source() -> Node {
        Node(type: .empty, name: "source")
    }
}

/// The <source> tag is used to specify multiple media resources for media elements, such as <video>, <audio>, and <picture>.
///
/// The <source> tag allows you to specify alternative video/audio/image files which the browser may choose from, based on browser support or viewport width. The browser will choose the first <source> it supports.
public struct Source: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }

    public init() {
        self.node = .source()
    }
    
    /// Accepts any valid media query that would normally be defined in a CSS
    public func media(_ value: String) -> Self {
        .init(node.addOrReplace(Attribute(key: "media", value: value)))
    }
    
    /// Specifies image sizes for different page layouts
    public func sizes(_ value: String) -> Self {
        .init(node.addOrReplace(Attribute(key: "sizes", value: value)))
    }
    
    /// Required when <source> is used in <audio> and <video>. Specifies the URL of the media file
    func src(_ value: String) -> Self {
        .init(node.addOrReplace(Attribute(key: "src", value: value)))
    }
    
    /// Required when <source> is used in <picture>. Specifies the URL of the image to use in different situations
    func srcset(_ value: String) -> Self {
        .init(node.addOrReplace(Attribute(key: "srcset", value: value)))
    }
    
    /// Specifies the MIME-type of the resource
    func type(_ value: String) -> Self {
        .init(node.addOrReplace(Attribute(key: "type", value: value)))
    }
    
}
