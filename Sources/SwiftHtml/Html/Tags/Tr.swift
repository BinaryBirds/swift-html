//
//  Tr.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

/// The `<tr>` tag defines a row in an HTML table.
///
/// A `<tr>` element contains one or more `<th>` or `<td>` elements.
public final class Tr: Tag {

    public init(@TagBuilder _ builder: () -> [Tag]) {
        super.init(Node(type: .standard, name: "tr"), children: builder())
    }
}
