//
//  Gap.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public struct Gap: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "gap" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> Gap {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension Gap {

    /// A shorthand property for the row-gap and the column-gap properties
    public init(_ row: RowGapValue, _ col: ColumnGapValue) {
        self.init([row.rawValue, col.rawValue].joined(separator: " "))
    }
}
