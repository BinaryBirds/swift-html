//
//  PaddingBottom.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public func PaddingBottom(_ value: String) -> Property {
    Property(name: "padding-bottom", value: value)
}

/// Sets the bottom padding of an element
public func PaddingBottom(_ value: PaddingValue = .length(.zero)) -> Property {
    PaddingBottom(value.rawValue)
}

/// Sets the bottom padding of an element
public func PaddingBottom(_ value: Unit = .zero) -> Property {
    PaddingBottom(.length(value))
}
