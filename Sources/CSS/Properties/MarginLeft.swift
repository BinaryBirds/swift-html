//
//  MarginLeft.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

/// Sets the left margin of an element
public func MarginLeft(_ value: String) -> Property {
    Property(name: "margin-left", value: value)
}

public func MarginLeft(_ value: MarginValue = .length(.zero)) -> Property {
    MarginLeft(value.rawValue)
}

public func MarginLeft(_ value: Unit = .zero) -> Property {
    MarginLeft(.length(value))
}
