public struct LineBreak: Property {
    public enum Value: String, Sendable {
        case auto
        case loose
        case normal
        case strict
        case anywhere
        case inherit
        case initial
        case revert
        case unset
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Specifies how/if to break lines
    public init(
        _ value: Value = .auto
    ) {
        self.name = "line-break"
        self.value = value.rawValue
        self.isImportant = false
    }
}
