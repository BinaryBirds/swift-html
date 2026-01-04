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

public struct GridArea: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "grid-area" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> GridArea {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension GridArea {

    /// Either specifies a name for the grid item, or this property is a shorthand property for the grid-row-start, grid-column-start, grid-row-end, and grid-column-end properties
    public init(_ value: GridAreaValue) {
        self.init(value.rawValue)
    }
}
