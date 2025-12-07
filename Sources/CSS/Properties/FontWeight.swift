//
//  FontWeight.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum FontWeightValue: String {
    /// Defines normal characters. This is default
    case normal
    /// Defines thick characters
    case bold
    /// Defines thicker characters
    case bolder
    /// Defines lighter characters
    case lighter
    /// Defines from thin to thick characters. 400 is the same as normal, and 700 is the same as bold
    // @TODO: better numeric value support
    case w100
    case w200
    case w300
    case w400
    case w500
    case w600
    case w700
    case w800
    case w900
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}

public func FontWeight(_ value: String) -> Property {
    Property(name: "font-weight", value: value)
}

/// Specifies the weight of a font
public func FontWeight(_ value: FontWeightValue) -> Property {
    FontWeight(value.rawValue)
}
