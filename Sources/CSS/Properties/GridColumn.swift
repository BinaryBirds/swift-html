//
//  GridColumn.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public func GridColumn(_ value: String) -> Property {
    Property(name: "grid-column", value: value)
}

/// A shorthand property for the grid-column-start and the grid-column-end properties
public func GridColumn(_ start: GridColumnStartValue, _ end: GridColumnEndValue)
    -> Property
{
    GridColumn(start.rawValue + " / " + end.rawValue)
}
