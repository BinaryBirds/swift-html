//
//  FlexDirection.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum FlexDirectionValue: String {
    /// Default value. The flexible items are displayed horizontally, as a row
    case row
    /// Same as row, but in reverse order
    case rowReverse = "row-reverse"
    /// The flexible items are displayed vertically, as a column
    case column
    /// Same as column, but in reverse order
    case columnReverse = "column-reverse"
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}

public func FlexDirection(_ value: String) -> Property {
    Property(name: "flex-direction", value: value)
}

/// Specifies the direction of the flexible items
public func FlexDirection(_ value: FlexDirectionValue = .row) -> Property {
    FlexDirection(value.rawValue)
}
