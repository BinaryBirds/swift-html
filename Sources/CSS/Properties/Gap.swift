//
//  Gap.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public func Gap(_ value: String) -> Property {
    Property(name: "gap", value: value)
}

/// A shorthand property for the row-gap and the column-gap properties
public func Gap(_ row: RowGapValue, _ col: ColumnGapValue) -> Property {
    Gap([row.rawValue, col.rawValue].joined(separator: " "))
}
