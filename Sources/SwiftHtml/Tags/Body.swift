//
//  File.swift
//  File
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

import Foundation

public extension Node {

    static func body(_ children: [Node] = []) -> Node {
        Node(type: .standard, name: "body", children: children)
    }
}

/// The <body> tag defines the document's body.
/// 
/// The <body> element contains all the contents of an HTML document, such as headings, paragraphs, images, hyperlinks, tables, lists, etc.
/// 
/// Note: There can only be one <body> element in an HTML document.
public struct Body: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(_ children: [Node] = []) {
        self.node = .body(children)
    }

    public init(@TagBuilder _ builder: () -> [Tag]) {
        self.init(builder().map(\.node))
    }
}
