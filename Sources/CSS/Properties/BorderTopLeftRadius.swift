//
//  BorderTopLeftRadius.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public func BorderTopLeftRadius(_ value: String) -> Property {
    Property(name: "border-top-left-radius", value: value)
}

/// Defines the radius of the border of the top-left corner
public func BorderTopLeftRadius(_ value: BorderRadiusSingleValue) -> Property {
    BorderTopLeftRadius(value.rawValue)
}
