public struct TextUnderlinePosition: Property {
    public enum Value: String, Sendable {
        case auto
        case under
        case left
        case right
        case underLeft = "under left"
        case rightUnder = "right under"
        case inherit
        case initial
        case revert
        case unset
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Specifies the position of the underline which is set using the text-decoration property
    public init(
        _ value: Value
    ) {
        self.name = "text-underline-position"
        self.value = value.rawValue
        self.isImportant = false
    }
}
