//
//  TableLayout.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum TableLayoutValue: String {
    /// Browsers use an automatic table layout algorithm. The column width is set by the widest unbreakable content in the cells. The content will dictate the layout     Play it »
    case auto
    /// Sets a fixed table layout algorithm. The table and column widths are set by the widths of table and col or by the width of the first row of cells. Cells in other rows do not affect column widths. If no widths are present on the first row, the column widths are divided equally across the table, regardless of content inside the cells    Play it »
    case fixed
    /// Sets this property to its default value. Read about initial    Play it »
    case initial
    /// Inherits this property from its parent element. Read about inherit
    case inherit
}

public func TableLayout(_ value: String) -> Property {
    Property(name: "table-layout", value: value)
}

/// Defines the algorithm used to lay out table cells, rows, and columns
public func TableLayout(_ value: TableLayoutValue = .auto) -> Property {
    TableLayout(value.rawValue)
}
