//
//  Section.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

public extension Node {

    static func section(_ children: [Node] = []) -> Node {
        Node(type: .standard, name: "section", children: children)
    }
}

/// The `<section>` tag defines a section in a document.
public struct Section: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(_ children: [Node] = []) {
        self.node = .section(children)
    }

    public init(@TagBuilder _ builder: () -> [Tag]) {
        self.init(builder().map(\.node))
    }
}
