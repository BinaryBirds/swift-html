//
//  FontSynthesis.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum FontSynthesisValue: String {
    case none
    case weight
    case style
    case weightStyle = "weight style"
    case inherit
    case initial
    case revert
    case unset
}

public func FontSynthesis(_ value: String) -> Property {
    Property(name: "font-synthesis", value: value)
}

/// Controls which missing typefaces (bold or italic) may be synthesized by the browser
public func FontSynthesis(_ value: FontSynthesisValue = .none) -> Property {
    FontSynthesis(value.rawValue)
}
