public struct BorderImageSlice: Property {
    public enum Value: Sendable {
        /// The number(s) represent pixels for raster images or coordinates for vector images
        case number(UnitRepresentable)
        /// Causes the middle part of the image to be displayed
        case fill
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit

        var rawValue: String {
            switch self {
            case .number(let value):
                return value.rawValue
            case .fill:
                return "fill"
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

    /// Specifies how to slice the border image
    public init(
        _ value: Value
    ) {
        self.name = "border-image-slice"
        self.value = value.rawValue
        self.isImportant = false
    }
}
