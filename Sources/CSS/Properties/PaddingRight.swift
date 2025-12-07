//
//  PaddingRight.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public func PaddingRight(_ value: String) -> Property {
    Property(name: "padding-right", value: value)
}

/// Sets the right padding of an element
public func PaddingRight(_ value: PaddingValue = .length(.zero)) -> Property {
    PaddingRight(value.rawValue)
}

/// Sets the right padding of an element
public func PaddingRight(_ value: Unit = .zero) -> Property {
    PaddingRight(.length(value))
}
