//
//  GridRowStart.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum GridRowStartValue {
    /// Default value. The item will be placed by following the flow.
    case auto
    /// Specifies on which row to end the display of the item.
    case rowLine(Int)

    var rawValue: String {
        switch self {
        case .auto:
            return "auto"
        case .rowLine(let value):
            return String(value)
        }
    }
}

public func GridRowStart(_ value: String) -> Property {
    Property(name: "grid-row-start", value: value)
}

/// Specifies where to start the grid item
public func GridRowStart(_ value: GridRowStartValue = .auto) -> Property {
    GridRowStart(value.rawValue)
}
