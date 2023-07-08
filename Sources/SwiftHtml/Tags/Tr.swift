//
//  Tr.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

/// The `<tr>` tag defines a row in an HTML table.
///
/// A `<tr>` element contains one or more `<th>` or `<td>` elements.
open class Tr: Tag {
    
    class var node: Node { .init(type: .standard, name: String(describing: self).lowercased()) }
}
