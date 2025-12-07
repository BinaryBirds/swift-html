//
//  PaddingTop.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public func PaddingTop(_ value: String) -> Property {
    Property(name: "padding-top", value: value)
}

/// Sets the top padding of an element
public func PaddingTop(_ value: PaddingValue = .length(.zero)) -> Property {
    PaddingTop(value.rawValue)
}

/// Sets the top padding of an element
public func PaddingTop(_ value: Unit = .zero) -> Property {
    PaddingTop(.length(value))
}
