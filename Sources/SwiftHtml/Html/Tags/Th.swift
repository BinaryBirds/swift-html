//
//  Th.swift
//  SwiftHtml
//
//  Created by Tibor Bodecs on 2021. 07. 19..
//

/// The `<th>` tag defines a header cell in an HTML table.
///
/// An HTML table has two kinds of cells:
///
/// - Header cells - contains header information (created with the `<th>` element)
/// - Data cells - contains data (created with the `<td>` element)
/// 
/// The text in `<th>` elements are bold and centered by default.
///
/// The text in `<td>` elements are regular and left-aligned by default.
public final class Th: Tag {
    
    public init(_ contents: String, @TagBuilder _ builder: () -> [Tag]) {
        super.init(Node(type: .standard, name: "th", contents: contents), tags: builder())
    }
}

public extension Th {
    
    enum Scope: String {
        /// Specifies that the cell is a header for a column
        case col
        /// Specifies that the cell is a header for a row
        case row
        /// Specifies that the cell is a header for a group of columns
        case colgroup
        /// Specifies that the cell is a header for a group of rows
        case rowgroup
    }
    
    /// Specifies an abbreviated version of the content in a header cell
    func abbr(_ value: String) -> Self {
        node.addOrReplace(Attribute(key: "abbr", value: value))
        return self
    }
    
    /// Specifies the number of columns a header cell should span
    func colspan(_ value: Int) -> Self {
        node.addOrReplace(Attribute(key: "colspan", value: String(value)))
        return self
    }
    
    /// Specifies one or more header cells a cell is related to
    func headers(_ value: String) -> Self {
        node.addOrReplace(Attribute(key: "headers", value: value))
        return self
    }
    
    /// Specifies the number of rows a header cell should span
    func rowspan(_ value: Int) -> Self {
        node.addOrReplace(Attribute(key: "rowspan", value: String(value)))
        return self
    }
    
    /// Specifies one or more header cells a cell is related to
    func scope(_ value: Scope) -> Self {
        node.addOrReplace(Attribute(key: "scope", value: value.rawValue))
        return self
    }
}
