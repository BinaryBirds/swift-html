//
//  BorderTopColor.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public func BorderTopColor(_ value: String) -> Property {
    Property(name: "border-top-color", value: value)
}

/// Sets the color of the top border
public func BorderTopColor(_ value: CSSColorValue) -> Property {
    BorderTopColor(value.rawValue)
}

/// Sets the color of the top border
public func BorderTopColor(_ value: CSSColor) -> Property {
    BorderTopColor(.color(value))
}
