//
//  GridGap.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public func GridGap(_ value: String) -> Property {
    Property(name: "grid-gap", value: value)
}

/// A shorthand property for the grid-row-gap and grid-column-gap properties
public func GridGap(_ row: GridRowGapValue, _ col: GridColumnGapValue)
    -> Property
{
    GridGap(row.rawValue + " " + col.rawValue)
}

/// A shorthand property for the grid-row-gap and grid-column-gap properties
public func GridGap(_ row: Unit, _ col: Unit) -> Property {
    GridGap(row.rawValue + " " + col.rawValue)
}
