//
//  TransformStyle.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum TransformStyleValue: String {
    /// Specifies that child elements will NOT preserve its 3D position. This is default
    case flat
    /// Specifies that child elements will preserve its 3D position
    case preserve3d = "preserve-3d"
    /// Sets this property to its default value. Read about initial
    case initial
    /// Inherits this property from its parent element. Read about inherit
    case inherit
}

public func TransformStyle(_ value: String) -> Property {
    Property(name: "transform-style", value: value)
}

/// Specifies how nested elements are rendered in 3D space
public func TransformStyle(_ value: TransformStyleValue = .flat) -> Property {
    TransformStyle(value.rawValue)
}
