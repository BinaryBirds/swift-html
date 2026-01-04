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

public struct GridRowEnd: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "grid-row-end" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> GridRowEnd {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension GridRowEnd {

    /// Specifies where to end the grid item
    public init(_ value: GridRowEndValue) {
        self.init(value.rawValue)
    }
}
