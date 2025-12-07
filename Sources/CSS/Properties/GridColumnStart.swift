//
//  GridColumnStart.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum GridColumnStartValue {
    /// Default value. The item will be placed following the flow
    case auto
    /// Specifies the number of columns the item will span
    case span(Int)
    /// Specifies on which column to start the display of the item
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

public func GridColumnStart(_ value: String) -> Property {
    Property(name: "grid-column-start", value: value)
}

/// Specifies where to start the grid item
public func GridColumnStart(_ value: GridColumnStartValue = .auto) -> Property {
    GridColumnStart(value.rawValue)
}
