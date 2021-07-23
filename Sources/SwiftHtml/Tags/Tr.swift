//
//  File.swift
//  
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

import Foundation

public extension Node {

    static func tr(_ children: [Node] = []) -> Node {
        Node(type: .standard, name: "tr", children: children)
    }
}

/// The <tr> tag defines a row in an HTML table.
///
/// A <tr> element contains one or more <th> or <td> elements.
public struct Tr: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(_ children: [Node] = []) {
        self.node = .tr(children)
    }

    public init(@TagBuilder _ builder: () -> [Tag]) {
        self.init(builder().map(\.node))
    }
}
