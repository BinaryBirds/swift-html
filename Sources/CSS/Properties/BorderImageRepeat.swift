public struct BorderImageRepeat: Property {
    public enum Value: String, Sendable {
        /// Default value. The image is stretched to fill the area    Play it »
        case stretch
        /// The image is tiled (repeated) to fill the area    Play it »
        case `repeat`
        /// The image is tiled (repeated) to fill the area. If it does not fill the area with a whole number of tiles, the image is rescaled so it fits    Play it »
        case round
        /// The image is tiled (repeated) to fill the area. If it does not fill the area with a whole number of tiles, the extra space is distributed around the tiles
        case space
        /// Sets this property to its default value. Read about initial    Play it »
        case initial
        /// Inherits this property from its parent element. Read about inherit
        case inherit
    }

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Specifies whether the border image should be repeated, rounded or stretched
    public init(
        _ value: Value = .stretch
    ) {
        self.name = "border-image-repeat"
        self.value = value.rawValue
        self.isImportant = false
    }
}
