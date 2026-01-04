public struct FontLanguageOverride: Property {
    public enum Value: Sendable {
        case normal
        case value(String)
        case initial
        case inherit
        case unset

        var rawValue: String {
            switch self {
            case .normal:
                return "normal"
            case .value(let value):
                return value
            case .initial:
                return "initial"
            case .inherit:
                return "inherit"
            case .unset:
                return "unset"
            }
        }
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Controls the usage of language-specific glyphs in a typeface
    public init(
        _ value: Value = .normal
    ) {
        self.name = "font-language-override"
        self.value = value.rawValue
        self.isImportant = false
    }
}
