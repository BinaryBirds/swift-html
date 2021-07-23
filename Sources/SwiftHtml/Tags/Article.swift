//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

import Foundation

public extension Node {

    static func article(_ children: [Node] = []) -> Node {
        Node(type: .standard, name: "article", children: children)
    }
}

/// The `<article>` tag specifies independent, self-contained content.
///
/// An article should make sense on its own and it should be possible to distribute it independently from the rest of the site.
///
/// Potential sources for the `<article>` element:
///
/// - Forum post
/// - Blog post
/// - News story
///
/// **Note:** The `<article>` element does not render as anything special in a browser. However, you can use CSS to style the `<article>` element (see example below).
public struct Article: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(_ children: [Node] = []) {
        self.node = .article(children)
    }

    public init(@TagBuilder _ builder: () -> [Tag]) {
        self.init(builder().map(\.node))
    }
}

