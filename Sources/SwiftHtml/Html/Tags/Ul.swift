//
//  Ul.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

public extension Node {

    static func ul() -> Node {
        Node(type: .standard, name: "ul")
    }
}

/// The `<ul>` tag defines an unordered (bulleted) list.
/// 
/// Use the `<ul>` tag together with the `<li>` tag to create unordered lists.
/// 
/// **Tip:** Use CSS to style lists.
/// 
/// **Tip:** For ordered lists, use the `<ol>` tag.
public struct Ul: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init() {
        self.node = .ul()
    }
}
