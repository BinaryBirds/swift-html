//
//  GridRow.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public func GridRow(_ value: String) -> Property {
    Property(name: "grid-row", value: value)
}

/// A shorthand property for the grid-row-start and the grid-row-end properties
public func GridRow(_ start: GridRowStartValue, _ end: GridRowEndValue)
    -> Property
{
    GridRow(start.rawValue + " / " + end.rawValue)
}
