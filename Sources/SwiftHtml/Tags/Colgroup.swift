//
//  Colgroup.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

public extension Node {

    static func colgroup(_ children: [Node] = []) -> Node {
        Node(type: .standard, name: "colgroup", children: children)
    }
}

/// The `<colgroup>` tag specifies a group of one or more columns in a table for formatting.
///
/// The `<colgroup>` tag is useful for applying styles to entire columns, instead of repeating the styles for each cell, for each row.
///
/// **Note:** The `<colgroup>` tag must be a child of a `<table>` element, after any `<caption>` elements and before any `<thead>`, `<tbody>`, `<tfoot>`, and `<tr>` elements.
///
/// **Tip:** To define different properties to a column within a `<colgroup>`, use the `<col>` tag within the `<colgroup>` tag.
public struct Colgroup: Tag {
    public var node: Node

    public init(_ node: Node) {
        self.node = node
    }
    
    public init(_ children: [Node] = []) {
        self.node = .colgroup(children)
    }

    public init(@TagBuilder _ builder: () -> [Tag]) {
        self.init(builder().map(\.node))
    }
}

public extension Colgroup {
    /// Specifies the number of columns a column group should span
    func span(_ value: Int) -> Self {
        .init(node.addOrReplace(Attribute(key: "span", value: String(value))))
    }
}
