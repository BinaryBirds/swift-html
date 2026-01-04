public struct FontVariantPosition: Property {
    public enum Value: String, Sendable {
        case normal
        case sub
        case `super`
        case inherit
        case initial
        case revert
        case unset
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Controls the usage of alternate glyphs of smaller size positioned as superscript or subscript regarding the baseline of the font
    public init(
        _ value: Value = .normal
    ) {
        self.name = "font-variant-position"
        self.value = value.rawValue
        self.isImportant = false
    }
}
