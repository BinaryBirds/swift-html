//
//  BorderLeft.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public func BorderLeft(_ value: String) -> Property {
    Property(name: "border-left", value: value)
}

/// A shorthand property for all the border-left-* properties
public func BorderLeft(_ value: BorderLineValue) -> Property {
    BorderLeft(value.rawValue)
}
