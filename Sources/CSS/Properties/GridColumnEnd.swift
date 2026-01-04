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

public struct GridColumnEnd: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "grid-column-end" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> GridColumnEnd {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension GridColumnEnd {

    /// Specifies where to end the grid item
    public init(_ value: GridColumnEndValue) {
        self.init(value.rawValue)
    }
}
