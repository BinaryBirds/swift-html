public struct Background: Property {
    public enum Value: Sendable {

        case values(
            CSSColorValue?,
            BackgroundImage.Value?,
            BackgroundPosition.Value?,
            BackgroundSize.Value?,
            BackgroundRepeat.Value?,
            BackgroundOrigin.Value?,
            BackgroundClip.Value?,
            BackgroundAttachment.Value?
        )
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit

        var rawValue: String {
            switch self {
            case .values(
                let color,
                let image,
                let position,
                let size,
                let `repeat`,
                let origin,
                let clip,
                let attachment
            ):
                return [
                    color?.rawValue,
                    image?.rawValue,
                    position?.rawValue,
                    size?.rawValue,
                    `repeat`?.rawValue,
                    origin?.rawValue,
                    clip?.rawValue,
                    attachment?.rawValue,
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

    /// A shorthand property for all the background-* properties
    public init(
        _ value: Value
    ) {
        self.name = "background"
        self.value = value.rawValue
        self.isImportant = false
    }

    /// A shorthand property for all the background-* properties
    public init(
        _ color: CSSColorValue? = nil,
        image: BackgroundImage.Value? = nil,
        position: BackgroundPosition.Value? = nil,
        size: BackgroundSize.Value? = nil,
        `repeat`: BackgroundRepeat.Value? = nil,
        origin: BackgroundOrigin.Value? = nil,
        clip: BackgroundClip.Value? = nil,
        attachment: BackgroundAttachment.Value? = nil
    ) {
        self.init(
            .values(
                color,
                image,
                position,
                size,
                `repeat`,
                origin,
                clip,
                attachment
            )
        )
    }
}
