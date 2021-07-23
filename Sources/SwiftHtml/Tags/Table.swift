//
//  Table.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

public extension Node {

    static func table(_ children: [Node] = []) -> Node {
        Node(type: .standard, name: "table", children: children)
    }
}

/// The `<table>` tag defines an HTML table.
/// 
/// An HTML table consists of one `<table>` element and one or more `<tr>`, `<th>`, and `<td>` elements.
/// 
/// The `<tr>` element defines a table row, the `<th>` element defines a table header, and the `<td>` element defines a table cell.
/// 
/// An HTML table may also include `<caption>`, `<colgroup>`, `<thead>`, `<tfoot>`, and `<tbody>` elements.
public struct Table: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(_ children: [Node] = []) {
        self.node = .table(children)
    }

    public init(@TagBuilder _ builder: () -> [Tag]) {
        self.init(builder().map(\.node))
    }
}
