public struct BorderColor: Property {

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Sets the color of the four borders
    public init(_ value: CSSColorValue) {
        self.name = "border-color"
        self.value = value.rawValue
        self.isImportant = false
    }

    /// Sets the color of the four borders
    public init(_ value: CSSColor) {
        self.init(.color(value))
    }
}
