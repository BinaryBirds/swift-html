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

public struct GridColumnStart: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "grid-column-start" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> GridColumnStart {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension GridColumnStart {

    /// Specifies where to start the grid item
    public init(_ value: GridColumnStartValue = .auto) {
        self.init(value.rawValue)
    }
}
