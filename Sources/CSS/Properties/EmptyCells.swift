//
//  EmptyCells.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum EmptyCellsValue: String {
    /// Display borders on empty cells. This is default
    case show
    /// Hide borders on empty cells
    case hide
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}

public struct EmptyCells: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "empty-cells" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> EmptyCells {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension EmptyCells {

    /// Specifies whether or not to display borders and background on empty cells in a table
    public init(_ value: EmptyCellsValue = .show) {
        self.init(value.rawValue)
    }
}
