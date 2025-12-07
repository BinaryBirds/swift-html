//
//  ColumnWidth.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum ColumnWidthValue {
    /// Default value. The column width will be determined by the browser
    case auto
    /// A length that specifies the width of the columns. The number of columns will be the minimum number of columns needed to show all the content across the element.
    case length(Unit)
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit

    var rawValue: String {
        switch self {
        case .auto:
            return "auto"
        case .length(let value):
            return value.rawValue
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

public func ColumnWidth(_ value: String) -> Property {
    Property(name: "column-width", value: value)
}

/// Specifies the column width
public func ColumnWidth(_ value: ColumnWidthValue = .auto) -> Property {
    ColumnWidth(value.rawValue)
}
