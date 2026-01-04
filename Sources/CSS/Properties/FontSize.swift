public struct FontSize: Property {
    public enum Value: Sendable {
        /// Sets the font-size to a medium size. This is default
        case medium
        /// Sets the font-size to an xx-small size
        case xxSmall
        /// Sets the font-size to an extra small size
        case xSmall
        /// Sets the font-size to a small size
        case small
        /// Sets the font-size to a large size
        case large
        /// Sets the font-size to an extra large size
        case xLarge
        /// Sets the font-size to an xx-large size
        case xxLarge
        /// Sets the font-size to a smaller size than the parent element
        case smaller
        /// Sets the font-size to a larger size than the parent element
        case larger
        /// Sets the font-size to a fixed size in px, cm, etc.
        case length(UnitRepresentable)
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit

        var rawValue: String {
            switch self {
            case .medium:
                return "medium"
            case .xxSmall:
                return "xx-small"
            case .xSmall:
                return "x-small"
            case .small:
                return "small"
            case .large:
                return "large"
            case .xLarge:
                return "x-large"
            case .xxLarge:
                return "xx-large"
            case .smaller:
                return "smaller"
            case .larger:
                return "larger"
            case .length(let value):
                return value.rawValue
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

    /// Specifies the font size of text
    public init(
        _ value: Value = .medium
    ) {
        self.name = "font-size"
        self.value = value.rawValue
        self.isImportant = false
    }
}
