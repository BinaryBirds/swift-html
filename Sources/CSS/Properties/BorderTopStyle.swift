//
//  BorderTopStyle.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public func BorderTopStyle(_ value: String) -> Property {
    Property(name: "border-top-style", value: value)
}

/// Sets the style of the top border
public func BorderTopStyle(_ value: BorderStyleValue = .none) -> Property {
    BorderTopStyle(value.rawValue)
}
