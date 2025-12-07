//
//  Clip.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum ClipValue {
    /// No clipping will be applied. This is default    Play it »
    case auto
    /// Clips an element. The only valid value is: rect (top, right, bottom, left)    Play it »
    case shape(String)
    /// Sets this property to its default value. Read about initial    Play it »
    case initial
    /// Inherits this property from its parent element. Read about inherit
    case inherit

    var rawValue: String {
        switch self {
        case .auto:
            return "auto"
        case .shape(let value):
            return value
        case .initial:
            return "initial"
        case .inherit:
            return "inherit"
        }
    }
}

public func Clip(_ value: String) -> Property {
    Property(name: "clip", value: value)
}

/// Clips an absolutely positioned element
public func Clip(_ value: ClipValue = .auto) -> Property {
    Clip(value.rawValue)
}
