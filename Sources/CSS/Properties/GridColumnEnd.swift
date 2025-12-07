//
//  GridColumnEnd.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum GridColumnEndValue {
    /// Default value. The item will span one column
    case auto
    /// Specifies the number of columns the item will span
    case span(Int)
    /// Specifies on which column to end the display of the item
    case columnLine(Int)

    var rawValue: String {
        switch self {
        case .auto:
            return "auto"
        case .span(let value):
            return "span \(value)"
        case .columnLine(let value):
            return String(value)
        }
    }
}

public func GridColumnEnd(_ value: String) -> Property {
    Property(name: "grid-column-end", value: value)
}

/// Specifies where to end the grid item
public func GridColumnEnd(_ value: GridColumnEndValue) -> Property {
    GridColumnEnd(value.rawValue)
}
