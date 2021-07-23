//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

import Foundation

public extension Node {

    static func small(_ contents: String) -> Node {
        Node(type: .standard, name: "small", contents: contents)
    }
}

/// The <small> tag defines smaller text (like copyright and other side-comments).
///
/// Tip: This tag is not deprecated, but it is possible to achieve richer (or the same) effect with CSS.
public struct Small: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(_ contents: String) {
        self.node = .small(contents)
    }
}
