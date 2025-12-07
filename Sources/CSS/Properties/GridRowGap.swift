//
//  GridRowGap.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum GridRowGapValue {
    /// Any legal length value, like px or %. 0 is the default value.
    case length(Unit)

    var rawValue: String {
        switch self {
        case .length(let value):
            return value.rawValue
        }
    }
}

/// Specifies the size of the gap between rows
public func GridRowGap(_ value: String) -> Property {
    Property(name: "grid-row-gap", value: value)
}

/// Specifies the size of the gap between rows
public func GridRowGap(_ value: GridRowGapValue) -> Property {
    GridRowGap(value.rawValue)
}

/// Specifies the size of the gap between rows
public func GridRowGap(_ value: Unit) -> Property {
    GridRowGap(.length(value))
}
