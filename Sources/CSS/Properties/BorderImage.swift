public struct BorderImage: Property {
    public enum Value: Sendable {

        case values(
            BorderImageSource.Value,
            BorderImageSlice.Value?,
            BorderImageWidth.Value?,
            BorderImageOutset.Value?,
            BorderImageRepeat.Value?
        )

        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit

        var rawValue: String {
            switch self {
            case .values(
                let source,
                let slice,
                let width,
                let outset,
                let `repeat`
            ):
                return [
                    source.rawValue,
                    slice?.rawValue,
                    width?.rawValue,
                    outset?.rawValue,
                    `repeat`?.rawValue,
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

    /// A shorthand property for all the border-image-* properties
    public init(
        _ value: Value
    ) {
        self.name = "border-image"
        self.value = value.rawValue
        self.isImportant = false
    }

    /// A shorthand property for all the border-image-* properties
    public init(
        _ source: BorderImageSource.Value,
        slice: BorderImageSlice.Value? = nil,
        width: BorderImageWidth.Value? = nil,
        outset: BorderImageOutset.Value? = nil,
        `repeat`: BorderImageRepeat.Value? = nil
    ) {
        self.init(.values(source, slice, width, outset, `repeat`))
    }
}
