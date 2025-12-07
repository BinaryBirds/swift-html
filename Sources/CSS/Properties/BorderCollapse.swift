//
//  BorderCollapse.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum BorderCollapseValue: String {
    /// Borders are separated; each cell will display its own borders. This is default.    Play it »
    case separate
    /// Borders are collapsed into a single border when possible (border-spacing and empty-cells properties have no effect)    Play it »
    case collapse
    /// Sets this property to its default value. Read about initial    Play it »
    case initial
    /// Inherits this property from its parent element. Read about inherit
    case inherit
}

public func BorderCollapse(_ value: String) -> Property {
    Property(name: "border-collapse", value: value)
}

/// Sets whether table borders should collapse into a single border or be separated
public func BorderCollapse(_ value: BorderCollapseValue = .separate) -> Property
{
    BorderCollapse(value.rawValue)
}
