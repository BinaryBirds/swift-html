//
//  BorderTopRightRadius.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public func BorderTopRightRadius(_ value: String) -> Property {
    Property(name: "border-top-right-radius", value: value)
}

/// Defines the radius of the border of the top-right corner
public func BorderTopRightRadius(_ value: BorderRadiusSingleValue) -> Property {
    BorderTopRightRadius(value.rawValue)
}
