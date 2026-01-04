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

public struct GridRowStart: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "grid-row-start" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> GridRowStart {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension GridRowStart {

    /// Specifies where to start the grid item
    public init(_ value: GridRowStartValue = .auto) {
        self.init(value.rawValue)
    }
}
