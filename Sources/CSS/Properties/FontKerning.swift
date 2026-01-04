public struct FontKerning: Property {
    public enum Value: String, Sendable {
        /// Default. The browser determines whether font kerning should be applied or not
        case auto
        /// Specifies that font kerning is applied
        case normal
        /// Specifies that font kerning is not applied
        case none
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Controls the usage of the kerning information (how letters are spaced)
    public init(
        _ value: Value = .auto
    ) {
        self.name = "font-kerning"
        self.value = value.rawValue
        self.isImportant = false
    }
}
