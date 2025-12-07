//
//  MarginTop.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

/// Sets the top margin of an element
public func MarginTop(_ value: String) -> Property {
    Property(name: "margin-top", value: value)
}

public func MarginTop(_ value: MarginValue = .length(.zero)) -> Property {
    MarginTop(value.rawValue)
}

public func MarginTop(_ value: Unit = .zero) -> Property {
    MarginTop(.length(value))
}
