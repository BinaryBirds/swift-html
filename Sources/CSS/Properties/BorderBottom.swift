public struct BorderBottom: Property {

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// A shorthand property for border-bottom-width, border-bottom-style and border-bottom-color
    public init(_ value: Border.Value) {
        self.name = "border-bottom"
        self.value = value.rawValue
        self.isImportant = false
    }
}
