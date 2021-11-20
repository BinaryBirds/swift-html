//
//  Colgroup.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 23..
//

/// The `<colgroup>` tag specifies a group of one or more columns in a table for formatting.
///
/// The `<colgroup>` tag is useful for applying styles to entire columns, instead of repeating the styles for each cell, for each row.
///
/// **Note:** The `<colgroup>` tag must be a child of a `<table>` element, after any `<caption>` elements and before any `<thead>`, `<tbody>`, `<tfoot>`, and `<tr>` elements.
///
/// **Tip:** To define different properties to a column within a `<colgroup>`, use the `<col>` tag within the `<colgroup>` tag.
public final class Colgroup: Tag {

    public init(@TagBuilder _ builder: () -> [Tag]) {
        super.init(Node(type: .standard, name: "colgroup"), children: builder())
    }
}

public extension Colgroup {
    /// Specifies the number of columns a column group should span
    func span(_ value: Int) -> Self {
        node.upsert(Attribute(key: "span", value: String(value)))
        return self
    }
}
