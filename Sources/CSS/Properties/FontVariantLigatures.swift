public struct FontVariantLigatures: Property {
    public enum Value: String, Sendable {
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

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Controls which ligatures and contextual forms are used in textual content of the elements it applies to
    public init(
        _ value: Value = .normal
    ) {
        self.name = "font-variant-ligatures"
        self.value = value.rawValue
        self.isImportant = false
    }
}
