//
//  BorderRightWidth.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public func BorderRightWidth(_ value: String) -> Property {
    Property(name: "border-right-width", value: value)
}

/// Sets the width of the right border
public func BorderRightWidth(_ value: BorderWidthValue = .medium) -> Property {
    BorderRightWidth(value.rawValue)
}

public func BorderRightWidth(_ value: Unit) -> Property {
    BorderRightWidth(.length(value))
}
