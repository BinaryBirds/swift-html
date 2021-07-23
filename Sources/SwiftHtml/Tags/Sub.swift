//
//  Sub.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

public extension Node {

    static func sub(_ contents: String) -> Node {
        Node(type: .standard, name: "sub", contents: contents)
    }
}

/// The `<sub>` tag defines subscript text.
///
/// Subscript text appears half a character below the normal line, and is sometimes rendered in a smaller font.
/// Subscript text can be used for chemical formulas, like H2O.
///
/// **Tip:** Use the `<sup>` tag to define superscripted text.
public struct Sub: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(_ contents: String) {
        self.node = .sub(contents)
    }
}
