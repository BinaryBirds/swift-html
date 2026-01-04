public struct FontVariantCaps: Property {
    public enum Value: String, Sendable {
        /// Deactivates the use of alternate glyphs
        case normal
        /// Displays small capitals
        case smallCaps = "small-caps"
        /// Displays small capitals for both upper and lowercase letters
        case allSmallCaps = "all-small-caps"
        /// Displays petite capitals
        case petiteCaps = "petite-caps"
        /// Displays petite capitals for both upper and lowercase letters
        case allPetiteCaps = "all-petite-caps"
        /// Displays a mix of small capitals for uppercase letters with normal lowercase letters
        case unicase
        /// Displays titling capitals
        case titlingCaps = "titling-caps"
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit
        /// unset
        case unset
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Controls the usage of alternate glyphs for capital letters
    public init(
        _ value: Value = .normal
    ) {
        self.name = "font-variant-caps"
        self.value = value.rawValue
        self.isImportant = false
    }
}
