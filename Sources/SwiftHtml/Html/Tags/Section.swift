//
//  Section.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

public extension Node {

    static func section() -> Node {
        Node(type: .standard, name: "section")
    }
}

/// The `<section>` tag defines a section in a document.
public struct Section: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init() {
        self.node = .section()
    }
//
//    public init(@TagBuilder _ builder: () -> [Tag]) {
//        self.init(builder().map(\.node))
//    }
}
