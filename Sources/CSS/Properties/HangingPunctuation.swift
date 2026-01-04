//
//  HangingPunctuation.swift
//  SwiftCss
//
//  Created by Tibor Bodecs on 2021. 07. 10..
//

public enum HangingPunctuationValue: String {
    /// No punctuation mark may be placed outside the line box at the start or at the end of a full line of text
    case none
    /// Punctuation may hang outside the start edge of the first line
    case first
    /// Punctuation may hang outside the end edge of the last line
    case last
    /// Punctuation may hang outside the end edge of all lines if the punctuation does not otherwise fit prior to justification
    case allowEnd = "allow-end"
    /// Punctuation may hang outside the end edge of all lines. If justification is enabled on this line, then it will force the punctuation to hang
    case forceEnd = "force-end"
    /// Sets this property to its default value.
    case initial
    /// Inherits this property from its parent element.
    case inherit

}

public struct HangingPunctuation: Property {
    public var value: String
    public var isImportant: Bool

    public var name: String { "hanging-punctuation" }

    public init(_ value: String, isImportant: Bool = false) {
        self.value = value
        self.isImportant = isImportant
    }

    public func important() -> HangingPunctuation {
        guard !isImportant else {
            return self
        }
        return .init(value, isImportant: true)
    }
}

extension HangingPunctuation {

    /// Specifies whether a punctuation character may be placed outside the line box
    public init(_ value: HangingPunctuationValue = .none) {
        self.init(value.rawValue)
    }
}
