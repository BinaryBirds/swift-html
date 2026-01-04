public struct BorderLeftStyle: Property {

    public let name: String
    public let value: String
    public var isImportant: Bool

    /// Sets the style of the left border
    public init(_ value: BorderStyle.Value = .none) {
        self.name = "border-left-style"
        self.value = value.rawValue
        self.isImportant = false
    }
}
