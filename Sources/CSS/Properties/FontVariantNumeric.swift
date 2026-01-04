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

public struct FontVariantNumeric: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "font-variant-numeric" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> FontVariantNumeric {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension FontVariantNumeric {

    /// Controls the usage of alternate glyphs for numbers, fractions, and ordinal markers
    public init(_ value: FontVariantNumericValue = .normal) {
        self.init(value.rawValue)
    }
}
