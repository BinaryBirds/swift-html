//
//  MarginRight.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

/// Sets the right margin of an element
public func MarginRight(_ value: String) -> Property {
    Property(name: "margin-right", value: value)
}

public func MarginRight(_ value: MarginValue = .length(.zero)) -> Property {
    MarginRight(value.rawValue)
}

public func MarginRight(_ value: Unit = .zero) -> Property {
    MarginRight(.length(value))
}
