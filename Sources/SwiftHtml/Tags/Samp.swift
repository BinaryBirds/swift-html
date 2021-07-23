//
//  Samp.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

public extension Node {

    static func samp(_ contents: String) -> Node {
        Node(type: .standard, name: "samp", contents: contents)
    }
}

/// The `<samp>` tag is used to define sample output from a computer program. The content inside is displayed in the browser's default monospace font.
///
/// **Tip:** This tag is not deprecated. However, it is possible to achieve richer effect by using CSS.
public struct Samp: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(_ contents: String) {
        self.node = .samp(contents)
    }
}
