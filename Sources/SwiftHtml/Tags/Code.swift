//
//  Code.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

public extension Node {

    static func code(_ contents: String) -> Node {
        Node(type: .standard, name: "code", contents: contents)
    }
}

/// The `<code>` tag is used to define a piece of computer code. The content inside is displayed in the browser's default monospace font.
///
/// **Tip:** This tag is not deprecated. However, it is possible to achieve richer effect by using CSS (see example below).
///
/// Also look at:
/// - `<samp>`    Defines sample output from a computer program
/// - `<kbd>`    Defines keyboard input
/// - `<var>`    Defines a variable
/// - `<pre>`    Defines preformatted text
public struct Code: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(_ contents: String) {
        self.node = .code(contents)
    }
}
