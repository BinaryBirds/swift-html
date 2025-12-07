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

public func EmptyCells(_ value: String) -> Property {
    Property(name: "empty-cells", value: value)
}

/// Specifies whether or not to display borders and background on empty cells in a table
public func EmptyCells(_ value: EmptyCellsValue = .show) -> Property {
    EmptyCells(value.rawValue)
}
