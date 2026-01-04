//
//  GridGap.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public struct GridGap: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "grid-gap" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> GridGap {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension GridGap {

    /// A shorthand property for the grid-row-gap and grid-column-gap properties
    public init(_ row: GridRowGapValue, _ col: GridColumnGapValue) {
        self.init(row.rawValue + " " + col.rawValue)
    }

    /// A shorthand property for the grid-row-gap and grid-column-gap properties
    public init(_ row: Unit, _ col: Unit) {
        self.init(row.rawValue + " " + col.rawValue)
    }
}
