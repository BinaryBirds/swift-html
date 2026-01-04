public struct FontFeatureSettings: Property {
    public enum Value: Sendable {
        /// Default. Use the default settings to lay out text
        case normal
        /// Format: string [1|0|on|off] Always a string of 4 ASCII characters.
        case featureValue(String)

        var rawValue: String {
            switch self {
            case .normal:
                return "normal"
            case .featureValue(let value):
                return value
            }
        }
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Allows control over advanced typographic features in OpenType fonts
    public init(
        _ value: Value = .normal
    ) {
        self.name = "font-feature-settings"
        self.value = value.rawValue
        self.isImportant = false
    }
}
