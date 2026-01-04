//
//  WordWrap.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum WordWrapValue: String {
    /// Break words only at allowed break points
    case normal
    /// Allows unbreakable words to be broken
    case breakWord = "break-word"
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit
}

public struct WordWrap: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "word-wrap" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> WordWrap {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension WordWrap {

    /// Allows long, unbreakable words to be broken and wrap to the next line
    public init(_ value: WordWrapValue = .normal) {
        self.init(value.rawValue)
    }
}
