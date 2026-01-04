public struct BorderRadius: Property {
    public enum Value: Sendable {
        /// Defines the shape of the corners. Default value is 0. Read about length units
        case length(
            UnitRepresentable,
            UnitRepresentable?,
            UnitRepresentable?,
            UnitRepresentable?
        )
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit

        var rawValue: String {
            switch self {
            case .length(let a, let b, let c, let d):
                return [
                    a.rawValue,
                    b?.rawValue,
                    c?.rawValue,
                    d?.rawValue,
                ]
                .compactMap { $0 }.joined(separator: " ")
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

    /// A shorthand property for the four border-*-radius properties
    public init(
        _ value: Value
    ) {
        self.name = "border-radius"
        self.value = value.rawValue
        self.isImportant = false
    }

    // @TODO: better API for all value cases
    // https://www.w3schools.com/cssref/css3_pr_border-radius.asp
}
