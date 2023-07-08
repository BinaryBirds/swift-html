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
open class Td: Tag {
    
    class var node: Node { .init(type: .standard, name: String(describing: self).lowercased()) }
}

public extension Td {
    
    /// Specifies the number of columns a data cell should span
    func colspan(_ value: Int) -> Self {
        attribute("colspan", String(value))
    }
}
