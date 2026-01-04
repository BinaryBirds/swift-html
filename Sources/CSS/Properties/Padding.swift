public struct Padding: Property {
    public enum Value: Sendable {
        /// Specifies a fixed bottom padding in px, pt, cm, etc. Default value is 0.
        case length(Unit)
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit

        var rawValue: String {
            switch self {
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

    /// Sets all the Padding properties in one declaration
    public init(
        _ value: Value = .length(.zero)
    ) {
        self.name = "padding"
        self.value = value.rawValue
        self.isImportant = false
    }

    public init(_ value: Unit = .zero) {
        self.init(.length(value))
    }

    public init(
        horizontal: Value = .length(.zero),
        vertical: Value = .length(.zero)
    ) {
        self.name = "padding"
        self.value = horizontal.rawValue + " " + vertical.rawValue
        self.isImportant = false
    }

    public init(
        horizontal: Unit = .zero,
        vertical: Unit = .zero
    ) {
        self.init(horizontal: .length(horizontal), vertical: .length(vertical))
    }

    public init(
        top: Value = .length(.zero),
        right: Value = .length(.zero),
        bottom: Value = .length(.zero),
        left: Value = .length(.zero)
    ) {
        self.name = "padding"
        self.value =
            top.rawValue + " " + right.rawValue + " " + bottom.rawValue + " "
            + left.rawValue
        self.isImportant = false
    }

    public init(
        top: Unit = .zero,
        right: Unit = .zero,
        bottom: Unit = .zero,
        left: Unit = .zero
    ) {
        self.init(
            top: .length(top),
            right: .length(right),
            bottom: .length(bottom),
            left: .length(left)
        )
    }
}
