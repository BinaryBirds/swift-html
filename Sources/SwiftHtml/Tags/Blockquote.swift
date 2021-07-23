//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

import Foundation

public extension Node {

    static func blockquote(_ contents: String) -> Node {
        Node(type: .standard, name: "blockquote", contents: contents)
    }
}

/// The <blockquote> tag specifies a section that is quoted from another source.
/// 
/// Browsers usually indent <blockquote> elements (look at example below to see how to remove the indentation).
public struct Blockquote: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(_ contents: String) {
        self.node = .blockquote(contents)
    }
    
    /// Specifies the source of the quotation
    public func cite(_ value: String) -> Self {
        .init(node.addOrReplace(Attribute(key: "cite", value: value)))
    }
}
