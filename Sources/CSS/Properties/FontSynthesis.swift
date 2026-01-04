public struct FontSynthesis: Property {
    public enum Value: String, Sendable {
        case none
        case weight
        case style
        case weightStyle = "weight style"
        case inherit
        case initial
        case revert
        case unset
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Controls which missing typefaces (bold or italic) may be synthesized by the browser
    public init(
        _ value: Value = .none
    ) {
        self.name = "font-synthesis"
        self.value = value.rawValue
        self.isImportant = false
    }
}
