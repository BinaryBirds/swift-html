//
//  Aside.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

public extension Node {

    static func aside(_ children: [Node] = []) -> Node {
        Node(type: .standard, name: "aside", children: children)
    }
}

/// The `<aside>` tag defines some content aside from the content it is placed in.
/// 
/// The aside content should be indirectly related to the surrounding content.
/// 
/// **Tip:** The `<aside>` content is often placed as a sidebar in a document.
/// 
/// **Note:** The `<aside>` element does not render as anything special in a browser.
/// However, you can use CSS to style the `<aside>` element (see example below).
public struct Aside: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(_ children: [Node] = []) {
        self.node = .aside(children)
    }

    public init(@TagBuilder _ builder: () -> [Tag]) {
        self.init(builder().map(\.node))
    }
}

