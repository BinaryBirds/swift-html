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
open class Th: Tag {

}

extension Th {

    public enum Scope: String {
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
    public func abbr(_ value: String) -> Self {
        attribute("abbr", value)
    }

    /// Specifies the number of columns a header cell should span
    public func colspan(_ value: Int) -> Self {
        attribute("colspan", String(value))
    }

    /// Specifies one or more header cells a cell is related to
    public func headers(_ value: String) -> Self {
        attribute("headers", value)
    }

    /// Specifies the number of rows a header cell should span
    public func rowspan(_ value: Int) -> Self {
        attribute("rowspan", String(value))
    }

    /// Specifies one or more header cells a cell is related to
    public func scope(_ value: Scope) -> Self {
        attribute("scope", value.rawValue)
    }
}
