public struct BackgroundColor: Property {

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Specifies the background color of an element
    public init(_ value: CSSColorValue = .transparent) {
        self.name = "background-color"
        self.value = value.rawValue
        self.isImportant = false
    }

    /// Specifies the background color of an element
    public init(_ value: CSSColor) {
        self.init(.color(value))
    }
}
