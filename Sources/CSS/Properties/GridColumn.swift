//
//  GridColumn.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public struct GridColumn: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "grid-column" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> GridColumn {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension GridColumn {

    /// A shorthand property for the grid-column-start and the grid-column-end properties
    public init(_ start: GridColumnStartValue, _ end: GridColumnEndValue) {
        self.init(start.rawValue + " / " + end.rawValue)
    }
}
