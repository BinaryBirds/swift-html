public struct TextOrientation: Property {
    public enum Value: String, Sendable {
        case mixed
        case upright
        case sidewaysRight = "sideways-right"
        case sideways
        case useGlyphOrientation = "use-glyph-orientation"
        case inherit
        case initial
        case unset
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    public init(
        _ value: Value
    ) {
        self.name = "text-orientation"
        self.value = value.rawValue
        self.isImportant = false
    }
}
