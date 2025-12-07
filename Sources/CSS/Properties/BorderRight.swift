//
//  BorderRight.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public func BorderRight(_ value: String) -> Property {
    Property(name: "border-right", value: value)
}

/// A shorthand property for all the border-right-* properties
public func BorderRight(_ value: BorderLineValue) -> Property {
    BorderRight(value.rawValue)
}
