/// Specifies the type of list-item marker

public struct ListStyleType: Property {
    public enum Value: String, Sendable {
        /// Default value. The marker is a filled circle
        case disc
        /// The marker is traditional Armenian numbering
        case armenian
        /// The marker is a circle
        case circle
        /// The marker is plain ideographic numbers
        case cjkIdeographic = "cjk-ideographic"
        /// The marker is a number
        case decimal
        /// The marker is a number with leading zeros (01, 02, 03, etc.)
        case decimalLeadingZero = "decimal-leading-zero"
        /// The marker is traditional Georgian numbering
        case georgian
        /// The marker is traditional Hebrew numbering
        case hebrew
        /// The marker is traditional Hiragana numbering
        case hiragana
        /// The marker is traditional Hiragana iroha numbering
        case hiraganaIroha = "hiragana-iroha"
        /// The marker is traditional Katakana numbering
        case katakana
        /// The marker is traditional Katakana iroha numbering
        case katakanaIroha = "katakana-iroha"
        /// The marker is lower-alpha (a, b, c, d, e, etc.)
        case lowerAlpha = "lower-alpha"
        /// The marker is lower-greek
        case lowerGreek = "lower-greek"
        /// The marker is lower-latin (a, b, c, d, e, etc.)
        case lowerLatin = "lower-latin"
        /// The marker is lower-roman (i, ii, iii, iv, v, etc.)
        case lowerRoman = "lower-roman"
        /// No marker is shown
        case none
        /// The marker is a square
        case square
        /// The marker is upper-alpha (A, B, C, D, E, etc.)
        case upperAlpha = "upper-alpha"
        /// The marker is upper-greek
        case upperGreek = "upper-greek"
        /// The marker is upper-latin (A, B, C, D, E, etc.)
        case upperLatin = "upper-latin"
        /// The marker is upper-roman (I, II, III, IV, V, etc.)
        case upperRoman = "upper-roman"
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    public init(
        _ value: Value = .disc
    ) {
        self.name = "list-style-type"
        self.value = value.rawValue
        self.isImportant = false
    }
}
