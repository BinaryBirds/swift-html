//
//  Br.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

public extension Node {

    static func br() -> Node {
        Node(type: .empty, name: "br")
    }
}

/// The `<br>` tag inserts a single line break.
/// 
/// The `<br>` tag is useful for writing addresses or poems.
/// 
/// The `<br>` tag is an empty tag which means that it has no end tag.
public struct Br: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }

    public init() {
        self.node = .br()
    }
}
