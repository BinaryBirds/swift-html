//
//  BorderBottomColor.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public func BorderBottomColor(_ value: String) -> Property {
    Property(name: "border-bottom-color", value: value)
}

/// Sets the color of the bottom border
public func BorderBottomColor(_ value: CSSColorValue) -> Property {
    BorderBottomColor(value.rawValue)
}

/// Sets the color of the bottom border
public func BorderBottomColor(_ value: CSSColor) -> Property {
    BorderBottomColor(.color(value))
}
