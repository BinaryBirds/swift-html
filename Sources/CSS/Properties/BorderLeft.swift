public struct BorderLeft: Property {

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// A shorthand property for all the border-left-* properties
    public init(_ value: Border.Value) {
        self.name = "border-left"
        self.value = value.rawValue
        self.isImportant = false
    }
}
