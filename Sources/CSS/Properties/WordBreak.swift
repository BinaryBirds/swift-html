//
//  WordBreak.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum WordBreakValue: String {
    /// Default value. Uses default line break rules
    case normal
    /// To prevent overflow, word may be broken at any character
    case breakAll = "break-all"
    /// Word breaks should not be used for Chinese/Japanese/Korean (CJK) text. Non-CJK text behavior is the same as value "normal"
    case keepAll = "keep-all"
    /// To prevent overflow, word may be broken at arbitrary points
    case breakWord = "break-word"
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}

public struct WordBreak: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "word-break" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> WordBreak {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension WordBreak {

    /// Specifies how words should break when reaching the end of a line
    public init(_ value: WordBreakValue = .normal) {
        self.init(value.rawValue)
    }
}
