//
//  Tr.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

public extension Node {

    static func tr() -> Node {
        Node(type: .standard, name: "tr")
    }
}

/// The `<tr>` tag defines a row in an HTML table.
///
/// A `<tr>` element contains one or more `<th>` or `<td>` elements.
public struct Tr: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init() {
        self.node = .tr()
    }

//    public init(@TagBuilder _ builder: () -> [Tag]) {
//        self.init(builder().map(\.node))
//    }
}
