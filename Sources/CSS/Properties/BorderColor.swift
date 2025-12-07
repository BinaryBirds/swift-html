//
//  BorderColor.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public func BorderColor(_ value: String) -> Property {
    Property(name: "border-color", value: value)
}

/// Sets the color of the four borders
public func BorderColor(_ value: CSSColorValue) -> Property {
    BorderColor(value.rawValue)
}

/// Sets the color of the four borders
public func BorderColor(_ value: CSSColor) -> Property {
    BorderColor(.color(value))
}
