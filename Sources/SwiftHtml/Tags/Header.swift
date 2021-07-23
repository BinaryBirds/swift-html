//
//  Header.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

public extension Node {

    static func header(_ children: [Node] = []) -> Node {
        Node(type: .standard, name: "header", children: children)
    }
}

/// The` <header>` element represents a container for introductory content or a set of navigational links.
///
/// A` <header>` element typically contains:
///
/// - one or more heading elements (`<h1>` - `<h6>`)
/// - logo or icon
/// - authorship information
/// **Note:** You can have several` <header>` elements in one HTML document. However,` <header>` cannot be placed within a` <footer>`,` <address>` or another` <header>` element.
public struct Header: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(_ children: [Node] = []) {
        self.node = .header(children)
    }

    public init(@TagBuilder _ builder: () -> [Tag]) {
        self.init(builder().map(\.node))
    }
}

