public struct BorderRightColor: Property {

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Sets the color of the right border
    public init(_ value: CSSColorValue) {
        self.name = "border-right-color"
        self.value = value.rawValue
        self.isImportant = false
    }

    public init(_ value: CSSColor) {
        self.init(.color(value))
    }
}
