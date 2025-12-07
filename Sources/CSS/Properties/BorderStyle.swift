//
//  BorderStyle.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public func BorderStyle(_ value: String) -> Property {
    Property(name: "border-style", value: value)
}

/// Sets the style of the four borders
public func BorderStyle(_ value: BorderStyleValue = .none) -> Property {
    BorderStyle(value.rawValue)
}
