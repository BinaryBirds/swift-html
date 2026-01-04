public struct Margin: Property {
    public enum Value: Sendable {
        /// Specifies a fixed bottom margin in px, cm, em, etc. Default value is 0. Negative values are allowed.
        case length(UnitRepresentable)
        // The browser calculates a bottom margin
        case auto
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit

        var rawValue: String {
            switch self {
            case .auto:
                return "auto"
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

    /// Sets all the margin properties in one declaration
    public init(
        _ value: Value = .length(0)
    ) {
        self.name = "margin"
        self.value = value.rawValue
        self.isImportant = false
    }

    public init(_ value: UnitRepresentable = 0) {
        self.init(.length(value))
    }

    public init(
        horizontal: Value = .length(0),
        vertical: Value = .length(0)
    ) {
        self.name = "margin"
        self.value = horizontal.rawValue + " " + vertical.rawValue
        self.isImportant = false
    }

    public init(
        horizontal: UnitRepresentable = 0,
        vertical: UnitRepresentable = 0
    ) {
        self.init(horizontal: .length(horizontal), vertical: .length(vertical))
    }

    public init(
        top: Value = .length(0),
        right: Value = .length(0),
        bottom: Value = .length(0),
        left: Value = .length(0)
    ) {
        self.name = "margin"
        self.value =
            top.rawValue + " " + right.rawValue + " " + bottom.rawValue + " "
            + left.rawValue
        self.isImportant = false
    }

    public init(
        top: UnitRepresentable = 0,
        right: UnitRepresentable = 0,
        bottom: UnitRepresentable = 0,
        left: UnitRepresentable = 0
    ) {
        self.init(
            top: .length(top),
            right: .length(right),
            bottom: .length(bottom),
            left: .length(left)
        )
    }
}
