//
//  BorderWidth.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public func BorderWidth(_ value: String) -> Property {
    Property(name: "border-width", value: value)
}

/// Sets the width of the four borders
public func BorderWidth(_ value: BorderWidthValue = .medium) -> Property {
    BorderWidth(value.rawValue)
}

/// Sets the width of the four borders
public func BorderWidth(_ value: Unit) -> Property {
    BorderWidth(.length(value))
}
