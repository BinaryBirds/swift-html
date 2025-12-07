//
//  MarginBottom.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

/// Sets the bottom margin of an element
public func MarginBottom(_ value: String) -> Property {
    Property(name: "margin-bottom", value: value)
}

public func MarginBottom(_ value: MarginValue = .length(.zero)) -> Property {
    MarginBottom(value.rawValue)
}

public func MarginBottom(_ value: Unit = .zero) -> Property {
    MarginBottom(.length(value))
}
