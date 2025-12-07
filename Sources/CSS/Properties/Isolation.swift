//
//  Isolation.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum IsolationValue: String {
    /// Default. A new stacking context is created only if one of the properties applied to the element requires it
    case auto
    /// A new stacking context must be created
    case isolate
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}

public func Isolation(_ value: String) -> Property {
    Property(name: "isolation", value: value)
}

/// Defines whether an element must create a new stacking content
public func Isolation(_ value: IsolationValue = .auto) -> Property {
    Isolation(value.rawValue)
}
