//
//  BorderBottomWidth.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public func BorderBottomWidth(_ value: String) -> Property {
    Property(name: "border-bottom-width", value: value)
}

/// Sets the width of the bottom border
public func BorderBottomWidth(_ value: BorderWidthValue = .medium) -> Property {
    BorderBottomWidth(value.rawValue)
}

/// Sets the width of the bottom border
public func BorderBottomWidth(_ value: Unit) -> Property {
    BorderBottomWidth(.length(value))
}
