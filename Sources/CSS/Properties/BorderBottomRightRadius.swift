//
//  BorderBottomRightRadius.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public func BorderBottomRightRadius(_ value: String) -> Property {
    Property(name: "border-bottom-right-radius", value: value)
}

/// Defines the radius of the border of the bottom-right corner
public func BorderBottomRightRadius(_ value: BorderRadiusSingleValue)
    -> Property
{
    BorderBottomRightRadius(value.rawValue)
}
