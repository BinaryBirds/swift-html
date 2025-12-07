//
//  FontVariantNumeric.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum FontVariantNumericValue: String {
    case normal
    case ordinal
    case slashedZero = "slashed-zero"
    case liningNums = "lining-nums"
    case oldstyleNums = "oldstyle-nums"
    case proportionalNums = "proportional-nums"
    case tabularNums = "tabular-nums"
    case diagonalFractions = "diagonal-fractions"
    case stackedFractions = "stacked-fractions"
    case oldstyleNumsStackedFractions = "oldstyle-nums stacked-fractions"
    case inherit
    case initial
    case revert
    case unset
}

public func FontVariantNumeric(_ value: String) -> Property {
    Property(name: "font-variant-numeric", value: value)
}

/// Controls the usage of alternate glyphs for numbers, fractions, and ordinal markers
public func FontVariantNumeric(_ value: FontVariantNumericValue = .normal)
    -> Property
{
    FontVariantNumeric(value.rawValue)
}
