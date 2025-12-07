//
//  BorderRightStyle.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public func BorderRightStyle(_ value: String) -> Property {
    Property(name: "border-right-style", value: value)
}

/// Sets the style of the right border
public func BorderRightStyle(_ value: BorderStyleValue = .none) -> Property {
    BorderRightStyle(value.rawValue)
}
