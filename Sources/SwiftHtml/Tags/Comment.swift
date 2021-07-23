//
//  Comment.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

public extension Node {

    static func comment(_ contents: String) -> Node {
        Node(type: .comment, contents: contents)
    }
}

/// The comment tag is used to insert comments in the source code.
///
/// `<!-- example comment -->`
///
/// Comments are not displayed in the browsers.
/// You can use comments to explain your code, which can help you when you edit the source code at a later date.
/// This is especially useful if you have a lot of code.
public struct Comment: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(_ contents: String) {
        self.node = .comment(contents)
    }
}
