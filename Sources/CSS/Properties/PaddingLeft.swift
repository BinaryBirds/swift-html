//
//  PaddingLeft.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public func PaddingLeft(_ value: String) -> Property {
    Property(name: "padding-left", value: value)
}

/// Sets the left padding of an element
public func PaddingLeft(_ value: PaddingValue = .length(.zero)) -> Property {
    PaddingLeft(value.rawValue)
}

/// Sets the left padding of an element
public func PaddingLeft(_ value: Unit = .zero) -> Property {
    PaddingLeft(.length(value))
}
