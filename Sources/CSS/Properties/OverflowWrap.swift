//
//  OverflowWrap.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum OverflowWrapValue: String {
    case normal
    case breakWord = "break-word"
    case anywhere
    case inherit
    case initial
    case revert
    case unset
}

public func OverflowWrap(_ value: String) -> Property {
    Property(name: "overflow-wrap", value: value)
}

/// Specifies whether or not the browser may break lines within words in order to prevent overflow (when a string is too long to fit its containing box)
public func OverflowWrap(_ value: OverflowWrapValue) -> Property {
    OverflowWrap(value.rawValue)
}
