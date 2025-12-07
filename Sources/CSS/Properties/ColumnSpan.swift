//
//  ColumnSpan.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum ColumnSpanValue: String {
    /// Default value. The element should span across one column
    case none
    /// The element should span across all columns
    case all
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}

public func ColumnSpan(_ value: String) -> Property {
    Property(name: "column-span", value: value)
}

/// Specifies how many columns an element should span across
public func ColumnSpan(_ value: ColumnSpanValue = .none) -> Property {
    ColumnSpan(value.rawValue)
}
