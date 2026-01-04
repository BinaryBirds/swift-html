public struct Hyphens: Property {
    public enum Value: String, Sendable {
        /// Words are not hyphenated
        case none
        /// Default. Words are only hyphenated at &hyphen; or &shy; (if needed)
        case manual
        /// Words are hyphenated where the algorithm is deciding (if needed)
        case auto
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Sets how to split words to improve the layout of paragraphs
    public init(
        _ value: Value = .manual
    ) {
        self.name = "hyphens"
        self.value = value.rawValue
        self.isImportant = false
    }
}
