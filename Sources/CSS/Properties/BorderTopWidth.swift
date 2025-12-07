//
//  BorderTopWidth.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public func BorderTopWidth(_ value: String) -> Property {
    Property(name: "border-top-width", value: value)
}

/// Sets the width of the top border
public func BorderTopWidth(_ value: BorderWidthValue = .medium) -> Property {
    BorderTopWidth(value.rawValue)
}

/// Sets the width of the top border
public func BorderTopWidth(_ value: Unit) -> Property {
    BorderTopWidth(.length(value))
}
