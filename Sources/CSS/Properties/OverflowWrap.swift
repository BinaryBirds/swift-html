public struct OverflowWrap: Property {
    public enum Value: String, Sendable {
        case normal
        case breakWord = "break-word"
        case anywhere
        case inherit
        case initial
        case revert
        case unset
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Specifies whether or not the browser may break lines within words in order to prevent overflow (when a string is too long to fit its containing box)
    public init(
        _ value: Value
    ) {
        self.name = "overflow-wrap"
        self.value = value.rawValue
        self.isImportant = false
    }
}
