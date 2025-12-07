//
//  GridColumnGap.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum GridColumnGapValue {
    /// Any legal length value, like px or %. 0 is the default value. Read about length units
    case length(Unit)

    var rawValue: String {
        switch self {
        case .length(let value):
            return value.rawValue
        }
    }
}

public func GridColumnGap(_ value: String) -> Property {
    Property(name: "grid-column-gap", value: value)
}

/// Specifies the size of the gap between columns
public func GridColumnGap(_ value: GridColumnGapValue) -> Property {
    GridColumnGap(value.rawValue)
}

/// Specifies the size of the gap between columns
public func GridColumnGap(_ value: Unit) -> Property {
    GridColumnGap(.length(value))
}
