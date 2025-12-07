//
//  BorderBottomLeftRadius.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public func BorderBottomLeftRadius(_ value: String) -> Property {
    Property(name: "border-bottom-left-radius", value: value)
}

/// Defines the radius of the border of the bottom-left corner
public func BorderBottomLeftRadius(_ value: BorderRadiusSingleValue) -> Property
{
    BorderBottomLeftRadius(value.rawValue)
}
