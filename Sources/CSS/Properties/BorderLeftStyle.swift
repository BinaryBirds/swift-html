//
//  BorderLeftStyle.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public func BorderLeftStyle(_ value: String) -> Property {
    Property(name: "border-left-style", value: value)
}

/// Sets the style of the left border
public func BorderLeftStyle(_ value: BorderStyleValue = .none) -> Property {
    BorderLeftStyle(value.rawValue)
}
