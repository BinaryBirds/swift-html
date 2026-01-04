public struct Clip: Property {
    public enum Value: Sendable {
        /// No clipping will be applied. This is default    Play it »
        case auto
        /// Clips an element. The only valid value is: rect (top, right, bottom, left)    Play it »
        case shape(String)
        /// Sets this property to its default value. Read about initial    Play it »
        case initial
        /// Inherits this property from its parent element. Read about inherit
        case inherit

        var rawValue: String {
            switch self {
            case .auto:
                return "auto"
            case .shape(let value):
                return value
            case .initial:
                return "initial"
            case .inherit:
                return "inherit"
            }
        }
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Clips an absolutely positioned element
    public init(
        _ value: Value = .auto
    ) {
        self.name = "clip"
        self.value = value.rawValue
        self.isImportant = false
    }
}
