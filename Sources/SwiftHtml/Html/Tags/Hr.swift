//
//  Hr.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

public extension Node {

    static func hr() -> Node {
        Node(type: .empty, name: "hr")
    }
}

/// The `<hr>` tag defines a thematic break in an HTML page (e.g. a shift of topic).
///
/// The `<hr>` element is most often displayed as a horizontal rule that is used to separate content (or define a change) in an HTML page.
public struct Hr: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }

    public init() {
        self.node = .hr()
    }
}
