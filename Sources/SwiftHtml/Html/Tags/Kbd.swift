//
//  Kbd.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

public extension Node {

    static func kbd(_ contents: String) -> Node {
        Node(type: .standard, name: "kbd", contents: contents)
    }
}

/// The `<kbd>` tag is used to define keyboard input. The content inside is displayed in the browser's default monospace font.
///
/// **Tip:** This tag is not deprecated. However, it is possible to achieve richer effect by using CSS (see example below).
public struct Kbd: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(_ contents: String) {
        self.node = .kbd(contents)
    }
}
