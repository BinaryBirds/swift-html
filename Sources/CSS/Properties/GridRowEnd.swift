//
//  GridRowEnd.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum GridRowEndValue {
    /// Default value. The item will span one row.
    case auto
    /// Specifies the number of rows the item will span.
    case span(Int)
    /// Specifies on which row to end the display of the item.
    case rowLine(Int)

    var rawValue: String {
        switch self {
        case .auto:
            return "auto"
        case .span(let value):
            return "span \(value)"
        case .rowLine(let value):
            return String(value)
        }
    }
}

public func GridRowEnd(_ value: String) -> Property {
    Property(name: "grid-row-end", value: value)
}

/// Specifies where to end the grid item
public func GridRowEnd(_ value: GridRowEndValue) -> Property {
    GridRowEnd(value.rawValue)
}
