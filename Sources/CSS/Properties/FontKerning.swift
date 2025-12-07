//
//  FontKerning.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum FontKerningValue: String {
    /// Default. The browser determines whether font kerning should be applied or not
    case auto
    /// Specifies that font kerning is applied
    case normal
    /// Specifies that font kerning is not applied
    case none
}

public func FontKerning(_ value: String) -> Property {
    Property(name: "font-kerning", value: value)
}

/// Controls the usage of the kerning information (how letters are spaced)
public func FontKerning(_ value: FontKerningValue = .auto) -> Property {
    FontKerning(value.rawValue)
}
