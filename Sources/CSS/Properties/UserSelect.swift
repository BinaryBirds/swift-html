public struct UserSelect: Property {
    public enum Value: String, Sendable {
        /// Default. Text can be selected if the browser allows it
        case auto
        /// Prevent text selection
        case none
        /// The text can be selected by the user
        case text
        /// Text selection is made with one click instead of a double-click
        case all
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Specifies whether the text of an element can be selected
    public init(
        _ value: Value = .auto
    ) {
        self.name = "user-select"
        self.value = value.rawValue
        self.isImportant = false
    }
}
