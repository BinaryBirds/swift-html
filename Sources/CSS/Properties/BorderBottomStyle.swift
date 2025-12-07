//
//  BorderBottomStyle.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public func BorderBottomStyle(_ value: String) -> Property {
    Property(name: "border-bottom-style", value: value)
}

/// Sets the style of the bottom border
public func BorderBottomStyle(_ value: BorderStyleValue = .none) -> Property {
    BorderBottomStyle(value.rawValue)
}
