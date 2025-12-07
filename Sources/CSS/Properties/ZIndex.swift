//
//  ZIndex.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum ZIndexValue: String {
    /// Sets the stack order equal to its parents. This is default
    case auto
    /// Sets the stack order of the element. Negative numbers are allowed
    case number
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}

public func ZIndex(_ value: String) -> Property {
    Property(name: "z-index", value: value)
}

/// Sets the stack order of a positioned element
public func ZIndex(_ value: ZIndexValue = .auto) -> Property {
    ZIndex(value.rawValue)
}
