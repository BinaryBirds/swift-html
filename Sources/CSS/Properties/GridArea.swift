//
//  GridArea.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum GridAreaValue {
    case name(String)
    case values(
        GridRowStartValue,
        GridColumnStartValue,
        GridRowEndValue,
        GridColumnEndValue
    )

    var rawValue: String {
        switch self {
        case .name(let value):
            return value
        case .values(let rowStart, let colStart, let rowEnd, let colEnd):
            return [
                rowStart.rawValue, colStart.rawValue, rowEnd.rawValue,
                colEnd.rawValue,
            ]
            .joined(separator: " / ")
        }
    }
}

public func GridArea(_ value: String) -> Property {
    Property(name: "grid-area", value: value)
}

/// Either specifies a name for the grid item, or this property is a shorthand property for the grid-row-start, grid-column-start, grid-row-end, and grid-column-end properties
public func GridArea(_ value: GridAreaValue) -> Property {
    GridArea(value.rawValue)
}
