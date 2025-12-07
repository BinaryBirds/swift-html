//
//  BorderRightColor.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public func BorderRightColor(_ value: String) -> Property {
    Property(name: "border-right-color", value: value)
}

/// Sets the color of the right border
public func BorderRightColor(_ value: CSSColorValue) -> Property {
    BorderRightColor(value.rawValue)
}

public func BorderRightColor(_ value: CSSColor) -> Property {
    BorderRightColor(.color(value))
}
