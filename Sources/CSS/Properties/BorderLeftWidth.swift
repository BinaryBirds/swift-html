//
//  BorderLeftWidth.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public func BorderLeftWidth(_ value: String) -> Property {
    Property(name: "border-left-width", value: value)
}

/// Sets the width of the left border
public func BorderLeftWidth(_ value: BorderWidthValue = .medium) -> Property {
    BorderLeftWidth(value.rawValue)
}

public func BorderLeftWidth(_ value: Unit) -> Property {
    BorderLeftWidth(.length(value))
}
