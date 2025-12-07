//
//  MixBlendMode.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum MixBlendModeValue: String {
    /// This is default. Sets the blending mode to normal
    case normal
    /// Sets the blending mode to multiply
    case multiply
    /// Sets the blending mode to screen
    case screen
    /// Sets the blending mode to overlay
    case overlay
    /// Sets the blending mode to darken
    case darken
    /// Sets the blending mode to lighten
    case lighten
    /// Sets the blending mode to color-dodge
    case colorDodge = "color-dodge"
    /// Sets the blending mode to color-burn
    case colorBurn = "color-burn"
    /// Sets the blending mode to difference
    case difference
    /// Sets the blending mode to exclusion
    case exclusion
    /// Sets the blending mode to hue
    case hue
    /// Sets the blending mode to saturation
    case saturation
    /// Sets the blending mode to color
    case color
    /// Sets the blending mode to luminosity
    case luminosity
}

public func MixBlendMode(_ value: String) -> Property {
    Property(name: "mix-blend-mode", value: value)
}

/// Specifies how an element's content should blend with its direct parent background
public func MixBlendMode(_ value: MixBlendModeValue = .normal) -> Property {
    MixBlendMode(value.rawValue)
}
