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

public struct FontVariantLigatures: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "font-variant-ligatures" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> FontVariantLigatures {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension FontVariantLigatures {

    /// Controls which ligatures and contextual forms are used in textual content of the elements it applies to
    public init(_ value: FontVariantLigaturesValue = .normal) {
        self.init(value.rawValue)
    }
}
