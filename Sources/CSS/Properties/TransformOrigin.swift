public struct TransformOrigin: Property {
    public enum Value: Sendable {
        // @TODO: keyword support
        /// x-axis    Defines where the view is placed at the x-axis. Possible values:
        /// left
        /// center
        /// right
        /// length
        /// %
        /// y-axis    Defines where the view is placed at the y-axis. Possible values:
        /// top
        /// center
        /// bottom
        /// length
        /// %
        /// z-axis    Defines where the view is placed at the z-axis (for 3D transformations). Possible values:
        /// length
        case values(UnitRepresentable, UnitRepresentable, UnitRepresentable)
        /// Sets this property to its default value. Read about initial
        case initial
        /// Inherits this property from its parent element. Read about inherit
        case inherit

        var rawValue: String {
            switch self {
            case .values(let x, let y, let z):
                return [x.rawValue, y.rawValue, z.rawValue]
                    .joined(separator: " ")
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

    /// Allows you to change the position on transformed elements
    public init(
        _ value: Value
    ) {
        self.name = "transform-origin"
        self.value = value.rawValue
        self.isImportant = false
    }
}
