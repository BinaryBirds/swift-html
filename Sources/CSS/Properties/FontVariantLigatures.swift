//
//  FontVariantLigatures.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum FontVariantLigaturesValue: String {
    case normal
    case none
    case commonLigatures = "common-ligatures"
    case noCommonLigatures = "no-common-ligatures"
    case discretionaryLigatures = "discretionary-ligatures"
    case noDiscretionaryLigatures = "no-discretionary-ligatures"
    case historicalLigatures = "historical-ligatures"
    case noHistoricalLigatures = "no-historical-ligatures"
    case contextual
    case noContextual = "no-contextual"
    case inherit
    case initial
    case revert
    case unset
}

public func FontVariantLigatures(_ value: String) -> Property {
    Property(name: "font-variant-ligatures", value: value)
}

/// Controls which ligatures and contextual forms are used in textual content of the elements it applies to
public func FontVariantLigatures(_ value: FontVariantLigaturesValue = .normal)
    -> Property
{
    FontVariantLigatures(value.rawValue)
}
