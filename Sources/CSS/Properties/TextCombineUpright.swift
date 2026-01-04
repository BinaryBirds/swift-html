public struct TextCombineUpright: Property {
    public enum Value: Sendable {
        case none
        case all
        case digits(Int)
        case inherit
        case initial
        case revert
        case unset

        var rawValue: String {
            switch self {
            case .none:
                return "none"
            case .all:
                return "all"
            case .digits(let value):
                return "digits \(value)"
            case .inherit:
                return "inherit"
            case .initial:
                return "initial"
            case .revert:
                return "revert"
            case .unset:
                return "unset"
            }
        }
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Specifies the combination of multiple characters into the space of a single character
    public init(
        _ value: Value
    ) {
        self.name = "text-combine-upright"
        self.value = value.rawValue
        self.isImportant = false
    }
}
