//
//  BorderBottom.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public func BorderBottom(_ value: String) -> Property {
    Property(name: "border-bottom", value: value)
}

/// A shorthand property for border-bottom-width, border-bottom-style and border-bottom-color
public func BorderBottom(_ value: BorderLineValue) -> Property {
    BorderBottom(value.rawValue)
}
