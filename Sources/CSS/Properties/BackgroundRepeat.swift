public struct BackgroundRepeat: Property {
    public enum Value: String, Sendable {
        /// The background image is repeated both vertically and horizontally.  The last image will be clipped if it does not fit. This is default
        case `repeat`
        /// The background image is repeated only horizontally
        case repeatX = "repeat-x"
        /// The background image is repeated only vertically
        case repeatY = "repeat-y"
        /// The background-image is not repeated. The image will only be shown once
        case noRepeat = "no-repeat"
        /// The background-image is repeated as much as possible without clipping. The first and last images are pinned to either side of the element, and whitespace is distributed evenly between the images
        case space
        /// The background-image is repeated and squished or stretched to fill the space (no gaps)
        case round
        /// Sets this property to its default value.
        case initial
        /// Inherits this property from its parent element.
        case inherit
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Sets if/how a background image will be repeated
    public init(
        _ value: Value = .repeat
    ) {
        self.name = "background-repeat"
        self.value = value.rawValue
        self.isImportant = false
    }
}
