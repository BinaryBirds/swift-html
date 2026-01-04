public struct BorderTopColor: Property {

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Sets the color of the top border
    public init(_ value: CSSColorValue) {
        self.name = "border-top-color"
        self.value = value.rawValue
        self.isImportant = false
    }

    /// Sets the color of the top border
    public init(_ value: CSSColor) {
        self.init(.color(value))
    }
}
