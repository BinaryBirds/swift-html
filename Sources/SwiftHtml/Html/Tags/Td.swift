//
//  Td.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

/// The `<td>` tag defines a standard data cell in an HTML table.
///
/// An HTML table has two kinds of cells:
///
/// - Header cells - contains header information (created with the `<th>` element)
/// - Data cells - contains data (created with the `<td>` element)
///
/// The text in `<td>` elements are regular and left-aligned by default.
///
/// The text in `<th>` elements are bold and centered by default.
public final class Td: Tag {
    
    public init(_ contents: String? = nil, @TagBuilder _ builder: () -> [Tag]) {
        super.init(Node(type: .standard, name: "td", contents: contents), children: builder())
    }
    
    public convenience init(_ contents: String) {
        self.init(contents) {}
    }
}
