public struct BorderRight: Property {

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// A shorthand property for all the border-right-* properties
    public init(_ value: Border.Value) {
        self.name = "border-right"
        self.value = value.rawValue
        self.isImportant = false
    }
}
