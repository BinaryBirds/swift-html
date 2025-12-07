//
//  BorderTop.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public func BorderTop(_ value: String) -> Property {
    Property(name: "border-top", value: value)
}

/// A shorthand property for border-top-width, border-top-style and border-top-color
public func BorderTop(_ value: BorderLineValue) -> Property {
    BorderTop(value.rawValue)
}
