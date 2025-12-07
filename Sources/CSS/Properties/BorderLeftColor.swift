//
//  BorderLeftColor.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public func BorderLeftColor(_ value: String) -> Property {
    Property(name: "border-left-color", value: value)
}

/// Sets the color of the left border
public func BorderLeftColor(_ value: CSSColorValue) -> Property {
    BorderLeftColor(value.rawValue)
}

/// Sets the color of the left border
public func BorderLeftColor(_ value: CSSColor) -> Property {
    BorderLeftColor(.color(value))
}
