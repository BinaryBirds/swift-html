//
//  GridRow.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public struct GridRow: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "grid-row" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> GridRow {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension GridRow {

    /// A shorthand property for the grid-row-start and the grid-row-end properties
    public init(_ start: GridRowStartValue, _ end: GridRowEndValue) {
        self.init(start.rawValue + " / " + end.rawValue)
    }
}
