//
//  BackgroundColor.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public func BackgroundColor(_ value: String) -> Property {
    Property(name: "background-color", value: value)
}

/// Specifies the background color of an element
public func BackgroundColor(_ value: CSSColorValue = .transparent) -> Property {
    BackgroundColor(value.rawValue)
}

/// Specifies the background color of an element
public func BackgroundColor(_ value: CSSColor) -> Property {
    BackgroundColor(.color(value))
}
